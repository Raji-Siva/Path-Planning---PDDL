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
        :parameters ( ?b - book  ?a - robot ?loc - location )
        :precondition (
            and
            (Book_At ?b ?loc)
            (Robot_At ?a ?loc)
            (Empty_Basket ?a)
            (not(In_Basket ?b))
            
        )
        :effect ( 
            and
            (In_Basket ?b)
            (not(Empty_Basket ?a))
            (not(Book_At ?b ?loc))
            (Robot_At ?a ?loc)
            
        )
    )

    (:action place
        :parameters (?b - book  ?a - robot ?loc - location ?bin - bin ?sz - size ?sub - subject)
        :precondition (
            and
            (Book_Subject ?b ?sub)
            (Bin_Subject ?bin ?sub)
            (Book_Size ?b ?sz)
            (Bin_Size ?bin ?sz)
            (In_Basket ?b)
            (Robot_At ?a ?loc)
            (Bin_At ?bin ?loc)
            
        )
        :effect (
            and
            (not(In_Basket ?b))
            (Empty_Basket ?a)
            (Book_At ?b ?loc)
            (Bin_At ?bin ?loc)
            
        )
    )
    
    (:action move
        :parameters (?a - robot ?from - location ?to - location)
        :precondition (Robot_At ?a ?from)
        :effect (and(Robot_At ?a ?to) (not(Robot_At ?a ?from)))
    )
)
