library("feather")

df = data.frame(a=c(1, 2, 3),
                b=c(1.1, 2.2, 3.3))
write_feather(df, "/tmp/dataframe.feather")
