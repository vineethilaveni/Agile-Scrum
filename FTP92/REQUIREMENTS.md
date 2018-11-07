
# High level requirements

We need to build a leave management application. This is an application where employees
   * can view their personal details
   * can view their manager details
   * can apply for leave
   * can check the status of their leave applications
   * can approve/deny the leave applications of their direct reportees

The employee details (id, name, etc.) are stored
along with their current leave balance. All employees have a manager, who is also an employee, except the CEO of the company
who does not have a manager.

Employees can apply for leave in this portal. These leave applications go to their manager for approval. The manager can approve
or deny the leave application.

As said earlier, employees have a leave balance; this cannot go negative. At any time, an employee can see his/her applications
and their statuses.

# Out-Of-Scope
  * Authentication of the employees, password, password-reset etc.
  * Adding/Editing employee details, reporting hierarchy.
  * How the leave balance is setup and refilled on an yearly basis.
  * Cancellation of leave applications (applications which are in the pending-approval status, approved status or denied status).

# Application flow

The skeletal application contains a simple screen w/ a list of employees. Clicking the "login" button against the employee row takes you to the 'Login Screen', with the employee id pre-populated.

![Login Screen](https://us-east-2.console.aws.amazon.com/codecommit/home?region=us-east-2#/repository/FTP-fork-me/browse/HEAD/--/admin/ScreenDesign/Slide2.jpg)

  * The "Login" button is the default button (i.e., pressing "Enter" invokes the login function.
  * "Cancel" takes the user back to the employee list screen.

Since authentiation is out-of-scope, the "Login" function is always successful and the user is taken to the Employee Dashboard screen.
  
![Employee Dashboard](/admin/ScreenDesign/Slide3.jpg)
![Employee Dashboard](/admin/ScreenDesign/Slide4.jpg)
![Employee Dashboard](/admin/ScreenDesign/Slide5.jpg)

For the CEO, this section will be empty.

![Employee Dashboard](/admin/ScreenDesign/Slide6.jpg)
![Employee Dashboard](/admin/ScreenDesign/Slide7.jpg)

![Employee Dashboard](/admin/ScreenDesign/Slide8.jpg)

The user should be able to type in the date, or use the calendar widget.
Base version requirements:
  * start date must not be in the past
  * end date should be greater than, or equal to, the start date
  * pre-calculate the number of days when start and end dates have been entered, but let the user overwrite the value
  * All fields except leave reason are mandatory

![Employee Dashboard](/admin/ScreenDesign/Slide9.jpg)

Comments are mandatory for denial only.

# Must-Have
  * All the high-level requirements above, screen flow above
  * Same functionality available via
     * Cli
     * Curl
     * Browser
  * Validations, with error messages, both on 
     * the server side, to make sure the data is clean no matter what the source and,
     * the client side, to provide a responsive user interface
     * Type validations
     * Semantic validations
        * A new leave application should not overlap with an existing leave application in the approved or pending status
        * Start date must not be in the past
        * End date should be equal to or greater than the start date

# Nice-To-Have
  * Mail alert to manager when his/her employee applies for leave
  * Mail alert to manager when his/her manager approves/denies leave application
  * Ability approve/deny multiple applications at once via multi-select/select-all
  * Calculate number of days of application leave automatically using
    * Weekend calculations
    * Company calendar which specifies company holidays
  * Different types of leave
    * Earned leave/Privileged leave
    * Sick leave
    * Maternity/Paternity leave
    
# Great-To-Have
  * Photos for employee in the database
  * Escalation when manager does not approve within some SLA
  * Sorting options on all tables
  * 'quick filter' options on all tables
  * Employees to re-edit their leave applications, esp. those in the pending status
  * A way to handle leave already availed in the past
  * Ability for managers to review and revisit their decisions
  
# Fantastic-To-Have
  * Mobile UI
  * Conversational Interface
     * ChatBot
     * VoiceBot
  * Metrics, Monitoring, Logs, Alerts, Dashboards

