.class public abstract Lcom/facebook/ads/redexgen/X/DL;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Vr;,
        Lcom/facebook/ads/redexgen/X/DK;
    }
.end annotation


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/redexgen/X/CR;

.field public A07:Lcom/facebook/ads/redexgen/X/Cb;

.field public A08:Lcom/facebook/ads/redexgen/X/DI;

.field public A09:Lcom/facebook/ads/redexgen/X/DK;

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/DG;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vdpx440NSg8M4CnGdydtu5qQkftaFl81"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8FBVTf92WyxNz1PbVx8WfEYVHOwD1jYA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DKJKTeADHw9YeVFClTVADEpoqL7THNTT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QMHe7Xu97ps4f3hWTDxnFcitcXlvMrzA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "cT681YGQWd9DutiYQJBSPFEBPfK5r2m4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EyU4ukvYlXQau4YgIYVQwMEfY7bgqA6h"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DftqlnKuE3jyyUo0DxEITdlkAR2KkpEx"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3J2n16rNLfrexVGozCu5PKnUXiDeYKol"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/DL;->A0D:[Ljava/lang/String;

    .line 27281
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27283
    new-instance v0, Lcom/facebook/ads/redexgen/X/DG;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/DG;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0C:Lcom/facebook/ads/redexgen/X/DG;

    .line 27284
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/CQ;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 27285
    const/4 v2, 0x1

    .line 27286
    .local p0, "readingHeaders":Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 27287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0C:Lcom/facebook/ads/redexgen/X/DG;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/DG;->A05(Lcom/facebook/ads/redexgen/X/CQ;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27288
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:I

    .line 27289
    const/4 v0, -0x1

    return v0

    .line 27290
    :cond_1
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A04:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/DL;->A03:J

    .line 27291
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0C:Lcom/facebook/ads/redexgen/X/DG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DG;->A02()Lcom/facebook/ads/redexgen/X/IV;

    move-result-object v3

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/DL;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A09:Lcom/facebook/ads/redexgen/X/DK;

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/DL;->A0A(Lcom/facebook/ads/redexgen/X/IV;JLcom/facebook/ads/redexgen/X/DK;)Z

    move-result v2

    .line 27292
    if-eqz v2, :cond_0

    .line 27293
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A04:J

    goto :goto_0

    .line 27294
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A09:Lcom/facebook/ads/redexgen/X/DK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DK;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A00:I

    .line 27295
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0A:Z

    if-nez v0, :cond_3

    .line 27296
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DL;->A07:Lcom/facebook/ads/redexgen/X/Cb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A09:Lcom/facebook/ads/redexgen/X/DK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DK;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Cb;->A5S(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 27297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0A:Z

    .line 27298
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A09:Lcom/facebook/ads/redexgen/X/DK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DK;->A01:Lcom/facebook/ads/redexgen/X/DI;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 27299
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/DL;->A09:Lcom/facebook/ads/redexgen/X/DK;

    sget-object v3, Lcom/facebook/ads/redexgen/X/DL;->A0D:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v3, v0

    const/4 v0, 0x7

    aget-object v3, v3, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v3, Lcom/facebook/ads/redexgen/X/DL;->A0D:[Ljava/lang/String;

    const-string v1, "bh7MBcJSzFDWGWL7bYV4RFdmzZ5DJPtg"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const-string v1, "jbTTtcEVTbmVVWffnqyGAcPkGPEAibSD"

    const/4 v0, 0x4

    aput-object v1, v3, v0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/DK;->A01:Lcom/facebook/ads/redexgen/X/DI;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A08:Lcom/facebook/ads/redexgen/X/DI;

    .line 27300
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/CQ;
    :goto_1
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/DL;->A09:Lcom/facebook/ads/redexgen/X/DK;

    .line 27301
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:I

    .line 27302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0C:Lcom/facebook/ads/redexgen/X/DG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DG;->A04()V

    .line 27303
    const/4 v0, 0x0

    return v0

    .line 27304
    :cond_4
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A6p()J

    move-result-wide v5

    const-wide/16 v3, -0x1

    cmp-long v0, v5, v3

    if-nez v0, :cond_5

    .line 27305
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vr;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Vr;-><init>(Lcom/facebook/ads/redexgen/X/DJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A08:Lcom/facebook/ads/redexgen/X/DI;

    goto :goto_1

    .line 27306
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0C:Lcom/facebook/ads/redexgen/X/DG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DG;->A01()Lcom/facebook/ads/redexgen/X/DH;

    move-result-object v1

    .line 27307
    .local p1, "firstPayloadPageHeader":Lcom/facebook/ads/redexgen/X/DH;
    new-instance v3, Lcom/facebook/ads/redexgen/X/Vx;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/DL;->A04:J

    .line 27308
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A6p()J

    move-result-wide v6

    iget v9, v1, Lcom/facebook/ads/redexgen/X/DH;->A01:I

    iget v0, v1, Lcom/facebook/ads/redexgen/X/DH;->A00:I

    add-int/2addr v9, v0

    iget-wide v10, v1, Lcom/facebook/ads/redexgen/X/DH;->A05:J

    move-object v8, p0

    invoke-direct/range {v3 .. v11}, Lcom/facebook/ads/redexgen/X/Vx;-><init>(JJLcom/facebook/ads/redexgen/X/DL;IJ)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/DL;->A08:Lcom/facebook/ads/redexgen/X/DI;

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/CW;)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 27309
    move-object v4, p0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/DL;->A08:Lcom/facebook/ads/redexgen/X/DI;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/DI;->ADE(Lcom/facebook/ads/redexgen/X/CQ;)J

    move-result-wide v2

    .line 27310
    .local v0, "position":J
    const/4 v9, 0x1

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_0

    .line 27311
    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/facebook/ads/redexgen/X/CW;->A00:J

    .line 27312
    return v9

    .line 27313
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v7, v2, v0

    if-gez v7, :cond_1

    .line 27314
    const-wide/16 v7, 0x2

    add-long/2addr v7, v2

    neg-long v2, v7

    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/DL;->A08(J)V

    .line 27315
    :cond_1
    iget-boolean v8, v4, Lcom/facebook/ads/redexgen/X/DL;->A0B:Z

    sget-object v3, Lcom/facebook/ads/redexgen/X/DL;->A0D:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v3, v3, v2

    const/16 v2, 0x1f

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x51

    if-eq v3, v2, :cond_6

    sget-object v7, Lcom/facebook/ads/redexgen/X/DL;->A0D:[Ljava/lang/String;

    const-string v3, "YKdoYyhEaGRVIGwSTWAYioMwjJxRxWbM"

    const/4 v2, 0x6

    aput-object v3, v7, v2

    if-nez v8, :cond_2

    .line 27316
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/DL;->A08:Lcom/facebook/ads/redexgen/X/DI;

    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/DI;->A4Q()Lcom/facebook/ads/redexgen/X/CY;

    move-result-object v3

    .line 27317
    .local v10, "seekMap":Lcom/facebook/ads/redexgen/X/CY;
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/DL;->A06:Lcom/facebook/ads/redexgen/X/CR;

    invoke-interface {v2, v3}, Lcom/facebook/ads/redexgen/X/CR;->AEA(Lcom/facebook/ads/redexgen/X/CY;)V

    .line 27318
    iput-boolean v9, v4, Lcom/facebook/ads/redexgen/X/DL;->A0B:Z

    .line 27319
    .end local v10    # "seekMap":Lcom/facebook/ads/redexgen/X/CY;
    :cond_2
    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/DL;->A03:J

    cmp-long v2, v7, v5

    if-gtz v2, :cond_3

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/DL;->A0C:Lcom/facebook/ads/redexgen/X/DG;

    invoke-virtual {v2, p1}, Lcom/facebook/ads/redexgen/X/DG;->A05(Lcom/facebook/ads/redexgen/X/CQ;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 27320
    :cond_3
    iput-wide v5, v4, Lcom/facebook/ads/redexgen/X/DL;->A03:J

    .line 27321
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/DL;->A0C:Lcom/facebook/ads/redexgen/X/DG;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/DG;->A02()Lcom/facebook/ads/redexgen/X/IV;

    move-result-object v9

    .line 27322
    .local p1, "payload":Lcom/facebook/ads/redexgen/X/IV;
    invoke-virtual {v4, v9}, Lcom/facebook/ads/redexgen/X/DL;->A07(Lcom/facebook/ads/redexgen/X/IV;)J

    move-result-wide v12

    .line 27323
    .local v10, "granulesInPacket":J
    cmp-long v2, v12, v5

    if-ltz v2, :cond_4

    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/DL;->A02:J

    add-long v10, v7, v12

    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/DL;->A05:J

    cmp-long v2, v10, v5

    if-ltz v2, :cond_4

    .line 27324
    invoke-virtual {v4, v7, v8}, Lcom/facebook/ads/redexgen/X/DL;->A03(J)J

    move-result-wide v6

    .line 27325
    .local v0, "timeUs":J
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/DL;->A07:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/IV;->A07()I

    move-result v2

    invoke-interface {v3, v9, v2}, Lcom/facebook/ads/redexgen/X/Cb;->AE4(Lcom/facebook/ads/redexgen/X/IV;I)V

    .line 27326
    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/DL;->A07:Lcom/facebook/ads/redexgen/X/Cb;

    const/4 v8, 0x1

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/IV;->A07()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/Cb;->AE5(JIIILcom/facebook/ads/redexgen/X/Ca;)V

    .line 27327
    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/DL;->A05:J

    .line 27328
    .end local v0    # "timeUs":J
    :cond_4
    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/DL;->A02:J

    add-long/2addr v0, v12

    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/DL;->A02:J

    .line 27329
    .end local p1    # "payload":Lcom/facebook/ads/redexgen/X/IV;
    .end local v10    # "granulesInPacket":J
    const/4 v0, 0x0

    return v0

    .line 27330
    :cond_5
    const/4 v0, 0x3

    iput v0, v4, Lcom/facebook/ads/redexgen/X/DL;->A01:I

    .line 27331
    const/4 v0, -0x1

    return v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/CW;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 27332
    iget v1, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:I

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    const/4 v3, 0x2

    if-eq v1, v0, :cond_2

    if-ne v1, v3, :cond_1

    .line 27333
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/DL;->A01(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/CW;)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/DL;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/DL;->A0D:[Ljava/lang/String;

    const-string v1, "ecnT7ItXVuTi5H8Gayt4a9jA0qUq5vI3"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27334
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 27335
    :cond_2
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/DL;->A04:J

    long-to-int v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    .line 27336
    iput v3, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:I

    .line 27337
    const/4 v0, 0x0

    return v0

    .line 27338
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DL;->A00(Lcom/facebook/ads/redexgen/X/CQ;)I

    move-result v0

    return v0
.end method

.method public final A03(J)J
    .locals 4

    .line 27339
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A00:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final A04(J)J
    .locals 4

    .line 27340
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A00:I

    int-to-long v2, v0

    mul-long/2addr v2, p1

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final A05(JJ)V
    .locals 3

    .line 27341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0C:Lcom/facebook/ads/redexgen/X/DG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DG;->A03()V

    .line 27342
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    .line 27343
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0B:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DL;->A09(Z)V

    .line 27344
    :cond_0
    :goto_0
    return-void

    .line 27345
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:I

    if-eqz v0, :cond_0

    .line 27346
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A08:Lcom/facebook/ads/redexgen/X/DI;

    invoke-interface {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/DI;->AEp(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A05:J

    .line 27347
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:I

    goto :goto_0
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/CR;Lcom/facebook/ads/redexgen/X/Cb;)V
    .locals 1

    .line 27348
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DL;->A06:Lcom/facebook/ads/redexgen/X/CR;

    .line 27349
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/DL;->A07:Lcom/facebook/ads/redexgen/X/Cb;

    .line 27350
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DL;->A09(Z)V

    .line 27351
    return-void
.end method

.method public abstract A07(Lcom/facebook/ads/redexgen/X/IV;)J
.end method

.method public A08(J)V
    .locals 0

    .line 27352
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/DL;->A02:J

    .line 27353
    return-void
.end method

.method public A09(Z)V
    .locals 4

    .line 27354
    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    .line 27355
    new-instance v0, Lcom/facebook/ads/redexgen/X/DK;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/DK;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A09:Lcom/facebook/ads/redexgen/X/DK;

    .line 27356
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/DL;->A04:J

    .line 27357
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:I

    .line 27358
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A05:J

    .line 27359
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/DL;->A02:J

    .line 27360
    return-void

    .line 27361
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:I

    goto :goto_0
.end method

.method public abstract A0A(Lcom/facebook/ads/redexgen/X/IV;JLcom/facebook/ads/redexgen/X/DK;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
