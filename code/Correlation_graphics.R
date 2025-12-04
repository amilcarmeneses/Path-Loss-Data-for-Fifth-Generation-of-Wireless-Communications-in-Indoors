#------------------- Correlations -----------------------#
#---------------- Patricia Perdomo Reyes ----------------#

# Cleaning
rm(list = ls())

# Load libraries
# Ex.: > install.packages("library"))
library(ggplot2)   # Para gráficos más detallados


# Load data bases (DB)
base_data1<-read.csv("Received_power/Prx_Comms_C1.csv")
base_data2<-read.csv("PL_Data/PL_Comms_C1.csv")
base_data3<-read.csv("Received_power/Prx_Comms_C.csv")
base_data4<-read.csv("Received_power/Prx_Library_C1.csv")
base_data5<-read.csv("Received_power/Prx_Library_C2.csv")
base_data6<-read.csv("Received_power/Prx_SSE_C1.csv")
base_data7<-read.csv("Received_power/Prx_SSE_C2.csv")


library(tidyverse)
library(rstatix)
library(ggpubr)
library(psych)

# Output file
pdf("Correlación_Comm_P_rx_C1.pdf", width = 7, height = 5)
# Correlation matrix 1
# Spearman
pairs.panels(base_data1, method = "spearman")
dev.off()



# Outppur file
pdf("Correlación_Comm_PL_C1.pdf", width = 7, height = 5)
# Correlation matrixn 2
# Spearman
pairs.panels(base_data2, method = "spearman")
dev.off()

# Especificar el archivo de salida y sus dimensiones(guardar Gráfica)
pdf("Correlación_Comm_P_rx_C2.pdf", width = 7, height = 5)
# Correlation matrix 1
# Spearman
pairs.panels(base_data3, method = "spearman")
dev.off()


# Output file
pdf("Correlación_Library_P_rx_C1.pdf", width = 7, height = 5)
# Correlation matrix 1
# Spearman
pairs.panels(base_data4, method = "spearman")
dev.off()


# Output file
pdf("Correlación_Library_P_rx_C2.pdf", width = 7, height = 5)
# Correlation matrix 1
# Spearman
pairs.panels(base_data5, method = "spearman")
dev.off()

# Output file
pdf("Correlación_SSE_P_rx_C1.pdf", width = 7, height = 5)
# Correlation matrix 1
# Spearman
pairs.panels(base_data6, method = "spearman")
dev.off()

# Outpur file
pdf("Correlación_SSE_P_rx_C2.pdf", width = 7, height = 5)
# Correlation matrix 1
# Spearman
pairs.panels(base_data7, method = "spearman")
dev.off()
