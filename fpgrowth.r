data = read.csv('C:/Users/kevin/OneDrive/Documentos/MIIC/Mineria/Censo2018/PERSONA_BDP.csv', sep=',')

datamsc <- subset(data, NIVGRADO == 61)

datamsc2 <- datamsc[, c(10,11,14,32,33,39,64,65,77,78,82)]

datamsc2 <- datamsc2[, !(names(datamsc2) %in% c("PCP17_A"))]
datamsc2 <- datamsc2[, !(names(datamsc2) %in% c("PCP17_B"))]


reglas <- fim4r(datamsc2, method = "fpgrowth", target="rules", supp = .2, conf = .5)

reglasframe <- as(reglas, "data.frame")


datamsc <- subset(data, NIVGRADO == 55)

datamsc2 <- datamsc[, c(10,11,14,32,33,39,64,65,77,78,82)]

datamsc2 <- datamsc2[, !(names(datamsc2) %in% c("PCP17_A"))]
datamsc2 <- datamsc2[, !(names(datamsc2) %in% c("PCP17_B"))]


reglas <- fim4r(datamsc2, method = "fpgrowth", target="rules", supp = .2, conf = .5)

reglasframe <- as(reglas, "data.frame")
