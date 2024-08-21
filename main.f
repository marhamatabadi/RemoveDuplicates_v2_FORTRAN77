      PROGRAM Main
        INTEGER nums(10)
        INTEGER n, length, i

        ! Initialize the array
        DATA nums /1, 1, 2, 2, 3, 3, 4, 4, 5, 5/
        n = 10

        ! Call the subroutine to remove duplicates
        CALL RemoveDuplicates(nums, n, length)

        ! Print the result
        PRINT *, 'Length of array after removing duplicates:', length
        PRINT *, 'Array after removing duplicates:'
        DO i = 1, length
            PRINT *, nums(i)
        END DO

      END PROGRAM Main

      SUBROUTINE RemoveDuplicates(nums, n, length)
        INTEGER nums(*)
        INTEGER n
        INTEGER length
        INTEGER writeIndex, readIndex

        IF (n .LT. 2) THEN
            length = n
            RETURN
        END IF

        writeIndex = 2
        DO readIndex = 2, n-1
            IF (nums(readIndex+1) .NE. nums(writeIndex) .OR. nums(readIndex+1) .NE. nums(writeIndex-1)) THEN
                writeIndex = writeIndex + 1
                nums(writeIndex) = nums(readIndex+1)
            END IF
        END DO

        length = writeIndex

        RETURN
      END SUBROUTINE RemoveDuplicates