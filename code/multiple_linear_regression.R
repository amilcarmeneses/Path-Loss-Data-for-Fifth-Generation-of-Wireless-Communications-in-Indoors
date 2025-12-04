#-------------- Multiple linear regression -------------------#
#-------------- Patricia Perdomo Reyes -----------------------#


rm(list = ls())

# Load libraries
library(ggplot2)
library(GGally)
library(lattice)
library(caret)

# Load data base (DB)
base_data<-read.csv("auxiliary_data/DB_Comm_C1.csv")


#install.packages("tidyverse")
#install.packages("rstatix")
#install.packages("ggpubr")
#install.packages("psych")


set.seed(123)
train_index <- createDataPartition(base_data$PL,p=0.7,list=FALSE)
train_data <- base_data[train_index, ]
test_data <- base_data[-train_index, ]
writeClipboard(as.character(test_data$PL))

indices_test <- rownames(test_data)
writeClipboard(as.character(indices_test))


train_control <- trainControl(method = "cv",number = 10)


modelo_rlm <- train(PL ~ ., data = train_data, method ="lm",
                   trControl = train_control)

# Estadísticas del modelo
summary(modelo_rlm)

# Evaluando modelo con los datos de prueba
predicciones_rlm <- predict(modelo_rlm, newdata = test_data)

# Calcular las métricas de rendimiento
resultados <- data.frame (RMSE = RMSE(predicciones_rlm, test_data$PL),
                          MAE = MAE(predicciones_rlm, test_data$PL),
                          R2 = R2(predicciones_rlm, test_data$PL))
print(resultados)


rss <- sum((test_data$PL - predicciones_rlm)^2)
tss <- sum((test_data$PL - mean(test_data$PL))^2)
r_square <- 1 - rss/tss


n <- nrow(test_data)
p <- ncol(test_data)-1
r_squared_adjusted <- 1-(1-r_square)*(n-1)/(n-p-1)

mse <- mean((test_data$PL - predicciones_rlm)^2)
rmse <- sqrt(mse)
mae <- mean(abs(test_data$PL - predicciones_rlm))

cat("R2:", r_square,"\n")
cat("R2 ajustado:", r_squared_adjusted,"\n")
cat("MSE:", mse,"\n")
cat("RMSE:", rmse,"\n")
cat("MAE:", mae,"\n")

# Read CSV with log distance
log_dist <- read.csv("auxiliary_data/PL_log_dist_Comms_C1.csv")

# Output file
pdf("Multiple_Linear_Regression_Comms_C1.pdf", width = 7, height = 5)

plot(test_data$Distancia, predicciones_rlm, col = "blue", main = "Configuration 1",
     xlab = "Distance (m)", ylab = "Path loss (dB)", pch=16, cex=0.5, xlim = c(1, 33), ylim = c(25, 130))
points(test_data$Distancia, test_data$PL, col = "red", pch=16, cex=0.5)
legend("bottomright", legend = c("Multiple Linear Regression","Measurements"), col = c("blue", "red"), pch=16, cex=0.8)

dev.off()
