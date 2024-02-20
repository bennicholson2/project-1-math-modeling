#Question 4
#(20 points) For each of the datasets below, fit at least two models each by transforming the data
#appropriately. Graph the residuals and analyze how well the model fits the data, indicating what you
#believe to be the best model, with explanation.
x_1 <- c(1,2,3,4,5,6)
y_1 <- c(1.34,1.61,-0.98,-3.8,-4.55,-2.30)
df_1 = data.frame(x_1,y_1)

#Plot the first points
library(ggplot2)

ggplot(df_1, aes(x = x_1, y = y_1)) +
  geom_point(color = 'blue') +
  geom_line(color = 'red') +
  labs(title = 'x vs y points with lines', x = 'x-axis', y = 'y-axis')

#Apply a sinusoidal transformation to the x values
x_1_sin_transform <- sin(x_1)
df_x_1_sin_transform = data.frame(x_1_sin_transform,y_1)
ggplot(df_1, aes(x = x_1_sin_transform, y = y_1)) +
  geom_point(color = 'blue') +
  geom_line(color = 'red') + 
  labs(title = 'x vs y points with lines', x = 'x-axis', y = 'y-axis')

#Apply a cosine transformation to the x values
#You need to find the middle value of the x values which is 3.5
#Then move cosine 3.5 values to the right so that it should create a cosine graph which closely follows the values

middle <- median(x_1)

# Calculate the cosine function centered at 3.5
x_1_cos_transform <- cos(x_1)

#Create the new dataframe
df_x_1_cos_transform = data.frame(x_1_cos_transform,y_1)
ggplot(df_x_1_cos_transform, aes(x=x_1_cos_transform, y=y_1))+
  geom_point(color = 'blue') +
  geom_line(color = 'red') +
  labs(title = 'x vs y points with lines', x = 'x-axis', y = 'y-axis')

#Actually lets do a -x^2 transformation
x_1_squared_transform <- -x_1^2
df_x_1_squared_transform = data.frame(x_1_squared_transform,y_1)
ggplot(df_x_1_squared_transform, aes(x=x_1_squared_transform, y=y_1))+
  geom_point(color = 'blue') +
  geom_line(color = 'red') +
  labs(title = 'x vs y points with lines', x = 'x-axis', y = 'y-axis')

x_2 = c(1,2,3,4,5,6)
y_2 = c(16.3,23.1,37.4,46.9,58.7,91.0)
df_2 = data.frame(x_2,y_2)

ggplot(df_2, aes(x = x_2, y = y_2)) +
  geom_point(color = 'blue') +
  geom_line(color = 'red') +
  labs(title = 'x vs y points with lines', x = 'x-axis', y = 'y-axis')

y_2_log_transform <- log(y_2)
df_y_2_log_transform = data.frame(x_2, y_2_log_transform)

ggplot(df_y_2_log_transform, aes(x = x_2, y = y_2_log_transform)) +
  geom_point(color = 'blue') +
  geom_line(color = 'red') +
  labs(title = 'x vs y points with lines', x = 'x-axis', y = 'y-axis')

y_2_hyperbola_transform <- 1/(y_2)
df_y_2_hyperbola_transform = data.frame(x_2,y_2_hyperbola_transform)
ggplot(df_y_2_hyperbola_transform, aes(x = x_2, y = y_2_hyperbola_transform)) +
  geom_point(color = 'blue') +
  geom_line(color = 'red') +
  labs(title = 'x vs y points with lines', x = 'x-axis', y = 'y-axis')