# Impledge_QA_ArpitSharma.sql
# Overview
This file contains the SQL queries I wrote to solve a few problems related to a hospital database. The main goal was to answer three specific questions about doctors, patients, and their admissions. Here's a quick breakdown of what the queries do:

1) Find doctors who have at least one patient admission.
2) Find doctors who don’t have any patient admissions.
3) Find patients whose admission couldn’t be completed because of missing doctor details.
# Design Decisions
When I wrote these queries, I made sure to focus on clarity and efficiency. I joined the necessary tables (Doctors, Patients, Admissions) to get the information needed. I also made sure to avoid using specific doctor_id or patient_id values directly in the queries, as the exercise asked for this approach.

# I used:

JOINs to bring in data from multiple tables (like linking patients and doctors through admissions).
Subqueries where needed to check for missing data (for example, if a doctor is missing for a patient’s admission).
Conditional logic to handle scenarios like missing doctor information.

# Steps to Execute
1) Here’s how you can run this SQL file:

2) Open your favorite SQL editor (I recommend something like MySQL Workbench, SQL Server Management Studio, or Visual Studio Code with a SQL extension).
3) Connect to your database.
4) Copy the SQL code from this file into your SQL editor.
5) Execute the script to see the results.

# Approach Taken
Before writing the queries, I made sure I understood the relationships between the tables: Doctors, Patients, Admissions, and Province Names.
I wrote the queries in a way that ensures they answer the specific questions clearly and without using hardcoded values for doctor or patient IDs.
After running the queries, I checked to make sure they worked as expected and provided meaningful results.
What’s Included
Doctors with Admissions: This query lists all the doctors who have at least one patient admission.
Doctors without Admissions: This one gives you the doctors who have no admissions linked to them.
Patients with Missing Doctor Info: This query identifies patients whose admissions couldn’t be completed because the attending doctor’s information is missing.
