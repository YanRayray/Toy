#install.packages("tidyverse")
library(tidyverse)
library(readxl)

##for mhealth tech
toy<-read_excel("G:/SON_Consult/20191209Coding and Matrix for chord diagram.xlsx",sheet="items in mhealth tech ChordD")
row<-as.matrix(toy[1:18,1])
toy<-toy[,-1]
toy<-as.matrix(toy)
row.names(toy)<-row

##Set color grid
color.grid<-c( 
Napoles2019="black", 
Stubbins2018="black", 
Ferrante2018="black", 
Hartman2018="black", 
Haggerty2017="black", 
Haggerty2016="black", 
Zhang2016="black", 
Valle2016="black", 
Quintilian2016="black", 
McCarroll2015="black", 
Spark2015="black", 
Wu2018="black", 
Wei2018="black", 
Geng2018="black", 
Dong2018="black", 
Park2019="black", 
LozanoLozano2019="black", 
Short2016="black", 
i1="red", i2="red", i3="red", i4="red", i5="red", i6="red", i7="red", i8="red", i9="red", 
i10="gold", i11="gold", i12="gold", i13="gold", i14="gold", i15="gold", i16="gold", i17="tan1 ", i18="tan1 ", i19="tan1", 
i20=" orangered1", i21="orangered1", i22="orangered1", i23="orangered1", 
i24=" palegreen ", i25="palegreen", i26="palegreen", i27="palegreen", i28="palegreen",i29="palegreen", 
i30="forestgreen", i31=" forestgreen", i32=" forestgreen", 
i33="cyan", i34="cyan", i35="cyan", 
i36="cyan", 
i37="cyan", 
i38="cyan", 
i39="cyan", 
i40="cyan", 
i41="dodgerblue", i42="dodgerblue", 
i43="dodgerblue", 
i44="dodgerblue", 
i45="dodgerblue", 
i46="dodgerblue", 
i47="dodgerblue", 
i48="navyblue ", i49="navyblue ", i50="navyblue ", 
i51="pink ", i52="pink ", i53="pink ", i54="pink ", i55="pink ", i56="pink ", 
i57="pink ", 
i58="pink ", 
i59="pink ", 
i60="pink ", i61="pink ", 
i62="violetred2 ", i63="violetred2 ", i64="violetred2 ", i65="violetred2 ", 
i66="lightslateblue", i67="lightslateblue", i68="lightslateblue", i69="lightslateblue", i70="lightslateblue", i71="lightslateblue", 
i87="purple2", i88="purple2", i89="purple2", i90="purple2", 
i91="gray66", i92="gray66", i93="gray66")

library(circlize)
circos.clear()
par(cex=.5,mar=c(0,0,0,0))
chordDiagram(t(toy),grid.col = color.grid, annotationTrack = "grid", 
             preAllocateTracks = list(track.height = max(strwidth(unlist(dimnames(t(toy)))))))

#apply labels clockwise rotated
circos.track(track.index = 1, panel.fun = function(x, y) {
  circos.text(CELL_META$xcenter, CELL_META$ylim[1], CELL_META$sector.index, 
              facing = "clockwise", niceFacing = TRUE, adj = c(0, 0.5))
}, bg.border = NA) 


##SAME But for PA intervention
toy2<-read_excel("G:/SON_Consult/20191209Coding and Matrix for chord diagram.xlsx",sheet="Items in PA intervention ChordD")
row<-as.matrix(toy2[1:18,1])
toy2<-toy2[,-1]
toy2<-as.matrix(toy2)
row.names(toy2)<-row

library(circlize)
circos.clear()
par(cex=.5,mar=c(0,0,0,0))
chordDiagram(t(toy2),grid.col = color.grid, annotationTrack = "grid", 
             preAllocateTracks = list(track.height = max(strwidth(unlist(dimnames(t(toy2)))))))

#apply labels clockwise rotated
circos.track(track.index = 1, panel.fun = function(x, y) {
  circos.text(CELL_META$xcenter, CELL_META$ylim[1], CELL_META$sector.index, 
              facing = "clockwise", niceFacing = TRUE, adj = c(0, 0.5))
}, bg.border = NA) 

