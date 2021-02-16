(define (domain bookWorld)

    (:requirements
        :equality
        :typing
        :strips
    )

    (:types
        robot
        book
        bin
        location
        subject
        size
    )


    (:predicates
        (Book_At ?a - book ?b - location)
        (Bin_At ?a - bin ?b - location)
        (Book_Subject ?a - book ?b - subject)
        (Book_Size ?a - book ?b - size)
        (Bin_Subject ?a - bin ?b - subject)
        (Bin_Size ?a - bin ?b - size)
        (Robot_At ?a - robot ?b - location)
        (Empty_Basket ?a - robot)
        (In_Basket ?b - book)
    )


    (:action pick
        :parameters ( ADD ACTION PARAMETERS HERE )
        :precondition (
            ADD PRECONDITION PREDICATES HERE
        )
        :effect ( 
            ADD EFFECT PREDICATES HERE
        )
    )

    (:action place
        :parameters (ADD ACTION PARAMETERS HERE)
        :precondition (
            ADD PRECONDITION PREDICATES HERE
        )
        :effect (
            ADD EFFECT PREDICATES HERE
        )
    )
    
    (:action move
        :parameters (ADD ACTION PARAMETERS HERE)
        :precondition (
            ADD PRECONDITION PREDICATES HERE
        )
        :effect (
            ADD EFFECT PREDICATES HERE
        )
    )
)