! This programs helps an hospital determine malaria patients
program MalariaDetector
    implicit none
    
    ! Variable Declaration
    character :: ansA*3, ansB*3, ansC*3, ansD*3, ansE*3, ansF*3

    ! Question A
    print*, "Answer a few questions to get diagnosed! Enter answers in Title format."
    print*, "Do you feel Headeache?"
    read*, ansA
    ! Question B
    print*, "Do you Body Ache?"
    read*, ansB
    ! Question C
    print*, "Any feeling of Shivering?"
    read*, ansC

    ! Logic Code
    ! If a, b and c is YES
    if ( (ansA == "Yes") .and. (ansB == "Yes") .and. ( ansC == "Yes") ) then
        print*, "There is a strong likelihood you have a Malaria."
        print*, "Kindly go to room 1, you are probably stressed out."

        ! Question D
        print*, "Is your measured body temperature reading greater than 37.5?"
        read*, ansD

        ! Question E
        print*, "Do you have any feeling of being fatigued?"
        read*, ansE

        ! Question F
        print*, "Any unusual sweating?"
        read*, ansF

        if ( (ansD == "Yes") .and. (ansE == "Yes") .and. ( ansF == "Yes") ) then
            print*, "Meet with Nurse Ife for your Malariaa Medications"
        else
            print*, "Discuss further with Dr. Ade in room 3."
        end if

    end if



    ! If ONLY a and b is YES
    if ( (ansA == "yes") .and. (ansB == "Yes") .and. (ansC /= "Yes")) then
        print*, "There is a likelihood you have a Malaria."
        print*, "Kindly go to room 1, you are probably stressed out."

        ! Question D
        print*, "Is your measured body temperature reading greater than 37.5?"
        read*, ansD

        ! Question E
        print*, "Do you have any feeling of being fatigued?"
        read*, ansE

        ! Question F
        print*, "Any unusual sweating?"
        read*, ansF
        
        ! If d, e and f is YES or else
        if ( (ansD == "Yes") .and. (ansE == "Yes") .and. ( ansF == "Yes") ) then
            print*, "Meet with Nurse Ife for your Malariaa Medications"
        else
            print*, "Discuss further with Dr. Ade in room 3."
        end if

    end if



    ! If ONLY b and c is YES
    if ( (ansA /= "Yes") .and. (ansB == "Yes") .and. (ansC == "Yes")) then
        print*, "There is a likelihood you have a Malaria."
    end if

    ! If ONLY a is YES
    if ( (ansA == "Yes") .and. (ansB /= "Yes") .and. (ansC /= "Yes")) then
        print*, "Kindly give further complaints in room 2."
    end if
    
    ! If ONLY b is YES
    if ( (ansA /= "Yes") .and. (ansB == "Yes") .and. (ansC /= "Yes")) then
        print*, "Kindly give further complaints in room 2."
    end if

    ! If ONLY c is YES
    if ( (ansA /= "Yes") .and. (ansB /= "Yes") .and. (ansC == "Yes")) then
        print*, "Kindly give further complaints in room 2."
    end if

    ! If NONE is YES
    if ( (ansA /= "Yes") .and. (ansB /= "Yes") .and. (ansC /= "Yes")) then
        print*, "No Malaria symptoms, go have a rest."
    end if
    
end program MalariaDetector