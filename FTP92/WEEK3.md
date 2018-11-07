# Week #3: Course Materials

The primary objective of week #3 is to complete the Cli fully to list/apply/approve/deny leave applications. 

We will also start doing standups from this week. https://www.mountaingoatsoftware.com/agile/scrum/meetings/daily-scrum

Each day, as the team does the standup, one from each team notes down briefly the answers to the three questions for each team member and send it to the facilitators.

  Here is a rough format (for each team)

  Subject: FTP{nn} daily standup – {date}
  
{team member#1}:
  * Yesterday:
    * Completed {blah}, In progress {blah}
  * Today:
    * Will complete {blah}, Will start {blah}
  * Impediments:
    * {Things like machine issues, network issues etc}
    
{team member #2:
   * ...
   
Ideally, the blahs above should include the ticket number FTP{nn}-{jj}

## Java (Continued from Week#2)

## Junit/JMockit (Continued from Week#2)

## Devops/Continuous Integration/Continuous Delivery/Build Automation/Jenkins

# Week #3 Sprint Goals:

    * Trello Project Board User Story: "As a Cli user of the leave application, as an employee, I should be able to apply for leave."
    * Trello Project Board User Story: "As a Cli user of the leave application, as an employee, I should be able to see all my leave history."
    * Trello Project Board User Story: "As a Cli user of the leave application, as a manager, I should be able to see all pending leave applications of my direct report employees"
    * Trello  Project Board User Story: "As a Cli user of the leave application, as a manager, I should be able to approve/deny any pending leave applications of my direct report employees"
    * Trello Project Board Task: "Make the mvn package succeed"
    * Trello Project Board Task: "Make the jenkins pipeline green"

    * There will be a ftp92-10-unit, a ftp92-30-integration and a ftp92-50-staging jobs in your team's tab. The unit job will be 
    triggered (within 5 minutes of the merge) and it will execute the unit tests etc. It then will trigger the integration 
    job which will perform black box tests on the package. And finally the application will be deployed on staging.

## Suggested Steps

### Before starting the first task
  1. Whiteboard Cli Menu
  1. Whiteboard Java methods for the functionalities
  1. Create skeleton class for LeaveDetails, and empty methods for apply, list, approve/deny etc
### For the first task + story
  1. One person to add LeaveDetails class, and then its DAO/Mapper
  1. One Person to change cli
  1. One Person to add apply methods on Employee class
### Similarly for the other stories
### Simultaneously work on adding unit tests
  1. One person to make mvn package succeed - add employee tests
  1. Others to add tests for Leave Details etc.

### Tests for the cli

#### Basic tests
  * Invalid input for the data type
    * Including for the menu option
  * Non-existing employee id
  * Apply w/ balance not sufficient
  * startDate > endDate
  * numDays > endDate - startDate
  * numDays = 0
  * PENDING <-> APPROVED <-> DENIED three-way state transitions
  * leaveid/employeeid incorrect combinations

#### Advanced tests
  * No leave before doj
  * No pending application overlapping other pending/approved leave for the same employee
  
# Reading material

## Must-Read

### CI/CD
  * https://www.atlassian.com/continuous-delivery/continuous-delivery-workflows-with-feature-branching-and-gitflow
  * https://www.agilealliance.org/glossary/continuous-integration
  * https://continuousdelivery.com/
  * https://www.infoq.com/articles/orch-pipelines-jenkins

## Nice-To-Read

## Go-Deep

  
