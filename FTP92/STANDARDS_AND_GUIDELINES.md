# AWS CodeCommit Branch naming conventions

  * [2CharInitial]-[Trello Project BoardTicketNumber][-OptionalShortText]
     * 2CharInitial: e.g., KK
     * Trello Project BoardTicketNumber: e.g., FTP01-99
     * OptionalShortText: e.g., fix-typo
     * e.g., KK-FTP01-99-fix-typo
  
# Database naming conventions

## Database schema conventions
  * ALL CAPS
  * underscores allowed
  * e.g., FTP01, FTP02
  
## Table naming conventions
  * ALL CAPS
  * underscores allowed
  * e.g., EMPLOYEE, LEAVE_DETAILS
  
## Column naming conventions
  * ALL CAPS
  * underscores allowed
  * Use a three character prefix derived from the table name for all the columns
  * e.g., EMP_ID, EMP_NAME
  * Except for foreign keys, where you will use the foreign key tables' prefix
  * e.g., in LEAVE_DETAILS table, use EMP_ID as the foreign key

# Java naming conventions

## Method naming conventions https://docs.oracle.com/javase/tutorial/java/javaOO/methods.html
