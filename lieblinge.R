#Datenrahmen erstellen
data <- data.frame(
  ID = c(1,2,3,4,5,6,7,8,9,10,11,12,14),
  Alter = c(20,23,30,18,19,24,18,19,21,25,19,28,35),
  Lieblingsfarbe = c("blau","grün","rot","blau","gelb","rot","rot","rot","grün",
                     "grün","blau","gelb","blau"),
  Lieblingstier = c("Elefant","Kuh","Hund","Katze","Hund","Hund","Hund","Giraffe",
                    "Bär","Zebra","Pferd","Hase","Katze")
)

#CSV-Datei speichern
write.csv(data, "lieblinge.csv", row.names = FALSE)

#Beispielcode zum Einlesen der lieblinge.csv-Datei
lieblinge <- read.csv("C:/Users/fatin/Documents/lieblinge.csv")

summary(lieblinge)

library(ggplot2)
ggplot(lieblinge, aes(x = Alter, y = Lieblingsfarbe, color = Lieblingstier)) +
       geom_point() + labs(title = "Visualisierung der Lieblingsdaten")
