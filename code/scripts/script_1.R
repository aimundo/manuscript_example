###script to create a composite image

#read data
data<-read.csv(here("data","dataset.csv"))

data$Group<-as.factor(data$Group)

#regression formula

formula<-y~x

a1<-ggplot(data=data,aes(x=x,y=y,fill=Group,color=Group))+
    geom_point(show.legend=FALSE,shape=21,colour='black',size=5,
               alpha=0.7)+
    facet_wrap(~Group)+
    geom_smooth(method="lm",formula=formula, se=T)+
    stat_poly_eq(use_label(c("R2","p.value")), formula = formula, size = 3)+
    theme_classic()+
    thm1




## add pictures to create composite image

cells<-rasterGrob(readPNG(here("figures","cells.png"),native=TRUE))
molecule<-rasterGrob(readPNG(here("figures","molecule.png"),native=TRUE))
jellyfish <-rasterGrob(readPNG(here("figures","jellyfish.png"),native=TRUE))

## provide layout for figure
layout<-"
AAAABBBB
AAAABBBB
AAAABBBB
AAAABBBB
CCCCDDDD
CCCCDDDD
CCCCDDDD
CCCCDDDD
"


#assemble figure

image_a<-wrap_elements(
    panel=cells
)+
    theme(plot.title = element_text(hjust = 0.5))+
    ylab("cells")+
    wrap_elements(
        panel=molecule
    )+
    ylab("cells-2")+
    wrap_elements(
        panel=jellyfish
    )+
    ylab("jellyfish")+
    theme(plot.title = element_text(hjust = 0.5))+
    a1+
    plot_layout(design=layout)+
    plot_annotation(tag_levels = 'A')
