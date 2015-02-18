library(rgeos)
library(maptools)
library(rgdal)

setwd("C:/Users/avanderlaar/Dropbox/GIS/2014/")



nv <- readOGR(dsn="C:/Users/avanderlaar/Dropbox/GIS/2014", layer="nv_impound")
nv <- spTransform(nv, CRS("+proj=longlat +datum=WGS84"))
sc <- readOGR(dsn="C:/Users/avanderlaar/Dropbox/GIS/2014", layer="sc_impound")
sc <- spTransform(sc, CRS("+proj=longlat +datum=WGS84"))
sl <- readOGR(dsn="C:/Users/avanderlaar/Dropbox/GIS/2014", layer="sl_impound")
sl <- spTransform(sl, CRS("+proj=longlat +datum=WGS84"))
fg <- readOGR(dsn="C:/Users/avanderlaar/Dropbox/GIS/2014", layer="fg_impound")
fg <- spTransform(fg, CRS("+proj=longlat +datum=WGS84"))
ts <- readOGR(dsn="C:/Users/avanderlaar/Dropbox/GIS/2014", layer="ts_impound")
ts <- spTransform(ts, CRS("+proj=longlat +datum=WGS84"))
cc <- readOGR(dsn="C:/Users/avanderlaar/Dropbox/GIS/2014", layer="cc_impound")
cc <- spTransform(cc, CRS("+proj=longlat +datum=WGS84"))
bkkl9 <- readOGR(dsn="C:/Users/avanderlaar/Dropbox/GIS/2014", layer="bk_impound9")
bkkl9 <- spTransform(bkkl9, CRS("+proj=longlat +datum=WGS84"))
bkkl5 <- readOGR(dsn="C:/Users/avanderlaar/Dropbox/GIS/2014", layer="bk_impound5")
bkkl5 <- spTransform(bkkl5, CRS("+proj=longlat +datum=WGS84"))
bkkl6 <- readOGR(dsn="C:/Users/avanderlaar/Dropbox/GIS/2014", layer="bk_impound6")
bkkl6 <- spTransform(bkkl6, CRS("+proj=longlat +datum=WGS84"))
bkkl2 <- readOGR(dsn="C:/Users/avanderlaar/Dropbox/GIS/2014", layer="bk_impound2")
bkkl2 <- spTransform(bkkl2, CRS("+proj=longlat +datum=WGS84"))
dc <- readOGR(dsn="C:/Users/avanderlaar/Dropbox/GIS/2014", layer="dc_impound")
dc <- spTransform(dc, CRS("+proj=longlat +datum=WGS84"))
os <- readOGR(dsn="C:/Users/avanderlaar/Dropbox/GIS/2014", layer="os_impound")
os <- spTransform(os, CRS("+proj=longlat +datum=WGS84"))
tmpC <- readOGR(dsn="C:/Users/avanderlaar/Dropbox/GIS/2014", layer="tmp_impoundc")
tmpC <- spTransform(tmpC, CRS("+proj=longlat +datum=WGS84"))
tmpE <- readOGR(dsn="C:/Users/avanderlaar/Dropbox/GIS/2014", layer="tmp_impounde")
tmpE <- spTransform(tmpE, CRS("+proj=longlat +datum=WGS84"))
tmpI <- readOGR(dsn="C:/Users/avanderlaar/Dropbox/GIS/2014", layer="tmp_impoundi")
tmpI <- spTransform(tmpI, CRS("+proj=longlat +datum=WGS84"))

nvsanc <- nv[1,]
nvash <- nv[2,]
nvred <- nv[3:4]
os23 <- os[30,]
os22 <- os[31,]
os21 <- os[32,]
osr7 <- os[33,]
osr6 <- os[34,]
osr3 <- os[35,]
osr1 <- os[36,]
osr9 <- os[37,]
osr45 <- os[39,]
scmsu1 <- sc[9,]
scmsu2 <- sc[10,]
scmsu3 <- sc[11,]
scsge <- sc[19,]
scsgd <- sc[20,]
scsgc <- sc[21,]
scsgb <- sc[22,]
scnmallard <- sc[31,]
fgwalkin3 <- fg[15:16,]
fgpool3 <- fg[14,]
fgwalkin2 <- fg[18,]
fgpool2 <- fg[19,]
fgpool1 <- fg[20,]
dc15 <- dc[1,]
dc10 <- dc[2,]
dc8 <- dc[3,]
dc13 <- dc[4,]
dc14 <- dc[5,]
dc20 <- dc[6,]
dc16 <- dc[7,]
dc23 <- dc[8,]
dc22 <- dc[9,]
dc21 <- dc[10,]
dc11 <- dc[11,]
dc18 <- dc[13,]
ts2a <- ts[2,]
ts4a <- ts[3,]
ts6a <- ts[4:5,]
ts8a <- ts[7,]
slswanlake <- sl[1,]
slsilverlake <- sl[2,]
slm10 <- sl[4,]
slm11 <- sl[5,]
slm13 <- sl[6,]
slm5 <- sl[11,]
slm4 <- sl[12,]
slm3 <- sl[13,]
cc1 <- cc[1,]
cc2 <- cc[2,]
cc3 <- cc[3,]
cc4 <- cc[4,]
cc5 <- cc[5,]
cc6 <- cc[6,]
cc7 <- cc[7,]
cc8 <- cc[8,]
cc9 <- cc[9,]
cc10 <- cc[10,]
cc11 <- cc[11,]
cc12 <- cc[12,]
cc13 <- cc[13,]
cc14 <- cc[14,]
cc15 <- cc[15,]
cc16 <- cc[16,]

nvsanc.p <- as.data.frame(spsample(nvsanc, n=20, type='random', iter=10))
nvash.p <- as.data.frame(spsample(nvash, n=20, type='random', iter=10))
nvred.p <- as.data.frame(spsample(nvred, n=20, type='random', iter=10))
os23.p <- as.data.frame(spsample(os23, n=20, type='random', iter=10))
os22.p <- as.data.frame(spsample(os22, n=20, type='random', iter=10))
os21.p <- as.data.frame(spsample(os21, n=20, type='random', iter=10))
osr7.p <- as.data.frame(spsample(osr7, n=20, type='random', iter=10))
osr6.p <- as.data.frame(spsample(osr6, n=20, type='random', iter=10))
osr3.p <- as.data.frame(spsample(osr3, n=20, type='random', iter=10))
osr1.p <- as.data.frame(spsample(osr1, n=20, type='random', iter=10))
osr9.p <- as.data.frame(spsample(osr9, n=20, type='random', iter=10))
osr45.p <- as.data.frame(spsample(osr45, n=20, type='random', iter=10))
scmsu1.p <-as.data.frame(spsample(scmsu1, n=20, type='random', iter=10))
scmsu2.p <- as.data.frame(spsample(scmsu2, n=20, type='random', iter=10))
scmsu3.p <- as.data.frame(spsample(scmsu3, n=20, type='random', iter=10))
scsge.p <- as.data.frame(spsample(scsge, n=20, type='random', iter=10))
scsgd.p <- as.data.frame(spsample(scsgd, n=20, type='random', iter=10))
scsgc.p <- as.data.frame(spsample(scsgc, n=20, type='random', iter=10))
scsgb.p <- as.data.frame(spsample(scsgb, n=20, type='random', iter=10))
scnmallard.p <- as.data.frame(spsample(scnmallard, n=20, type='random', iter=10))
fgwalkin3.p <- as.data.frame(spsample(fgwalkin3, n=20, type='random', iter=10))
fgpool3.p <- as.data.frame(spsample(fgpool3, n=20, type='random', iter=10))
fgwalkin2.p <- as.data.frame(spsample(fgwalkin2, n=20, type='random', iter=10))
fgpool2.p <- as.data.frame(spsample(fgpool2, n=20, type='random', iter=10))
fgpool1.p <- as.data.frame(spsample(fgpool1, n=20, type='random', iter=10))
dc15.p <- as.data.frame(spsample(dc15, n=20, type='random', iter=10))
dc10.p <- as.data.frame(spsample(dc10, n=20, type='random', iter=10))
dc8.p <- as.data.frame(spsample(dc8, n=20, type='random', iter=10))
dc13.p <- as.data.frame(spsample(dc13, n=20, type='random', iter=10))
dc14.p <- as.data.frame(spsample(dc14, n=20, type='random', iter=10))
dc20.p <- as.data.frame(spsample(dc20, n=20, type='random', iter=10))
dc16.p <- as.data.frame(spsample(dc16, n=20, type='random', iter=10))
dc23.p <- as.data.frame(spsample(dc23, n=20, type='random', iter=10))
dc22.p <- as.data.frame(spsample(dc22, n=20, type='random', iter=10))
dc21.p <- as.data.frame(spsample(dc21, n=20, type='random', iter=10))
dc11.p <- as.data.frame(spsample(dc11, n=20, type='random', iter=10))
dc18.p <- as.data.frame(spsample(dc18, n=20, type='random', iter=10))
ts2a.p <- as.data.frame(spsample(ts2a, n=20, type='random', iter=10))
ts4a.p <- as.data.frame(spsample(ts4a, n=20, type='random', iter=10))
ts6a.p <- as.data.frame(spsample(ts6a, n=20, type='random', iter=10))
ts8a.p <- as.data.frame(spsample(ts8a, n=20, type='random', iter=10))
slm10.p <- as.data.frame(spsample(slm10, n=20, type='random', iter=10))
slm11.p <- as.data.frame(spsample(slm11, n=20, type='random', iter=10))
slm13.p <- as.data.frame(spsample(slm13, n=20, type='random', iter=10))
slm5.p <- as.data.frame(spsample(slm5, n=20, type='random', iter=10))
slm4.p <- as.data.frame(spsample(slm4, n=20, type='random', iter=10))
slm3.p <- as.data.frame(spsample(slm3, n=20, type='random', iter=10))
bkkl9.p <- as.data.frame(spsample(bkkl9, n=20, type='random', iter=10))
bkkl5.p <- as.data.frame(spsample(bkkl5, n=20, type='random', iter=10))
bkkl2.p <- as.data.frame(spsample(bkkl2, n=20, type='random', iter=10))
bkkl6.p <- as.data.frame(spsample(bkkl6, n=20, type='random', iter=10))
tmpC.p <- as.data.frame(spsample(tmpC, n=20, type='random', iter=10))
tmpE.p <- as.data.frame(spsample(tmpE, n=20, type='random', iter=10))
tmpI.p <- as.data.frame(spsample(tmpI, n=20, type='random', iter=10))

cc1.p <- as.data.frame(spsample(cc1, n=20, type='random', iter=10))
cc2.p <- as.data.frame(spsample(cc2, n=20, type='random', iter=10))
cc3.p <- as.data.frame(spsample(cc3, n=20, type='random', iter=10))
cc4.p <- as.data.frame(spsample(cc4, n=20, type='random', iter=10))
cc5.p <- as.data.frame(spsample(cc5, n=20, type='random', iter=10))
cc6.p <- as.data.frame(spsample(cc6, n=20, type='random', iter=10))
cc7.p <- as.data.frame(spsample(cc7, n=20, type='random', iter=10))
cc8.p <- as.data.frame(spsample(cc8, n=20, type='random', iter=10))
cc9.p <- as.data.frame(spsample(cc9, n=20, type='random', iter=10))
cc10.p <- as.data.frame(spsample(cc10, n=20, type='random', iter=10))
cc11.p <- as.data.frame(spsample(cc11, n=20, type='random', iter=10))
cc12.p <- as.data.frame(spsample(cc12, n=20, type='random', iter=10))
cc13.p <- as.data.frame(spsample(cc13, n=20, type='random', iter=10))
cc14.p <- as.data.frame(spsample(cc14, n=20, type='random', iter=10))
cc15.p <- as.data.frame(spsample(cc15, n=20, type='random', iter=10))
cc16.p <- as.data.frame(spsample(cc16, n=20, type='random', iter=10))



nvsanc.p$ID<- paste("nvsanc",1:20,sep="_")
nvash.p$ID<- paste("nvash",1:20,sep="_")
nvred.p$ID<- paste("nvred",1:20,sep="_")
os23.p$ID<- paste("os23",1:20,sep="_")
os22.p$ID<- paste("os22",1:20,sep="_")
os21.p$ID<- paste("os21",1:20,sep="_")
osr7.p$ID<- paste("osr7",1:20,sep="_")
osr6.p$ID<- paste("osr6",1:20,sep="_")
osr3.p$ID<- paste("osr3",1:20,sep="_")
osr1.p$ID<- paste("osr1",1:20,sep="_")
osr9.p$ID<- paste("osr9",1:20,sep="_")
osr45.p$ID<- paste("osr45",1:20,sep="_")
scmsu1.p$ID<- paste("scmsu1",1:20,sep="_")
scmsu2.p$ID<- paste("scmsu2",1:20,sep="_")
scmsu3.p$ID<- paste("scmsu3",1:20,sep="_")
scsge.p$ID<- paste("scsge",1:20,sep="_")
scsgd.p$ID<- paste("scsgd",1:20,sep="_")
scsgc.p$ID<- paste("scsgc",1:20,sep="_")
scsgb.p$ID<- paste("scsgb",1:20,sep="_")
scnmallard.p$ID<- paste("scnmallard",1:20,sep="_")
fgwalkin3.p$ID<- paste("fgwalkin3",1:20,sep="_")
fgpool3.p$ID<- paste("fgpool3",1:20,sep="_")
fgwalkin2.p$ID<- paste("fgwalkin2",1:20,sep="_")
fgpool2.p$ID<- paste("fgpool2",1:20,sep="_")
fgpool1.p$ID<- paste("fgpool1",1:20,sep="_")
dc15.p$ID<- paste("dc15",1:20,sep="_")
dc10.p$ID<- paste("dc10",1:20,sep="_")
dc8.p$ID<- paste("dc8",1:20,sep="_")
dc13.p$ID<- paste("dc13",1:20,sep="_")
dc14.p$ID<- paste("dc14",1:20,sep="_")
dc20.p$ID<- paste("dc20",1:20,sep="_")
dc16.p$ID<- paste("dc16",1:20,sep="_")
dc23.p$ID<- paste("dc23",1:20,sep="_")
dc22.p$ID<- paste("dc22",1:20,sep="_")
dc21.p$ID<- paste("dc21",1:20,sep="_")
dc11.p$ID<- paste("dc11",1:20,sep="_")
dc18.p$ID<- paste("dc18",1:20,sep="_")
ts2a.p$ID<- paste("ts2a",1:20,sep="_")
ts4a.p$ID<- paste("ts4a",1:20,sep="_")
ts6a.p$ID <-paste("ts6a",1:20,sep="_")
ts8a.p$ID<- paste("ts8a",1:20,sep="_")
slm10.p$ID<- paste("slm10",1:20,sep="_")
slm11.p$ID<- paste("slm11",1:20,sep="_")
slm13.p$ID<- paste("slm13",1:20,sep="_")
slm5.p$ID<- paste("slm5",1:20,sep="_")
slm4.p$ID<- paste("slm4",1:20,sep="_")
slm3.p$ID<- paste("slm3",1:20,sep="_")
bkkl9.p$ID <- paste("bkkl9",1:20,sep="_")
bkkl5.p$ID <- paste("bkkl5",1:20,sep="_")
bkkl2.p$ID <- paste("bkkl2",1:20,sep="_")
bkkl6.p$ID <- paste("bkkl6",1:20,sep="_")
tmpC.p$ID <- paste("tmpC",1:20,sep="_")
tmpE.p$ID <- paste("tmpE",1:20,sep="_")
tmpI.p$ID <- paste("tmpI",1:20,sep="_")
cc1.p$ID <- paste("cc1",1:20,sep="_")
cc2.p$ID <- paste("cc2",1:20,sep="_")
cc3.p$ID <- paste("cc3",1:20,sep="_")
cc4.p$ID <- paste("cc4",1:20,sep="_")
cc5.p$ID <- paste("cc5",1:20,sep="_")
cc6.p$ID <- paste("cc6",1:20,sep="_")
cc7.p$ID <- paste("cc7",1:20,sep="_")
cc8.p$ID <- paste("cc8",1:20,sep="_")
cc9.p$ID <- paste("cc9",1:20,sep="_")
cc10.p$ID <- paste("cc10",1:20,sep="_")
cc11.p$ID <- paste("cc11",1:20,sep="_")
cc12.p$ID <- paste("cc12",1:20,sep="_")
cc13.p$ID <- paste("cc13",1:20,sep="_")
cc14.p$ID <- paste("cc14",1:20,sep="_")
cc15.p$ID <- paste("cc15",1:20,sep="_")
cc16.p$ID <- paste("cc16",1:20,sep="_")

a1 <- rbind(slm3.p, slm4.p)
a2 <- rbind(a1, slm5.p)
a3 <- rbind(a2, slm13.p)
a4 <- rbind(a3, slm11.p)
a5 <- rbind(a4, slm10.p)
a6 <- rbind(a5, ts8a.p)
a7 <- rbind(a6, ts6a.p)
a8 <- rbind(a7, ts4a.p)
a9 <- rbind(a8, ts2a.p)
a10 <- rbind(a9, dc18.p)
a11 <- rbind(a10, dc11.p)
a12 <- rbind(a11, dc21.p)
a13 <- rbind(a12, dc22.p)
a14 <- rbind(a13, dc23.p)
a15 <- rbind(a14, dc16.p)
a16 <- rbind(a15, dc20.p)
a17 <- rbind(a16, dc14.p)
a18 <- rbind(a17, dc13.p)
a19 <- rbind(a18, dc8.p)
a20 <- rbind(a19, dc10.p)
a21 <- rbind(a20, dc15.p)
a22 <- rbind(a21, fgpool1.p)
a23 <- rbind(a22, fgpool2.p)
a24 <- rbind(a23, fgwalkin2.p)
a25 <- rbind(a24, fgpool3.p)
a26 <- rbind(a25, fgwalkin3.p)
a27 <- rbind(a26, scnmallard.p)
a28 <- rbind(a27, scsgb.p)
a29 <- rbind(a28, scsgc.p)
a30 <- rbind(a29, scsgd.p)
a31 <- rbind(a30, scsge.p)
a32 <- rbind(a31, scmsu3.p)
a33 <- rbind(a32, scmsu2.p)
a34 <- rbind(a33, scmsu1.p)
a35 <- rbind(a34, osr45.p)
a36 <- rbind(a35, osr9.p)
a37 <- rbind(a36, osr1.p)
a38 <- rbind(a37, osr3.p)
a39 <- rbind(a38, osr6.p)
a40 <- rbind(a39, osr7.p)
a41 <- rbind(a40, os21.p)
a42 <- rbind(a41, os22.p)
a43 <- rbind(a42, os23.p)
a44 <- rbind(a43, nvred.p)
a45 <- rbind(a44, nvash.p)
a46 <- rbind(a45, bkkl9.p)
a47 <- rbind(a46, bkkl5.p)
a48 <- rbind(a47, bkkl6.p)
a49 <- rbind(a48, bkkl2.p)
a50 <- rbind(a49, tmpC.p)
a51 <- rbind(a50, tmpE.p)
a52 <- rbind(a51, tmpI.p)
a53 <- rbind(a52, cc1.p)
a54 <- rbind(a53, cc2.p)
a55 <- rbind(a54, cc3.p)
a56 <- rbind(a55, cc4.p)
a57 <- rbind(a56, cc5.p)
a58 <- rbind(a57, cc6.p)
a59 <- rbind(a58, cc7.p)
a60 <- rbind(a59, cc8.p)
a61 <- rbind(a60, cc9.p)
a62 <- rbind(a61, cc10.p)
a63 <- rbind(a62, cc11.p)
a64 <- rbind(a63, cc12.p)
a65 <- rbind(a64, cc13.p)
a66 <- rbind(a65, cc14.p)
a67 <- rbind(a66, cc15.p)
a68 <- rbind(a67, cc16.p)
afinal <- rbind(a68, nvsanc.p)

points <- SpatialPointsDataFrame(afinal, coords=afinal[,1:2], proj4string=CRS("+proj=longlat +datum=WGS84"))
writeOGR(points, driver="ESRI Shapefile", layer="random_2014",dsn="C:/Users/avanderlaar/Dropbox/GIS/2014", overwrite_layer=T)
writeOGR(points, driver="KML",dsn="random_2014.kml", overwrite_layer=T, layer="points")
