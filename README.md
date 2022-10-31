# Pewlett-Hackard-Analysis

## Overview of the Analysis

Pewlett Hackard a large company, has baby boomers that are to retire at rapid rate. The company is looking towards the future in two ways. First, it's offering a retirement package for those who meet certain criteria. Secondly the company is to think about which positions will need to be filled in the near future.The purpose of initial analysis was to assist Bobby, the company's HR analyst in database query and involved looking at data avaiable in six tables. To built employee database first step was to prepare the entity relationship diagram, build new tables to extract required information for the analysis and present information with additional questions for the HR analyst. Initial set of analysis resulted in deeper understanding of the company's situation in terms of retiring population. 

To prepare for the 'silver tsunami' as many current employees are to reach retirement age, there was additional analysis desired to get detailed information on
  - Number of retiring employees per title and 
  - To idenitfy employees who are eligible to participate in a mentorship program. 

## Results 

Initial ERD diagram that was developed to work on employee database was as follows 

![image](https://user-images.githubusercontent.com/42523379/198924163-08d436ff-354b-4753-8b1a-e60c2eb715a1.png)

Retirement information ( retirement_info) table with information on employees, the employee information table ( emp_inf) with employee details with their salary details revealed that salaries were not increasing for employees even while they were employeed and held different titles in some cases. Looking at managers per department and pulling required columns in manager_info table it was revealed that their were only 5 active managers across 9 departments. Also looking at current employees who were to retire, some employees appeared twice. A tailored list was created to further proof the company. As part of request from manager specific query was developed for sales and development team. 

With this background, specific lookup was requested too look at retiring employees per title to understand the nature of the need coming up and identify the employees who are eligible to participate in mentorship program so that this can serve as a means to address the needs of training the new employees that would fill the position of retiring employees. The criterion was overall based on the birth dates ranging from 1952 to 1955 and hired dates from 1985 to 1988. 

A Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955 was created. 133776 total results were fetched and many records were duplicate, where same employee with different title was also included in the total count.  

Retirement title results summary 

![image](https://user-images.githubusercontent.com/42523379/198901117-a7b1a573-67d8-490d-a79a-1ee42ff0ec88.png)

Duplicates were removed and stored in separate table which retrieved the first occurance of the employee number for the most recent title held by that employee. This information is stored in Unique Titles table. Based on pivot table analysis for the unique_titles table the following bar graph summarizes the employee count per title. 

Employee count per Title 

![image](https://user-images.githubusercontent.com/42523379/198900693-7919793b-6840-4a04-9a8b-4a2e95bd4e5e.png)

Further query was written to retrieve the number of employees by their most recent job title who are about to retire. This information is saved in the Retiring Titles table. 

![image](https://user-images.githubusercontent.com/42523379/198900198-73c3f0a6-31dc-4610-ac54-efb7100627db.png)

To get information on number of retirees that may be eligible to offer mentorship, the mentorship eligibility table was built with filter based on employees with birthdate in 1965 (born between January 1, 1965 and December 31, 1965).

![image](https://user-images.githubusercontent.com/42523379/198900465-cb2123df-cba9-476f-b2ce-eb40f58c812a.png)

## Summary

Senior Engineers and Senior staff are the two titles with maximum count for those retiring and constitutes over 60% of the retiring population. 

For those born in year 1965, there are 1549 employees who cna be considered to offer mentorship. It is interesting to note that the senior engineers and senior staff who are born in 1965 and may be eligible for mentorship are 569 and 529 in count respectively and constitute a large number of retirees. THis would align to meet the training needs as these are the two titles with maximum number of upcoming retirees. 

It can also be noted that managers often have administrative and oversight responsibilities and this title it appears, has lowest count for those retiring. These would be no training needs foreseen for this role. Staff, technique leaders and assistant engineers are sizable in number of those retiring and can benefit from some mentorship. For these roles, senior engineers and senior staff that retires can also be utilized to train them especially if they have worked their way through different titles in company prior to retirement. 

Overall it can also be noted that the hiring trends and salary structure are not very clear and retirement_titles table results reveal that there were no additions in the 'from_date' beyond year 2002. It is likely that the company had good retention rate and hence the referred 'silver tsunami' could be the result of large number of employees retaining their employement for long term. The company can utilize the understanding of the employee database to hire individuals in phasic manner, perhaps cross train employees and offer better salary and bonus incentives so that the company may not need to replace one-for-one for all those retiring all at once. 

