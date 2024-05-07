cluster_kmeans <- kmeans(base_clusterização[,4:9],
                         centers = 3)


fviz_nbclust(base_clusterização[,4:9], kmeans, method = "wss", k.max = 20)


# Criando variável categórica para indicação do cluster no banco de dados
base_clusterização$cluster_K <- factor(cluster_kmeans$cluster)


# ANOVA da variável 'pedidos_mktp_out'
summary(anova_matematica <- aov(formula = pedidos_mktp_out ~ cluster_K,
                                data = base_clusterização))


# ANOVA da variável 'pedidos_mktp_out'
summary(anova_matematica <- aov(formula = pedidos_logistica_out ~ cluster_K,
                                data = base_clusterização))


# ANOVA da variável 'pedidos_mktp_nov'
summary(anova_matematica <- aov(formula = pedidos_mktp_nov ~ cluster_K,
                                data = base_clusterização))


# ANOVA da variável 'pedidos_mktp_nov'
summary(anova_matematica <- aov(formula = pedidos_mktp_nov ~ cluster_K,
                                data = base_clusterização))


# ANOVA da variável 'pedidos_mktp_dez'
summary(anova_matematica <- aov(formula = pedidos_mktp_dez ~ cluster_K,
                                data = base_clusterização))


# ANOVA da variável 'pedidos_mktp_dez'
summary(anova_matematica <- aov(formula = pedidos_mktp_dez ~ cluster_K,
                                data = base_clusterização))


