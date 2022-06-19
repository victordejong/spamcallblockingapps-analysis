.class public final Lcom/facebook/ads/redexgen/X/OK;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/ON;Landroid/os/Bundle;Z)Lcom/facebook/ads/redexgen/X/OJ;
    .locals 12
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47082
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ON;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v8

    .line 47083
    .local p0, "adInfo":Lcom/facebook/ads/redexgen/X/19;
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/OI;->A00(Lcom/facebook/ads/redexgen/X/19;)F

    move-result v0

    float-to-double v10, v0

    .line 47084
    .local v0, "aspectRatio":D
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ON;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0M()Z

    move-result v7

    .line 47085
    .local v7, "isWatchAndBrowse":Z
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ON;->A00()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ON;->A01()I

    move-result v0

    .line 47086
    invoke-static {v1, v0, v10, v11}, Lcom/facebook/ads/redexgen/X/OI;->A05(IID)Z

    move-result v4

    .line 47087
    .local v1, "renderFullscreen":Z
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v5

    .line 47088
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ON;->A06()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v3

    .line 47089
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ON;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 47090
    const-string v0, ""

    invoke-static {v5, v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/0g;->A00(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v6

    .line 47091
    .local v0, "adAction":Lcom/facebook/ads/redexgen/X/0f;
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v3, 0x1

    xor-int/2addr v5, v3

    .line 47092
    .local v4, "isVideo":Z
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47093
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    .line 47094
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A09()Lcom/facebook/ads/redexgen/X/Jf;

    move-result-object v2

    .line 47095
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ON;->A02()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ON;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v0

    .line 47096
    invoke-interface {v2, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/Jf;->AFC(Landroid/view/View;Ljava/lang/String;Z)V

    .line 47097
    :cond_0
    if-eqz v7, :cond_2

    instance-of v0, v6, Lcom/facebook/ads/redexgen/X/FK;

    if-eqz v0, :cond_2

    .line 47098
    new-instance v7, Lcom/facebook/ads/redexgen/X/SK;

    invoke-direct {v7, p0}, Lcom/facebook/ads/redexgen/X/SK;-><init>(Lcom/facebook/ads/redexgen/X/ON;)V

    .line 47099
    .local p2, "layout":Lcom/facebook/ads/redexgen/X/OJ;
    .local v5, "layout":Lcom/facebook/ads/redexgen/X/OJ;
    :goto_0
    if-eqz p2, :cond_1

    .line 47100
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ON;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v9

    .line 47101
    move-object p0, p1

    invoke-virtual/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/OJ;->A0b(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 47102
    :cond_1
    return-object v7

    .line 47103
    .end local p2    # "layout":Lcom/facebook/ads/redexgen/X/OJ;
    :cond_2
    if-eqz v5, :cond_3

    .line 47104
    new-instance v7, Lcom/facebook/ads/redexgen/X/9t;

    invoke-direct {v7, p0}, Lcom/facebook/ads/redexgen/X/9t;-><init>(Lcom/facebook/ads/redexgen/X/ON;)V

    .restart local p2    # "layout":Lcom/facebook/ads/redexgen/X/OJ;
    goto :goto_0

    .line 47105
    .end local p2    # "layout":Lcom/facebook/ads/redexgen/X/OJ;
    :cond_3
    if-nez v5, :cond_4

    .line 47106
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47107
    new-instance v7, Lcom/facebook/ads/redexgen/X/9u;

    invoke-direct {v7, p0, v4}, Lcom/facebook/ads/redexgen/X/9u;-><init>(Lcom/facebook/ads/redexgen/X/ON;Z)V

    .restart local p2    # "layout":Lcom/facebook/ads/redexgen/X/OJ;
    goto :goto_0

    .line 47108
    .end local p2    # "layout":Lcom/facebook/ads/redexgen/X/OJ;
    :cond_4
    if-eqz v4, :cond_6

    .line 47109
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ON;->A00()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    .line 47110
    .local p2, "isInLandscape":Z
    :goto_1
    new-instance v7, Lcom/facebook/ads/redexgen/X/ST;

    invoke-direct {v7, p0, v3}, Lcom/facebook/ads/redexgen/X/ST;-><init>(Lcom/facebook/ads/redexgen/X/ON;Z)V

    .line 47111
    .local p2, "layout":Lcom/facebook/ads/redexgen/X/OJ;
    goto :goto_0

    .line 47112
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 47113
    .end local p2    # "layout":Lcom/facebook/ads/redexgen/X/OJ;
    :cond_6
    invoke-static {v10, v11}, Lcom/facebook/ads/redexgen/X/OI;->A03(D)Z

    move-result v0

    new-instance v7, Lcom/facebook/ads/redexgen/X/SR;

    invoke-direct {v7, p0, v0}, Lcom/facebook/ads/redexgen/X/SR;-><init>(Lcom/facebook/ads/redexgen/X/ON;Z)V

    goto :goto_0
.end method
