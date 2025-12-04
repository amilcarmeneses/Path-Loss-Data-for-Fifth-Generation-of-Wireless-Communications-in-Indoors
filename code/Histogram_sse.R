#------------------------------Histogram --------------------------#
#---------------------- Patricia Perdono Reyes --------------------#

# clean variables
rm(list = ls())

#
# Ex.: > install.packages("librería"))
library(ggplot2)

#__________________________________COMMS____________________________
# Load database (DB)

base_data<-read.csv("Received_power/Prx_SSE_C1.csv")

# Output file
pdf("Distance_SSE_C1.pdf", width = 7, height = 5)

hist(base_data$Distancia,
     main = "Comms, C1",
     xlab = " Distance (m) ", 
     ylab = "Density", 
     col = "lightblue", 
     border = "black",
     prob = TRUE)

lines(density(base_data$Distancia), col = "blue", lwd = 2)
dev.off()

# Output file
pdf("Prx_SSE_C1.pdf", width = 7, height = 5)

hist(base_data$P_Rx,
     main = "Comms, C1",
     xlab = "Received Power (dBm)", 
     ylab = "Density", 
     col = "lightblue", 
     border = "black",
     prob = TRUE)

lines(density(base_data$P_Rx), col = "blue", lwd = 2)
dev.off()



# Load database (DB)
base_data2<-read.csv("Received_power/Prx_SSE_C2.csv")

Dist_Com_2<- sqrt((base_data2$Distancia)^2 + (1.215)^2)

# Output file
pdf("Distance_SSE_C2.pdf", width = 7, height = 5)

hist(Dist_Com_2,
     main = "Comms, C2",
     xlab = " Distance (m) ", 
     ylab = "Density", 
     col = "lightblue", 
     border = "black",
     prob = TRUE)

lines(density(Dist_Com_2), col = "blue", lwd = 2)
dev.off()

# Output file
pdf("Prx_SSE_C2.pdf", width = 7, height = 5)

hist(base_data2$P_Rx,
     main = "Comms, C2",
     xlab = "Received Power (dBm)", 
     ylab = "Density", 
     col = "lightblue", 
     border = "black",
     prob = TRUE)

lines(density(base_data2$P_Rx), col = "blue", lwd = 2)
dev.off()

#___________________________SSE_____________________________
# Load database (DB)
base_data3<-read.csv("Received_power/Prx_SSE_C1.csv")

# Output file
pdf("Distance_SSE_C1.pdf", width = 7, height = 5)

hist(base_data3$Distancia,
     main = "SSE, C1",
     xlab = " Distance (m) ", 
     ylab = "Density", 
     col = "lightblue", 
     border = "black",
     prob = TRUE)

lines(density(base_data3$Distancia), col = "blue", lwd = 2)
dev.off()

# Output file
pdf("Prx_SSE_C1.pdf", width = 7, height = 5)

hist(base_data3$P_Rx,
     main = "SSE, C1",
     xlab = "Received Power (dBm)", 
     ylab = "Density", 
     col = "lightblue", 
     border = "black",
     prob = TRUE)

lines(density(base_data3$P_Rx), col = "blue", lwd = 2)
dev.off()


# Load database (DB)
base_data4<-read.csv("Received_power/Prx_SSE_C2.csv")

Dist_Bunk_2<- sqrt((base_data4$Distancia)^2 + (1.215)^2)

# Outputfile
pdf("Distance_SSE_C2.pdf", width = 7, height = 5)

hist(Dist_Bunk_2,
     main = "SSE, C2",
     xlab = " Distance (m) ", 
     ylab = "Density", 
     col = "lightblue", 
     border = "black",
     prob = TRUE)

lines(density(Dist_Bunk_2), col = "blue", lwd = 2)
dev.off()

# Output file
pdf("PR_SSE_C2.pdf", width = 7, height = 5)

hist(base_data4$P_Rx,
     main = "SSE, C2",
     xlab = "Received Power (dBm)", 
     ylab = "Density", 
     col = "lightblue", 
     border = "black",
     prob = TRUE)

lines(density(base_data4$P_Rx), col = "blue", lwd = 2)
dev.off()


#____________________________Library________________________________
# Load database (DB)
base_data5<-read.csv("Received_power/Prx_Library_C1.csv")

# Output file
pdf("Distance_Library_C1.pdf", width = 7, height = 5)

hist(base_data5$Distancia,
     main = "Library, C1",
     xlab = " Distance (m) ", 
     ylab = "Density", 
     col = "lightblue", 
     border = "black",
     prob = TRUE)

lines(density(base_data5$Distancia), col = "blue", lwd = 2)
dev.off()

# Output file
pdf("Prx_Library_C1.pdf", width = 7, height = 5)

hist(base_data5$P_Rx,
     main = "Library, C1",
     xlab = "Received Power (dBm)", 
     ylab = "Density", 
     col = "lightblue", 
     border = "black",
     ylim = c(0, max(density(base_data5$P_Rx)$y) * 1.1),
     prob = TRUE)

lines(density(base_data5$P_Rx), col = "blue", lwd = 2)
dev.off()


# Load database (DB)
base_data6<-read.csv("Received_power/Prx_Library_C2.csv")

Dist_Biblio_2<- sqrt((base_data6$Distancia)^2 + (1.215)^2)

# Output file
pdf("Distance_Library_C2.pdf", width = 7, height = 5)

hist(Dist_Biblio_2,
     main = "Library, C2",
     xlab = " Distance (m) ", 
     ylab = "Density", 
     col = "lightblue", 
     border = "black",
     prob = TRUE)

lines(density(Dist_Biblio_2), col = "blue", lwd = 2)
dev.off()

# Output file
pdf("Prx_Library_C2.pdf", width = 7, height = 5)

hist(base_data6$P_Rx,
     main = "Library, C2",
     xlab = "Received Power (dBm)", 
     ylab = "Density", 
     col = "lightblue", 
     border = "black",
     prob = TRUE)

lines(density(base_data6$P_Rx), col = "blue", lwd = 2)
dev.off()
