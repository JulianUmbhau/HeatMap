install.packages("heatmaply")
library(heatmaply)

animals <- cluster::animals

colnames(animals) <- c("warm-blooded", 
                       "can fly",
                       "vertebrate",
                       "endangered",
                       "live in groups",
                       "have hair")


# some_col_func <- function(n) rev(colorspace::heat_hcl(n, c = c(80, 30), l = c(30, 90), power = c(1/5, 1.5)))
# some_col_func <- colorspace::diverge_hcl
# some_col_func <- colorspace::sequential_hcl
some_col_func <- function(n) (colorspace::diverge_hcl(n, h = c(246, 40), c = 96, l = c(65, 90)))

heatmaply(as.matrix(animals-1), 
          main = "Attributes of Animals",
          srtCol = 35,
          k_col = 3, k_row = 4,
          margins =c(80,50, 40,10),      
          col = some_col_func
)


unique(data$Embarked)
unique(data$Pclass)

data<-read.csv("test.csv")

data$Sex<-as.numeric(data$Sex)
data$Cabin<-as.numeric(data$Cabin)
data$Embarked<-as.numeric(data$Embarked)

data <- subset(data, select = -c(Name,Ticket) )
data <- subset(data, select = -c(Name,Ticket,Fare,Cabin,PassengerId,Age,Parch,SibSp) )


heatmaply(as.matrix(data-1), 
          main = "Titanic Passengers",
          srtCol = 35,
          k_col = 3, k_row=4,
          margins =c(80,50,40,10),
          col=some_col_func)
          
          
find_k()
heatmaply()
install.packages("dendextend")
