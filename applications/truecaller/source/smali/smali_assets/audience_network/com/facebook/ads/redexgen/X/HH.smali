.class public final Lcom/facebook/ads/redexgen/X/HH;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/HE;

.field public final A02:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A03:[Lcom/facebook/ads/redexgen/X/Ai;


# direct methods
.method public constructor <init>([Lcom/facebook/ads/redexgen/X/Ai;[Lcom/facebook/ads/redexgen/X/HD;Ljava/lang/Object;)V
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36459
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HH;->A03:[Lcom/facebook/ads/redexgen/X/Ai;

    .line 36460
    new-instance v0, Lcom/facebook/ads/redexgen/X/HE;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/HE;-><init>([Lcom/facebook/ads/redexgen/X/HD;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HH;->A01:Lcom/facebook/ads/redexgen/X/HE;

    .line 36461
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/HH;->A02:Ljava/lang/Object;

    .line 36462
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HH;->A00:I

    .line 36463
    return-void
.end method


# virtual methods
.method public final A00(I)Z
    .locals 1

    .line 36464
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HH;->A03:[Lcom/facebook/ads/redexgen/X/Ai;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/HH;)Z
    .locals 3

    .line 36465
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/HH;->A01:Lcom/facebook/ads/redexgen/X/HE;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/HE;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HH;->A01:Lcom/facebook/ads/redexgen/X/HE;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HE;->A01:I

    if-eq v1, v0, :cond_1

    .line 36466
    :cond_0
    return v2

    .line 36467
    :cond_1
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HH;->A01:Lcom/facebook/ads/redexgen/X/HE;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HE;->A01:I

    if-ge v1, v0, :cond_3

    .line 36468
    invoke-virtual {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/HH;->A02(Lcom/facebook/ads/redexgen/X/HH;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 36469
    return v2

    .line 36470
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36471
    .end local p1    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/HH;I)Z
    .locals 3

    .line 36472
    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 36473
    return v2

    .line 36474
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HH;->A03:[Lcom/facebook/ads/redexgen/X/Ai;

    aget-object v1, v0, p2

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/HH;->A03:[Lcom/facebook/ads/redexgen/X/Ai;

    aget-object v0, v0, p2

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Il;->A0g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HH;->A01:Lcom/facebook/ads/redexgen/X/HE;

    .line 36475
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/HE;->A00(I)Lcom/facebook/ads/redexgen/X/HD;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/HH;->A01:Lcom/facebook/ads/redexgen/X/HE;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/HE;->A00(I)Lcom/facebook/ads/redexgen/X/HD;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Il;->A0g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 36476
    :cond_1
    return v2
.end method
