library(readxl)
CITAD_DATA <- read_excel("CITAD DATA.xlsx", skip = 1)
CITAD_DATA
df <- data.frame(CITAD_DATA)
df[["LGA"]]

lga <- df$LGA[2:21]

primary_enroll_total <- df$Public.Primary.Enrolment.2017.2018[2:21]
primary_enroll_girls <- df$...4[2:21]
primary_enroll_boys <- as.numeric(primary_enroll_total) - as.numeric(primary_enroll_girls)

jss_enroll_total <- df$Public.JSS.Enrolment.2017.2018[2:21]
jss_enroll_girls <- df$...6[2:21]
jss_enroll_boys <- as.numeric(jss_enroll_total) - as.numeric(jss_enroll_girls)

#ENROLL BY SECTION
source('/home/nuruddeen/R/BauchiEnroll/R/section_enroll.R')
#primary
section_enroll(primary_enroll_total, 'Primary Enrollment 2017/2018', '140000')
#Junior Secondary
section_enroll(jss_enroll_total, 'JSS Enrollment 2017/2018', '40000')


#primary total vs secondary total
source('/home/nuruddeen/R/BauchiEnroll/R/total.R')
total(df$Public.Primary.Enrolment.2017.2018[22], df$Public.JSS.Enrolment.2017.2018[22])


#plot pie chart of Section enrollment by gender
source('/home/nuruddeen/R/BauchiEnroll/R/section_gender_enroll.R')
#primary
section_gender_enroll(df$Public.Primary.Enrolment.2017.2018[22], df$...4[22], 'Primary Enrollment by Gender 2017/2018')
#jss
section_gender_enroll(df$Public.JSS.Enrolment.2017.2018[22], df$...6[22], 'JSS Enrollment by Gender 2017/2018')


#primary total vs secondary total by gender
source('/home/nuruddeen/R/BauchiEnroll/R/total_gender_enroll.R')
total_gender_enroll(primary_enroll_boys, primary_enroll_girls, jss_enroll_boys, jss_enroll_girls)
