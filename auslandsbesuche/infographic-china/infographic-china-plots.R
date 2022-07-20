library(dplyr)
library(ggplot2)
library(ggrepel)
library(extrafont)
# font_import()
# fonts()
library(scales)

data<-tibble(read.csv("./infographic-china/data.csv", sep = "\t"))

colDark<-"#4C1C00"
colRed<-"#EE1C25"
colBack<-"#FFFEEB"
font<-"Gentium Basic"
colBright<-"#FF9505"

df1<-data %>%
  group_by(Year) %>%
  summarise(n = n()) 

p1<-df1 %>%
  ggplot(aes(x = Year, y = n)) +
  geom_line(color = colRed, size = 2) + 
  geom_point(color = colRed, size = 4.5) + 
  geom_smooth(
    aes(x = Year, y = n), 
    method = "loess", 
    formula = y~x, 
    se = FALSE,
    color = colDark, 
    linetype = "dashed", 
    size = 2.5) + 
  labs(title = "Chinas Führer
       zu Besuch im Ausland") + xlab("Jahr") + ylab("Besuche")

p1<-p1 + 
  theme(
    plot.background = element_rect(fill = colBack),
    panel.background = element_rect(fill = colBack), 
    plot.title = element_text(colour = colDark, face = "bold", size = 50, vjust = -7, hjust = .15, family = font), 
    axis.text = element_text(colour = colDark, family = font, size = 17),
    axis.title = element_text(colour = colDark, face = "bold", size = 17, family = font)) + 
  theme(panel.grid.major.x = element_blank(),
        panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_blank(),
        panel.grid.minor.x = element_blank(),
        axis.line.x = element_line(color=colDark),
        axis.line.y = element_line(color=colDark))

p1<-p1 + 
    geom_label_repel(data=subset(df1, Year == 1949), aes(label = "Gründung der\nVolksrepublik\n(1949)"), colour = colDark, nudge_y = 8, nudge_x = 2, segment.size = .5, fill = colBright, size = 5, label.r = .2, point.padding = 2, label.padding = .5, family = font) + 
  geom_label_repel(data=subset(df1, Year == 1966), aes(label = "Beginn der\nKulturrevolution\n(1966)"), colour = colDark, nudge_y = 5, nudge_x = 4, segment.size = .5, fill = colBright, size = 5, label.r = .2, point.padding = 2, label.padding = .5, family = font) +
  geom_label_repel(data=subset(df1, Year == 1978), aes(label = "Deng Xiaoping\n kommt an die Macht\n(1978)"), colour = colDark, nudge_y = 5, nudge_x = -2, segment.size = .5, fill = colBright, size = 5, label.r = .2, point.padding = 2, label.padding = .5, family = font) + 
  geom_label_repel(data=subset(df1, Year == 2012), aes(label = "Xi Jinping\nwird Präsident\n(2012)"), colour = colDark, nudge_y = -6, nudge_x = 3, segment.size = .5, fill = colBright, size = 5, label.r = .2, point.padding = 2, label.padding = .5, family = font) + 
  geom_label_repel(data=subset(df1, Year == 2020), aes(label = "Covid-19\nLockdown\n(2020)"), colour = colDark, nudge_y = 2, nudge_x = -5, segment.size = .5, fill = colBright, size = 5, label.r = .2, point.padding = 2, label.padding = .5, family = font) +
  geom_label_repel(data=subset(df1, Year == 1997), aes(label = "Hongkong wird\nwieder chinesisch\n(1997)"), colour = colDark, nudge_y = -4, nudge_x = 3, segment.size = .5, fill = colBright, size = 5, label.r = .2, point.padding = 2, label.padding = .5, family = font) +
  geom_label_repel(data=subset(df1, Year == 2001), aes(label = "China wird Mitglied\nder Welthandelsorganisation\n(2001)"), colour = colDark, nudge_y = 1, nudge_x = -10, segment.size = .5, fill = colBright, size = 5, label.r = .2, point.padding = 2, label.padding = .5, family = font) +
  geom_label_repel(data=subset(df1, Year == 2014), aes(label = "32 Auslandsbesuche\n2 in Deuschland\n(2014)"), colour = colDark, nudge_y = 3, nudge_x = -8, segment.size = .5, fill = colBright, size = 5, label.r = .2, point.padding = 2, label.padding = .5, family = font) +
  geom_label_repel(data=subset(df1, Year == 2013), aes(label = "Beginn der\nNeue Seidenstraße-Initiative\n(2013)"), colour = colDark, nudge_y = 4, nudge_x = -9, segment.size = .5, fill = colBright, size = 5, label.r = .2, point.padding = 2, label.padding = .5, family = font) 


colors<-c("#4C1C00", "#AB0D15", "#EE1C25", "#FF9505", "#FFBB5C", "#FFDDAD")
colors<-tibble(Continent = unique(data$Continent), Colors = colors)

library(scales)

pie1<-data %>%
  filter(Year <= 1966) %>%
  group_by(Continent) %>%
  summarize(n = n()) %>%
  arrange(n) %>%
  mutate(prop = n/sum(n)) %>%
  left_join(colors) %>%
  ggplot(aes(x="", y=prop, fill = Continent)) +
  geom_col(color = colBack) +
  coord_polar(theta = "y", direction = -1) +
  theme(legend.position="none") +
  scale_fill_manual(values = colors$Colors[c(3,2,1)]) +
  geom_text(
    aes(label = percent(prop, accuracy = 1), x = 1.3),
    position = position_stack(vjust = 0.5),
    color = colBack, size = 5, family = font) +
  labs(title = "1949-1966") +
  theme(
    plot.background = element_rect(fill = colBack),
    panel.background = element_rect(fill = colBack), 
    plot.title = element_text(colour = colDark, face = "bold", size = 20, vjust = 0, hjust = 0, family = font),
    axis.text = element_blank(),
    axis.ticks = element_blank(),
    axis.title = element_blank(),
    panel.grid.major.x = element_line(color = colBack),
    panel.grid.major.y = element_line(color = colBack),
    panel.grid.minor.x = element_line(color = colBack),
    panel.grid.minor.y = element_line(color = colBack))

pie2<-data %>%
  filter(Year > 1966 & Year <= 1989) %>%
  group_by(Continent) %>%
  summarize(n = n()) %>%
  arrange(n) %>%
  mutate(prop = n/sum(n)) %>%
  left_join(colors) %>%
  ggplot(aes(x="", y=prop, fill = Continent)) +
  geom_col(color = colBack) +
  coord_polar(theta = "y", direction = -1) +
  theme(legend.position="none") +
  scale_fill_manual(values = colors$Colors[c(3,2,1,4,5)]) +
  geom_text(
    aes(label = percent(prop, accuracy = 1), x = 1.3),
    position = position_stack(vjust = 0.5),
    color = c(colDark, colDark, colBack, colBack, colBack), size = 5, family = font) +
  labs(title = "1967-1989") +
  theme(
    plot.background = element_rect(fill = colBack),
    panel.background = element_rect(fill = colBack), 
    plot.title = element_text(colour = colDark, face = "bold", size = 20, vjust = 0, hjust = 0, family = font),
    axis.text = element_blank(),
    axis.ticks = element_blank(),
    axis.title = element_blank(),
    panel.grid.major.x = element_line(color = colBack),
    panel.grid.major.y = element_line(color = colBack),
    panel.grid.minor.x = element_line(color = colBack),
    panel.grid.minor.y = element_line(color = colBack))

pie3<-data %>%
  filter(Year > 1989) %>%
  group_by(Continent) %>%
  summarize(n = n()) %>%
  arrange(n) %>%
  mutate(prop = n/sum(n)) %>%
  left_join(colors) %>%
  ggplot(aes(x="", y=prop, fill = Continent)) +
  geom_col(color = colBack) +
  coord_polar(theta = "y", direction = -1) +
  theme(legend.position="none") +
  scale_fill_manual(values = colors$Colors[c(3,2,1,6,4,5)]) +
  geom_text(
    aes(label = percent(prop, accuracy = 1), x = 1.3),
    position = position_stack(vjust = 0.5),
    color = c(colDark, colDark, colDark, colBack, colBack, colBack), size = 5, family = font) +
  labs(title = "1990-2020") +
  theme(
    plot.background = element_rect(fill = colBack),
    panel.background = element_rect(fill = colBack), 
    plot.title = element_text(colour = colDark, face = "bold", size = 20, vjust = 0, hjust = 0, family = font),
    axis.text = element_blank(),
    axis.ticks = element_blank(),
    axis.title = element_blank(),
    panel.grid.major.x = element_line(color = colBack),
    panel.grid.major.y = element_line(color = colBack),
    panel.grid.minor.x = element_line(color = colBack),
    panel.grid.minor.y = element_line(color = colBack))

pieLegend<-pie3 + 
  theme(legend.position="right", text=element_text(family=font, size=20, colour = colDark), legend.background = element_rect(fill = colBack))+ 
  scale_fill_manual(
    name = "Bereiste Kontinente",
    values = colors$Colors[c(3,2,1,6,4,5)],
    labels = c("Afrika", "Asien", "Europa", "Latein-Amerika", "Nord-Amerika", "Pazifik"))
  
  
library(grid)
library(gridExtra) 
pieLegend<-cowplot::get_legend(pieLegend)
grid.newpage()

df<-data %>%
  mutate(Era = cut(Year, breaks = c(1948, 1977, 1989, 2002, 2012, 2021)))
levels(df$Era)<-c("Mao Zedong", "Deng Xiaoping", "Jiang Zemin", "Hu Jintao", "Xi Jinping")

bar<-df %>%
  group_by(Era, Continent) %>%
  summarise(n = n(), .groups = "drop") %>%
  group_by(Era) %>%
  mutate(prop = n/sum(n)*100) %>%
  ggplot(aes(y = prop, x = Era, fill = Continent)) +
  geom_bar(stat="identity") + 
  coord_flip() + 
  labs(title = "Reisen zu Zeiten von ...") +
  ylab("Anteilige Besuche") + xlab("") +
  scale_fill_manual(values=c(colors$Colors[c(3,2,1,6,4,5)])) +
  theme(legend.position="none") + 
  theme(
    plot.background = element_rect(fill = colBack),
    panel.background = element_rect(fill = colBack), 
    plot.title = element_text(colour = colDark, face = "bold", size = 25, vjust = 0, hjust = 0, family = font), 
    axis.text = element_text(colour = colDark, family = font, size = 15),
    axis.title = element_text(colour = colDark, family = font, size = 15)) + 
  theme(panel.grid.major.x = element_blank(),
        panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_blank(),
        panel.grid.minor.x = element_blank(),
        axis.line.x = element_line(color=colDark),
        axis.line.y = element_line(color=colDark))


eng<-read.csv("./infographic-china/names-english.csv", sep = "\t")
ger<-read.csv("./infographic-china/names-german.csv", sep = "\t")

df<-eng %>%
  left_join(ger) %>%
  right_join(data) %>%
  tibble()

rank1<-df %>%
  filter(Year <= 1989) %>%
  group_by(Land) %>%
  count() %>%
  ungroup() %>%
  arrange(-n) %>%
  slice_head(n = 12) %>%
  ggplot(aes(y = n, x = reorder(Land, n))) + 
  geom_bar(stat="identity", fill = colRed, color = colDark) + 
  coord_flip() + 
  labs(title = "Häufig bereiste Länder vor 1989", y = "Besuche", x ="") +
  theme(
    plot.background = element_rect(fill = colBack),
    panel.background = element_rect(fill = colBack), 
    plot.title = element_text(colour = colDark, face = "bold", size = 25, vjust = 0, hjust = 0, family = font), 
    axis.text = element_text(colour = colDark, family = font, size = 15), 
    axis.title = element_text(colour = colDark, family = font, size = 15)) + 
  theme(panel.grid.major.x = element_blank(),
        panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_blank(),
        panel.grid.minor.x = element_blank(),
        axis.line.x = element_line(color=colDark),
        axis.line.y = element_line(color=colDark)) +
  scale_y_continuous(breaks = pretty_breaks())

rank2<-df %>%
  filter(Year > 1989) %>%
  group_by(Land) %>%
  count() %>%
  ungroup() %>%
  arrange(-n) %>%
  slice_head(n = 12) %>%
  ggplot(aes(y = n, x = reorder(Land, n))) + 
  geom_bar(stat="identity", fill = colRed, color = colDark) + 
  coord_flip() + 
  labs(title = "Häufig bereiste Länder nach 1989", y = "Besuche", x ="") +
  theme(
    plot.background = element_rect(fill = colBack),
    panel.background = element_rect(fill = colBack), 
    plot.title = element_text(colour = colDark, face = "bold", size = 25, vjust = 0, hjust = 0, family = font), 
    axis.text = element_text(colour = colDark, family = font, size = 15), 
    axis.title = element_text(colour = colDark, family = font, size = 15)) + 
  theme(panel.grid.major.x = element_blank(),
        panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_blank(),
        panel.grid.minor.x = element_blank(),
        axis.line.x = element_line(color=colDark),
        axis.line.y = element_line(color=colDark)) +
  scale_y_continuous(breaks = pretty_breaks())


pdf("./infographic-china/p1.pdf", width = 16, height = 9)
p1
dev.off()

pdf("./infographic-china/pie1.pdf", width = 4, height = 4)
pie1
dev.off()

pdf("./infographic-china/pie2.pdf", width = 4, height = 4)
pie2
dev.off()

pdf("./infographic-china/pie3.pdf", width = 4, height = 4)
pie3
dev.off()

pdf("./infographic-china/pieLegend.pdf", width = 3, height = 3)
grid.draw(pieLegend)
dev.off()

pdf("./infographic-china/bar.pdf", width = 8)
bar
dev.off()

pdf("./infographic-china/rank1.pdf", width = 8)
rank1
dev.off()

pdf("./infographic-china/rank2.pdf", width = 8)
rank2
dev.off()



