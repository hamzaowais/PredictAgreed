# iEXPLORECC

![alt text](https://github.com/hamzaowais/PredictAgreed/blob/master/flashing2.gif?raw=true "web app progress")

"Intelligent Exploration of Organ System Response in Critical Care (IEXPLORECC)". Currently, it can do data analytics on the MIMIC Database (deidentified health data of approx. 40,000 critical care patients). The beta version of this tool is being used by medical students to understand and interpret 60 GB of medical data better. It is also been used to generate training and validation dataset to train organ failure assessment modules. The technology stack being used here is Node.js for the back-end and React.js for the front-end.  


#### Overview Container
The overview container displays an adjustable grid of patient overviews, each with a body map and organ status. Each overview will by default display the overall system status, and will display any organ systems that have a danger or warning status. If no organ systems are in danger, it will display 'All systems ok' in green. Using the dropdown menu in the navbar will let the user view different organ systems in detail for each patient.

![alt text](https://github.com/hamzaowais/PredictAgreed/blob/master/icuoverview.png?raw=true "web app progress")

#### Patient View Container
The patient view container holds the view of the individual patient, and displays a body map as there was in the overview container. However, this view has buttons for each organ system, that auto sort themselves based on which system is the most severe. Clicking on one of these buttons in the future will bring up data related to that organ system on the right side, and allow for the updating of information and viewing of previous information.
![alt text](https://github.com/hamzaowais/PredictAgreed/blob/master/flashing2.gif?raw=true "web app progress")

#### Reporting Tool
The reporting tool displays a table with provided information. The plan is to make this view filterable, and allow for the downloading of data from this table into a csv.

![alt text](https://github.com/hamzaowais/PredictAgreed/blob/master/reportingtool.png?raw=true "web app progress")
