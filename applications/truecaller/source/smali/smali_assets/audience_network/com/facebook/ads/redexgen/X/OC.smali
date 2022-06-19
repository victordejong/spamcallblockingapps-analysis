.class public final Lcom/facebook/ads/redexgen/X/OC;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A06:I


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:Lcom/facebook/ads/redexgen/X/XT;

.field public final A05:[Lcom/facebook/ads/redexgen/X/OD;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 46858
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/OC;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;IIII)V
    .locals 3

    .line 46859
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46860
    sget v0, Lcom/facebook/ads/redexgen/X/OC;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/OC;->A00:I

    .line 46861
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OC;->A04:Lcom/facebook/ads/redexgen/X/XT;

    .line 46862
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/OC;->setOrientation(I)V

    .line 46863
    iput p2, p0, Lcom/facebook/ads/redexgen/X/OC;->A03:I

    .line 46864
    iput p4, p0, Lcom/facebook/ads/redexgen/X/OC;->A01:I

    .line 46865
    iput p5, p0, Lcom/facebook/ads/redexgen/X/OC;->A02:I

    .line 46866
    new-array v0, p3, [Lcom/facebook/ads/redexgen/X/OD;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OC;->A05:[Lcom/facebook/ads/redexgen/X/OD;

    .line 46867
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 46868
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OC;->A05:[Lcom/facebook/ads/redexgen/X/OD;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OC;->A00()Lcom/facebook/ads/redexgen/X/OD;

    move-result-object v0

    aput-object v0, v1, v2

    .line 46869
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OC;->A05:[Lcom/facebook/ads/redexgen/X/OD;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/OC;->addView(Landroid/view/View;)V

    .line 46870
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46871
    .end local p0    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OC;->A01()V

    .line 46872
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/OD;
    .locals 4

    .line 46873
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/OC;->A04:Lcom/facebook/ads/redexgen/X/XT;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/OC;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/OC;->A02:I

    new-instance v2, Lcom/facebook/ads/redexgen/X/OD;

    invoke-direct {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/OD;-><init>(Lcom/facebook/ads/redexgen/X/XT;II)V

    .line 46874
    .local p0, "starRatingView":Lcom/facebook/ads/redexgen/X/OD;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OC;->A03:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46875
    .local v3, "starRatingViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 46876
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/OD;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46877
    return-object v2
.end method

.method private A01()V
    .locals 3

    .line 46878
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OC;->A05:[Lcom/facebook/ads/redexgen/X/OD;

    array-length v0, v1

    if-ge v2, v0, :cond_1

    .line 46879
    aget-object v0, v1, v2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OD;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 46880
    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 46881
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46882
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OC;->A00:I

    goto :goto_1

    .line 46883
    .end local p0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OC;->requestLayout()V

    .line 46884
    return-void
.end method

.method private A02(F)V
    .locals 3

    .line 46885
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OC;->A05:[Lcom/facebook/ads/redexgen/X/OD;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 46886
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v0, v2

    sub-float v0, p1, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 46887
    .local p1, "fillRatio":F
    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 46888
    const/4 v1, 0x0

    .line 46889
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OC;->A05:[Lcom/facebook/ads/redexgen/X/OD;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/OD;->setFillRatio(F)V

    .line 46890
    .end local p1    # "fillRatio":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46891
    .end local p0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public setItemSpacing(I)V
    .locals 0

    .line 46892
    iput p1, p0, Lcom/facebook/ads/redexgen/X/OC;->A00:I

    .line 46893
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OC;->A01()V

    .line 46894
    return-void
.end method

.method public setRating(F)V
    .locals 0

    .line 46895
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/OC;->A02(F)V

    .line 46896
    return-void
.end method
