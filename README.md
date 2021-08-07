# Preparing for the Silver Tsunami
###### Challenge 7 Assignment

## Overview of the Project
As Baby boomers are retring at an accelerated rate (Silver Tsunami), the fictional company, Pewlett Hackard is preparing for its impact. To prepare for the upcoming retirements, the company is considering a mentorship program that will utilize their current work force to train future generations. The purpose of this analysis is to assist Pewlett Hackard in identifying the number of potential retiring employees by their job title and possible mentors. The analysis is driven by two primary questions: 
1) Who is retiring?
2) How many roles will need to be filled from the impact of the "Silver Tsunami?" 

### Software 
- PostGreSQL 11.1
- pgAdmin 4.4

## Results
The table below reveals the number of retirement age employees who were born between January 1, 1952 to December 31, 1955, grouped by the title at Pewlett Hackard.

#### Table 1: Number of retiring employees by title.
![Fig1](https://github.com/retroxsky06/Pewlett-Hackard-Analysis/blob/main/Images/Mentor_title_breakdown.png)

### Result Findings
- Of the ~300,000 Pewlett Hackard employees, a total of 90,398 (30.1%) employees are near or at retirment age.
- The most impacted positions are "Senior Engineer" and "Senior Staff."
- Two managers are near or at retirement age, which is significant as there are only a total of nine current managers.
- 1,549 employees who were born between January 1, 1965 to December 31, 1965 are eligible to participate as mentors in the mentorship program. 


## Summary
As the Baby Boomer generation moves towards retirement age, companies are examining strategies in how to brace for the impact.  This analysis had shown the amount of employees who are near and at retirement age at Pewlett Hackard.  Across all departments, it is revealed that 90,398 roles will need to be filled in the upcoming years, including two important high-level managerial positions.

A potential strategy is to develop a mentorship program, which would have qualified employees who are near and at retirement age to train the next generation of Pewlett Hackard employees.  The table below displays the breakdown of *eligible* mentors by title.  (*Eligible*:  January 1, 1965 to December 31, 1965) 

#### Table 2: Breakdown of eligibile mentors by title
![Fig2](https://github.com/retroxsky06/Pewlett-Hackard-Analysis/blob/main/Images/Positions_to_be_filled.png)

##### The query used to create the mentorship table breakdown
 ![Fig3](https://github.com/retroxsky06/Pewlett-Hackard-Analysis/blob/main/Images/mb.png)

From the analysis, there are 1,549 qualified, retirement-ready mentors; however, it is not enough to train the next generation of Pewlett Hackard employees.  One solution is to widen the pool of mentors by expanding the birth year parameters.  Additionally, as Pewlett Hackard is considering those who may be retiring, it is highly recommended that they too also examine their hiring strategies.  As a mentoship program seems like a best practice, there will need to be enough new employees to mentor.  By expanding mentors and new employees, Pewlett Hackard is more likely to be prepared for the impact of the silver tsunami.

