#Funktionen aus dem Funktionsscript
source("functions.R")

#Pfadeinstellungen zum Datensatz
file_path <- "C:/Users/fatin/Documents/lieblinge.csv"

#Einlesen des Datensatzes
lieblinge <- read_dataset(file_path)

#Anwenden der deskriptiven Statistik-Funktion
descriptive_stats <- calculate_descriptive_stats(lieblinge)
print(descriptive_stats)

#Anwenden der Visualisierungs-Funktion
create_plot(lieblinge, "Alter", "Lieblingsfarbe", "Lieblingstier")