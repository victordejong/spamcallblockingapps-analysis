.class public final Lcom/facebook/ads/redexgen/X/Q4;
.super Landroid/widget/Button;
.source ""


# static fields
.field public static A07:[B


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Ljava/lang/String;

.field public A02:Z

.field public final A03:Landroid/graphics/Paint;

.field public final A04:Landroid/graphics/Path;

.field public final A05:Landroid/graphics/Path;

.field public final A06:Landroid/graphics/Path;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Q4;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 1

    .line 49547
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Q4;-><init>(Lcom/facebook/ads/redexgen/X/XT;Z)V

    .line 49548
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Z)V
    .locals 4

    .line 49549
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 49550
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Q4;->A02:Z

    .line 49551
    const/4 v2, 0x5

    const/4 v1, 0x4

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q4;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A01:Ljava/lang/String;

    .line 49552
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q4;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A00:Ljava/lang/String;

    .line 49553
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A04:Landroid/graphics/Path;

    .line 49554
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A05:Landroid/graphics/Path;

    .line 49555
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A06:Landroid/graphics/Path;

    .line 49556
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q3;

    invoke-direct {v0, p0, p2}, Lcom/facebook/ads/redexgen/X/Q3;-><init>(Lcom/facebook/ads/redexgen/X/Q4;Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A03:Landroid/graphics/Paint;

    .line 49557
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q4;->A01()V

    .line 49558
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Q4;->setClickable(Z)V

    .line 49559
    invoke-static {p0, v3}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 49560
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Q4;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 1

    .line 49561
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A02:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A01:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Q4;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 49562
    return-void

    .line 49563
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A00:Ljava/lang/String;

    goto :goto_0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Q4;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x59t
        0x68t
        0x7ct
        0x7at
        0x6ct
        0x76t
        0x4at
        0x47t
        0x5ft
    .end array-data
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 49564
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-ge v1, v0, :cond_0

    .line 49565
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Q4;->setLayerType(ILandroid/graphics/Paint;)V

    .line 49566
    :cond_0
    const/high16 v2, 0x42c80000    # 100.0f

    .line 49567
    .local p0, "designedSize":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v5, v0

    div-float/2addr v5, v2

    .line 49568
    .local p1, "scaleFactor":F
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A02:Z

    if-eqz v0, :cond_1

    .line 49569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A06:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 49570
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Q4;->A06:Landroid/graphics/Path;

    const/high16 v4, 0x41d40000    # 26.5f

    mul-float v1, v5, v4

    const/high16 v3, 0x41780000    # 15.5f

    mul-float v0, v5, v3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 49571
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Q4;->A06:Landroid/graphics/Path;

    mul-float v1, v5, v4

    const/high16 v0, 0x42a90000    # 84.5f

    mul-float/2addr v0, v5

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49572
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Q4;->A06:Landroid/graphics/Path;

    const/high16 v1, 0x42b40000    # 90.0f

    mul-float/2addr v1, v5

    const/high16 v0, 0x42480000    # 50.0f

    mul-float/2addr v0, v5

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49573
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A06:Landroid/graphics/Path;

    mul-float/2addr v4, v5

    mul-float/2addr v3, v5

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49574
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A06:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 49575
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Q4;->A06:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A03:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 49576
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 49577
    return-void

    .line 49578
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A04:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 49579
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Q4;->A04:Landroid/graphics/Path;

    const/high16 v7, 0x41e80000    # 29.0f

    mul-float v1, v5, v7

    const/high16 v4, 0x41a80000    # 21.0f

    mul-float v0, v5, v4

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 49580
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Q4;->A04:Landroid/graphics/Path;

    mul-float v1, v5, v7

    const/high16 v6, 0x429e0000    # 79.0f

    mul-float v0, v5, v6

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49581
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Q4;->A04:Landroid/graphics/Path;

    const/high16 v2, 0x42340000    # 45.0f

    mul-float v1, v5, v2

    mul-float v0, v5, v6

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49582
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Q4;->A04:Landroid/graphics/Path;

    mul-float/2addr v2, v5

    mul-float v0, v5, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49583
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Q4;->A04:Landroid/graphics/Path;

    mul-float/2addr v7, v5

    mul-float v0, v5, v4

    invoke-virtual {v1, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A04:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 49585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A05:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 49586
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Q4;->A05:Landroid/graphics/Path;

    const/high16 v3, 0x425c0000    # 55.0f

    mul-float v1, v5, v3

    mul-float v0, v5, v4

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 49587
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Q4;->A05:Landroid/graphics/Path;

    mul-float v1, v5, v3

    mul-float v0, v5, v6

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49588
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Q4;->A05:Landroid/graphics/Path;

    const/high16 v2, 0x428e0000    # 71.0f

    mul-float v0, v5, v2

    mul-float/2addr v6, v5

    invoke-virtual {v1, v0, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49589
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Q4;->A05:Landroid/graphics/Path;

    mul-float/2addr v2, v5

    mul-float v0, v5, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49590
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A05:Landroid/graphics/Path;

    mul-float/2addr v3, v5

    mul-float/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A05:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 49592
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Q4;->A04:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A03:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 49593
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Q4;->A05:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A03:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 49594
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Q4;->A02:Z

    .line 49595
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q4;->A01()V

    .line 49596
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Q4;->refreshDrawableState()V

    .line 49597
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Q4;->invalidate()V

    .line 49598
    return-void
.end method

.method public setPauseAccessibilityLabel(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 49599
    if-eqz p1, :cond_0

    .line 49600
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Q4;->A00:Ljava/lang/String;

    .line 49601
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q4;->A01()V

    .line 49602
    :cond_0
    return-void
.end method

.method public setPlayAccessibilityLabel(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 49603
    if-eqz p1, :cond_0

    .line 49604
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Q4;->A01:Ljava/lang/String;

    .line 49605
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q4;->A01()V

    .line 49606
    :cond_0
    return-void
.end method
