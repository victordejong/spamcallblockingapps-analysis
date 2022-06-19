.class public final Lcom/facebook/ads/redexgen/X/Vx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Vy;
    }
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:J

.field public final A08:J

.field public final A09:J

.field public final A0A:Lcom/facebook/ads/redexgen/X/DH;

.field public final A0B:Lcom/facebook/ads/redexgen/X/DL;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "IwWJ1rAHfmexjsebXRXcDPjaU73iSJJD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Pfa9O7smeRLr"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YVPVKTJSUnoy1mID8h1JiHhyOv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4YIcZCc9D0v6GYbVW55qq4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MQGq3Ss0TGTuZcZl9hZWKHAs"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ClxO0wOPMkXGPeTsbkyLqOefUDvePx9Y"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "eY8aqVMBTreysgzhCT0m33TuEQRECFok"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4vNP3Dy1WFFR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vx;->A0D:[Ljava/lang/String;

    .line 60511
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vx;->A0A()V

    return-void
.end method

.method public constructor <init>(JJLcom/facebook/ads/redexgen/X/DL;IJ)V
    .locals 4

    .line 60512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60513
    new-instance v0, Lcom/facebook/ads/redexgen/X/DH;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/DH;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A0A:Lcom/facebook/ads/redexgen/X/DH;

    .line 60514
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-ltz v0, :cond_1

    cmp-long v0, p3, p1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A03(Z)V

    .line 60515
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Vx;->A0B:Lcom/facebook/ads/redexgen/X/DL;

    .line 60516
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vx;->A09:J

    .line 60517
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Vx;->A08:J

    .line 60518
    int-to-long v1, p6

    sub-long/2addr p3, p1

    cmp-long v0, v1, p3

    if-nez v0, :cond_0

    .line 60519
    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/Vx;->A07:J

    .line 60520
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A00:I

    .line 60521
    :goto_1
    return-void

    .line 60522
    :cond_0
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Vx;->A00:I

    goto :goto_1

    .line 60523
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A00(JJJ)J
    .locals 7

    .line 60524
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Vx;->A08:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Vx;->A09:J

    sub-long/2addr v3, v1

    mul-long/2addr v3, p3

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/Vx;->A07:J

    div-long/2addr v3, v5

    sub-long/2addr v3, p5

    add-long/2addr p1, v3

    .line 60525
    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    .line 60526
    iget-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vx;->A09:J

    .line 60527
    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vx;->A08:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    .line 60528
    const-wide/16 v0, 0x1

    sub-long p1, v2, v0

    .line 60529
    :cond_1
    return-wide p1
.end method

.method private final A01(JLcom/facebook/ads/redexgen/X/CQ;)J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60530
    move-object v10, p0

    iget-wide v3, v10, Lcom/facebook/ads/redexgen/X/Vx;->A04:J

    iget-wide v1, v10, Lcom/facebook/ads/redexgen/X/Vx;->A01:J

    const-wide/16 v13, 0x2

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 60531
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/Vx;->A05:J

    add-long/2addr v2, v13

    neg-long v0, v2

    return-wide v0

    .line 60532
    :cond_0
    move-object/from16 v5, p3

    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v1

    .line 60533
    .local v2, "initialPosition":J
    iget-wide v3, v10, Lcom/facebook/ads/redexgen/X/Vx;->A01:J

    invoke-direct {v10, v5, v3, v4}, Lcom/facebook/ads/redexgen/X/Vx;->A0D(Lcom/facebook/ads/redexgen/X/CQ;J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 60534
    iget-wide v3, v10, Lcom/facebook/ads/redexgen/X/Vx;->A04:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 60535
    return-wide v3

    .line 60536
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x19

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vx;->A09(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60537
    :cond_2
    iget-object v3, v10, Lcom/facebook/ads/redexgen/X/Vx;->A0A:Lcom/facebook/ads/redexgen/X/DH;

    const/4 v0, 0x0

    invoke-virtual {v3, v5, v0}, Lcom/facebook/ads/redexgen/X/DH;->A03(Lcom/facebook/ads/redexgen/X/CQ;Z)Z

    .line 60538
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/CQ;->ADr()V

    .line 60539
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/Vx;->A0A:Lcom/facebook/ads/redexgen/X/DH;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/DH;->A05:J

    sub-long p1, p1, v3

    .line 60540
    .local v10, "granuleDistance":J
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/Vx;->A0A:Lcom/facebook/ads/redexgen/X/DH;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/DH;->A01:I

    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/Vx;->A0A:Lcom/facebook/ads/redexgen/X/DH;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DH;->A00:I

    add-int/2addr v4, v0

    .line 60541
    .local v1, "pageSize":I
    const-wide/16 v11, 0x0

    cmp-long v0, p1, v11

    if-ltz v0, :cond_4

    const-wide/32 v7, 0x11940

    sget-object v6, Lcom/facebook/ads/redexgen/X/Vx;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v3, v6, v0

    const/4 v0, 0x0

    aget-object v6, v6, v0

    const/16 v0, 0x18

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v6, Lcom/facebook/ads/redexgen/X/Vx;->A0D:[Ljava/lang/String;

    const-string v3, "1HFKFqyQYawdfec4zhOWKwAEhw"

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const-string v3, "atngC4wrhlAL4xDnem6FNv"

    const/4 v0, 0x3

    aput-object v3, v6, v0

    cmp-long v0, p1, v7

    if-lez v0, :cond_a

    .line 60542
    :cond_4
    const-wide/32 v7, 0x186a0

    cmp-long v0, p1, v11

    if-gez v0, :cond_6

    .line 60543
    iput-wide v1, v10, Lcom/facebook/ads/redexgen/X/Vx;->A01:J

    .line 60544
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/Vx;->A0A:Lcom/facebook/ads/redexgen/X/DH;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/DH;->A05:J

    iput-wide v0, v10, Lcom/facebook/ads/redexgen/X/Vx;->A02:J

    .line 60545
    :cond_5
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/Vx;->A01:J

    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/Vx;->A04:J

    sub-long/2addr v2, v0

    cmp-long v6, v2, v7

    if-gez v6, :cond_7

    .line 60546
    iput-wide v0, v10, Lcom/facebook/ads/redexgen/X/Vx;->A01:J

    .line 60547
    return-wide v0

    .line 60548
    :cond_6
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v2

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, v10, Lcom/facebook/ads/redexgen/X/Vx;->A04:J

    .line 60549
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/Vx;->A0A:Lcom/facebook/ads/redexgen/X/DH;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/DH;->A05:J

    iput-wide v0, v10, Lcom/facebook/ads/redexgen/X/Vx;->A05:J

    .line 60550
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/Vx;->A01:J

    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/Vx;->A04:J

    sub-long/2addr v2, v0

    int-to-long v0, v4

    add-long/2addr v2, v0

    cmp-long v0, v2, v7

    if-gez v0, :cond_5

    .line 60551
    invoke-interface {v5, v4}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    .line 60552
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/Vx;->A05:J

    add-long/2addr v2, v13

    neg-long v0, v2

    return-wide v0

    .line 60553
    :cond_7
    int-to-long v3, v4

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-gtz v0, :cond_8

    :goto_0
    mul-long/2addr v3, v13

    .line 60554
    .local v9, "offset":J
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v6

    sub-long/2addr v6, v3

    iget-wide v8, v10, Lcom/facebook/ads/redexgen/X/Vx;->A01:J

    iget-wide v4, v10, Lcom/facebook/ads/redexgen/X/Vx;->A04:J

    sub-long/2addr v8, v4

    mul-long v8, v8, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vx;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    .end local v2    # "initialPosition":J
    .local p1, "initialPosition":J
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/Vx;->A02:J

    .end local v10    # "granuleDistance":J
    .local p3, "granuleDistance":J
    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/Vx;->A05:J

    sub-long/2addr v2, v0

    div-long/2addr v8, v2

    add-long/2addr v6, v8

    .line 60555
    .local v3, "nextPosition":J
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 60556
    .end local v3    # "nextPosition":J
    .local p1, "nextPosition":J
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/Vx;->A01:J

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 60557
    return-wide v0

    .line 60558
    :cond_8
    const-wide/16 v13, 0x1

    goto :goto_0

    .end local v2
    .local p1, "initialPosition":J
    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vx;->A0D:[Ljava/lang/String;

    const-string v1, "HnyCEdH4by64"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "f67XG71IQfud"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/Vx;->A02:J

    .end local v10
    .local p3, "granuleDistance":J
    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/Vx;->A05:J

    sub-long/2addr v2, v0

    div-long/2addr v8, v2

    add-long/2addr v6, v8

    .line 60559
    .local v3, "nextPosition":J
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 60560
    .end local v3    # "nextPosition":J
    .local p1, "nextPosition":J
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/Vx;->A01:J

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 60561
    return-wide v0

    .line 60562
    :cond_a
    invoke-interface {v5, v4}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    .line 60563
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/Vx;->A0A:Lcom/facebook/ads/redexgen/X/DH;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/DH;->A05:J

    add-long/2addr v2, v13

    neg-long v0, v2

    return-wide v0
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/CQ;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60564
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vx;->A0C(Lcom/facebook/ads/redexgen/X/CQ;)V

    .line 60565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A0A:Lcom/facebook/ads/redexgen/X/DH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DH;->A02()V

    .line 60566
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A0A:Lcom/facebook/ads/redexgen/X/DH;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/DH;->A04:I

    const/4 v0, 0x4

    and-int/2addr v1, v0

    if-eq v1, v0, :cond_0

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v3

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Vx;->A08:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 60567
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vx;->A0A:Lcom/facebook/ads/redexgen/X/DH;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/DH;->A03(Lcom/facebook/ads/redexgen/X/CQ;Z)Z

    .line 60568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A0A:Lcom/facebook/ads/redexgen/X/DH;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/DH;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A0A:Lcom/facebook/ads/redexgen/X/DH;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DH;->A00:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    goto :goto_0

    .line 60569
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A0A:Lcom/facebook/ads/redexgen/X/DH;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/DH;->A05:J

    return-wide v0
.end method

.method private final A03(Lcom/facebook/ads/redexgen/X/CQ;JJ)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A0A:Lcom/facebook/ads/redexgen/X/DH;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/DH;->A03(Lcom/facebook/ads/redexgen/X/CQ;Z)Z

    .line 60571
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A0A:Lcom/facebook/ads/redexgen/X/DH;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/DH;->A05:J

    cmp-long v0, v1, p2

    if-gez v0, :cond_0

    .line 60572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A0A:Lcom/facebook/ads/redexgen/X/DH;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/DH;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A0A:Lcom/facebook/ads/redexgen/X/DH;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DH;->A00:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    .line 60573
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A0A:Lcom/facebook/ads/redexgen/X/DH;

    iget-wide p4, v0, Lcom/facebook/ads/redexgen/X/DH;->A05:J

    .line 60574
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A0A:Lcom/facebook/ads/redexgen/X/DH;

    invoke-virtual {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/DH;->A03(Lcom/facebook/ads/redexgen/X/CQ;Z)Z

    goto :goto_0

    .line 60575
    :cond_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->ADr()V

    .line 60576
    return-wide p4
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Vx;)J
    .locals 1

    .line 60577
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A09:J

    return-wide v0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Vx;)J
    .locals 1

    .line 60578
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A07:J

    return-wide v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Vx;JJJ)J
    .locals 0

    .line 60579
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/Vx;->A00(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private final A07()Lcom/facebook/ads/redexgen/X/Vy;
    .locals 6

    .line 60580
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/Vx;->A07:J

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    cmp-long v0, v4, v1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vy;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/Vy;-><init>(Lcom/facebook/ads/redexgen/X/Vx;Lcom/facebook/ads/redexgen/X/DF;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v3

    goto :goto_0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Vx;)Lcom/facebook/ads/redexgen/X/DL;
    .locals 0

    .line 60581
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A0B:Lcom/facebook/ads/redexgen/X/DL;

    return-object p0
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vx;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6e

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

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vx;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x26t
        0x7t
        0x48t
        0x7t
        0xft
        0xft
        0x48t
        0x18t
        0x9t
        0xft
        0xdt
        0x48t
        0xbt
        0x9t
        0x6t
        0x48t
        0xat
        0xdt
        0x48t
        0xet
        0x7t
        0x1dt
        0x6t
        0xct
        0x46t
    .end array-data
.end method

.method private final A0B()V
    .locals 2

    .line 60582
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A09:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A04:J

    .line 60583
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A08:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A01:J

    .line 60584
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A05:J

    .line 60585
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A07:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A02:J

    .line 60586
    return-void
.end method

.method private final A0C(Lcom/facebook/ads/redexgen/X/CQ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60587
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A08:J

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Vx;->A0D(Lcom/facebook/ads/redexgen/X/CQ;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60588
    return-void

    .line 60589
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method private final A0D(Lcom/facebook/ads/redexgen/X/CQ;J)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60590
    const-wide/16 v2, 0x3

    add-long/2addr v2, p2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A08:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 60591
    const/16 v0, 0x800

    new-array v3, v0, [B

    .line 60592
    .local p0, "buffer":[B
    array-length v2, v3

    .line 60593
    .local p1, "peekLength":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v4

    int-to-long v0, v2

    add-long/2addr v4, v0

    const/4 v6, 0x0

    cmp-long v0, v4, v7

    if-lez v0, :cond_0

    .line 60594
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v4

    sub-long v0, v7, v4

    long-to-int v2, v0

    .line 60595
    const/4 v0, 0x4

    if-ge v2, v0, :cond_0

    .line 60596
    return v6

    .line 60597
    :cond_0
    invoke-interface {p1, v3, v6, v2, v6}, Lcom/facebook/ads/redexgen/X/CQ;->ACq([BIIZ)Z

    .line 60598
    const/4 v4, 0x0

    .local p2, "i":I
    :goto_1
    add-int/lit8 v0, v2, -0x3

    if-ge v4, v0, :cond_2

    .line 60599
    aget-byte v1, v3, v4

    const/16 v0, 0x4f

    if-ne v1, v0, :cond_1

    add-int/lit8 v0, v4, 0x1

    aget-byte v0, v3, v0

    const/16 v1, 0x67

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v4, 0x2

    aget-byte v0, v3, v0

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v4, 0x3

    aget-byte v1, v3, v0

    const/16 v0, 0x53

    if-ne v1, v0, :cond_1

    .line 60600
    invoke-interface {p1, v4}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    .line 60601
    const/4 v0, 0x1

    return v0

    .line 60602
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 60603
    .end local p2    # "i":I
    :cond_2
    add-int/lit8 v0, v2, -0x3

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A4Q()Lcom/facebook/ads/redexgen/X/CY;
    .locals 1

    .line 60604
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vx;->A07()Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v0

    return-object v0
.end method

.method public final ADE(Lcom/facebook/ads/redexgen/X/CQ;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60605
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vx;->A00:I

    const/4 v2, 0x1

    const/4 v4, 0x3

    move-object v8, p1

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    if-ne v1, v4, :cond_0

    .line 60606
    const-wide/16 v0, -0x1

    return-wide v0

    .line 60607
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 60608
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A06:J

    const-wide/16 v2, 0x2

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-nez v5, :cond_2

    .line 60609
    const-wide/16 v0, 0x0

    .line 60610
    .local p0, "currentGranule":J
    .local p0, "currentGranule":J
    :goto_0
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Vx;->A00:I

    .line 60611
    add-long/2addr v2, v0

    neg-long v0, v2

    return-wide v0

    .line 60612
    .end local p0    # "currentGranule":J
    :cond_2
    invoke-direct {p0, v0, v1, v8}, Lcom/facebook/ads/redexgen/X/Vx;->A01(JLcom/facebook/ads/redexgen/X/CQ;)J

    move-result-wide v0

    .line 60613
    .local p0, "position":J
    cmp-long v5, v0, v6

    if-ltz v5, :cond_3

    .line 60614
    return-wide v0

    .line 60615
    :cond_3
    iget-wide v9, p0, Lcom/facebook/ads/redexgen/X/Vx;->A06:J

    add-long/2addr v0, v2

    neg-long v11, v0

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/Vx;->A03(Lcom/facebook/ads/redexgen/X/CQ;JJ)J

    move-result-wide v0

    goto :goto_0

    .line 60616
    .end local p0    # "position":J
    :cond_4
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A03:J

    .line 60617
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Vx;->A00:I

    .line 60618
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/Vx;->A08:J

    const-wide/32 v0, 0xff1b

    sub-long/2addr v5, v0

    .line 60619
    .local p0, "lastPageSearchPosition":J
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Vx;->A03:J

    cmp-long v0, v5, v1

    if-lez v0, :cond_5

    .line 60620
    return-wide v5

    .line 60621
    .end local p0    # "lastPageSearchPosition":J
    :cond_5
    invoke-direct {p0, v8}, Lcom/facebook/ads/redexgen/X/Vx;->A02(Lcom/facebook/ads/redexgen/X/CQ;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A07:J

    .line 60622
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Vx;->A00:I

    .line 60623
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A03:J

    return-wide v0
.end method

.method public final AEp(J)J
    .locals 5

    .line 60624
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vx;->A00:I

    const/4 v3, 0x2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    if-ne v1, v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A03(Z)V

    .line 60625
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    :goto_1
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/Vx;->A06:J

    .line 60626
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Vx;->A00:I

    .line 60627
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vx;->A0B()V

    .line 60628
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Vx;->A06:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vx;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60629
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A0B:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DL;->A04(J)J

    move-result-wide v1

    goto :goto_1

    .line 60630
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vx;->A0D:[Ljava/lang/String;

    const-string v1, "l4iEtEKEuRK6wb9mepvhy"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-wide v3
.end method
