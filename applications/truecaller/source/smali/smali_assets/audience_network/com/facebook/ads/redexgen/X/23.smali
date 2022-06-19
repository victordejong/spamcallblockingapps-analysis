.class public final Lcom/facebook/ads/redexgen/X/23;
.super Lcom/facebook/ads/redexgen/X/9m;
.source ""


# static fields
.field public static final A00:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 4698
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/23;->A00:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ON;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Rh;)V
    .locals 1

    .line 4699
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/9m;-><init>(Lcom/facebook/ads/redexgen/X/ON;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/Rh;)V

    .line 4700
    return-void
.end method


# virtual methods
.method public final A00()Z
    .locals 1

    .line 4701
    const/4 v0, 0x0

    return v0
.end method

.method public final A0B()Z
    .locals 1

    .line 4702
    const/4 v0, 0x0

    return v0
.end method

.method public final A0j(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 7

    .line 4703
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/OG;

    move-result-object v6

    .line 4704
    .local p0, "titleDescContainer":Lcom/facebook/ads/redexgen/X/OG;
    const/4 v5, 0x3

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/OG;->setAlignment(I)V

    .line 4705
    const/4 v4, -0x2

    const/4 v3, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4706
    .local v6, "adTitleAndDescriptionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/16 v0, 0x8

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4707
    invoke-virtual {v6, v2}, Lcom/facebook/ads/redexgen/X/OG;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4708
    sget v0, Lcom/facebook/ads/redexgen/X/23;->A00:I

    invoke-virtual {v6, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/OG;->setPadding(IIII)V

    .line 4709
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0R(Landroid/view/View;Landroid/content/Context;)V

    .line 4710
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4711
    .local v5, "ctaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4712
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getCtaButton()Lcom/facebook/ads/redexgen/X/SZ;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/SZ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4713
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/23;->addView(Landroid/view/View;)V

    .line 4714
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/23;->addView(Landroid/view/View;)V

    .line 4715
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getCtaButton()Lcom/facebook/ads/redexgen/X/SZ;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/23;->addView(Landroid/view/View;)V

    .line 4716
    return-void
.end method
