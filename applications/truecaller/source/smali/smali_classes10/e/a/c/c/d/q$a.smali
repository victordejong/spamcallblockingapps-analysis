.class public Le/a/c/c/d/q$a;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/q;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Lcom/truecaller/insights/models/categorizer/CategorizerWordProb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/c/c/d/q;Ln3/c0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p2, Lcom/truecaller/insights/models/categorizer/CategorizerWordProb;

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/insights/models/categorizer/CategorizerWordProb;->getWord()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/truecaller/insights/models/categorizer/CategorizerWordProb;->getWord()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/truecaller/insights/models/categorizer/CategorizerWordProb;->getProbability()Lcom/truecaller/insights/categorizer/KeywordMeta;

    move-result-object p2

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz p2, :cond_7

    .line 6
    invoke-virtual {p2}, Lcom/truecaller/insights/categorizer/KeywordMeta;->getProbHam()Ljava/lang/Double;

    move-result-object v6

    if-nez v6, :cond_1

    .line 7
    invoke-interface {p1, v5}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/truecaller/insights/categorizer/KeywordMeta;->getProbHam()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-interface {p1, v5, v6, v7}, Ln3/e0/a/d;->T0(ID)V

    .line 9
    :goto_1
    invoke-virtual {p2}, Lcom/truecaller/insights/categorizer/KeywordMeta;->getProbSpam()Ljava/lang/Double;

    move-result-object v5

    if-nez v5, :cond_2

    .line 10
    invoke-interface {p1, v4}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {p2}, Lcom/truecaller/insights/categorizer/KeywordMeta;->getProbSpam()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-interface {p1, v4, v5, v6}, Ln3/e0/a/d;->T0(ID)V

    .line 12
    :goto_2
    invoke-virtual {p2}, Lcom/truecaller/insights/categorizer/KeywordMeta;->getTfHam()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_3

    .line 13
    invoke-interface {p1, v3}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 14
    :cond_3
    invoke-virtual {p2}, Lcom/truecaller/insights/categorizer/KeywordMeta;->getTfHam()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-interface {p1, v3, v4, v5}, Ln3/e0/a/d;->T0(ID)V

    .line 15
    :goto_3
    invoke-virtual {p2}, Lcom/truecaller/insights/categorizer/KeywordMeta;->getTfSpam()Ljava/lang/Double;

    move-result-object v3

    if-nez v3, :cond_4

    .line 16
    invoke-interface {p1, v2}, Ln3/e0/a/d;->y0(I)V

    goto :goto_4

    .line 17
    :cond_4
    invoke-virtual {p2}, Lcom/truecaller/insights/categorizer/KeywordMeta;->getTfSpam()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Ln3/e0/a/d;->T0(ID)V

    .line 18
    :goto_4
    invoke-virtual {p2}, Lcom/truecaller/insights/categorizer/KeywordMeta;->getIdfHam()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_5

    .line 19
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_5

    .line 20
    :cond_5
    invoke-virtual {p2}, Lcom/truecaller/insights/categorizer/KeywordMeta;->getIdfHam()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->T0(ID)V

    .line 21
    :goto_5
    invoke-virtual {p2}, Lcom/truecaller/insights/categorizer/KeywordMeta;->getIdfSpam()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_6

    .line 22
    invoke-interface {p1, v0}, Ln3/e0/a/d;->y0(I)V

    goto :goto_6

    .line 23
    :cond_6
    invoke-virtual {p2}, Lcom/truecaller/insights/categorizer/KeywordMeta;->getIdfSpam()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->T0(ID)V

    goto :goto_6

    .line 24
    :cond_7
    invoke-interface {p1, v5}, Ln3/e0/a/d;->y0(I)V

    .line 25
    invoke-interface {p1, v4}, Ln3/e0/a/d;->y0(I)V

    .line 26
    invoke-interface {p1, v3}, Ln3/e0/a/d;->y0(I)V

    .line 27
    invoke-interface {p1, v2}, Ln3/e0/a/d;->y0(I)V

    .line 28
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    .line 29
    invoke-interface {p1, v0}, Ln3/e0/a/d;->y0(I)V

    :goto_6
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `categorizer_probability` (`word`,`probHam`,`probSpam`,`tfHam`,`tfSpam`,`idfHam`,`idfSpam`) VALUES (?,?,?,?,?,?,?)"

    return-object v0
.end method
