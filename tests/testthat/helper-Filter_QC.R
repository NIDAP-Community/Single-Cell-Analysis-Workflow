getParamFQ <- function(data){
  
  if(data == "TEC"){
    object=readRDS(test_path(
      paste0("fixtures/",data), paste0(data,'_ProcessRaw_SO_downsample.rds')))
    mad.mitoch.limits=c(NA,3)
    mitoch.limits = c(NA,10)

    
    
  } else if (data == "Chariou") {
    object=readRDS(test_path(
      paste0("fixtures/",data), paste0(data,'_ProcessRaw_SO_downsample.rds')))
    mad.mitoch.limits=c(NA,3)
    mitoch.limits = c(NA,25)

    
    
  } else if (data == "PBMC_Single") {
    object=readRDS(test_path(
      paste0("fixtures/",data), paste0(data,'_ProcessRaw_SO_downsample.rds')))

    mad.mitoch.limits=c(NA,3)
    mitoch.limits = c(NA,25)

    
    
  } else if (data == "NSCLC_Multi") {
    object=readRDS(test_path(
      paste0("fixtures/",data), paste0('NSCLCmulti','_ProcessRaw_SO_downsample.rds')))

    mad.mitoch.limits=c(NA,3)
    mitoch.limits = c(NA,25)
    
    
  } else if (data == "BRCA") {
    object=readRDS(test_path(
      paste0("fixtures/",data), paste0(data,'_ProcessRaw_SO_downsample.rds')))
    
    mad.mitoch.limits=c(NA,3)
    mitoch.limits = c(NA,25)
    
    
  }
  
  return(list("object" = object, 
              "mad.mitoch.limits" = mad.mitoch.limits,
              "mitoch.limits" = mitoch.limits))  
}


.drawFig <- function(x, width = 10, height = 10){
  path <- tempfile(fileext = ".png")
  ggsave(path, x, width = 10, height = 10)
  print(path)
}
.saveSO <- function(x, width = 10, height = 10){
  path <- tempfile(fileext = ".rds")
  saveRDS(x, file = path)
  print(path)
}


