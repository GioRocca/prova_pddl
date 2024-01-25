(define (domain rosbot)

(:requirements :typing :durative-actions :numeric-fluents :negative-preconditions :action-costs :conditional-effects :equality :fluents)

(:types
	 package
	 location
	 robot
)

(:functions
    (free_spot ?l - location)
)

(:predicates
	(robot_at ?r - robot ?l - location)
    (robot_has ?r - robot ?p - package)
    (package_at ?p - package ?l - location)
    (robot_free ?r - robot)
    (package_delivered ?p - package)
)

;; Move the robot from one location to another
(:durative-action move
     :parameters (?r - robot ?from - location ?to - location)
     :duration ( = ?duration 60)
     :condition (and
      		(at start (robot_at ?r ?from))
            )
     :effect (and
            (at start (not (robot_at ?r ?from)))
            (at start (robot_at ?r ?to))
            )
)

;; Robot pick up package
(:durative-action pick_up
     :parameters (?r - robot ?p - package ?l - location)
     :duration ( = ?duration 60)
     :condition (and
      		(at start (robot_at ?r ?l))
            (at start (package_at ?p ?l))
            (at start (robot_free ?r))
            )
     :effect (and
            (at start (not (package_at ?p ?l)))
            (at start (robot_has ?r ?p))
            (at start (not (robot_free ?r)))
            )
)

;; Robot drop package
(:durative-action drop
     :parameters (?r - robot ?p - package ?l - location)
     :duration ( = ?duration 60)
     :condition (and
      		(at start (robot_at ?r ?l))
            (at start (robot_has ?r ?p))
            (at start ( > (free_spot ?l) 0))
     )
     :effect (and
            (at start (not (robot_has ?r ?p)))
            (at start (robot_free ?r))
            (at start (package_at ?p ?l))
            (at end (decrease (free_spot ?l) 1))
            (at start(package_delivered ?p))
            )
)

)