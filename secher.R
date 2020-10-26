cs<-read.table("secher.txt", header=T)
model_a<-lm(bwt~bpd, data = cs)
sum.model_a<-summary(model_a)
R2<-sum.model_a$r.squared 
f<-sum.model_a$fstatistic
p.value<-pf(f[1],f[2],f[3],lower.tail=F) 
output<-sprintf("R2 = %f and p-value=%f", R2, p.value) 
cat(output)
intercept<-model_a$coefficients[1] 
slope<-model_a$coefficients[2]
output<-sprintf("slope=%f intercept=%f",slope, intercept) 
cat(output)
png("graph.bwt_bpd.png")
plot(bwt~bpd, data=cs)
abline(model_a)
dev.off()
model_b<-lm(bwt~ad, data = cs)
sum.model_b<-summary(model_b)
R2_b<-sum.model_b$r.squared 
f<-sum.model_b$fstatistic
p.value_b<-pf(f[1],f[2],f[3],lower.tail=F) 
output_b<-sprintf("R2 = %f and p-value=%f", R2_b, p.value_b) 
cat(output_b)
intercept<-model_b$coefficients[1] 
slope_b<-model_b$coefficients[2]
output_b<-sprintf("slope=%f intercept=%f",slope_b, intercept_b) 
cat(output_b)
png("graph.bwt_ad.png")
plot(bwt~ad, data=cs)
abline(model_b)
dev.off()
model_c<-lm(bwt~bpd+ad, data = cs)
sum.model_c<-summary(model_c)
R2_c<-sum.model_c$r.squared 
f<-sum.model_c$fstatistic
p.value_c<-pf(f[1],f[2],f[3],lower.tail=F) 
output_c<-sprintf("R2= %f and p-value=%f", R2_c, p.value_c) 
cat(output_c)
intercept_c<-model_c$coefficients[1] 
slope_c<-model_c$coefficients[2]
output_c<-sprintf("slope=%f intercept=%f",slope_c, intercept_c) 
cat(output_c)


