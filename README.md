# Petition Manager
Students
  - email/username (e.g. danny.pham, danny.pham@bellevuecollege.edu)
  - student_id (validations: 9 digit number)
  - program(s)
Faculty
  - email
  - username
  - faculty_id
  - program(s)_owned
  - type
Courses
  - title
  - description
  - course_id
  - programs_associated
  - pre-requisites
  - credits
Programs (degree/cert)
  - owner (faculty_id)
  - dean
  - courses
Exception
  - Substitution
  - Waiver
Petition
  - approved/unapproved
  - (from student)
  - (for course)

User Stories

A STUDENT signs in to the application with his/her student id and birthday/PIN. The application automatically knows that the id is for a student as opposed to an employee. (If this were connected to the system, it would know college email, phone address, and other contact info.)

The STUDENT can then request a petition for one or many PROGRAMS the STUDENT is completing.
Example: A student wants to request a substitution of one class in place of another
Example: A student wants to request a waiver of one class. No specific class must be substituted, but the student needs to make up the missing credits.

Petitions include a rationale for the substitution/waiver request. This may be as minimal as a few sentences explaining the reasoning. (This might also include document attachments, if we want to make it more complicated. If at any point in the process, additional documents or clarification of rationale is needed, the student can be directly notified.)

The application already knows the associated PROGRAM CHAIR for the selected programs.


After submission, the form is sent to the corresponding Program Chair. The Program Chair approves or rejects this petition.

If rejected, the Program Chair can include an optional reason why for the student to review.
If approved, the Program Chair submits this first round of approval to the Records/Evaluations office for the next round of approval.
If it is rejected, the Program Chair is notified so that s/he can notify the student.
If it is approved, It then goes to an administrator (Division Dean) for separate approval.
The Division Dean can reject this, notifying the Evaluations office and Program Chair.
Otherwise, s/he can approve the petition, submitting this back to the Records/Evaluations office for filing.
The student is then notified of the approval.
