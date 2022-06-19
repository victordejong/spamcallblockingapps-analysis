.class public final Lcom/facebook/ads/redexgen/X/DU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/AD;
    }
.end annotation


# static fields
.field public static A0M:[B

.field public static A0N:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/A9;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Lcom/facebook/ads/redexgen/X/AT;

.field public A07:Lcom/facebook/ads/redexgen/X/AU;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Landroid/os/Handler;

.field public final A0D:Landroid/os/Handler;

.field public final A0E:Lcom/facebook/ads/redexgen/X/DT;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Am;

.field public final A0G:Lcom/facebook/ads/redexgen/X/An;

.field public final A0H:Lcom/facebook/ads/redexgen/X/HG;

.field public final A0I:Lcom/facebook/ads/redexgen/X/HH;

.field public final A0J:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/AD;",
            ">;"
        }
    .end annotation
.end field

.field public final A0K:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/AX;",
            ">;"
        }
    .end annotation
.end field

.field public final A0L:[Lcom/facebook/ads/redexgen/X/Wn;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "FdQu0fmyjo2y"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "53g7H5tUmq98heWq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "c"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OWB4F6Jbct6Ly4JY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NHyc4CVBcI41"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VuRuzyUBfoaB1KqcrIY9ro"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "m"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Ea4pNsdJDJP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    .line 28553
    invoke-static {}, Lcom/facebook/ads/redexgen/X/DU;->A03()V

    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/Wn;Lcom/facebook/ads/redexgen/X/HG;Lcom/facebook/ads/redexgen/X/AO;Lcom/facebook/ads/redexgen/X/I9;)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 28554
    move-object/from16 v1, p0

    move-object v2, v1

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28555
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x21

    const/4 v3, 0x5

    const/16 v0, 0x34

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/DU;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28556
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v0, 0x7

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/DU;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xf

    const/16 v3, 0x12

    const/16 v0, 0x4e

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/DU;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    const/4 v3, 0x3

    const/16 v0, 0x5e

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/DU;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Il;->A04:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    const/4 v3, 0x1

    const/16 v0, 0x56

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/DU;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 28557
    const/4 v4, 0x2

    const/16 v3, 0xd

    const/16 v0, 0x70

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/DU;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28558
    move-object/from16 v6, p1

    array-length v0, v6

    const/4 v3, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 28559
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Wn;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A0L:[Lcom/facebook/ads/redexgen/X/Wn;

    .line 28560
    move-object/from16 v7, p2

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/HG;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A0H:Lcom/facebook/ads/redexgen/X/HG;

    .line 28561
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/DU;->A0A:Z

    .line 28562
    iput v3, v2, Lcom/facebook/ads/redexgen/X/DU;->A03:I

    .line 28563
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/DU;->A0B:Z

    .line 28564
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 28565
    array-length v0, v6

    new-array v5, v0, [Lcom/facebook/ads/redexgen/X/Ai;

    array-length v0, v6

    new-array v4, v0, [Lcom/facebook/ads/redexgen/X/HD;

    const/4 v3, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/HH;

    invoke-direct {v0, v5, v4, v3}, Lcom/facebook/ads/redexgen/X/HH;-><init>([Lcom/facebook/ads/redexgen/X/Ai;[Lcom/facebook/ads/redexgen/X/HD;Ljava/lang/Object;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A0I:Lcom/facebook/ads/redexgen/X/HH;

    .line 28566
    new-instance v0, Lcom/facebook/ads/redexgen/X/An;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/An;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A0G:Lcom/facebook/ads/redexgen/X/An;

    .line 28567
    new-instance v0, Lcom/facebook/ads/redexgen/X/Am;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Am;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A0F:Lcom/facebook/ads/redexgen/X/Am;

    .line 28568
    sget-object v0, Lcom/facebook/ads/redexgen/X/AU;->A04:Lcom/facebook/ads/redexgen/X/AU;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A07:Lcom/facebook/ads/redexgen/X/AU;

    .line 28569
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    .line 28570
    .local v0, "eventLooper":Landroid/os/Looper;
    :goto_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/AC;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/AC;-><init>(Lcom/facebook/ads/redexgen/X/DU;Landroid/os/Looper;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A0C:Landroid/os/Handler;

    .line 28571
    new-instance v8, Lcom/facebook/ads/redexgen/X/AT;

    sget-object v9, Lcom/facebook/ads/redexgen/X/Ao;->A01:Lcom/facebook/ads/redexgen/X/Ao;

    const-wide/16 v10, 0x0

    sget-object v12, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A04:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A0I:Lcom/facebook/ads/redexgen/X/HH;

    move-object v13, v0

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/AT;-><init>(Lcom/facebook/ads/redexgen/X/Ao;JLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HH;)V

    iput-object v8, v2, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    .line 28572
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A0J:Ljava/util/ArrayDeque;

    .line 28573
    new-instance v5, Lcom/facebook/ads/redexgen/X/DT;

    iget-object v8, v2, Lcom/facebook/ads/redexgen/X/DU;->A0I:Lcom/facebook/ads/redexgen/X/HH;

    iget-boolean v10, v2, Lcom/facebook/ads/redexgen/X/DU;->A0A:Z

    iget v11, v2, Lcom/facebook/ads/redexgen/X/DU;->A03:I

    iget-boolean v12, v2, Lcom/facebook/ads/redexgen/X/DU;->A0B:Z

    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/DU;->A0C:Landroid/os/Handler;

    move-object v14, v1

    move-object/from16 v15, p4

    move-object/from16 v9, p3

    invoke-direct/range {v5 .. v15}, Lcom/facebook/ads/redexgen/X/DT;-><init>([Lcom/facebook/ads/redexgen/X/Wn;Lcom/facebook/ads/redexgen/X/HG;Lcom/facebook/ads/redexgen/X/HH;Lcom/facebook/ads/redexgen/X/AO;ZIZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/Wo;Lcom/facebook/ads/redexgen/X/I9;)V

    iput-object v5, v2, Lcom/facebook/ads/redexgen/X/DU;->A0E:Lcom/facebook/ads/redexgen/X/DT;

    .line 28574
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A0E:Lcom/facebook/ads/redexgen/X/DT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DT;->A0w()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A0D:Landroid/os/Handler;

    .line 28575
    return-void

    .line 28576
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    goto :goto_1

    .line 28577
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private A00(J)J
    .locals 5

    .line 28578
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/A3;->A01(J)J

    move-result-wide v3

    .line 28579
    .local p0, "positionMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FL;->A01()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A0F:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A09(ILcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Am;

    .line 28581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A0F:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Am;->A08()J

    move-result-wide v0

    add-long/2addr v3, v0

    .line 28582
    :cond_0
    return-wide v3
.end method

.method private A01(ZZI)Lcom/facebook/ads/redexgen/X/AT;
    .locals 15

    .line 28583
    move-object v2, p0

    if-eqz p1, :cond_4

    .line 28584
    const/4 v0, 0x0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A01:I

    .line 28585
    iput v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A00:I

    .line 28586
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A04:J

    .line 28587
    :goto_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/AT;

    .line 28588
    if-eqz p2, :cond_3

    sget-object v4, Lcom/facebook/ads/redexgen/X/Ao;->A01:Lcom/facebook/ads/redexgen/X/Ao;

    .line 28589
    :goto_1
    if-eqz p2, :cond_2

    const/4 v5, 0x0

    :goto_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v7, v0, Lcom/facebook/ads/redexgen/X/AT;->A02:J

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v9, v0, Lcom/facebook/ads/redexgen/X/AT;->A01:J

    const/4 v12, 0x0

    .line 28590
    if-eqz p2, :cond_1

    sget-object v13, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A04:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    .line 28591
    :goto_3
    if-eqz p2, :cond_0

    iget-object v14, v2, Lcom/facebook/ads/redexgen/X/DU;->A0I:Lcom/facebook/ads/redexgen/X/HH;

    :goto_4
    move/from16 v11, p3

    invoke-direct/range {v3 .. v14}, Lcom/facebook/ads/redexgen/X/AT;-><init>(Lcom/facebook/ads/redexgen/X/Ao;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FL;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HH;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/HH;

    goto :goto_4

    .line 28592
    :cond_1
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/AT;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    goto :goto_3

    .line 28593
    :cond_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/AT;->A07:Ljava/lang/Object;

    goto :goto_2

    .line 28594
    :cond_3
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    goto :goto_1

    .line 28595
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DU;->A6E()I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A01:I

    .line 28596
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DU;->A07()I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A00:I

    .line 28597
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DU;->A6B()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A04:J

    goto :goto_0

    .line 28598
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const-string v1, "Xqr2ExcYOBi8j1Q"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object v3
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/DU;->A0M:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const-string v1, "NVWBbKH"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_0

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4b

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x59

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/DU;->A0M:[B

    return-void

    :array_0
    .array-data 1
        0x6ct
        0x17t
        0x7et
        0x43t
        0x54t
        0x6bt
        0x57t
        0x5at
        0x42t
        0x5et
        0x49t
        0x72t
        0x56t
        0x4bt
        0x57t
        0x40t
        0x7dt
        0x6at
        0x55t
        0x69t
        0x64t
        0x7ct
        0x60t
        0x77t
        0x49t
        0x6ct
        0x67t
        0x2at
        0x37t
        0x2bt
        0x3dt
        0x2bt
        0x31t
        0x36t
        0x11t
        0x16t
        0xbt
        0x5ft
        0x1bt
        0x2ct
        0x25t
        0x2ct
        0x28t
        0x3at
        0x2ct
        0x69t
        0x40t
        0x48t
        0x35t
        0x4et
        0x32t
        0x24t
        0x24t
        0x2at
        0x15t
        0x2et
        0x61t
        0x28t
        0x26t
        0x2ft
        0x2et
        0x33t
        0x24t
        0x25t
        0x61t
        0x23t
        0x24t
        0x22t
        0x20t
        0x34t
        0x32t
        0x24t
        0x61t
        0x20t
        0x2ft
        0x61t
        0x20t
        0x25t
        0x61t
        0x28t
        0x32t
        0x61t
        0x31t
        0x2dt
        0x20t
        0x38t
        0x28t
        0x2ft
        0x26t
    .end array-data
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/AT;IZI)V
    .locals 13

    move-object v7, p1

    .line 28599
    move-object v2, p0

    iget v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A02:I

    sub-int/2addr v0, p2

    iput v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A02:I

    .line 28600
    iget v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A02:I

    if-nez v0, :cond_5

    .line 28601
    iget-wide v5, v7, Lcom/facebook/ads/redexgen/X/AT;->A02:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    .line 28602
    iget-object v8, v7, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    const-wide/16 v9, 0x0

    iget-wide v11, v7, Lcom/facebook/ads/redexgen/X/AT;->A01:J

    .line 28603
    move-object v7, v7

    invoke-virtual/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/AT;->A04(Lcom/facebook/ads/redexgen/X/FL;JJ)Lcom/facebook/ads/redexgen/X/AT;

    move-result-object v7

    .line 28604
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0E()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A08:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-object v5, v7, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    sget-object v3, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v3, v0

    const/4 v0, 0x3

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28605
    :cond_2
    sget-object v3, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const-string v1, "oGDG41JiAsT7PCq0"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Ao;->A0E()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28606
    iput v4, v2, Lcom/facebook/ads/redexgen/X/DU;->A00:I

    .line 28607
    iput v4, v2, Lcom/facebook/ads/redexgen/X/DU;->A01:I

    sget-object v3, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v3, v0

    const/4 v0, 0x2

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    goto :goto_0

    .line 28608
    :cond_3
    sget-object v3, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const-string v1, "vrOcQin3pszluGLq"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v1, "REI4M31lEJcbEC2a"

    const/4 v0, 0x3

    aput-object v1, v3, v0

    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A04:J

    .line 28609
    :cond_4
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A08:Z

    if-eqz v0, :cond_6

    .line 28610
    const/4 v10, 0x0

    .line 28611
    .local v9, "timelineChangeReason":I
    :goto_1
    iget-boolean v11, v2, Lcom/facebook/ads/redexgen/X/DU;->A09:Z

    .line 28612
    .local v0, "seekProcessed":Z
    iput-boolean v4, v2, Lcom/facebook/ads/redexgen/X/DU;->A08:Z

    .line 28613
    iput-boolean v4, v2, Lcom/facebook/ads/redexgen/X/DU;->A09:Z

    .line 28614
    const/4 v12, 0x0

    move-object v6, v2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/DU;->A05(Lcom/facebook/ads/redexgen/X/AT;ZIIZZ)V

    .line 28615
    .end local v9    # "timelineChangeReason":I
    .end local v0    # "seekProcessed":Z
    :cond_5
    return-void

    .line 28616
    :cond_6
    const/4 v10, 0x2

    goto :goto_1
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/AT;ZIIZZ)V
    .locals 14

    .line 28617
    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A0J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 28618
    .local v4, "isRunningRecursiveListenerNotification":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A0J:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/facebook/ads/redexgen/X/AD;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/DU;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/DU;->A0H:Lcom/facebook/ads/redexgen/X/HG;

    iget-boolean v12, v2, Lcom/facebook/ads/redexgen/X/DU;->A0A:Z

    move/from16 v11, p5

    move/from16 v8, p2

    move/from16 v13, p6

    move-object v4, p1

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-direct/range {v3 .. v13}, Lcom/facebook/ads/redexgen/X/AD;-><init>(Lcom/facebook/ads/redexgen/X/AT;Lcom/facebook/ads/redexgen/X/AT;Ljava/util/Set;Lcom/facebook/ads/redexgen/X/HG;ZIIZZZ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 28619
    iput-object v4, v2, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    .line 28620
    if-eqz v1, :cond_0

    .line 28621
    return-void

    .line 28622
    :cond_0
    :goto_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A0J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28623
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A0J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AD;->A00()V

    .line 28624
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DU;->A0J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 28625
    :cond_1
    return-void
.end method

.method private A06()Z
    .locals 1

    .line 28626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0E()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A02:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A07()I
    .locals 1

    .line 28627
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DU;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28628
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A00:I

    return v0

    .line 28629
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    return v0
.end method

.method public final A08(I)V
    .locals 2

    .line 28630
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/DU;->A09(IJ)V

    .line 28631
    return-void
.end method

.method public final A09(IJ)V
    .locals 12

    .line 28632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    .line 28633
    .local p0, "timeline":Lcom/facebook/ads/redexgen/X/Ao;
    move v9, p1

    if-ltz v9, :cond_b

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Ao;->A0E()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_1

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const-string v1, "k"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "F"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Ao;->A01()I

    move-result v0

    if-ge v9, v0, :cond_b

    .line 28634
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/DU;->A09:Z

    .line 28635
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A02:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A02:I

    .line 28636
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DU;->A0B()Z

    move-result v5

    const/4 v4, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const-string v1, "iOLxdGxzjtj8VTTv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "k2rTYfByBhCiNj1b"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v5, :cond_4

    .line 28637
    const/4 v2, 0x2

    const/16 v1, 0xd

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DU;->A02(III)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x32

    sget-object v2, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const-string v1, "fs0FIhTd6T569fWM98lB5KOUS"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v1, 0x27

    const/16 v0, 0xa

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/DU;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28638
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DU;->A0C:Landroid/os/Handler;

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    .line 28639
    invoke-virtual {v2, v4, v3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 28640
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28641
    return-void

    .line 28642
    :cond_4
    iput v9, p0, Lcom/facebook/ads/redexgen/X/DU;->A01:I

    .line 28643
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Ao;->A0E()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_7

    .line 28644
    cmp-long v5, p2, v1

    sget-object v1, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const-string v1, "dOqGbPzaS7jKfyvdUFqkQf"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v5, :cond_6

    const-wide/16 v0, 0x0

    :goto_1
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A04:J

    .line 28645
    iput v4, p0, Lcom/facebook/ads/redexgen/X/DU;->A00:I

    .line 28646
    .end local v9
    .end local v6
    :goto_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DU;->A0E:Lcom/facebook/ads/redexgen/X/DT;

    invoke-static {p2, p3}, Lcom/facebook/ads/redexgen/X/A3;->A00(J)J

    move-result-wide v0

    invoke-virtual {v2, v6, v9, v0, v1}, Lcom/facebook/ads/redexgen/X/DT;->A0y(Lcom/facebook/ads/redexgen/X/Ao;IJ)V

    .line 28647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/AX;

    sget-object v2, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28648
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/AX;
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const-string v1, "l5NWk5x9vooO50uu"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "FcAzQ8glamB386Jq"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/AX;->ABf(I)V

    .line 28649
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/AX;
    goto :goto_3

    .line 28650
    :cond_6
    move-wide v0, p2

    goto :goto_1

    .line 28651
    :cond_7
    cmp-long v0, p2, v1

    if-nez v0, :cond_8

    .line 28652
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A0G:Lcom/facebook/ads/redexgen/X/An;

    invoke-virtual {v6, v9, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0B(ILcom/facebook/ads/redexgen/X/An;)Lcom/facebook/ads/redexgen/X/An;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/An;->A01()J

    move-result-wide v10

    .line 28653
    .local v6, "windowPositionUs":J
    :goto_4
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/DU;->A0G:Lcom/facebook/ads/redexgen/X/An;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/DU;->A0F:Lcom/facebook/ads/redexgen/X/Am;

    .line 28654
    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Ao;->A07(Lcom/facebook/ads/redexgen/X/An;Lcom/facebook/ads/redexgen/X/Am;IJ)Landroid/util/Pair;

    move-result-object v2

    .line 28655
    .local v9, "periodIndexAndPositon":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-static {v10, v11}, Lcom/facebook/ads/redexgen/X/A3;->A01(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A04:J

    .line 28656
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A00:I

    goto :goto_2

    .line 28657
    :cond_8
    invoke-static {p2, p3}, Lcom/facebook/ads/redexgen/X/A3;->A00(J)J

    move-result-wide v10

    goto :goto_4

    .line 28658
    :cond_9
    return-void

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28659
    :cond_b
    new-instance v0, Lcom/facebook/ads/redexgen/X/AN;

    invoke-direct {v0, v6, v9, p2, p3}, Lcom/facebook/ads/redexgen/X/AN;-><init>(Lcom/facebook/ads/redexgen/X/Ao;IJ)V

    throw v0
.end method

.method public final A0A(Landroid/os/Message;)V
    .locals 6

    .line 28660
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-eqz v5, :cond_5

    if-eq v5, v4, :cond_0

    const/4 v3, 0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28661
    :cond_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/facebook/ads/redexgen/X/AU;

    .line 28662
    .local p0, "playbackParameters":Lcom/facebook/ads/redexgen/X/AU;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A07:Lcom/facebook/ads/redexgen/X/AU;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/AU;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 28663
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/DU;->A07:Lcom/facebook/ads/redexgen/X/AU;

    .line 28664
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/DU;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    sget-object v2, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const-string v1, "7KT5lT3IIkvardi0cOE285"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v5, v3, :cond_3

    .line 28665
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/facebook/ads/redexgen/X/A9;

    .line 28666
    .local p0, "playbackError":Lcom/facebook/ads/redexgen/X/A9;
    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/DU;->A05:Lcom/facebook/ads/redexgen/X/A9;

    .line 28667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const-string v1, "lr70Wm3MPuK1"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AX;

    .line 28668
    .local v5, "listener":Lcom/facebook/ads/redexgen/X/AX;
    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/AX;->ABb(Lcom/facebook/ads/redexgen/X/A9;)V

    .line 28669
    .end local v5    # "listener":Lcom/facebook/ads/redexgen/X/AX;
    goto :goto_1

    .line 28670
    .end local p0    # "playbackError":Lcom/facebook/ads/redexgen/X/A9;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const-string v1, "XPkhdR3hZ8JGZkbg"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "HitM1md97HqEAHyx"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 28671
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AX;

    .line 28672
    .restart local v5    # "listener":Lcom/facebook/ads/redexgen/X/AX;
    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/AX;->ABZ(Lcom/facebook/ads/redexgen/X/AU;)V

    .line 28673
    .end local v5    # "listener":Lcom/facebook/ads/redexgen/X/AX;
    goto :goto_2

    .line 28674
    .end local p0
    :cond_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/facebook/ads/redexgen/X/AT;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_7

    :goto_3
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v2, v4, v0}, Lcom/facebook/ads/redexgen/X/DU;->A04(Lcom/facebook/ads/redexgen/X/AT;IZI)V

    .line 28675
    :cond_6
    return-void

    .line 28676
    :cond_7
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public final A0B()Z
    .locals 1

    .line 28677
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DU;->A06()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FL;->A01()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A3D(Lcom/facebook/ads/redexgen/X/AX;)V
    .locals 1

    .line 28678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 28679
    return-void
.end method

.method public final A4J(Lcom/facebook/ads/redexgen/X/Ae;)Lcom/facebook/ads/redexgen/X/Af;
    .locals 7

    .line 28680
    new-instance v1, Lcom/facebook/ads/redexgen/X/Af;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DU;->A0E:Lcom/facebook/ads/redexgen/X/DT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    .line 28681
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DU;->A6E()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/DU;->A0D:Landroid/os/Handler;

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Af;-><init>(Lcom/facebook/ads/redexgen/X/Ad;Lcom/facebook/ads/redexgen/X/Ae;Lcom/facebook/ads/redexgen/X/Ao;ILandroid/os/Handler;)V

    .line 28682
    return-object v1
.end method

.method public final A5o()I
    .locals 11

    .line 28683
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DU;->A5p()J

    move-result-wide v9

    .line 28684
    .local p0, "position":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DU;->A6N()J

    move-result-wide v7

    .line 28685
    .local v2, "duration":J
    const/16 v4, 0x64

    const/4 v3, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v9, v1

    if-eqz v0, :cond_1

    cmp-long v5, v7, v1

    sget-object v2, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const-string v1, "7"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "n"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v5, :cond_2

    .line 28686
    :cond_1
    const/4 v4, 0x0

    .line 28687
    :goto_0
    return v4

    .line 28688
    :cond_2
    const-wide/16 v5, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

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

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/DU;->A0N:[Ljava/lang/String;

    const-string v1, "w"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "D"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    cmp-long v0, v7, v5

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const-wide/16 v1, 0x64

    mul-long/2addr v1, v9

    div-long/2addr v1, v7

    long-to-int v0, v1

    invoke-static {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/Il;->A06(III)I

    move-result v4

    goto :goto_0
.end method

.method public final A5p()J
    .locals 2

    .line 28689
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DU;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28690
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A04:J

    return-wide v0

    .line 28691
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A09:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/DU;->A00(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A66()J
    .locals 4

    .line 28692
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DU;->A0B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A0F:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A09(ILcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Am;

    .line 28694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A0F:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Am;->A08()J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A01:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/A3;->A01(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2

    .line 28695
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DU;->A6B()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A68()I
    .locals 1

    .line 28696
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DU;->A0B()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FL;->A00:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final A69()I
    .locals 1

    .line 28697
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DU;->A0B()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FL;->A01:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final A6B()J
    .locals 2

    .line 28698
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DU;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28699
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A04:J

    return-wide v0

    .line 28700
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A0A:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/DU;->A00(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A6D()Lcom/facebook/ads/redexgen/X/Ao;
    .locals 1

    .line 28701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    return-object v0
.end method

.method public final A6E()I
    .locals 3

    .line 28702
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DU;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28703
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A01:I

    return v0

    .line 28704
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A0F:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A09(ILcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Am;->A00:I

    return v0
.end method

.method public final A6N()J
    .locals 4

    .line 28705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    .line 28706
    .local p0, "timeline":Lcom/facebook/ads/redexgen/X/Ao;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ao;->A0E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28707
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 28708
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DU;->A0B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28709
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    .line 28710
    .local v0, "periodId":Lcom/facebook/ads/redexgen/X/FL;
    iget v1, v3, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A0F:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A09(ILcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Am;

    .line 28711
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DU;->A0F:Lcom/facebook/ads/redexgen/X/Am;

    iget v1, v3, Lcom/facebook/ads/redexgen/X/FL;->A00:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/FL;->A01:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Am;->A0A(II)J

    move-result-wide v0

    .line 28712
    .local v2, "adDurationUs":J
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/A3;->A01(J)J

    move-result-wide v0

    return-wide v0

    .line 28713
    .end local v0    # "periodId":Lcom/facebook/ads/redexgen/X/FL;
    .end local v2    # "adDurationUs":J
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DU;->A6E()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A0G:Lcom/facebook/ads/redexgen/X/An;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0B(ILcom/facebook/ads/redexgen/X/An;)Lcom/facebook/ads/redexgen/X/An;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/An;->A02()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A77()Z
    .locals 1

    .line 28714
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A0A:Z

    return v0
.end method

.method public final ACz(Lcom/facebook/ads/redexgen/X/FN;ZZ)V
    .locals 8

    .line 28715
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A05:Lcom/facebook/ads/redexgen/X/A9;

    .line 28716
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/DU;->A01(ZZI)Lcom/facebook/ads/redexgen/X/AT;

    move-result-object v2

    .line 28717
    .local p0, "playbackInfo":Lcom/facebook/ads/redexgen/X/AT;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/DU;->A08:Z

    .line 28718
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A02:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A02:I

    .line 28719
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A0E:Lcom/facebook/ads/redexgen/X/DT;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DT;->A0z(Lcom/facebook/ads/redexgen/X/FN;ZZ)V

    .line 28720
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/DU;->A05(Lcom/facebook/ads/redexgen/X/AT;ZIIZZ)V

    .line 28721
    return-void
.end method

.method public final ADS()V
    .locals 4

    .line 28722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x26

    const/16 v1, 0x8

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DU;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28723
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DU;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    const/16 v1, 0x12

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DU;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    const/4 v1, 0x3

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DU;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Il;->A04:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28724
    invoke-static {}, Lcom/facebook/ads/redexgen/X/AJ;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    const/4 v1, 0x1

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DU;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 28725
    const/4 v2, 0x2

    const/16 v1, 0xd

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DU;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A0E:Lcom/facebook/ads/redexgen/X/DT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DT;->A0x()V

    .line 28727
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DU;->A0C:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 28728
    return-void
.end method

.method public final AEB(J)V
    .locals 1

    .line 28729
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DU;->A6E()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DU;->A09(IJ)V

    .line 28730
    return-void
.end method

.method public final AEC()V
    .locals 1

    .line 28731
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DU;->A6E()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DU;->A08(I)V

    .line 28732
    return-void
.end method

.method public final AES(Z)V
    .locals 7

    .line 28733
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A0A:Z

    if-eq v0, p1, :cond_0

    .line 28734
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/DU;->A0A:Z

    .line 28735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A0E:Lcom/facebook/ads/redexgen/X/DT;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/DT;->A10(Z)V

    .line 28736
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DU;->A06:Lcom/facebook/ads/redexgen/X/AT;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/DU;->A05(Lcom/facebook/ads/redexgen/X/AT;ZIIZZ)V

    .line 28737
    :cond_0
    return-void
.end method

.method public final AEs(Z)V
    .locals 8

    .line 28738
    if-eqz p1, :cond_0

    .line 28739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A05:Lcom/facebook/ads/redexgen/X/A9;

    .line 28740
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, p1, v1}, Lcom/facebook/ads/redexgen/X/DU;->A01(ZZI)Lcom/facebook/ads/redexgen/X/AT;

    move-result-object v2

    .line 28741
    .local v3, "playbackInfo":Lcom/facebook/ads/redexgen/X/AT;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A02:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A02:I

    .line 28742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DU;->A0E:Lcom/facebook/ads/redexgen/X/DT;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/DT;->A11(Z)V

    .line 28743
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/DU;->A05(Lcom/facebook/ads/redexgen/X/AT;ZIIZZ)V

    .line 28744
    return-void
.end method
