.class public Lcom/facebook/ads/redexgen/X/1f;
.super Lcom/facebook/ads/redexgen/X/Eq;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/hscroll/SnapRecyclerView$Direction;,
        Lcom/facebook/ads/redexgen/X/PB;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/be;

.field public A02:Lcom/facebook/ads/redexgen/X/PB;

.field public A03:Z

.field public A04:Z

.field public A05:I

.field public final A06:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "y4Urxqcv9RCHCbRsxOihNkmZ9cqKDFdZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LGqXjwU2H5uaBf0UptGCT7ZDInUwl5IV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "fkBbKznr2zH2OwfKJXQ1DdYWN1N"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HFNULQ3MobNCNeOVkX9dtbi8574Dr14V"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KPqvTm6ScHx6bbBibk9kuRT9nwj9YcDc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "WIY3Unb14PjE3ayNyWd6XWPIVw0Az9uS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZZL8YXP6wYj9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "tbuIO4j0iRDkkCNXzrivmX4Au5offJfR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1f;->A08:[Ljava/lang/String;

    .line 4361
    invoke-static {}, Lcom/facebook/ads/redexgen/X/1f;->A0A()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 2

    .line 4362
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Eq;-><init>(Landroid/content/Context;)V

    .line 4363
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/1f;->A05:I

    .line 4364
    iput v1, p0, Lcom/facebook/ads/redexgen/X/1f;->A00:I

    .line 4365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A03:Z

    .line 4366
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/1f;->A04:Z

    .line 4367
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1f;->A05()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A06:I

    .line 4368
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/1f;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4369
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;)V
    .locals 2

    .line 4370
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Eq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4371
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/1f;->A05:I

    .line 4372
    iput v1, p0, Lcom/facebook/ads/redexgen/X/1f;->A00:I

    .line 4373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A03:Z

    .line 4374
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/1f;->A04:Z

    .line 4375
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1f;->A05()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A06:I

    .line 4376
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/1f;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4377
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 4378
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Eq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4379
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/1f;->A05:I

    .line 4380
    iput v1, p0, Lcom/facebook/ads/redexgen/X/1f;->A00:I

    .line 4381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A03:Z

    .line 4382
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/1f;->A04:Z

    .line 4383
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1f;->A05()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A06:I

    .line 4384
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/1f;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4385
    return-void
.end method

.method private A05()I
    .locals 1

    .line 4386
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private A06(I)I
    .locals 3

    .line 4387
    iget v2, p0, Lcom/facebook/ads/redexgen/X/1f;->A00:I

    sub-int/2addr v2, p1

    .line 4388
    .local p0, "scrollX":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A02:Lcom/facebook/ads/redexgen/X/PB;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/PB;->A7A(I)I

    move-result v1

    .line 4389
    .local p1, "delta":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A06:I

    if-le v2, v0, :cond_0

    .line 4390
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A05:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/1f;->A08(II)I

    move-result v0

    return v0

    .line 4391
    :cond_0
    neg-int v0, v0

    if-ge v2, v0, :cond_1

    .line 4392
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A05:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/1f;->A07(II)I

    move-result v0

    return v0

    .line 4393
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A05:I

    return v0
.end method

.method private A07(II)I
    .locals 1

    .line 4394
    sub-int/2addr p1, p2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private A08(II)I
    .locals 1

    .line 4395
    add-int/2addr p1, p2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1f;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1f;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x32

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1f;->A07:[B

    return-void

    :array_0
    .array-data 1
        -0x35t
        -0x1at
        -0x27t
        -0x18t
        -0x36t
        -0x23t
        -0x25t
        -0xft
        -0x25t
        -0x1ct
        -0x23t
        -0x16t
        -0x32t
        -0x1ft
        -0x23t
        -0x11t
        -0x68t
        -0x19t
        -0x1at
        -0x1ct
        -0xft
        -0x68t
        -0x15t
        -0x13t
        -0x18t
        -0x18t
        -0x19t
        -0x16t
        -0x14t
        -0x15t
        -0x68t
        -0x3ct
        -0x1ft
        -0x1at
        -0x23t
        -0x27t
        -0x16t
        -0x3ct
        -0x27t
        -0xft
        -0x19t
        -0x13t
        -0x14t
        -0x3bt
        -0x27t
        -0x1at
        -0x27t
        -0x21t
        -0x23t
        -0x16t
    .end array-data
.end method

.method private getItemCount()I
    .locals 1

    .line 4404
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Eq;->getAdapter()Lcom/facebook/ads/redexgen/X/4A;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Eq;->getAdapter()Lcom/facebook/ads/redexgen/X/4A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4A;->A0D()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public A22(IZ)V
    .locals 1

    .line 4396
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Eq;->getAdapter()Lcom/facebook/ads/redexgen/X/4A;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4397
    return-void

    .line 4398
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/1f;->A05:I

    .line 4399
    if-eqz p2, :cond_1

    .line 4400
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Eq;->A1W(I)V

    .line 4401
    :goto_0
    return-void

    .line 4402
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Eq;->A1V(I)V

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 4403
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A05:I

    return v0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 4405
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v2, v0

    .line 4406
    .local p0, "rawX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 4407
    .local p1, "action":I
    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v0, 0x6

    if-eq v1, v0, :cond_0

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    const/4 v0, 0x4

    if-ne v1, v0, :cond_2

    .line 4408
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A04:Z

    if-eqz v0, :cond_1

    .line 4409
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/1f;->A06(I)I

    move-result v0

    .line 4410
    .local v2, "newPosition":I
    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/1f;->A22(IZ)V

    .line 4411
    .end local v2    # "newPosition":I
    :cond_1
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/1f;->A03:Z

    .line 4412
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/1f;->A04:Z

    .line 4413
    return v3

    .line 4414
    :cond_2
    if-eqz v1, :cond_3

    const/4 v0, 0x5

    if-eq v1, v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A03:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    .line 4415
    :cond_3
    iput v2, p0, Lcom/facebook/ads/redexgen/X/1f;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/1f;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    .line 4416
    sget-object v2, Lcom/facebook/ads/redexgen/X/1f;->A08:[Ljava/lang/String;

    const-string v1, "MxKeEan5PHYt2nmJnSz3xsZ38eI3mGgL"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "utg9fSYK4sdWKYxBX5KGIJ2pCeKuK2tx"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A03:Z

    if-eqz v0, :cond_4

    .line 4417
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/1f;->A03:Z

    .line 4418
    :cond_4
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/1f;->A04:Z

    .line 4419
    :cond_5
    return v4

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setLayoutManager(Lcom/facebook/ads/redexgen/X/4M;)V
    .locals 3

    .line 4420
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/be;

    if-eqz v0, :cond_0

    .line 4421
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Eq;->setLayoutManager(Lcom/facebook/ads/redexgen/X/4M;)V

    .line 4422
    check-cast p1, Lcom/facebook/ads/redexgen/X/be;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1f;->A01:Lcom/facebook/ads/redexgen/X/be;

    .line 4423
    return-void

    .line 4424
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x32

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1f;->A09(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSnapDelegate(Lcom/facebook/ads/redexgen/X/PB;)V
    .locals 0

    .line 4425
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1f;->A02:Lcom/facebook/ads/redexgen/X/PB;

    .line 4426
    return-void
.end method
