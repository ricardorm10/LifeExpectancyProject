# Life Expectancy Analysis Project

## Table of Contents
1. [Introduction](#introduction)
2. [Data Source](#data-source)
3. [Modifications](#modifications)
4. [MySQL Integration](#mysql-integration)
5. [Queries](#queries)
6. [Visualization with Tableau](#visualization-with-tableau)
7. [Dashboard](#dashboard)
8. [Conclusion](#conclusion)

## Introduction
This project focuses on analyzing the life expectancy data, aiming to provide insights into how life expectancy varies across countries, continents, and based on income levels over the years.

## Data Source
The raw data was sourced from [ourworldindata.org](https://ourworldindata.org) and is available as a CSV file.

## Modifications
To facilitate and optimize the analysis, we added a label "Special" to all entities in the dataset that were not countries. This will aid in easily identifying and segregating non-country data.

## MySQL Integration
We've imported our modified dataset into a MySQL Server to enable efficient querying and data retrieval.

## Queries

1. **Countries with Highest Life Expectancy in 2021**:
   - This query retrieves countries with the highest life expectancy for the year 2021.
   
2. **Global Average Yearly Life Expectancy (1950-2021)**:
   - Here, we evaluate the average life expectancy across the globe, year-by-year, from 1950 to 2021.
   
3. **Life Expectancy by Continent in 2021**:
   - This query breaks down the average life expectancy by continent for the year 2021.

4. **Life Expectancy based on Income (1950-2021)**:
   - For this, we've explored how life expectancy has evolved across different income brackets of countries from 1950 to 2021.

## Visualization with Tableau

Using the data derived from our MySQL queries, we've integrated with Tableau to generate visual representations. There are four distinct graphs, each corresponding to one of the four main queries mentioned above.

## Dashboard

To provide a consolidated view and a more user-friendly interface for stakeholders, all four graphs have been combined into a comprehensive dashboard in Tableau. This dashboard allows for quick cross-comparison and more in-depth analysis, all from a single view.

## Conclusion

This project aims to use data-driven insights to shed light on global life expectancy trends. By using a combination of data wrangling techniques, SQL queries, and visualization tools, we can better understand the factors that influence life expectancy and how it has evolved over time.

Happy analyzing!
