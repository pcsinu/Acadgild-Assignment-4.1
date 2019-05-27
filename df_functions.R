df1 = data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))
df2 = data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))
df1 #left table
df2 #right table

inner_join <- merge(df1, df2, by="CustId")
print(inner_join)

outer_join <- merge(df1, df2, by="CustId", all=TRUE)
print(outer_join)

left_outer_join <- merge(df1, df2, by="CustId", all.x=TRUE)
print(left_outer_join)

right_outer_join <- merge(df1, df2, by="CustId", all.y=TRUE)
print(right_outer_join)
