.class public Lcom/facebook/ads/redexgen/X/2Z;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static A03:I

.field public static A04:I

.field public static A05:[Ljava/lang/Object;

.field public static A06:[Ljava/lang/Object;

.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:[I

.field public A02:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "BrVHgBkmBksyBnnjIq0pHnqXAu9AUg3j"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "iIth6RrlZFIJsCIcgsKekGbs32ChyRjv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Uwdt1z4SmD1Mf7UvGeSYdNXOfhFYTYnY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QITUqyWPG2VnlGrB2a6hYhF3R3KaavLD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "arDW8RiIBmWFNCZvgTvY8WvuJ76u3VTs"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pOGA2rk9V0ZEl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "438Cia9wbNYnLnXWpHR8BTCUnyjltaF2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "slnYcYZFDBEgJMtczrpzy3D6NQdPiCOq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2Z;->A08:[Ljava/lang/String;

    .line 5691
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2Z;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5692
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5693
    sget-object v0, Lcom/facebook/ads/redexgen/X/2P;->A00:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    .line 5694
    sget-object v0, Lcom/facebook/ads/redexgen/X/2P;->A02:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    .line 5695
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    .line 5696
    return-void
.end method

.method private final A00()I
    .locals 7

    .line 5697
    .local v1, "this":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v4, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    .line 5698
    .local p0, "N":I
    if-nez v4, :cond_0

    .line 5699
    const/4 v0, -0x1

    return v0

    .line 5700
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    const/4 v0, 0x0

    invoke-static {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/2Z;->A02([III)I

    move-result v6

    .line 5701
    .local v4, "index":I
    if-gez v6, :cond_1

    .line 5702
    return v6

    .line 5703
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v6, 0x1

    aget-object v0, v1, v0

    if-nez v0, :cond_2

    .line 5704
    return v6

    .line 5705
    :cond_2
    add-int/lit8 v3, v6, 0x1

    .local v0, "end":I
    :goto_0
    if-ge v3, v4, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    aget v0, v0, v3

    if-nez v0, :cond_5

    .line 5706
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    sget-object v2, Lcom/facebook/ads/redexgen/X/2Z;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/2Z;->A08:[Ljava/lang/String;

    const-string v1, "5BliZlAS3QBBz9o"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    shl-int/lit8 v0, v3, 0x1

    aget-object v0, v5, v0

    if-nez v0, :cond_4

    return v3

    .line 5707
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5708
    :cond_5
    add-int/lit8 v2, v6, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v2, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    aget v0, v0, v2

    if-nez v0, :cond_7

    .line 5709
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v2, 0x1

    aget-object v0, v1, v0

    if-nez v0, :cond_6

    return v2

    .line 5710
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 5711
    .end local v1    # "i":I
    :cond_7
    xor-int/lit8 v0, v3, -0x1

    return v0
.end method

.method private final A01(Ljava/lang/Object;I)I
    .locals 5

    .line 5712
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v4, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    .line 5713
    .local p0, "N":I
    if-nez v4, :cond_1

    .line 5714
    const/4 v3, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/2Z;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/2Z;->A08:[Ljava/lang/String;

    const-string v1, "y399iLZYsEEz0hzdxnUhzykHYZJwaaUE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    .line 5715
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    invoke-static {v0, v4, p2}, Lcom/facebook/ads/redexgen/X/2Z;->A02([III)I

    move-result v2

    .line 5716
    .local p1, "index":I
    if-gez v2, :cond_2

    .line 5717
    return v2

    .line 5718
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v2, 0x1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5719
    return v2

    .line 5720
    :cond_3
    add-int/lit8 v3, v2, 0x1

    .local p2, "end":I
    :goto_0
    if-ge v3, v4, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    aget v0, v0, v3

    if-ne v0, p2, :cond_5

    .line 5721
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v3, 0x1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    .line 5722
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5723
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v2, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    aget v0, v0, v2

    if-ne v0, p2, :cond_7

    .line 5724
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v2, 0x1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    .line 5725
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 5726
    .end local v4    # "i":I
    :cond_7
    xor-int/lit8 v0, v3, -0x1

    return v0
.end method

.method public static A02([III)I
    .locals 0

    .line 5727
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2P;->A02([III)I

    move-result p0

    return p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5728
    .local p0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2Z;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x69

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 4

    const/16 v3, 0xe

    sget-object v1, Lcom/facebook/ads/redexgen/X/2Z;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/2Z;->A08:[Ljava/lang/String;

    const-string v1, "Xtbm9MFCOkvOfDux5Me3XhO5K6Bs7EUd"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "PZcI0QBOeZ0LYFf6gJzuFWLZdUoY6utj"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2Z;->A07:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x45t
        0x7t
        -0x5t
        -0x4t
        0x6t
        -0x4dt
        -0x20t
        -0xct
        0x3t
        -0x44t
        -0x3et
        -0x4at
        0x3t
        0x5t
    .end array-data
.end method

.method private A05(I)V
    .locals 6

    .line 5729
    .local v2, "this":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 5730
    const-class v2, Lcom/facebook/ads/redexgen/X/bx;

    monitor-enter v2

    .line 5731
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/2Z;->A06:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 5732
    sget-object v1, Lcom/facebook/ads/redexgen/X/2Z;->A06:[Ljava/lang/Object;

    .line 5733
    .local v3, "array":[Ljava/lang/Object;
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    .line 5734
    aget-object v0, v1, v4

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/ads/redexgen/X/2Z;->A06:[Ljava/lang/Object;

    .line 5735
    aget-object v0, v1, v3

    check-cast v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    .line 5736
    aput-object v5, v1, v3

    aput-object v5, v1, v4

    .line 5737
    sget v0, Lcom/facebook/ads/redexgen/X/2Z;->A04:I

    sub-int/2addr v0, v3

    sput v0, Lcom/facebook/ads/redexgen/X/2Z;->A04:I

    .line 5738
    monitor-exit v2

    return-void

    .line 5739
    .end local v3    # "array":[Ljava/lang/Object;
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5740
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 5741
    const-class v2, Lcom/facebook/ads/redexgen/X/bx;

    monitor-enter v2

    .line 5742
    :try_start_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/2Z;->A05:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 5743
    sget-object v1, Lcom/facebook/ads/redexgen/X/2Z;->A05:[Ljava/lang/Object;

    .line 5744
    .restart local v3    # "array":[Ljava/lang/Object;
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    .line 5745
    aget-object v0, v1, v4

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/ads/redexgen/X/2Z;->A05:[Ljava/lang/Object;

    .line 5746
    aget-object v0, v1, v3

    check-cast v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    .line 5747
    aput-object v5, v1, v3

    aput-object v5, v1, v4

    .line 5748
    sget v0, Lcom/facebook/ads/redexgen/X/2Z;->A03:I

    sub-int/2addr v0, v3

    sput v0, Lcom/facebook/ads/redexgen/X/2Z;->A03:I

    .line 5749
    monitor-exit v2

    return-void

    .line 5750
    .end local v3    # "array":[Ljava/lang/Object;
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 5751
    :cond_3
    :goto_0
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    .line 5752
    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    .line 5753
    return-void
.end method

.method public static A06([I[Ljava/lang/Object;I)V
    .locals 9

    .line 5754
    array-length v1, p0

    const/4 v8, 0x0

    const/4 v3, 0x2

    const/4 v7, 0x0

    const/16 v4, 0xa

    const/4 v6, 0x1

    const/16 v0, 0x8

    if-ne v1, v0, :cond_3

    .line 5755
    const-class v5, Lcom/facebook/ads/redexgen/X/bx;

    sget-object v1, Lcom/facebook/ads/redexgen/X/2Z;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/2Z;->A08:[Ljava/lang/String;

    const-string v1, "zLkFwVZRQmO2pmmfCTMSdjo5f8ctaykz"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    monitor-enter v5

    .line 5756
    :try_start_0
    sget v0, Lcom/facebook/ads/redexgen/X/2Z;->A04:I

    if-ge v0, v4, :cond_1

    .line 5757
    sget-object v0, Lcom/facebook/ads/redexgen/X/2Z;->A06:[Ljava/lang/Object;

    aput-object v0, p1, v7

    .line 5758
    aput-object p0, p1, v6

    .line 5759
    shl-int/lit8 v0, p2, 0x1

    sub-int/2addr v0, v6

    .local v1, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 5760
    aput-object v8, p1, v0

    .line 5761
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5762
    .end local v1    # "i":I
    :cond_0
    sput-object p1, Lcom/facebook/ads/redexgen/X/2Z;->A06:[Ljava/lang/Object;

    .line 5763
    sget v0, Lcom/facebook/ads/redexgen/X/2Z;->A04:I

    add-int/2addr v0, v6

    sput v0, Lcom/facebook/ads/redexgen/X/2Z;->A04:I

    .line 5764
    :cond_1
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5765
    :cond_3
    array-length v1, p0

    const/4 v0, 0x4

    if-ne v1, v0, :cond_6

    .line 5766
    const-class v1, Lcom/facebook/ads/redexgen/X/bx;

    monitor-enter v1

    .line 5767
    :try_start_1
    sget v0, Lcom/facebook/ads/redexgen/X/2Z;->A03:I

    if-ge v0, v4, :cond_5

    .line 5768
    sget-object v0, Lcom/facebook/ads/redexgen/X/2Z;->A05:[Ljava/lang/Object;

    aput-object v0, p1, v7

    .line 5769
    aput-object p0, p1, v6

    .line 5770
    shl-int/lit8 v0, p2, 0x1

    sub-int/2addr v0, v6

    .restart local v1    # "i":I
    :goto_1
    if-lt v0, v3, :cond_4

    .line 5771
    aput-object v8, p1, v0

    .line 5772
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 5773
    .end local v1    # "i":I
    :cond_4
    sput-object p1, Lcom/facebook/ads/redexgen/X/2Z;->A05:[Ljava/lang/Object;

    .line 5774
    sget v0, Lcom/facebook/ads/redexgen/X/2Z;->A03:I

    add-int/2addr v0, v6

    sput v0, Lcom/facebook/ads/redexgen/X/2Z;->A03:I

    .line 5775
    :cond_5
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 5776
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public final A07(Ljava/lang/Object;)I
    .locals 4

    .line 5777
    .local v2, "this":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    mul-int/lit8 v3, v0, 0x2

    .line 5778
    .local p0, "N":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    .line 5779
    .local p1, "array":[Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 5780
    const/4 v1, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 5781
    aget-object v0, v2, v1

    if-nez v0, :cond_0

    .line 5782
    shr-int/lit8 v0, v1, 0x1

    return v0

    .line 5783
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 5784
    :cond_1
    const/4 v1, 0x1

    .restart local v0    # "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 5785
    aget-object v0, v2, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5786
    shr-int/lit8 v0, v1, 0x1

    return v0

    .line 5787
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 5788
    .end local v0    # "i":I
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public final A08(Ljava/lang/Object;)I
    .locals 1

    .line 5789
    .local p1, "this":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2Z;->A00()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/2Z;->A01(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method public final A09(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 5790
    .local v1, "this":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final A0A(I)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 5791
    .local v4, "this":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    const/4 v6, 0x1

    add-int/2addr v0, v6

    aget-object v8, v1, v0

    .line 5792
    .local p1, "old":Ljava/lang/Object;
    iget v5, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    .line 5793
    .local v0, "osize":I
    if-gt v5, v6, :cond_1

    .line 5794
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    invoke-static {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/2Z;->A06([I[Ljava/lang/Object;I)V

    .line 5795
    sget-object v0, Lcom/facebook/ads/redexgen/X/2P;->A00:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    .line 5796
    sget-object v0, Lcom/facebook/ads/redexgen/X/2P;->A02:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    .line 5797
    const/4 v4, 0x0

    .line 5798
    .local p0, "nsize":I
    :cond_0
    :goto_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/2Z;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/2Z;->A08:[Ljava/lang/String;

    const-string v1, "xFHRCOjHDqSI1UlNRZSx5FadcPcGQITj"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "4ZMke5GLOi53P3lo3UgzHK3l5Qzb3367"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v5, v3, :cond_6

    .line 5799
    iput v4, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    .line 5800
    return-object v8

    .line 5801
    .end local p0    # "nsize":I
    :cond_1
    add-int/lit8 v4, v5, -0x1

    .line 5802
    .restart local p0    # "nsize":I
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    array-length v0, v3

    const/16 v2, 0x8

    if-le v0, v2, :cond_4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    array-length v0, v3

    div-int/lit8 v0, v0, 0x3

    if-ge v1, v0, :cond_4

    .line 5803
    if-le v5, v2, :cond_2

    shr-int/lit8 v0, v5, 0x1

    add-int v2, v5, v0

    .line 5804
    .local v6, "n":I
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    .line 5805
    .local v0, "ohashes":[I
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    .line 5806
    .local v8, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/2Z;->A05(I)V

    .line 5807
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    if-ne v5, v0, :cond_8

    .line 5808
    if-lez p1, :cond_3

    .line 5809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    const/4 v2, 0x0

    invoke-static {v3, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5810
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    invoke-static {v7, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5811
    :cond_3
    if-ge p1, v4, :cond_0

    .line 5812
    add-int/lit8 v2, p1, 0x1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    sub-int v0, v4, p1

    invoke-static {v3, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5813
    add-int/lit8 v3, p1, 0x1

    shl-int/2addr v3, v6

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    sub-int v0, v4, p1

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v7, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 5814
    .end local v6    # "n":I
    .end local v0    # "ohashes":[I
    .end local v8    # "oarray":[Ljava/lang/Object;
    :cond_4
    if-ge p1, v4, :cond_5

    .line 5815
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    add-int/lit8 v1, p1, 0x1

    sub-int v0, v4, p1

    invoke-static {v2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5816
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    shl-int/2addr v2, v6

    shl-int/lit8 v1, p1, 0x1

    sub-int v0, v4, p1

    shl-int/2addr v0, v6

    invoke-static {v3, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5817
    :cond_5
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v4, 0x1

    const/4 v1, 0x0

    aput-object v1, v2, v0

    .line 5818
    shl-int/lit8 v0, v4, 0x1

    add-int/2addr v0, v6

    aput-object v1, v2, v0

    goto/16 :goto_0

    .line 5819
    :cond_6
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5820
    .restart local v6    # "n":I
    .restart local v0    # "ohashes":[I
    .restart local v8    # "oarray":[Ljava/lang/Object;
    :cond_8
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final A0B(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 5821
    .local v1, "this":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final A0C(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 5822
    .local p2, "this":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local v2, "value":Ljava/lang/Object;, "TV;"
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v2, v0, 0x1

    .line 5823
    .end local v0
    .local p0, "index":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    aget-object v0, v1, v2

    .line 5824
    .local p1, "old":Ljava/lang/Object;, "TV;"
    aput-object p2, v1, v2

    .line 5825
    return-object v0
.end method

.method public final A0D(I)V
    .locals 6

    .line 5826
    .local v3, "this":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v5, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    .line 5827
    .local p0, "osize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 5828
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    .line 5829
    .local p1, "ohashes":[I
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    .line 5830
    .local v5, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2Z;->A05(I)V

    .line 5831
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    if-lez v0, :cond_0

    .line 5832
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    const/4 v2, 0x0

    invoke-static {v4, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5833
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v5, 0x1

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5834
    :cond_0
    invoke-static {v4, v3, v5}, Lcom/facebook/ads/redexgen/X/2Z;->A06([I[Ljava/lang/Object;I)V

    .line 5835
    .end local p1    # "ohashes":[I
    .end local v5    # "oarray":[Ljava/lang/Object;
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    if-ne v0, v5, :cond_2

    .line 5836
    return-void

    .line 5837
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final clear()V
    .locals 4

    .line 5838
    .local v1, "this":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    if-lez v0, :cond_0

    .line 5839
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    .line 5840
    .local p0, "ohashes":[I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    .line 5841
    .local v0, "oarray":[Ljava/lang/Object;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    .line 5842
    .local v3, "osize":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/2P;->A00:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    .line 5843
    sget-object v0, Lcom/facebook/ads/redexgen/X/2P;->A02:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    .line 5844
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    .line 5845
    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/2Z;->A06([I[Ljava/lang/Object;I)V

    .line 5846
    .end local p0    # "ohashes":[I
    .end local v0    # "oarray":[Ljava/lang/Object;
    .end local v3    # "osize":I
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    if-gtz v0, :cond_1

    .line 5847
    return-void

    .line 5848
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 5849
    .local p1, "this":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/2Z;->A08(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 5850
    .local p1, "this":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/2Z;->A07(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 5851
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 5852
    return v5

    .line 5853
    :cond_0
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/2Z;

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    .line 5854
    check-cast p1, Lcom/facebook/ads/redexgen/X/2Z;

    .line 5855
    .local p1, "map":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<**>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2Z;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2Z;->size()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 5856
    return v4

    .line 5857
    :cond_1
    move v3, v4

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    if-ge v3, v0, :cond_5

    .line 5858
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/2Z;->A09(I)Ljava/lang/Object;

    move-result-object v2

    .line 5859
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/2Z;->A0B(I)Ljava/lang/Object;

    move-result-object v1

    .line 5860
    .local p1, "mine":Ljava/lang/Object;, "TV;"
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/2Z;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5861
    .local p1, "theirs":Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 5862
    if-nez v0, :cond_4

    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/2Z;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 5863
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 5864
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local p1    # "theirs":Ljava/lang/Object;
    .end local p1
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5865
    :cond_4
    :goto_1
    return v4

    .line 5866
    :goto_2
    return v4

    .line 5867
    .end local v0    # "i":I
    :cond_5
    return v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5868
    .local p0, "ignored":Ljava/lang/ClassCastException;
    :catch_0
    return v4

    .line 5869
    .end local p0    # "ignored":Ljava/lang/ClassCastException;
    .local p0, "ignored":Ljava/lang/NullPointerException;
    :catch_1
    return v4

    .line 5870
    .end local p0    # "ignored":Ljava/lang/NullPointerException;
    .end local p1
    :cond_6
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_c

    .line 5871
    check-cast p1, Ljava/util/Map;

    .line 5872
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2Z;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v1, v0, :cond_7

    .line 5873
    return v4

    .line 5874
    :cond_7
    move v3, v4

    .restart local v0    # "i":I
    :goto_3
    :try_start_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    if-ge v3, v0, :cond_b

    .line 5875
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/2Z;->A09(I)Ljava/lang/Object;

    move-result-object v2

    .line 5876
    .restart local v4    # "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/2Z;->A0B(I)Ljava/lang/Object;

    move-result-object v1

    .line 5877
    .restart local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5878
    .restart local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-nez v1, :cond_8

    .line 5879
    if-nez v0, :cond_a

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    .line 5880
    :cond_8
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5

    .line 5881
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local p1
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 5882
    :cond_a
    :goto_4
    return v4

    .line 5883
    :goto_5
    return v4

    .line 5884
    .end local v0    # "i":I
    :cond_b
    return v5
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    .line 5885
    .local p0, "ignored":Ljava/lang/ClassCastException;
    :catch_2
    return v4

    .line 5886
    .end local p0    # "ignored":Ljava/lang/ClassCastException;
    .local p0, "ignored":Ljava/lang/NullPointerException;
    :catch_3
    return v4

    .line 5887
    .end local p0    # "ignored":Ljava/lang/NullPointerException;
    .end local p1
    :cond_c
    return v4
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 5888
    .local v1, "this":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/2Z;->A08(Ljava/lang/Object;)I

    move-result v0

    .line 5889
    .local p0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 8

    .line 5890
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    .line 5891
    .local p0, "hashes":[I
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    .line 5892
    .local v7, "array":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 5893
    .local v6, "result":I
    const/4 v4, 0x0

    .local v5, "i":I
    const/4 v3, 0x1

    .local v4, "v":I
    iget v2, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    .local v3, "s":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 5894
    aget-object v0, v6, v3

    .line 5895
    .local v2, "value":Ljava/lang/Object;
    aget v1, v7, v4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    xor-int/2addr v1, v0

    add-int/2addr v5, v1

    .line 5896
    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 5897
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    .line 5898
    .end local v5    # "i":I
    .end local v4    # "v":I
    .end local v3    # "s":I
    :cond_1
    return v5
.end method

.method public final isEmpty()Z
    .locals 1

    .line 5899
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 5900
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local v4, "key":Ljava/lang/Object;, "TK;"
    .local v0, "value":Ljava/lang/Object;, "TV;"
    iget v6, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    .line 5901
    .local p0, "osize":I
    if-nez p1, :cond_0

    .line 5902
    const/4 v5, 0x0

    .line 5903
    .local p1, "hash":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2Z;->A00()I

    move-result v0

    .line 5904
    .local p2, "index":I
    .restart local p2    # "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 5905
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    .line 5906
    .end local p2    # "index":I
    .local v6, "index":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    aget-object v0, v1, v2

    .line 5907
    .local v5, "old":Ljava/lang/Object;, "TV;"
    aput-object p2, v1, v2

    .line 5908
    return-object v0

    .line 5909
    .end local p1    # "hash":I
    .end local p2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    .line 5910
    .restart local p1    # "hash":I
    invoke-direct {p0, p1, v5}, Lcom/facebook/ads/redexgen/X/2Z;->A01(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0

    .line 5911
    .end local v6    # "index":I
    .end local v5    # "old":Ljava/lang/Object;, "TV;"
    .restart local p2    # "index":I
    :cond_1
    xor-int/lit8 v4, v0, -0x1

    .line 5912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    array-length v0, v0

    if-lt v6, v0, :cond_4

    .line 5913
    const/4 v0, 0x4

    const/16 v1, 0x8

    if-lt v6, v1, :cond_6

    shr-int/lit8 v0, v6, 0x1

    add-int/2addr v0, v6

    .line 5914
    .local v6, "n":I
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    .line 5915
    .local v5, "ohashes":[I
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    .line 5916
    .local v0, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2Z;->A05(I)V

    .line 5917
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    if-ne v6, v0, :cond_8

    .line 5918
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    array-length v0, v1

    if-lez v0, :cond_3

    .line 5919
    array-length v0, v7

    const/4 v2, 0x0

    invoke-static {v7, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5920
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    array-length v0, v3

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5921
    :cond_3
    invoke-static {v7, v3, v6}, Lcom/facebook/ads/redexgen/X/2Z;->A06([I[Ljava/lang/Object;I)V

    .line 5922
    .end local v6    # "n":I
    .end local v5    # "ohashes":[I
    .end local v0    # "oarray":[Ljava/lang/Object;
    :cond_4
    if-ge v4, v6, :cond_5

    .line 5923
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    add-int/lit8 v1, v4, 0x1

    sub-int v0, v6, v4

    invoke-static {v2, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5924
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    shl-int/lit8 v2, v4, 0x1

    add-int/lit8 v0, v4, 0x1

    shl-int/lit8 v1, v0, 0x1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    sub-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v3, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5925
    :cond_5
    iget v2, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    if-ne v6, v2, :cond_7

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:[I

    array-length v0, v1

    if-ge v4, v0, :cond_7

    .line 5926
    aput v5, v1, v4

    .line 5927
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v4, 0x1

    aput-object p1, v1, v0

    .line 5928
    shl-int/lit8 v0, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    aput-object p2, v1, v0

    .line 5929
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    .line 5930
    const/4 v0, 0x0

    return-object v0

    .line 5931
    :cond_6
    if-lt v6, v0, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    .line 5932
    :cond_7
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 5933
    :cond_8
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 5934
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/2Z;->A08(Ljava/lang/Object;)I

    move-result v0

    .line 5935
    .local p0, "index":I
    if-ltz v0, :cond_0

    .line 5936
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2Z;->A0A(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5937
    :cond_0
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/2Z;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/2Z;->A08:[Ljava/lang/String;

    const-string v1, "POG7nMkVNzdGaGlGxNMu0E80q"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3
.end method

.method public final size()I
    .locals 1

    .line 5938
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 5939
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2Z;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2Z;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5940
    const/16 v2, 0xc

    const/4 v1, 0x2

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2Z;->A03(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5941
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    mul-int/lit8 v0, v0, 0x1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5942
    .local p0, "buffer":Ljava/lang/StringBuilder;
    const/16 v0, 0x7b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5943
    const/4 v5, 0x0

    .local v0, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    if-ge v5, v0, :cond_5

    .line 5944
    if-lez v5, :cond_1

    .line 5945
    const/16 v2, 0xa

    const/4 v1, 0x2

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2Z;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5946
    :cond_1
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/2Z;->A09(I)Ljava/lang/Object;

    move-result-object v7

    .line 5947
    .local v2, "key":Ljava/lang/Object;
    const/4 v8, 0x0

    const/16 v6, 0xa

    const/16 v3, 0x2a

    sget-object v1, Lcom/facebook/ads/redexgen/X/2Z;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/2Z;->A08:[Ljava/lang/String;

    const-string v1, "5MoFeGsxqoTSR8Y6IShdOiE5VevAoRo0"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "kGPruxXsJMcA49LPD5OztVvQJS4oto1Y"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v8, v6, v3}, Lcom/facebook/ads/redexgen/X/2Z;->A03(III)Ljava/lang/String;

    move-result-object v1

    if-eq v7, p0, :cond_3

    .line 5948
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5949
    :goto_1
    const/16 v0, 0x3d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5950
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/2Z;->A0B(I)Ljava/lang/Object;

    move-result-object v0

    .line 5951
    .local v0, "value":Ljava/lang/Object;
    if-eq v0, p0, :cond_2

    .line 5952
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5953
    .end local v2    # "key":Ljava/lang/Object;
    .end local v0    # "value":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5954
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 5955
    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5956
    .end local v0
    :cond_5
    const/16 v0, 0x7d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5957
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
