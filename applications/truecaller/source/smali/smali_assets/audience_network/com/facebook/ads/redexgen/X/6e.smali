.class public final Lcom/facebook/ads/redexgen/X/6e;
.super Lcom/facebook/ads/redexgen/X/Mk;
.source ""


# instance fields
.field public final A00:Landroid/graphics/Paint;

.field public final A01:Lcom/facebook/ads/redexgen/X/XT;

.field public final A02:Lcom/facebook/ads/redexgen/X/Jb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/Mi;

.field public final A04:Lcom/facebook/ads/redexgen/X/L3;

.field public final A05:Lcom/facebook/ads/redexgen/X/Kq;

.field public final A06:Lcom/facebook/ads/redexgen/X/Q4;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;ZLcom/facebook/ads/redexgen/X/Jb;)V
    .locals 8
    .param p3    # Lcom/facebook/ads/redexgen/X/Jb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15963
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Mk;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 15964
    new-instance v0, Lcom/facebook/ads/redexgen/X/7Q;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7Q;-><init>(Lcom/facebook/ads/redexgen/X/6e;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6e;->A04:Lcom/facebook/ads/redexgen/X/L3;

    .line 15965
    new-instance v0, Lcom/facebook/ads/redexgen/X/7P;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7P;-><init>(Lcom/facebook/ads/redexgen/X/6e;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6e;->A05:Lcom/facebook/ads/redexgen/X/Kq;

    .line 15966
    new-instance v0, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/6e;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6e;->A03:Lcom/facebook/ads/redexgen/X/Mi;

    .line 15967
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/6e;->A02:Lcom/facebook/ads/redexgen/X/Jb;

    .line 15968
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6e;->A01:Lcom/facebook/ads/redexgen/X/XT;

    .line 15969
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q4;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Q4;-><init>(Lcom/facebook/ads/redexgen/X/XT;Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6e;->A06:Lcom/facebook/ads/redexgen/X/Q4;

    .line 15970
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 15971
    .local p0, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide v6, 0x4037c28f5c28f5c3L    # 23.76

    mul-double/2addr v0, v6

    double-to-int v5, v0

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v0

    mul-double/2addr v3, v6

    double-to-int v0, v3

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 15972
    .local p1, "btnLayout":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xd

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 15973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6e;->A06:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Q4;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15974
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6e;->A06:Lcom/facebook/ads/redexgen/X/Q4;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Q4;->setChecked(Z)V

    .line 15975
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6e;->A06:Lcom/facebook/ads/redexgen/X/Q4;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Q4;->setClickable(Z)V

    .line 15976
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6e;->A00:Landroid/graphics/Paint;

    .line 15977
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6e;->A00:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15978
    if-eqz p2, :cond_0

    .line 15979
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6e;->A00:Landroid/graphics/Paint;

    const/high16 v0, -0x67000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 15980
    :goto_0
    invoke-static {p0, v3}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 15981
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6e;->A06:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6e;->addView(Landroid/view/View;)V

    .line 15982
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6e;->setGravity(I)V

    .line 15983
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v5, 0x4052000000000000L    # 72.0

    mul-double/2addr v0, v5

    double-to-int v4, v0

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v0

    mul-double/2addr v2, v5

    double-to-int v1, v2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 15984
    .local p3, "layout":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 15985
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15986
    return-void

    .line 15987
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6e;->A00:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 15988
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6e;->A00:Landroid/graphics/Paint;

    const/16 v0, 0xcc

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/6e;)Lcom/facebook/ads/redexgen/X/XT;
    .locals 0

    .line 15989
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/6e;->A01:Lcom/facebook/ads/redexgen/X/XT;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/6e;)Lcom/facebook/ads/redexgen/X/Jb;
    .locals 0

    .line 15990
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/6e;->A02:Lcom/facebook/ads/redexgen/X/Jb;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/6e;)Lcom/facebook/ads/redexgen/X/Po;
    .locals 0

    .line 15991
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->getVideoView()Lcom/facebook/ads/redexgen/X/Po;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/6e;)Lcom/facebook/ads/redexgen/X/Po;
    .locals 0

    .line 15992
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->getVideoView()Lcom/facebook/ads/redexgen/X/Po;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/6e;)Lcom/facebook/ads/redexgen/X/Po;
    .locals 0

    .line 15993
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->getVideoView()Lcom/facebook/ads/redexgen/X/Po;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/6e;)Lcom/facebook/ads/redexgen/X/Po;
    .locals 0

    .line 15994
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->getVideoView()Lcom/facebook/ads/redexgen/X/Po;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/6e;)Lcom/facebook/ads/redexgen/X/Q4;
    .locals 0

    .line 15995
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/6e;->A06:Lcom/facebook/ads/redexgen/X/Q4;

    return-object p0
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 15996
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A07()V

    .line 15997
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->getVideoView()Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15998
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->getVideoView()Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    .line 15999
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getEventBus()Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v3

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9P;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6e;->A04:Lcom/facebook/ads/redexgen/X/L3;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6e;->A05:Lcom/facebook/ads/redexgen/X/Kq;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6e;->A03:Lcom/facebook/ads/redexgen/X/Mi;

    aput-object v0, v2, v1

    .line 16000
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9O;->A03([Lcom/facebook/ads/redexgen/X/9P;)V

    .line 16001
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q1;-><init>(Lcom/facebook/ads/redexgen/X/6e;)V

    .line 16002
    .local p0, "clickListener":Landroid/view/View$OnClickListener;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6e;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16003
    return-void
.end method

.method public final A08()V
    .locals 4

    .line 16004
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6e;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16005
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->getVideoView()Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16006
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->getVideoView()Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    .line 16007
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getEventBus()Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v3

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9P;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6e;->A03:Lcom/facebook/ads/redexgen/X/Mi;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6e;->A05:Lcom/facebook/ads/redexgen/X/Kq;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6e;->A04:Lcom/facebook/ads/redexgen/X/L3;

    aput-object v0, v2, v1

    .line 16008
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9O;->A04([Lcom/facebook/ads/redexgen/X/9P;)V

    .line 16009
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A08()V

    .line 16010
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 16011
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6e;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6e;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6e;->getPaddingRight()I

    move-result v0

    sub-int/2addr v2, v0

    .line 16012
    .local p0, "width":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6e;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6e;->getPaddingTop()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6e;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    .line 16013
    .local p1, "height":I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 16014
    .local v2, "edgeLength":I
    div-int/lit8 v4, v0, 0x2

    .line 16015
    .local v0, "centerX":I
    div-int/lit8 v1, v0, 0x2

    .line 16016
    .local v2, "centerY":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6e;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v4

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6e;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v1

    int-to-float v2, v0

    int-to-float v1, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6e;->A00:Landroid/graphics/Paint;

    .line 16017
    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 16018
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Mk;->onDraw(Landroid/graphics/Canvas;)V

    .line 16019
    return-void
.end method
