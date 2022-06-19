.class public final Lcom/facebook/ads/redexgen/X/Vo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CP;


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:Lcom/facebook/ads/redexgen/X/CS;

.field public static final A07:I


# instance fields
.field public A00:Z

.field public final A01:J

.field public final A02:Lcom/facebook/ads/redexgen/X/Vn;

.field public final A03:Lcom/facebook/ads/redexgen/X/IV;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "P5w0t5YmbfCx1ojda5KKDsEMO6jqUmnr"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UdOatSKcJailVD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xAiF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "epl8GGi5jyNsT2QZHjLNLopZqyhNzplR"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TY8pRi4pa4JcG30Kuv61m"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fOMFGQDuqjq2usuY2YJ2oGF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ObZwfJQfEiVxl"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vo;->A05:[Ljava/lang/String;

    .line 60215
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vo;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vp;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vp;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vo;->A06:Lcom/facebook/ads/redexgen/X/CS;

    .line 60216
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vo;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Il;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Vo;->A07:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60217
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Vo;-><init>(J)V

    .line 60218
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 60219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60220
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vo;->A01:J

    .line 60221
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vn;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vn;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A02:Lcom/facebook/ads/redexgen/X/Vn;

    .line 60222
    const/16 v1, 0xae2

    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A03:Lcom/facebook/ads/redexgen/X/IV;

    .line 60223
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vo;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x39

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

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vo;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xft
        0x2t
        0x75t
    .end array-data
.end method


# virtual methods
.method public final A8A(Lcom/facebook/ads/redexgen/X/CR;)V
    .locals 4

    .line 60224
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vo;->A02:Lcom/facebook/ads/redexgen/X/Vn;

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dj;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Dj;-><init>(II)V

    invoke-virtual {v3, p1, v0}, Lcom/facebook/ads/redexgen/X/Vn;->A4T(Lcom/facebook/ads/redexgen/X/CR;Lcom/facebook/ads/redexgen/X/Dj;)V

    .line 60225
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CR;->A5A()V

    .line 60226
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/WN;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/WN;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CR;->AEA(Lcom/facebook/ads/redexgen/X/CY;)V

    .line 60227
    return-void
.end method

.method public final ADD(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/CW;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60228
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A03:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/4 v4, 0x0

    const/16 v0, 0xae2

    invoke-interface {p1, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/CQ;->read([BII)I

    move-result v1

    .line 60229
    .local p0, "bytesRead":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 60230
    return v0

    .line 60231
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A03:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 60232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A03:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;->A0X(I)V

    .line 60233
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A00:Z

    if-nez v0, :cond_1

    .line 60234
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vo;->A02:Lcom/facebook/ads/redexgen/X/Vn;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Vo;->A01:J

    const/4 v0, 0x1

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Vn;->ACm(JZ)V

    .line 60235
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A00:Z

    .line 60236
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vo;->A02:Lcom/facebook/ads/redexgen/X/Vn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A03:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Vn;->A46(Lcom/facebook/ads/redexgen/X/IV;)V

    .line 60237
    return v4
.end method

.method public final AE9(JJ)V
    .locals 1

    .line 60238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A00:Z

    .line 60239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A02:Lcom/facebook/ads/redexgen/X/Vn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vn;->AE8()V

    .line 60240
    return-void
.end method

.method public final AEj(Lcom/facebook/ads/redexgen/X/CQ;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60241
    const/16 v3, 0xa

    new-instance v6, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v6, v3}, Lcom/facebook/ads/redexgen/X/IV;-><init>(I)V

    .line 60242
    .local p0, "scratch":Lcom/facebook/ads/redexgen/X/IV;
    const/4 v5, 0x0

    .line 60243
    .local v3, "startPosition":I
    :goto_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/4 v4, 0x0

    invoke-interface {p1, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/CQ;->ACp([BII)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vo;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60244
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vo;->A05:[Ljava/lang/String;

    const-string v1, "IuOldmz1qGC5b"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v6, v4}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 60245
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0G()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/Vo;->A07:I

    if-eq v1, v0, :cond_6

    .line 60246
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->ADr()V

    .line 60247
    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/CQ;->A3J(I)V

    .line 60248
    move v3, v5

    .line 60249
    .local p1, "headerPosition":I
    const/4 v2, 0x0

    .line 60250
    .local v6, "validFramesCount":I
    :goto_1
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/4 v0, 0x5

    invoke-interface {p1, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/CQ;->ACp([BII)V

    .line 60251
    invoke-virtual {v6, v4}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 60252
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0I()I

    move-result v1

    .line 60253
    .local v0, "syncBytes":I
    const/16 v0, 0xb77

    if-eq v1, v0, :cond_2

    .line 60254
    const/4 v2, 0x0

    .line 60255
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->ADr()V

    .line 60256
    add-int/lit8 v3, v3, 0x1

    sub-int v1, v3, v5

    const/16 v0, 0x2000

    if-lt v1, v0, :cond_1

    .line 60257
    return v4

    .line 60258
    :cond_1
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/CQ;->A3J(I)V

    goto :goto_1

    .line 60259
    :cond_2
    add-int/lit8 v2, v2, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vo;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_3

    sget-object v7, Lcom/facebook/ads/redexgen/X/Vo;->A05:[Ljava/lang/String;

    const-string v1, "a4rI"

    const/4 v0, 0x3

    aput-object v1, v7, v0

    const-string v1, "EnE3h5gngskpWhoTVRGnZEO"

    const/4 v0, 0x6

    aput-object v1, v7, v0

    const/4 v0, 0x4

    if-lt v2, v0, :cond_4

    .line 60260
    :goto_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x4

    if-lt v2, v0, :cond_4

    goto :goto_2

    .line 60261
    :cond_4
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ax;->A05([B)I

    move-result v1

    .line 60262
    .local v4, "frameSize":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_5

    .line 60263
    return v4

    .line 60264
    :cond_5
    add-int/lit8 v0, v1, -0x5

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CQ;->A3J(I)V

    goto :goto_1

    .line 60265
    .end local p1    # "headerPosition":I
    .end local v6    # "validFramesCount":I
    :cond_6
    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 60266
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0D()I

    move-result v1

    .line 60267
    .local v6, "length":I
    add-int/lit8 v0, v1, 0xa

    add-int/2addr v5, v0

    .line 60268
    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/CQ;->A3J(I)V

    .line 60269
    .end local v6    # "length":I
    goto/16 :goto_0
.end method
