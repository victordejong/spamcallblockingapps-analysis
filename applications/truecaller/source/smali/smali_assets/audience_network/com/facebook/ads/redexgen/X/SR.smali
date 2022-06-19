.class public final Lcom/facebook/ads/redexgen/X/SR;
.super Lcom/facebook/ads/redexgen/X/OJ;
.source ""


# static fields
.field public static final A01:I


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/OS;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 51826
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/facebook/ads/redexgen/X/SR;->A01:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ON;Z)V
    .locals 7

    .line 51827
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/OJ;-><init>(Lcom/facebook/ads/redexgen/X/ON;Z)V

    .line 51828
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A02()Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OS;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/OS;-><init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/OS;

    .line 51829
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/OS;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/OG;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/OS;->A01(Lcom/facebook/ads/redexgen/X/OG;Z)V

    .line 51830
    const/4 v6, -0x2

    const/4 v5, -0x1

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51831
    .local p0, "ctaButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51832
    sget v3, Lcom/facebook/ads/redexgen/X/OJ;->A08:I

    sget v2, Lcom/facebook/ads/redexgen/X/OJ;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/OJ;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/OJ;->A08:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 51833
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getCtaButton()Lcom/facebook/ads/redexgen/X/SZ;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/SZ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51834
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51835
    .local v2, "insideContainerLayout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51836
    .local v1, "insideContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getCtaButton()Lcom/facebook/ads/redexgen/X/SZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SZ;->getId()I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 51837
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51838
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 51839
    .local p1, "mediaViewContainerParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 51840
    sget v2, Lcom/facebook/ads/redexgen/X/OJ;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/OJ;->A08:I

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 51841
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/OS;

    invoke-virtual {v4, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51842
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/SR;->addView(Landroid/view/View;)V

    .line 51843
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getCtaButton()Lcom/facebook/ads/redexgen/X/SZ;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SR;->addView(Landroid/view/View;)V

    .line 51844
    return-void
.end method


# virtual methods
.method public final A02()Z
    .locals 1

    .line 51845
    const/4 v0, 0x0

    return v0
.end method

.method public final A0B()Z
    .locals 1

    .line 51846
    const/4 v0, 0x0

    return v0
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 4
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51847
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/OJ;->A0b(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 51848
    const-wide/16 v1, 0x0

    cmpl-double v0, p3, v1

    if-lez v0, :cond_0

    .line 51849
    sget v1, Lcom/facebook/ads/redexgen/X/SR;->A01:I

    sget v0, Lcom/facebook/ads/redexgen/X/OJ;->A08:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 51850
    .local p0, "availableWidthPx":I
    int-to-double v2, v1

    div-double/2addr v2, p3

    double-to-int v1, v2

    .line 51851
    .local p1, "mediaHeight":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/OS;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/OS;->A00(I)V

    .line 51852
    .end local p0    # "availableWidthPx":I
    .end local p1    # "mediaHeight":I
    :cond_0
    return-void
.end method

.method public final A0c()Z
    .locals 1

    .line 51853
    const/4 v0, 0x0

    return v0
.end method
