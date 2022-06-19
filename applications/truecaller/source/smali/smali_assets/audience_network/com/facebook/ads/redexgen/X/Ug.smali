.class public final Lcom/facebook/ads/redexgen/X/Ug;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HJ;


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:[Lcom/facebook/ads/redexgen/X/HI;

.field public final A04:I

.field public final A05:Z

.field public final A06:[B

.field public final A07:[Lcom/facebook/ads/redexgen/X/HI;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4ve0RWyhYyl9xCQBcFEHHb6J5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sHlJnKRUCXWWG8DJxhYmJcdBG87KccAz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Y1hOWn5yAZG8wtugOKE5SlkzB9Lmm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ccLKzhNJONN8hN3GMkJFYY9R9j4tosDy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kB2MLz2Qt2VhBov62BdjLbPbFvH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "HEcEuygojM8kHr"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TVH0enYaQUtbllarZb7wcHSuDyXsicXL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ug;->A09:[Ljava/lang/String;

    .line 57031
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ug;->A01()V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    .line 57032
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Ug;-><init>(ZII)V

    .line 57033
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 6

    .line 57034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57035
    const/4 v1, 0x0

    const/4 v5, 0x1

    if-lez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A03(Z)V

    .line 57036
    if-ltz p3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/I6;->A03(Z)V

    .line 57037
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ug;->A05:Z

    .line 57038
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Ug;->A04:I

    .line 57039
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Ug;->A01:I

    .line 57040
    add-int/lit8 v0, p3, 0x64

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/HI;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A03:[Lcom/facebook/ads/redexgen/X/HI;

    .line 57041
    if-lez p3, :cond_2

    .line 57042
    mul-int v0, p3, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A06:[B

    .line 57043
    const/4 v4, 0x0

    .local p0, "i":I
    :goto_1
    if-ge v4, p3, :cond_3

    .line 57044
    mul-int v3, v4, p2

    .line 57045
    .local p2, "allocationOffset":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ug;->A03:[Lcom/facebook/ads/redexgen/X/HI;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ug;->A06:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/HI;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/HI;-><init>([BI)V

    aput-object v0, v2, v4

    .line 57046
    .end local p2    # "allocationOffset":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 57047
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 57048
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A06:[B

    .line 57049
    :cond_3
    new-array v0, v5, [Lcom/facebook/ads/redexgen/X/HI;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A07:[Lcom/facebook/ads/redexgen/X/HI;

    .line 57050
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ug;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ug;->A08:[B

    return-void

    :array_0
    .array-data 1
        -0x45t
        -0x51t
        -0x2t
        0x17t
        0xet
        0x21t
        0x19t
        0xet
        0xct
        0x1dt
        0xet
        0xdt
        -0x37t
        0xat
        0x15t
        0x15t
        0x18t
        0xct
        0xat
        0x1dt
        0x12t
        0x18t
        0x17t
        -0x1dt
        -0x37t
    .end array-data
.end method


# virtual methods
.method public final declared-synchronized A02()I
    .locals 4

    monitor-enter p0

    .line 57051
    :try_start_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Ug;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A04:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ug;->A09:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ug;->A09:[Ljava/lang/String;

    const-string v1, "5S97W7P0mYMCYwMDzMcet6TY3"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "7"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    monitor-exit p0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A03()V
    .locals 1

    monitor-enter p0

    .line 57052
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A05:Z

    if-eqz v0, :cond_0

    .line 57053
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ug;->A04(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57054
    .end local v0
    :cond_0
    monitor-exit p0

    return-void

    .line 57055
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A04(I)V
    .locals 1

    monitor-enter p0

    .line 57056
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A02:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 57057
    .local p0, "targetBufferSizeReduced":Z
    :goto_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ug;->A02:I

    .line 57058
    if-eqz v0, :cond_1

    .line 57059
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ug;->AF2()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57060
    .end local p1    # null:I
    :cond_1
    monitor-exit p0

    return-void

    .line 57061
    .end local p0    # "targetBufferSizeReduced":Z
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A3K()Lcom/facebook/ads/redexgen/X/HI;
    .locals 4

    monitor-enter p0

    .line 57062
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A00:I

    .line 57063
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A01:I

    if-lez v0, :cond_0

    .line 57064
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ug;->A03:[Lcom/facebook/ads/redexgen/X/HI;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A01:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A01:I

    aget-object v3, v1, v0

    .line 57065
    .local p0, "allocation":Lcom/facebook/ads/redexgen/X/HI;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ug;->A03:[Lcom/facebook/ads/redexgen/X/HI;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ug;->A01:I

    const/4 v0, 0x0

    aput-object v0, v2, v1

    goto :goto_0

    .line 57066
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A04:I

    new-array v1, v0, [B

    const/4 v0, 0x0

    new-instance v3, Lcom/facebook/ads/redexgen/X/HI;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/HI;-><init>([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57067
    .restart local p0    # "allocation":Lcom/facebook/ads/redexgen/X/HI;
    :goto_0
    monitor-exit p0

    return-object v3

    .line 57068
    .end local p0    # "allocation":Lcom/facebook/ads/redexgen/X/HI;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A6k()I
    .locals 1

    .line 57069
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A04:I

    return v0
.end method

.method public final declared-synchronized ADT(Lcom/facebook/ads/redexgen/X/HI;)V
    .locals 3

    monitor-enter p0

    .line 57070
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ug;->A07:[Lcom/facebook/ads/redexgen/X/HI;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    .line 57071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A07:[Lcom/facebook/ads/redexgen/X/HI;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ug;->ADU([Lcom/facebook/ads/redexgen/X/HI;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57072
    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ug;->A09:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ug;->A09:[Ljava/lang/String;

    const-string v1, "vTQnHDwqIVvtvGKS6QPwZVkZoK1Lgm5f"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57073
    .end local v1
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ADU([Lcom/facebook/ads/redexgen/X/HI;)V
    .locals 6

    monitor-enter p0

    .line 57074
    :try_start_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ug;->A01:I

    array-length v0, p1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A03:[Lcom/facebook/ads/redexgen/X/HI;

    array-length v0, v0

    if-lt v1, v0, :cond_0

    .line 57075
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ug;->A03:[Lcom/facebook/ads/redexgen/X/HI;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A03:[Lcom/facebook/ads/redexgen/X/HI;

    array-length v0, v0

    mul-int/lit8 v2, v0, 0x2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ug;->A01:I

    array-length v0, p1

    add-int/2addr v1, v0

    .line 57076
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 57077
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/HI;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A03:[Lcom/facebook/ads/redexgen/X/HI;

    .line 57078
    .end local v0
    :cond_0
    array-length v5, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v4, p1, v3

    .line 57079
    .local v1, "allocation":Lcom/facebook/ads/redexgen/X/HI;
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/HI;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A06:[B

    if-eq v1, v0, :cond_1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/HI;->A01:[B

    array-length v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A04:I

    if-ne v1, v0, :cond_2

    .line 57080
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ug;->A03:[Lcom/facebook/ads/redexgen/X/HI;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ug;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A01:I

    aput-object v4, v2, v1

    .line 57081
    .end local v1    # "allocation":Lcom/facebook/ads/redexgen/X/HI;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57082
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    const/16 v1, 0x17

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ug;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/HI;->A01:[B

    .line 57083
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ug;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A06:[B

    .line 57084
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ug;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/HI;->A01:[B

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ug;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A04:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57085
    :cond_3
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ug;->A00:I

    array-length v0, p1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ug;->A00:I

    .line 57086
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57087
    monitor-exit p0

    return-void

    .line 57088
    .end local v3
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AF2()V
    .locals 8

    monitor-enter p0

    .line 57089
    :try_start_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ug;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A04:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Il;->A04(II)I

    move-result v2

    .line 57090
    .local p0, "targetAllocationCount":I
    const/4 v1, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A00:I

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 57091
    .local v1, "targetAvailableCount":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A01:I

    if-lt v3, v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57092
    monitor-exit p0

    return-void

    .line 57093
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A06:[B

    if-eqz v0, :cond_4

    .line 57094
    const/4 v7, 0x0

    .line 57095
    .local v0, "lowIndex":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A01:I

    add-int/lit8 v6, v0, -0x1

    .line 57096
    .local v2, "highIndex":I
    :goto_0
    if-gt v7, v6, :cond_3

    .line 57097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A03:[Lcom/facebook/ads/redexgen/X/HI;

    aget-object v5, v0, v7

    .line 57098
    .local v1, "lowAllocation":Lcom/facebook/ads/redexgen/X/HI;
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/HI;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A06:[B

    if-ne v1, v0, :cond_1

    .line 57099
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 57100
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A03:[Lcom/facebook/ads/redexgen/X/HI;

    aget-object v4, v0, v6

    .line 57101
    .local v0, "highAllocation":Lcom/facebook/ads/redexgen/X/HI;
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/HI;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A06:[B

    if-eq v1, v0, :cond_2

    .line 57102
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 57103
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A03:[Lcom/facebook/ads/redexgen/X/HI;

    add-int/lit8 v2, v7, 0x1

    .end local v0    # "highAllocation":Lcom/facebook/ads/redexgen/X/HI;
    .local v3, "lowIndex":I
    aput-object v4, v0, v7

    .line 57104
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ug;->A03:[Lcom/facebook/ads/redexgen/X/HI;

    add-int/lit8 v0, v6, -0x1

    .end local v2    # "highIndex":I
    .local v2, "highIndex":I
    aput-object v5, v1, v6

    move v6, v0

    move v7, v2

    goto :goto_0

    .line 57105
    .end local v0
    :cond_3
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 57106
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A01:I

    if-lt v3, v0, :cond_4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57107
    monitor-exit p0

    return-void

    .line 57108
    .end local v0
    .end local v2    # "highIndex":I
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ug;->A03:[Lcom/facebook/ads/redexgen/X/HI;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ug;->A01:I

    const/4 v0, 0x0

    invoke-static {v2, v3, v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 57109
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Ug;->A01:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57110
    monitor-exit p0

    return-void

    .line 57111
    .end local p0    # "targetAllocationCount":I
    .end local v1    # "lowAllocation":Lcom/facebook/ads/redexgen/X/HI;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
