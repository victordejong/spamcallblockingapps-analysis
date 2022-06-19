.class public final Lcom/facebook/ads/redexgen/X/Vt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CP;


# static fields
.field public static A03:[B

.field public static final A04:Lcom/facebook/ads/redexgen/X/CS;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/CR;

.field public A01:Lcom/facebook/ads/redexgen/X/DL;

.field public A02:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 60386
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vt;->A02()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vu;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vu;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vt;->A04:Lcom/facebook/ads/redexgen/X/CS;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/IV;)Lcom/facebook/ads/redexgen/X/IV;
    .locals 1

    .line 60388
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 60389
    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vt;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x72

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vt;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x5ft
        0x78t
        0x70t
        0x75t
        0x7ct
        0x7dt
        0x39t
        0x6dt
        0x76t
        0x39t
        0x7dt
        0x7ct
        0x6dt
        0x7ct
        0x6bt
        0x74t
        0x70t
        0x77t
        0x7ct
        0x39t
        0x7bt
        0x70t
        0x6dt
        0x6at
        0x6dt
        0x6bt
        0x7ct
        0x78t
        0x74t
        0x39t
        0x6dt
        0x60t
        0x69t
        0x7ct
    .end array-data
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/CQ;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60390
    new-instance v2, Lcom/facebook/ads/redexgen/X/DH;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/DH;-><init>()V

    .line 60391
    .local p0, "header":Lcom/facebook/ads/redexgen/X/DH;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/facebook/ads/redexgen/X/DH;->A03(Lcom/facebook/ads/redexgen/X/CQ;Z)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget v1, v2, Lcom/facebook/ads/redexgen/X/DH;->A04:I

    const/4 v0, 0x2

    and-int/2addr v1, v0

    if-eq v1, v0, :cond_1

    .line 60392
    .end local v2
    .end local v0
    :cond_0
    return v4

    .line 60393
    :cond_1
    iget v1, v2, Lcom/facebook/ads/redexgen/X/DH;->A00:I

    const/16 v0, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 60394
    .local v2, "length":I
    new-instance v1, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/IV;-><init>(I)V

    .line 60395
    .local v0, "scratch":Lcom/facebook/ads/redexgen/X/IV;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    invoke-interface {p1, v0, v4, v2}, Lcom/facebook/ads/redexgen/X/CQ;->ACp([BII)V

    .line 60396
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Vt;->A00(Lcom/facebook/ads/redexgen/X/IV;)Lcom/facebook/ads/redexgen/X/IV;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A04(Lcom/facebook/ads/redexgen/X/IV;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60397
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vv;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vv;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vt;->A01:Lcom/facebook/ads/redexgen/X/DL;

    .line 60398
    :goto_0
    return v3

    .line 60399
    :cond_2
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Vt;->A00(Lcom/facebook/ads/redexgen/X/IV;)Lcom/facebook/ads/redexgen/X/IV;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vq;->A06(Lcom/facebook/ads/redexgen/X/IV;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60400
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vq;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vq;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vt;->A01:Lcom/facebook/ads/redexgen/X/DL;

    goto :goto_0

    .line 60401
    :cond_3
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Vt;->A00(Lcom/facebook/ads/redexgen/X/IV;)Lcom/facebook/ads/redexgen/X/IV;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vs;->A04(Lcom/facebook/ads/redexgen/X/IV;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60402
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vs;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vs;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vt;->A01:Lcom/facebook/ads/redexgen/X/DL;

    goto :goto_0

    .line 60403
    :cond_4
    return v4
.end method


# virtual methods
.method public final A8A(Lcom/facebook/ads/redexgen/X/CR;)V
    .locals 0

    .line 60404
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vt;->A00:Lcom/facebook/ads/redexgen/X/CR;

    .line 60405
    return-void
.end method

.method public final ADD(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/CW;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60406
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vt;->A01:Lcom/facebook/ads/redexgen/X/DL;

    if-nez v0, :cond_0

    .line 60407
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vt;->A03(Lcom/facebook/ads/redexgen/X/CQ;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60408
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->ADr()V

    .line 60409
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vt;->A02:Z

    if-nez v0, :cond_1

    .line 60410
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vt;->A00:Lcom/facebook/ads/redexgen/X/CR;

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/CR;->AF1(II)Lcom/facebook/ads/redexgen/X/Cb;

    move-result-object v2

    .line 60411
    .local p0, "trackOutput":Lcom/facebook/ads/redexgen/X/Cb;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vt;->A00:Lcom/facebook/ads/redexgen/X/CR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CR;->A5A()V

    .line 60412
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vt;->A01:Lcom/facebook/ads/redexgen/X/DL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vt;->A00:Lcom/facebook/ads/redexgen/X/CR;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/DL;->A06(Lcom/facebook/ads/redexgen/X/CR;Lcom/facebook/ads/redexgen/X/Cb;)V

    .line 60413
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Vt;->A02:Z

    .line 60414
    .end local p0    # "trackOutput":Lcom/facebook/ads/redexgen/X/Cb;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vt;->A01:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DL;->A02(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/CW;)I

    move-result v0

    return v0

    .line 60415
    :cond_2
    const/4 v2, 0x0

    const/16 v1, 0x22

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vt;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final AE9(JJ)V
    .locals 1

    .line 60416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vt;->A01:Lcom/facebook/ads/redexgen/X/DL;

    if-eqz v0, :cond_0

    .line 60417
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/DL;->A05(JJ)V

    .line 60418
    :cond_0
    return-void
.end method

.method public final AEj(Lcom/facebook/ads/redexgen/X/CQ;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60419
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vt;->A03(Lcom/facebook/ads/redexgen/X/CQ;)Z

    move-result v0

    return v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/AS; {:try_start_0 .. :try_end_0} :catch_0

    .line 60420
    .local p0, "e":Lcom/facebook/ads/redexgen/X/AS;
    :catch_0
    const/4 v0, 0x0

    return v0
.end method
