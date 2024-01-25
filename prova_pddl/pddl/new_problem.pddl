(define (problem task)
(:domain rosbot)
(:objects
    package1 package2 package3 - package
    shelf1 shelf2 shelf3 home - location
    robot1 - robot
)
(:init
    (robot_at robot1 home)


    (package_at package1 home)
    (package_at package2 home)
    (package_at package3 home)

    (robot_free robot1)


    (= (free_spot shelf1) 1)
    (= (free_spot shelf2) 1)
    (= (free_spot shelf3) 1)

)
(:goal (and
    (package_delivered package1)
    (package_delivered package2)
    (package_delivered package3)
))
)
