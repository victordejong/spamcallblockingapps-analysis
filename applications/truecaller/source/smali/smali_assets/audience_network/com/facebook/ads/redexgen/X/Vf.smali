.class public final Lcom/facebook/ads/redexgen/X/Vf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DV;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/DZ;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/Cb;

.field public A03:Lcom/facebook/ads/redexgen/X/DZ;

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/Db;

.field public final A07:Lcom/facebook/ads/redexgen/X/Db;

.field public final A08:Lcom/facebook/ads/redexgen/X/Db;

.field public final A09:Lcom/facebook/ads/redexgen/X/De;

.field public final A0A:Lcom/facebook/ads/redexgen/X/IV;

.field public final A0B:Z

.field public final A0C:Z

.field public final A0D:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OaAtDjibDffMS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "aj2yyuicdEn8dhTDbWTrD1WtuleVGPEx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "a3NvGU2CXdpQvxvcysdReyA6yUgKGJjf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4BBSavRiCGZis8TiCNo6nDJqjRzxnCkr"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3Isw3BGBXoN1VbjlJcagr5xDVNXHwLpI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HfhncQp7sGaDAl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zNtUp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pzzsrx2QpEHePoyNV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    .line 59607
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vf;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/De;ZZ)V
    .locals 3

    .line 59608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59609
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vf;->A09:Lcom/facebook/ads/redexgen/X/De;

    .line 59610
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0B:Z

    .line 59611
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0C:Z

    .line 59612
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0D:[Z

    .line 59613
    const/16 v2, 0x80

    const/4 v1, 0x7

    new-instance v0, Lcom/facebook/ads/redexgen/X/Db;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Db;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A08:Lcom/facebook/ads/redexgen/X/Db;

    .line 59614
    const/16 v1, 0x8

    new-instance v0, Lcom/facebook/ads/redexgen/X/Db;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Db;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Db;

    .line 59615
    const/4 v1, 0x6

    new-instance v0, Lcom/facebook/ads/redexgen/X/Db;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Db;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A07:Lcom/facebook/ads/redexgen/X/Db;

    .line 59616
    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IV;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    .line 59617
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vf;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x34

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

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x25t
        0x3at
        0x37t
        0x36t
        0x3ct
        0x7ct
        0x32t
        0x25t
        0x30t
    .end array-data
.end method

.method private A02(JIIJ)V
    .locals 24

    .line 59618
    move-object/from16 v6, p0

    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A05:Z

    move/from16 v7, p4

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->A07()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59619
    :cond_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A08:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Db;->A04(I)Z

    .line 59620
    iget-object v3, v6, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Db;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    const-string v1, "yEUIS2SJoSKiyXNZ5S9V3xqSna0x8qYs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, v7}, Lcom/facebook/ads/redexgen/X/Db;->A04(I)Z

    .line 59621
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A05:Z

    const/4 v3, 0x3

    if-nez v0, :cond_4

    .line 59622
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A08:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Db;->A03()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Db;->A03()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59623
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 59624
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A08:Lcom/facebook/ads/redexgen/X/Db;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Db;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A08:Lcom/facebook/ads/redexgen/X/Db;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Db;->A00:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59625
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Db;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Db;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Db;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Db;->A00:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59626
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A08:Lcom/facebook/ads/redexgen/X/Db;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Db;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A08:Lcom/facebook/ads/redexgen/X/Db;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Db;->A00:I

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/IR;->A06([BII)Lcom/facebook/ads/redexgen/X/IQ;

    move-result-object v4

    .line 59627
    .local v0, "spsData":Lcom/facebook/ads/redexgen/X/IQ;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Db;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Db;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Db;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Db;->A00:I

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/IR;->A05([BII)Lcom/facebook/ads/redexgen/X/IP;

    move-result-object v3

    .line 59628
    .local v1, "ppsData":Lcom/facebook/ads/redexgen/X/IP;
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/Vf;->A02:Lcom/facebook/ads/redexgen/X/Cb;

    iget-object v12, v6, Lcom/facebook/ads/redexgen/X/Vf;->A04:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    iget v11, v4, Lcom/facebook/ads/redexgen/X/IQ;->A06:I

    iget v10, v4, Lcom/facebook/ads/redexgen/X/IQ;->A02:I

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v21, -0x1

    iget v9, v4, Lcom/facebook/ads/redexgen/X/IQ;->A00:F

    const/16 v23, 0x0

    .line 59629
    const/4 v8, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x67

    invoke-static {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/Vf;->A00(III)Ljava/lang/String;

    move-result-object v13

    .end local v0    # "spsData":Lcom/facebook/ads/redexgen/X/IQ;
    .local v2, "spsData":Lcom/facebook/ads/redexgen/X/IQ;
    .local v0, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move/from16 v22, v9

    move-object/from16 v20, v5

    move/from16 v18, v10

    move/from16 v17, v11

    invoke-static/range {v12 .. v23}, Lcom/facebook/ads/internal/exoplayer2/Format;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 59630
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Cb;->A5S(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 59631
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A05:Z

    .line 59632
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/DZ;->A05(Lcom/facebook/ads/redexgen/X/IQ;)V

    .line 59633
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/DZ;->A04(Lcom/facebook/ads/redexgen/X/IP;)V

    .line 59634
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A08:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Db;->A00()V

    .line 59635
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Db;->A00()V

    .line 59636
    .end local v2    # "spsData":Lcom/facebook/ads/redexgen/X/IQ;
    .end local v1    # "ppsData":Lcom/facebook/ads/redexgen/X/IP;
    .end local v0    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_1
    :goto_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A07:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Db;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59637
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A07:Lcom/facebook/ads/redexgen/X/Db;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Db;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A07:Lcom/facebook/ads/redexgen/X/Db;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Db;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/IR;->A02([BI)I

    move-result v7

    .line 59638
    .local v2, "unescapedLength":I
    iget-object v5, v6, Lcom/facebook/ads/redexgen/X/Vf;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move-wide/from16 v2, p5

    if-eq v1, v0, :cond_3

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A07:Lcom/facebook/ads/redexgen/X/Db;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Db;->A01:[B

    invoke-virtual {v5, v0, v7}, Lcom/facebook/ads/redexgen/X/IV;->A0b([BI)V

    .line 59639
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/Vf;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 59640
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/Vf;->A09:Lcom/facebook/ads/redexgen/X/De;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/De;->A02(JLcom/facebook/ads/redexgen/X/IV;)V

    .line 59641
    :cond_2
    :goto_1
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/redexgen/X/DZ;

    move/from16 v1, p3

    move-wide/from16 v2, p1

    invoke-virtual {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/DZ;->A02(JI)V

    .line 59642
    return-void

    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    const-string v1, "yBxIEmyTXmgFp9YnTDwoZpE0n0h2mQL3"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    const-string v1, "tg7t9oBRXzMr4c01fdI6E0npLzJKU9lY"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A07:Lcom/facebook/ads/redexgen/X/Db;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Db;->A01:[B

    invoke-virtual {v5, v0, v7}, Lcom/facebook/ads/redexgen/X/IV;->A0b([BI)V

    .line 59643
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/Vf;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 59644
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/Vf;->A09:Lcom/facebook/ads/redexgen/X/De;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/De;->A02(JLcom/facebook/ads/redexgen/X/IV;)V

    goto :goto_1

    .line 59645
    :cond_4
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A08:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Db;->A03()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59646
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A08:Lcom/facebook/ads/redexgen/X/Db;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Db;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A08:Lcom/facebook/ads/redexgen/X/Db;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Db;->A00:I

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/IR;->A06([BII)Lcom/facebook/ads/redexgen/X/IQ;

    move-result-object v1

    .line 59647
    .restart local v2    # "unescapedLength":I
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/DZ;->A05(Lcom/facebook/ads/redexgen/X/IQ;)V

    .line 59648
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A08:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Db;->A00()V

    .end local v2    # "unescapedLength":I
    goto/16 :goto_0

    .line 59649
    :cond_5
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Db;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    const-string v1, "4gS5xwJzfuuPxe9g1"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "PKV4Z"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Db;->A03()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59650
    :goto_2
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Db;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Db;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Db;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Db;->A00:I

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/IR;->A05([BII)Lcom/facebook/ads/redexgen/X/IP;

    move-result-object v1

    .line 59651
    .local v2, "ppsData":Lcom/facebook/ads/redexgen/X/IP;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/DZ;->A04(Lcom/facebook/ads/redexgen/X/IP;)V

    .line 59652
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Db;->A00()V

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    const-string v1, "kGyV9pF87NOcG7T4L"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "bhPwg"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Db;->A03()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03(JIJ)V
    .locals 6

    .line 59653
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Z

    move v3, p3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->A07()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59654
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A08:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Db;->A01(I)V

    .line 59655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Db;->A01(I)V

    .line 59656
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A07:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Db;->A01(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59657
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    const-string v1, "7DOfm1dA88ob89"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "yqrgSqZS2XcB9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/redexgen/X/DZ;

    move-wide v4, p4

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/DZ;->A03(JIJ)V

    .line 59658
    return-void
.end method

.method private A04([BII)V
    .locals 1

    .line 59659
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->A07()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59660
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A08:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Db;->A02([BII)V

    .line 59661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Db;->A02([BII)V

    .line 59662
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A07:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Db;->A02([BII)V

    .line 59663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DZ;->A06([BII)V

    .line 59664
    return-void
.end method


# virtual methods
.method public final A46(Lcom/facebook/ads/redexgen/X/IV;)V
    .locals 17

    .line 59665
    move-object/from16 v6, p0

    move-object/from16 v8, p1

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IV;->A06()I

    move-result v7

    .line 59666
    .local p0, "offset":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IV;->A07()I

    move-result v5

    .line 59667
    .local v0, "limit":I
    iget-object v4, v8, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    .line 59668
    .local v0, "dataArray":[B
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/Vf;->A01:J

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/Vf;->A01:J

    .line 59669
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/Vf;->A02:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v0

    invoke-interface {v1, v8, v0}, Lcom/facebook/ads/redexgen/X/Cb;->AE4(Lcom/facebook/ads/redexgen/X/IV;I)V

    .line 59670
    .end local p0    # "offset":I
    .local v11, "offset":I
    :goto_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A0D:[Z

    invoke-static {v4, v7, v5, v0}, Lcom/facebook/ads/redexgen/X/IR;->A04([BII[Z)I

    move-result v3

    .line 59671
    .local v2, "nalUnitOffset":I
    if-ne v3, v5, :cond_0

    .line 59672
    invoke-direct {v6, v4, v7, v5}, Lcom/facebook/ads/redexgen/X/Vf;->A04([BII)V

    .line 59673
    return-void

    .line 59674
    :cond_0
    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/IR;->A01([BI)I

    move-result v14

    .line 59675
    .local v13, "nalUnitType":I
    sub-int v2, v3, v7

    .line 59676
    .local v1, "lengthToNalUnit":I
    if-lez v2, :cond_1

    .line 59677
    invoke-direct {v6, v4, v7, v3}, Lcom/facebook/ads/redexgen/X/Vf;->A04([BII)V

    .line 59678
    :cond_1
    sub-int v10, v5, v3

    .line 59679
    .local v0, "bytesWrittenPastPosition":I
    iget-wide v8, v6, Lcom/facebook/ads/redexgen/X/Vf;->A01:J

    int-to-long v0, v10

    sub-long/2addr v8, v0

    .line 59680
    .local v7, "absolutePosition":J
    if-gez v2, :cond_2

    neg-int v11, v2

    :goto_1
    iget-wide v12, v6, Lcom/facebook/ads/redexgen/X/Vf;->A00:J

    .line 59681
    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/Vf;->A02(JIIJ)V

    .line 59682
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/Vf;->A00:J

    move-object v11, v7

    move-wide v12, v8

    move-wide v15, v0

    invoke-direct/range {v11 .. v16}, Lcom/facebook/ads/redexgen/X/Vf;->A03(JIJ)V

    .line 59683
    add-int/lit8 v7, v3, 0x3

    .line 59684
    .end local v2    # "nalUnitOffset":I
    .end local v13    # "nalUnitType":I
    .end local v1    # "lengthToNalUnit":I
    .end local v0    # "bytesWrittenPastPosition":I
    .end local v7    # "absolutePosition":J
    goto :goto_0

    .line 59685
    :cond_2
    const/4 v11, 0x0

    goto :goto_1
.end method

.method public final A4T(Lcom/facebook/ads/redexgen/X/CR;Lcom/facebook/ads/redexgen/X/Dj;)V
    .locals 4

    .line 59686
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Dj;->A05()V

    .line 59687
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Dj;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A04:Ljava/lang/String;

    .line 59688
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Dj;->A03()I

    move-result v1

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CR;->AF1(II)Lcom/facebook/ads/redexgen/X/Cb;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A02:Lcom/facebook/ads/redexgen/X/Cb;

    .line 59689
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vf;->A02:Lcom/facebook/ads/redexgen/X/Cb;

    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0B:Z

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0C:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/DZ;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/DZ;-><init>(Lcom/facebook/ads/redexgen/X/Cb;ZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/redexgen/X/DZ;

    .line 59690
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A09:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/De;->A03(Lcom/facebook/ads/redexgen/X/CR;Lcom/facebook/ads/redexgen/X/Dj;)V

    .line 59691
    return-void
.end method

.method public final ACl()V
    .locals 0

    .line 59692
    return-void
.end method

.method public final ACm(JZ)V
    .locals 0

    .line 59693
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vf;->A00:J

    .line 59694
    return-void
.end method

.method public final AE8()V
    .locals 2

    .line 59695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0D:[Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IR;->A0B([Z)V

    .line 59696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A08:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Db;->A00()V

    .line 59697
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Db;->A00()V

    .line 59698
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A07:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Db;->A00()V

    .line 59699
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->A01()V

    .line 59700
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A01:J

    .line 59701
    return-void
.end method
