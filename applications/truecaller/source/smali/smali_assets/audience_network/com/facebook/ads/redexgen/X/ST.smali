.class public final Lcom/facebook/ads/redexgen/X/ST;
.super Lcom/facebook/ads/redexgen/X/OJ;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ON;Z)V
    .locals 10

    .line 51860
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/OJ;-><init>(Lcom/facebook/ads/redexgen/X/ON;Z)V

    .line 51861
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 51862
    .local p0, "bottomContainer":Landroid/widget/RelativeLayout;
    const/4 v9, -0x2

    const/4 v4, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51863
    .local p1, "bottomContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51864
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0R(Landroid/view/View;Landroid/content/Context;)V

    .line 51865
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51866
    .local v0, "auxContainer":Landroid/widget/LinearLayout;
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51867
    const/16 v0, 0x50

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 51868
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 51869
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51870
    .local v5, "auxContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v2, Lcom/facebook/ads/redexgen/X/OJ;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/OJ;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/OJ;->A08:I

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v8, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 51871
    if-eqz p2, :cond_3

    const/4 v0, -0x2

    :goto_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51872
    .local v9, "ctaParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p2, :cond_2

    sget v1, Lcom/facebook/ads/redexgen/X/OJ;->A08:I

    :goto_1
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v1, v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 51873
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51874
    .local p2, "textParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 51875
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 51876
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/OG;

    move-result-object v0

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51877
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getCtaButton()Lcom/facebook/ads/redexgen/X/SZ;

    move-result-object v0

    invoke-virtual {v7, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51878
    invoke-virtual {v5, v7, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51879
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A02()Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/ST;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51880
    invoke-virtual {p0, v5, v3}, Lcom/facebook/ads/redexgen/X/ST;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51881
    return-void

    .line 51882
    :cond_0
    const/4 v0, -0x1

    goto :goto_3

    .line 51883
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/OJ;->A08:I

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 51884
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final A0b(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 0
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51885
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/OJ;->A0b(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 51886
    return-void
.end method

.method public final A0c()Z
    .locals 1

    .line 51887
    const/4 v0, 0x1

    return v0
.end method
