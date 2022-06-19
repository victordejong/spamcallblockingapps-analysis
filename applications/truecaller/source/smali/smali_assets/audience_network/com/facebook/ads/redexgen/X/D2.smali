.class public final Lcom/facebook/ads/redexgen/X/D2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/W1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackBundle"
.end annotation


# static fields
.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/Cw;

.field public A05:Lcom/facebook/ads/redexgen/X/DB;

.field public final A06:Lcom/facebook/ads/redexgen/X/Cb;

.field public final A07:Lcom/facebook/ads/redexgen/X/DD;

.field public final A08:Lcom/facebook/ads/redexgen/X/IV;

.field public final A09:Lcom/facebook/ads/redexgen/X/IV;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "3clh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "In2mDQuCVOg3ihkf16hWdIIfuM6sFv5F"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "x02l2Vae1akitXdZsfkSin5rPssADgyF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "voDg"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hUzVtg6QDcg3AayaGyy4Y5hfj2RvIx7z"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AYA0HHhZRav1tOhmR967ChnIf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RG8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bQ6q4wCv1qa3psjbWrVNO9D1ADq5zdw2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/D2;->A0A:[Ljava/lang/String;

    .line 26414
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Cb;)V
    .locals 2

    .line 26415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26416
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D2;->A06:Lcom/facebook/ads/redexgen/X/Cb;

    .line 26417
    new-instance v0, Lcom/facebook/ads/redexgen/X/DD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/DD;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    .line 26418
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A09:Lcom/facebook/ads/redexgen/X/IV;

    .line 26419
    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IV;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A08:Lcom/facebook/ads/redexgen/X/IV;

    .line 26420
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/DC;
    .locals 4

    .line 26421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DD;->A07:Lcom/facebook/ads/redexgen/X/Cw;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Cw;->A02:I

    .line 26422
    .local p0, "sampleDescriptionIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DD;->A08:Lcom/facebook/ads/redexgen/X/DC;

    if-eqz v0, :cond_1

    .line 26423
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    sget-object v2, Lcom/facebook/ads/redexgen/X/D2;->A0A:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/D2;->A0A:[Ljava/lang/String;

    const-string v1, "mhitCTNVD2gTcCiZ9jaRAXWaAA0g9dMw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "MwiogHOaq0gqmibDd9x4nD1rPGRVV4il"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DD;->A08:Lcom/facebook/ads/redexgen/X/DC;

    goto :goto_0

    .line 26424
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A05:Lcom/facebook/ads/redexgen/X/DB;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/DB;->A00(I)Lcom/facebook/ads/redexgen/X/DC;

    move-result-object v0

    .line 26425
    :goto_0
    return-object v0
.end method

.method private A01()V
    .locals 3

    .line 26426
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/DD;->A0A:Z

    if-nez v0, :cond_0

    .line 26427
    return-void

    .line 26428
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/DD;->A09:Lcom/facebook/ads/redexgen/X/IV;

    .line 26429
    .local p0, "sampleEncryptionData":Lcom/facebook/ads/redexgen/X/IV;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/D2;->A00()Lcom/facebook/ads/redexgen/X/DC;

    move-result-object v1

    .line 26430
    .local v0, "encryptionBox":Lcom/facebook/ads/redexgen/X/DC;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/DC;->A00:I

    if-eqz v0, :cond_1

    .line 26431
    iget v0, v1, Lcom/facebook/ads/redexgen/X/DC;->A00:I

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 26432
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DD;->A0H:[Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:I

    aget-boolean v0, v1, v0

    if-eqz v0, :cond_2

    .line 26433
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IV;->A0I()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 26434
    :cond_2
    return-void
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/D2;)V
    .locals 0

    .line 26435
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/D2;->A01()V

    return-void
.end method


# virtual methods
.method public final A03()I
    .locals 7

    .line 26436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/DD;->A0A:Z

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 26437
    return v4

    .line 26438
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/D2;->A00()Lcom/facebook/ads/redexgen/X/DC;

    move-result-object v1

    .line 26439
    .local p0, "encryptionBox":Lcom/facebook/ads/redexgen/X/DC;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/DC;->A00:I

    if-eqz v0, :cond_2

    .line 26440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/DD;->A09:Lcom/facebook/ads/redexgen/X/IV;

    .line 26441
    .local v0, "initializationVectorData":Lcom/facebook/ads/redexgen/X/IV;
    iget v3, v1, Lcom/facebook/ads/redexgen/X/DC;->A00:I

    .line 26442
    .local v4, "vectorSize":I
    .local v0, "vectorSize":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DD;->A0H:[Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:I

    aget-boolean v5, v1, v0

    .line 26443
    .local v1, "subsampleEncryption":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A09:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    if-eqz v5, :cond_1

    const/16 v0, 0x80

    :goto_1
    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v4

    .line 26444
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A09:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 26445
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/D2;->A06:Lcom/facebook/ads/redexgen/X/Cb;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D2;->A09:Lcom/facebook/ads/redexgen/X/IV;

    const/4 v0, 0x1

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cb;->AE4(Lcom/facebook/ads/redexgen/X/IV;I)V

    .line 26446
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A06:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v0, v6, v3}, Lcom/facebook/ads/redexgen/X/Cb;->AE4(Lcom/facebook/ads/redexgen/X/IV;I)V

    .line 26447
    if-nez v5, :cond_4

    .line 26448
    add-int/lit8 v0, v3, 0x1

    return v0

    .line 26449
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 26450
    .end local v0    # "vectorSize":I
    .end local v4    # "vectorSize":I
    :cond_2
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/DC;->A04:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/D2;->A0A:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 26451
    .local v0, "initVectorData":[B
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/D2;->A0A:[Ljava/lang/String;

    const-string v1, "Pfb0S5CneQgYrjeMjOJgtR7T7eyOdr1R"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "zLY8KEVp0MgNhcadjz3HGMWIKnjSbq4p"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D2;->A08:Lcom/facebook/ads/redexgen/X/IV;

    array-length v0, v3

    invoke-virtual {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0b([BI)V

    .line 26452
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/D2;->A08:Lcom/facebook/ads/redexgen/X/IV;

    .line 26453
    .local v4, "initializationVectorData":Lcom/facebook/ads/redexgen/X/IV;
    array-length v3, v3

    goto :goto_0

    .line 26454
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/DD;->A09:Lcom/facebook/ads/redexgen/X/IV;

    .line 26455
    .local v0, "subsampleEncryptionData":Lcom/facebook/ads/redexgen/X/IV;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IV;->A0I()I

    move-result v1

    .line 26456
    .local v0, "subsampleCount":I
    const/4 v0, -0x2

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 26457
    mul-int/lit8 v0, v1, 0x6

    add-int/lit8 v1, v0, 0x2

    .line 26458
    .local v0, "subsampleDataLength":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A06:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Cb;->AE4(Lcom/facebook/ads/redexgen/X/IV;I)V

    .line 26459
    add-int/lit8 v0, v3, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public final A04()V
    .locals 1

    .line 26460
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DD;->A01()V

    .line 26461
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:I

    .line 26462
    iput v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A02:I

    .line 26463
    iput v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    .line 26464
    iput v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A03:I

    .line 26465
    return-void
.end method

.method public final A05(J)V
    .locals 7

    .line 26466
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/A3;->A01(J)J

    move-result-wide v5

    .line 26467
    .local p0, "timeMs":J
    iget v4, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:I

    .line 26468
    .local v2, "searchIndex":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DD;->A00:I

    if-ge v4, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    .line 26469
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/DD;->A00(I)J

    move-result-wide v1

    cmp-long v0, v1, v5

    if-gez v0, :cond_2

    .line 26470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DD;->A0I:[Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/D2;->A0A:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/D2;->A0A:[Ljava/lang/String;

    const-string v1, "yYyJ6pNJ0kgjmttu9OhrBT2GfQD0mn7b"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "spdSEizAECgh3deYwyaUKu4kY7nul1tj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    aget-boolean v0, v3, v4

    if-eqz v0, :cond_1

    .line 26471
    iput v4, p0, Lcom/facebook/ads/redexgen/X/D2;->A03:I

    .line 26472
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 26473
    :cond_2
    return-void
.end method

.method public final A06(Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)V
    .locals 4

    .line 26474
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D2;->A05:Lcom/facebook/ads/redexgen/X/DB;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DD;->A07:Lcom/facebook/ads/redexgen/X/Cw;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Cw;->A02:I

    .line 26475
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/DB;->A00(I)Lcom/facebook/ads/redexgen/X/DC;

    move-result-object v0

    .line 26476
    .local p0, "encryptionBox":Lcom/facebook/ads/redexgen/X/DC;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DC;->A02:Ljava/lang/String;

    .line 26477
    .local p1, "schemeType":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/D2;->A06:Lcom/facebook/ads/redexgen/X/Cb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A05:Lcom/facebook/ads/redexgen/X/DB;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DB;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {p1, v3}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A02(Ljava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0I(Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Cb;->A5S(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 26478
    return-void

    .line 26479
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/DB;Lcom/facebook/ads/redexgen/X/Cw;)V
    .locals 2

    .line 26480
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/DB;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A05:Lcom/facebook/ads/redexgen/X/DB;

    .line 26481
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cw;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A04:Lcom/facebook/ads/redexgen/X/Cw;

    .line 26482
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D2;->A06:Lcom/facebook/ads/redexgen/X/Cb;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/DB;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Cb;->A5S(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 26483
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/D2;->A04()V

    .line 26484
    return-void
.end method

.method public final A08()Z
    .locals 4

    .line 26485
    iget v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:I

    .line 26486
    iget v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    .line 26487
    iget v2, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/redexgen/X/DD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DD;->A0E:[I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/D2;->A02:I

    aget v0, v0, v1

    if-ne v2, v0, :cond_1

    .line 26488
    add-int/2addr v1, v3

    iput v1, p0, Lcom/facebook/ads/redexgen/X/D2;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/D2;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 26489
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/D2;->A0A:[Ljava/lang/String;

    const-string v1, "24SILmm"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    .line 26490
    return v0

    .line 26491
    :cond_1
    return v3
.end method
