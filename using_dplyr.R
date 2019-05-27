library(dplyr)
df1 = data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))
df2 = data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))
df1 #left table
df2 #right table

#bindrows
bind_value <- bind_rows(df1,df2)
print(bind_value)



#Keep only observations in df1 that match in df2
e <- intersect(df1$CustId,df2$CustId)
#print(e)
matching <- df1[df1$CustId %in% e,]
print(matching)

#Drop all observations in df1 that match in df2
c <- setdiff(df1$CustId,df2$CustId)
#print(c)
nonmatching <- df1[df1$CustId %in% c,]
print(nonmatching)