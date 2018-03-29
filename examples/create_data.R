
#create package directory for data
data_path=file.path(getwd(),"data")
if(!dir.exists(data_path)) dir.create(data_path)

#create data
example=data.frame(x=1:50,y=50:1)

#write data to package data folder
dat_path=file.path(data_path,"example.rda")
save(example,file=dat_path)
