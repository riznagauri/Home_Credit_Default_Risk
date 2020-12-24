#==================================================
  
# Home Credit Default Risk Analysis
# FINA Assignment
# Submitted By: Group B
# E20003 Ajith Murugaian, E20008 Debyendu Dey, E20014 Jayesh Belsare, E20016 Mohammed Rizwan Nagauri
# E20020 Phaneendra, E20035 Sumeet Kumar, E20036 Swastik Satpathy, D19038 Yash Chaudhary

#==================================================
  
install.packages('InformationValue')
install.packages('caTools')
install.packages('MLmetrics')


library(InformationValue)
library(caTools)
library(MLmetrics)

concp = read.csv("D:\\Praxis\\FinancialRisk\\conc2F.csv")

Conc = Concordance(concp$TARGET,concp$Pred)

C = Conc$Concordance
D = Conc$Discordance
T = Conc$Tied

SD = (C-D)/(C+D)
SD

C
D
T

