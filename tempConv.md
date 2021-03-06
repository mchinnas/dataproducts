Simple Temperature conversion application Presentation
===
author: mchinnas
date: Fri Dec 19 14:37:43 2014

Introduction
===
This is an RStudio shiny application developed as a course project for Coursera's **Developing Data Products** course in the **Data Science Specialization** track. The application developed is a **simple temperature conversion**.

**Course project requirements**
The course project requirements for this application are:
- Some form of input (widget: textbox, radio button, checkbox, .)
- Some operation on the ui input in sever.R
- Some reactive output displayed as a result of server calculations
- You must also include enough documentation so that a novice user could use your application.
- The documentation should be at the Shiny website itself. Do not post to an external link.


Widgets used in the application
===
The shiny application for this project is a simple temperature converter.
It includes 2 widgets:

**radiobuttons** - A radio button field to select whether you want to convert Celsius to Fahrenheit or Fahrenheit to Celsius.

**sliderInput** - A slider bar to input the temperture you want to convert

The **documentation** for the application user is included on the Documentation tab within the application.

The Application displays the user entered temperature with input units and the converted temperature with its units. 

Formula used for conversion
===
**Celsius to Fahrenheit**
F = (C * 9/5) + 32 where C is input temperature in celsius and F is the converted temperature in Fahrenheit.
Example if C = 10 then F is calculated as below

```r
(10 * 9/5) + 32
```

```
[1] 50
```
**Fahrenheit to Celsius**
C = (F -32) * 5/9 where F is input temperature in Fahrenheit and C is the converted temperature in celsius.
Example if F = 50 then C is calculated as below

```r
(50 - 32) * 5/9 
```

```
[1] 10
```

Application link and code Repository
====
Try out the application on the RStudio shinyapps.io website:
https://mchinnas.shinyapps.io/DataProducts-09/

To see the code for the application, visit github website:
https://github.com/mchinnas/dataproducts

**Useful files in repo:**

server.R

ui.R

To execute the application and see the code in action, use:
runApp(displayMode = 'showcase')
