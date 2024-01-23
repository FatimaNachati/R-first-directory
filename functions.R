#Funktion zur Einlesung des Datensatzes
read_dataset <- function(file_path){
  read.csv(file_path)
}

#Funktion zur deskriptiven Statistik
calculate_descriptive_stats <- function(data){
  summary(data)
}

#Funktion zur Visualisierung
create_plot <- function(data, x_var, y_var, color_var){
  library(ggplot2)
  ggplot(data, aes(x = get(x_var), y = get(y_var), color = get(color_var))) +
         geom_point() + labs(title = "Visualisierung der Lieblingsdaten")
}