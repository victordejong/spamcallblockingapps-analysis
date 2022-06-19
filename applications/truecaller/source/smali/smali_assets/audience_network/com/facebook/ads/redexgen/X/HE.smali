.class public final Lcom/facebook/ads/redexgen/X/HE;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:[Lcom/facebook/ads/redexgen/X/HD;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uPzvf3DrMkTy6OC2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "H2eIGrw6YlTuEfUMB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "p11InAYoC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jGz94J"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZtEJrdVWV1XC8XFg6mMZlCv5mMRi1ND1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Ub1YY0rlTcSKb3yBclMaPE0dIwwpm8Yp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Au1lLpT3HfOHruCfEBskEQ20fDVmu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jui1pWNgNEO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/HE;->A03:[Ljava/lang/String;

    .line 36437
    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/ads/redexgen/X/HD;)V
    .locals 1

    .line 36438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36439
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HE;->A02:[Lcom/facebook/ads/redexgen/X/HD;

    .line 36440
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HE;->A01:I

    .line 36441
    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/HD;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 36442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HE;->A02:[Lcom/facebook/ads/redexgen/X/HD;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final A01()[Lcom/facebook/ads/redexgen/X/HD;
    .locals 1

    .line 36443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HE;->A02:[Lcom/facebook/ads/redexgen/X/HD;

    invoke-virtual {v0}, [Lcom/facebook/ads/redexgen/X/HD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/HD;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36444
    if-ne p0, p1, :cond_0

    .line 36445
    const/4 v0, 0x1

    return v0

    .line 36446
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 36447
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/HE;
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 36448
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/HE;

    sget-object v2, Lcom/facebook/ads/redexgen/X/HE;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 36449
    .local p0, "other":Lcom/facebook/ads/redexgen/X/HE;
    sget-object v2, Lcom/facebook/ads/redexgen/X/HE;->A03:[Ljava/lang/String;

    const-string v1, "VymNKk7BYdZfYlSqFiIbjljOXHtGYALy"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "eUsLwIc5zFGsQcnFIY6bSbYyt6aFMI1L"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HE;->A02:[Lcom/facebook/ads/redexgen/X/HD;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/HE;->A02:[Lcom/facebook/ads/redexgen/X/HD;

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    .line 36450
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HE;->A00:I

    if-nez v0, :cond_0

    .line 36451
    const/16 v0, 0x11

    .line 36452
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HE;->A02:[Lcom/facebook/ads/redexgen/X/HD;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 36453
    .end local p0    # "result":I
    .local v0, "result":I
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HE;->A00:I

    .line 36454
    .end local v0    # "result":I
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HE;->A00:I

    return v0
.end method
