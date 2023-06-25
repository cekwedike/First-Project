#!/bin/bash

# Function to create a student record
create_student_record() {
    echo "Enter student email:"
    read email
    
    echo "Enter student age:"
    read age
    
    echo "Enter student ID:"
    read student_id
    
    echo "$email $age $student_id" >> students-list_0333.txt
    echo "Student record created successfully."
}

# Function to view all students
view_all_students() {
    echo "List of all students:"
    cat students-list_0333.txt
}

# Function to delete a student by student ID
delete_student() {
    echo "Enter student ID to delete:"
    read delete_id
    
    sed -i "/$delete_id/d" students-list_0333.txt
    echo "Student with ID $delete_id deleted successfully."
}

# Function to update a student record by student ID
update_student_record() {
    echo "Enter student ID to update:"
    read update_id
    
    echo "Enter new student email:"
    read new_email
    
    echo "Enter new student age:"
    read new_age
    
    sed -i "/$update_id/c\\$new_email $new_age $update_id" students-list_0333.txt
    echo "Student record updated successfully."
}

# Main menu loop
while true; do
    echo "---------------------------"
    echo "Bachelor of Software Engineering Cohort List"
    echo "---------------------------"
    echo "1. Create student record"
    echo "2. View all students"
    echo "3. Delete student by ID"
    echo "4. Update student record"
    echo "5. Exit"
    echo "---------------------------"
    echo -n "Enter your choice: "
    read choice
    
    case $choice in
        1)
            create_student_record
            ;;
        2)
            view_all_students
            ;;
        3)
            delete_student
            ;;
        4)
            update_student_record
            ;;
        5)
            echo "Exiting the application. Goodbye!"
            break
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
    
    echo
done

