.class public final Lcom/facebook/ads/redexgen/X/b5;
.super Lcom/facebook/ads/redexgen/X/3F;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeAdViewPager"
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public A00:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OZnJYNnF6iNpWafuL0M1gR4fftLtNKLH"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "jp3I09eVvza8VUO8I2V9bgD0uqoo2eoT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "o0dN6TNbDPM1OFHwgByg4fes3ij5f0X"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "koNydS70AznyGH22QswPXmmCOWqgW7Lp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FfQJA5dgq067zFURnAgi95yx0TDwU15M"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ldbJEvhnHaVxGyPD7qN3mcBmJCgMtAqs"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ixVhzklDdFphFwHpdcaKVfByjOKIZSaQ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Bo7wQ6HJBqNsqngGB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/b5;->A01:[Ljava/lang/String;

    .line 68496
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68497
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3F;-><init>(Landroid/content/Context;)V

    .line 68498
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A00:I

    .line 68499
    return-void
.end method

.method private A00(I)V
    .locals 0

    .line 68500
    iput p1, p0, Lcom/facebook/ads/redexgen/X/b5;->A00:I

    .line 68501
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/b5;I)V
    .locals 0

    .line 68502
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/b5;->A00(I)V

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 6

    .line 68503
    iget v3, p0, Lcom/facebook/ads/redexgen/X/b5;->A00:I

    .line 68504
    .local p0, "height":I
    const/4 v4, 0x0

    .local p1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/b5;->getChildCount()I

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/b5;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/b5;->A01:[Ljava/lang/String;

    const-string v1, "oQM5as2Hx349sp"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge v4, v5, :cond_3

    .line 68505
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/b5;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 68506
    .local p2, "child":Landroid/view/View;
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v5, p1, v0}, Landroid/view/View;->measure(II)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/b5;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_2

    .line 68507
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 68508
    .local v3, "h":I
    if-le v0, v3, :cond_1

    .line 68509
    :goto_1
    move v3, v0

    .line 68510
    .end local p2    # "child":Landroid/view/View;
    .end local v3    # "h":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68511
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/b5;->A01:[Ljava/lang/String;

    const-string v1, "8uJesuWryF1bocGxs"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 68512
    .local v3, "h":I
    if-le v0, v3, :cond_1

    goto :goto_1

    .line 68513
    .end local p1    # "i":I
    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 68514
    invoke-super {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/3F;->onMeasure(II)V

    .line 68515
    return-void
.end method
