.class public final Lcom/facebook/ads/redexgen/X/DT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/facebook/ads/redexgen/X/V4;
.implements Lcom/facebook/ads/redexgen/X/HF;
.implements Lcom/facebook/ads/redexgen/X/FM;
.implements Lcom/facebook/ads/redexgen/X/A6;
.implements Lcom/facebook/ads/redexgen/X/Ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/AH;,
        Lcom/facebook/ads/redexgen/X/AF;,
        Lcom/facebook/ads/redexgen/X/AG;,
        Lcom/facebook/ads/redexgen/X/AI;
    }
.end annotation


# static fields
.field public static A0V:[B

.field public static A0W:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/AI;

.field public A05:Lcom/facebook/ads/redexgen/X/AT;

.field public A06:Lcom/facebook/ads/redexgen/X/Ak;

.field public A07:Lcom/facebook/ads/redexgen/X/FN;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public A0C:[Lcom/facebook/ads/redexgen/X/Wn;

.field public final A0D:J

.field public final A0E:Landroid/os/Handler;

.field public final A0F:Landroid/os/HandlerThread;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Wq;

.field public final A0H:Lcom/facebook/ads/redexgen/X/Wo;

.field public final A0I:Lcom/facebook/ads/redexgen/X/AH;

.field public final A0J:Lcom/facebook/ads/redexgen/X/AO;

.field public final A0K:Lcom/facebook/ads/redexgen/X/AR;

.field public final A0L:Lcom/facebook/ads/redexgen/X/Am;

.field public final A0M:Lcom/facebook/ads/redexgen/X/An;

.field public final A0N:Lcom/facebook/ads/redexgen/X/HG;

.field public final A0O:Lcom/facebook/ads/redexgen/X/HH;

.field public final A0P:Lcom/facebook/ads/redexgen/X/I9;

.field public final A0Q:Lcom/facebook/ads/redexgen/X/IJ;

.field public final A0R:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/AG;",
            ">;"
        }
    .end annotation
.end field

.field public final A0S:Z

.field public final A0T:[Lcom/facebook/ads/redexgen/X/Wn;

.field public final A0U:[Lcom/facebook/ads/redexgen/X/Ah;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "86glHvEVsTHsOarjgO3yrK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TuAJpp7uzbfmMtpdLTRiZnKK78MiZtWb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2J1ujHTPZohQZteX1j6kCS7zhajZ8mZI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eCxkC7v7XtRVNueTNXvbthBaIEqCwNNl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "l3Yyub2xLFiYeWCCac"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TG0XkoHYQCfebcNj4J"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6SVWI1Jvh0Z3jrcRBB9hLc8AjjQAtTry"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lVbeqNrXIfO7zu9EZv7JtI"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    .line 27653
    invoke-static {}, Lcom/facebook/ads/redexgen/X/DT;->A0K()V

    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/Wn;Lcom/facebook/ads/redexgen/X/HG;Lcom/facebook/ads/redexgen/X/HH;Lcom/facebook/ads/redexgen/X/AO;ZIZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/Wo;Lcom/facebook/ads/redexgen/X/I9;)V
    .locals 10

    .line 27654
    move-object v2, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27655
    iput-object p1, v2, Lcom/facebook/ads/redexgen/X/DT;->A0T:[Lcom/facebook/ads/redexgen/X/Wn;

    .line 27656
    iput-object p2, v2, Lcom/facebook/ads/redexgen/X/DT;->A0N:Lcom/facebook/ads/redexgen/X/HG;

    .line 27657
    move-object v9, p3

    iput-object v9, v2, Lcom/facebook/ads/redexgen/X/DT;->A0O:Lcom/facebook/ads/redexgen/X/HH;

    .line 27658
    iput-object p4, v2, Lcom/facebook/ads/redexgen/X/DT;->A0J:Lcom/facebook/ads/redexgen/X/AO;

    .line 27659
    move v0, p5

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A08:Z

    .line 27660
    move/from16 v0, p6

    iput v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A02:I

    .line 27661
    move/from16 v0, p7

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0B:Z

    .line 27662
    move-object/from16 v0, p8

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0E:Landroid/os/Handler;

    .line 27663
    move-object/from16 v0, p9

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0H:Lcom/facebook/ads/redexgen/X/Wo;

    .line 27664
    move-object/from16 v3, p10

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/DT;->A0P:Lcom/facebook/ads/redexgen/X/I9;

    .line 27665
    new-instance v0, Lcom/facebook/ads/redexgen/X/AR;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AR;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    .line 27666
    invoke-interface {p4}, Lcom/facebook/ads/redexgen/X/AO;->A5j()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0D:J

    .line 27667
    invoke-interface {p4}, Lcom/facebook/ads/redexgen/X/AO;->ADt()Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0S:Z

    .line 27668
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ak;->A03:Lcom/facebook/ads/redexgen/X/Ak;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/Ak;

    .line 27669
    new-instance v4, Lcom/facebook/ads/redexgen/X/AT;

    sget-object v5, Lcom/facebook/ads/redexgen/X/Ao;->A01:Lcom/facebook/ads/redexgen/X/Ao;

    sget-object v8, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A04:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v4

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/AT;-><init>(Lcom/facebook/ads/redexgen/X/Ao;JLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HH;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 27670
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/AH;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AH;-><init>(Lcom/facebook/ads/redexgen/X/AE;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0I:Lcom/facebook/ads/redexgen/X/AH;

    .line 27671
    array-length v0, p1

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Ah;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0U:[Lcom/facebook/ads/redexgen/X/Ah;

    .line 27672
    const/4 v4, 0x0

    .local p4, "i":I
    :goto_0
    array-length v0, p1

    if-ge v4, v0, :cond_0

    .line 27673
    aget-object v0, p1, v4

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/Wn;->AEN(I)V

    .line 27674
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/DT;->A0U:[Lcom/facebook/ads/redexgen/X/Ah;

    aget-object v0, p1, v4

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Wn;->A5u()Lcom/facebook/ads/redexgen/X/Ah;

    move-result-object v0

    aput-object v0, v1, v4

    .line 27675
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 27676
    .end local p4    # "i":I
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wq;

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/Wq;-><init>(Lcom/facebook/ads/redexgen/X/A6;Lcom/facebook/ads/redexgen/X/I9;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0G:Lcom/facebook/ads/redexgen/X/Wq;

    .line 27677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0R:Ljava/util/ArrayList;

    .line 27678
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Wn;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0C:[Lcom/facebook/ads/redexgen/X/Wn;

    .line 27679
    new-instance v0, Lcom/facebook/ads/redexgen/X/An;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/An;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0M:Lcom/facebook/ads/redexgen/X/An;

    .line 27680
    new-instance v0, Lcom/facebook/ads/redexgen/X/Am;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Am;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0L:Lcom/facebook/ads/redexgen/X/Am;

    .line 27681
    invoke-virtual {p2, v2}, Lcom/facebook/ads/redexgen/X/HG;->A00(Lcom/facebook/ads/redexgen/X/HF;)V

    .line 27682
    const/16 v5, -0x10

    const/16 v4, 0x15

    const/16 v1, 0x1d

    const/16 v0, 0xf

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/DT;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0F:Landroid/os/HandlerThread;

    .line 27683
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0F:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 27684
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0F:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Lcom/facebook/ads/redexgen/X/I9;->A4H(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/facebook/ads/redexgen/X/IJ;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0Q:Lcom/facebook/ads/redexgen/X/IJ;

    .line 27685
    return-void
.end method

.method private A00()I
    .locals 3

    .line 27686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    .line 27687
    .local p0, "timeline":Lcom/facebook/ads/redexgen/X/Ao;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ao;->A0E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27688
    const/4 v0, 0x0

    .line 27689
    :goto_0
    return v0

    .line 27690
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0B:Z

    .line 27691
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A05(Z)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0M:Lcom/facebook/ads/redexgen/X/An;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0B(ILcom/facebook/ads/redexgen/X/An;)Lcom/facebook/ads/redexgen/X/An;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/An;->A00:I

    goto :goto_0
.end method

.method private A01(ILcom/facebook/ads/redexgen/X/Ao;Lcom/facebook/ads/redexgen/X/Ao;)I
    .locals 10

    move v5, p1

    .line 27692
    const/4 v1, -0x1

    .line 27693
    .local p0, "newPeriodIndex":I
    move-object v4, p2

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Ao;->A00()I

    move-result v3

    .line 27694
    .local v5, "maxIterations":I
    const/4 v2, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 27695
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/DT;->A0L:Lcom/facebook/ads/redexgen/X/Am;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/DT;->A0M:Lcom/facebook/ads/redexgen/X/An;

    iget v8, p0, Lcom/facebook/ads/redexgen/X/DT;->A02:I

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/DT;->A0B:Z

    .line 27696
    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Ao;->A03(ILcom/facebook/ads/redexgen/X/Am;Lcom/facebook/ads/redexgen/X/An;IZ)I

    move-result v5

    .line 27697
    if-ne v5, v0, :cond_1

    .line 27698
    .end local v4    # "i":I
    :cond_0
    return v1

    .line 27699
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0L:Lcom/facebook/ads/redexgen/X/Am;

    .line 27700
    const/4 v0, 0x1

    invoke-virtual {v4, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0A(ILcom/facebook/ads/redexgen/X/Am;Z)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Am;->A03:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A04(Ljava/lang/Object;)I

    move-result v1

    .line 27701
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/FL;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 27702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    .line 27703
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0G()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0H()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    .line 27704
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/DT;->A03(Lcom/facebook/ads/redexgen/X/FL;JZ)J

    move-result-wide v0

    return-wide v0

    .line 27705
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/FL;JZ)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 27706
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A0H()V

    .line 27707
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/DT;->A09:Z

    .line 27708
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/DT;->A0N(I)V

    .line 27709
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0G()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v1

    .line 27710
    .local p2, "oldPlayingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    move-object v3, v1

    .line 27711
    .local v3, "newPlayingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    :goto_0
    if-eqz v3, :cond_0

    .line 27712
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/facebook/ads/redexgen/X/DT;->A0t(Lcom/facebook/ads/redexgen/X/FL;JLcom/facebook/ads/redexgen/X/AP;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/AR;->A0S(Lcom/facebook/ads/redexgen/X/AP;)Z

    .line 27714
    :cond_0
    if-ne v1, v3, :cond_1

    if-eqz p4, :cond_5

    .line 27715
    :cond_1
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/DT;->A0C:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v8, v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "MfZ5b0v7S5HL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_4

    aget-object v4, v9, v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_2

    .line 27716
    .local v0, "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "gre2iAEzIfwakAGQE6Y0w4gvRDGAgj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/DT;->A0b(Lcom/facebook/ads/redexgen/X/Wn;)V

    .line 27717
    .end local v0    # "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 27718
    :cond_4
    new-array v0, v5, [Lcom/facebook/ads/redexgen/X/Wn;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0C:[Lcom/facebook/ads/redexgen/X/Wn;

    .line 27719
    const/4 v1, 0x0

    .line 27720
    :cond_5
    if-eqz v3, :cond_7

    .line 27721
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/DT;->A0V(Lcom/facebook/ads/redexgen/X/AP;)V

    .line 27722
    iget-boolean v4, v3, Lcom/facebook/ads/redexgen/X/AP;->A05:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "xpv6IUpjcorvZnU437"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_6

    .line 27723
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AP;->A08:Lcom/facebook/ads/redexgen/X/V3;

    invoke-interface {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/V3;->AED(J)J

    move-result-wide p2

    .line 27724
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/AP;->A08:Lcom/facebook/ads/redexgen/X/V3;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/DT;->A0D:J

    sub-long v1, p2, v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0S:Z

    invoke-interface {v5, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/V3;->A4n(JZ)V

    .line 27725
    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/DT;->A0P(J)V

    .line 27726
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A09()V

    .line 27727
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0Q:Lcom/facebook/ads/redexgen/X/IJ;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/IJ;->AEF(I)Z

    .line 27728
    return-wide p2

    .line 27729
    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AR;->A0O(Z)V

    .line 27730
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/DT;->A0P(J)V

    goto :goto_2

    .line 27731
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0C()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/AI;Z)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/AI;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 27732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    .line 27733
    .local p0, "timeline":Lcom/facebook/ads/redexgen/X/Ao;
    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/AI;->A02:Lcom/facebook/ads/redexgen/X/Ao;

    .line 27734
    .local p1, "seekTimeline":Lcom/facebook/ads/redexgen/X/Ao;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Ao;->A0E()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 27735
    return-object v5

    .line 27736
    :cond_0
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Ao;->A0E()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27737
    move-object v6, v4

    .line 27738
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/DT;->A0M:Lcom/facebook/ads/redexgen/X/An;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/DT;->A0L:Lcom/facebook/ads/redexgen/X/Am;

    iget v9, p1, Lcom/facebook/ads/redexgen/X/AI;->A00:I

    iget-wide v10, p1, Lcom/facebook/ads/redexgen/X/AI;->A01:J

    .line 27739
    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Ao;->A07(Lcom/facebook/ads/redexgen/X/An;Lcom/facebook/ads/redexgen/X/Am;IJ)Landroid/util/Pair;

    move-result-object v3

    .line 27740
    .local p2, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-ne v4, v6, :cond_2

    .line 27741
    return-object v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27742
    :cond_2
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 27743
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0L:Lcom/facebook/ads/redexgen/X/Am;

    const/4 v0, 0x1

    invoke-virtual {v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0A(ILcom/facebook/ads/redexgen/X/Am;Z)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Am;->A03:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A04(Ljava/lang/Object;)I

    move-result v0

    .line 27744
    .local v4, "periodIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 27745
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v1, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "NzmvKaw5D7qN"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 27746
    :cond_4
    if-eqz p2, :cond_6

    .line 27747
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v6, v4}, Lcom/facebook/ads/redexgen/X/DT;->A01(ILcom/facebook/ads/redexgen/X/Ao;Lcom/facebook/ads/redexgen/X/Ao;)I

    move-result v1

    .line 27748
    if-eq v1, v2, :cond_6

    .line 27749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0L:Lcom/facebook/ads/redexgen/X/Am;

    .line 27750
    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A09(ILcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iget v3, v0, Lcom/facebook/ads/redexgen/X/Am;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "Yw40DLhiFndXC7wfBusX4OUMnHZHVu"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 27751
    invoke-direct {p0, v4, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/DT;->A05(Lcom/facebook/ads/redexgen/X/Ao;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v4, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/DT;->A05(Lcom/facebook/ads/redexgen/X/Ao;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 27752
    :cond_6
    return-object v5

    .line 27753
    .end local p2    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v4    # "periodIndex":I
    .local p2, "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_0
    iget v3, p1, Lcom/facebook/ads/redexgen/X/AI;->A00:I

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/AI;->A01:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/AN;

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/AN;-><init>(Lcom/facebook/ads/redexgen/X/Ao;IJ)V

    throw v0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/Ao;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Ao;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 27754
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0M:Lcom/facebook/ads/redexgen/X/An;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DT;->A0L:Lcom/facebook/ads/redexgen/X/Am;

    move v3, p2

    move-wide v4, p3

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Ao;->A07(Lcom/facebook/ads/redexgen/X/An;Lcom/facebook/ads/redexgen/X/Am;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/DT;->A0V:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x62

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A07()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 27755
    move-object/from16 v5, p0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/DT;->A0P:Lcom/facebook/ads/redexgen/X/I9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/I9;->AFA()J

    move-result-wide v2

    .line 27756
    .local v5, "operationStartTimeMs":J
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/DT;->A0I()V

    .line 27757
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0P()Z

    move-result v4

    const-wide/16 v0, 0xa

    if-nez v4, :cond_0

    .line 27758
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/DT;->A0B()V

    .line 27759
    invoke-direct {v5, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/DT;->A0R(JJ)V

    .line 27760
    return-void

    .line 27761
    :cond_0
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0G()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v11

    .line 27762
    .local v2, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    const/16 v4, 0x96

    const/16 v1, 0xa

    const/16 v0, 0x71

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/DT;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ii;->A02(Ljava/lang/String;)V

    .line 27763
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/DT;->A0J()V

    .line 27764
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v0, 0x3e8

    mul-long/2addr v6, v0

    .line 27765
    .local v4, "rendererPositionElapsedRealtimeUs":J
    iget-object v10, v11, Lcom/facebook/ads/redexgen/X/AP;->A08:Lcom/facebook/ads/redexgen/X/V3;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A0A:J

    iget-wide v8, v5, Lcom/facebook/ads/redexgen/X/DT;->A0D:J

    sub-long/2addr v0, v8

    iget-boolean v4, v5, Lcom/facebook/ads/redexgen/X/DT;->A0S:Z

    invoke-interface {v10, v0, v1, v4}, Lcom/facebook/ads/redexgen/X/V3;->A4n(JZ)V

    .line 27766
    const/4 v14, 0x1

    .line 27767
    .local v11, "renderersEnded":Z
    const/4 v4, 0x1

    .line 27768
    .local v4, "renderersReadyOrEnded":Z
    iget-object v12, v5, Lcom/facebook/ads/redexgen/X/DT;->A0C:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v10, v12

    const/4 v9, 0x0

    .end local v11    # "renderersEnded":Z
    .local v6, "renderersEnded":Z
    :goto_0
    if-ge v9, v10, :cond_9

    aget-object v8, v12, v9

    .line 27769
    .local v0, "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/DT;->A03:J

    invoke-interface {v8, v0, v1, v6, v7}, Lcom/facebook/ads/redexgen/X/Wn;->ADf(JJ)V

    .line 27770
    const/4 v15, 0x1

    if-eqz v14, :cond_3

    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/Wn;->A8J()Z

    move-result v14

    sget-object v13, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v13, v0

    const/4 v0, 0x7

    aget-object v0, v13, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v13, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "7MZ43Mfosz2cVY7YLE"

    const/4 v0, 0x5

    aput-object v1, v13, v0

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    :goto_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27771
    :cond_4
    sget-object v13, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "fzNe8vrGdkAB7w8Spfiah9EVMBtgHYCD"

    const/4 v0, 0x1

    aput-object v1, v13, v0

    const-string v1, "yf8JTWMsX4Kj3fiI7V6gWL7AnmER89HT"

    const/4 v0, 0x2

    aput-object v1, v13, v0

    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/Wn;->A8U()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/Wn;->A8J()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {v5, v8}, Lcom/facebook/ads/redexgen/X/DT;->A0s(Lcom/facebook/ads/redexgen/X/Wn;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    const/4 v0, 0x1

    .line 27772
    .local v0, "rendererReadyOrEnded":Z
    :goto_2
    if-nez v0, :cond_6

    .line 27773
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/Wn;->A9Q()V

    .line 27774
    :cond_6
    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    :goto_3
    move v4, v15

    .line 27775
    .end local v0    # "rendererReadyOrEnded":Z
    .end local v0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 27776
    :cond_7
    const/4 v15, 0x0

    goto :goto_3

    .line 27777
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 27778
    :cond_9
    if-nez v4, :cond_a

    .line 27779
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/DT;->A0B()V

    .line 27780
    :cond_a
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/AQ;->A01:J

    .line 27781
    .local v8, "playingPeriodDurationUs":J
    const/4 v7, 0x4

    const/4 v10, 0x3

    const/4 v6, 0x2

    if-eqz v14, :cond_d

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v8, v12

    if-eqz v0, :cond_b

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A0A:J

    cmp-long v12, v8, v0

    if-gtz v12, :cond_d

    :cond_b
    iget-object v9, v11, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_1

    sget-object v8, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "wV9HOTo1O64nuX5ISvKSbD"

    const/4 v0, 0x0

    aput-object v1, v8, v0

    const-string v1, "bxDx4NmgY0h2jOwlZLjnQH"

    const/4 v0, 0x7

    aput-object v1, v8, v0

    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/AQ;->A05:Z

    if-eqz v0, :cond_d

    .line 27782
    invoke-direct {v5, v7}, Lcom/facebook/ads/redexgen/X/DT;->A0N(I)V

    .line 27783
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/DT;->A0H()V

    .line 27784
    :cond_c
    :goto_4
    iget-object v8, v5, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    sget-object v4, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v4, v0

    const/4 v0, 0x2

    aget-object v4, v4, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_17

    sget-object v4, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "xlSDIVprGLpZzqi21Os"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    iget v0, v8, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    if-ne v0, v6, :cond_11

    .line 27785
    iget-object v8, v5, Lcom/facebook/ads/redexgen/X/DT;->A0C:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v4, v8

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v4, :cond_11

    aget-object v0, v8, v1

    .line 27786
    .local p0, "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Wn;->A9Q()V

    .line 27787
    .end local p0    # "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 27788
    :cond_d
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    if-ne v0, v6, :cond_e

    .line 27789
    invoke-direct {v5, v4}, Lcom/facebook/ads/redexgen/X/DT;->A0u(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 27790
    invoke-direct {v5, v10}, Lcom/facebook/ads/redexgen/X/DT;->A0N(I)V

    .line 27791
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/DT;->A08:Z

    if-eqz v0, :cond_c

    .line 27792
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/DT;->A0G()V

    goto :goto_4

    .line 27793
    :cond_e
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    if-ne v0, v10, :cond_c

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/DT;->A0C:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v0, v0

    if-nez v0, :cond_f

    .line 27794
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/DT;->A0q()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_4

    :cond_f
    if-nez v4, :cond_c

    .line 27795
    :cond_10
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/DT;->A08:Z

    iput-boolean v0, v5, Lcom/facebook/ads/redexgen/X/DT;->A09:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_18

    .line 27796
    sget-object v4, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "etImyFrMwyU7Uaqc08"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    invoke-direct {v5, v6}, Lcom/facebook/ads/redexgen/X/DT;->A0N(I)V

    .line 27797
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/DT;->A0H()V

    goto :goto_4

    .line 27798
    :cond_11
    iget-boolean v8, v5, Lcom/facebook/ads/redexgen/X/DT;->A08:Z

    sget-object v4, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v4, v0

    const/4 v0, 0x7

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_16

    if-eqz v8, :cond_12

    :goto_6
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    if-eq v0, v10, :cond_13

    :cond_12
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    if-ne v0, v6, :cond_14

    .line 27799
    :cond_13
    const-wide/16 v0, 0xa

    invoke-direct {v5, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/DT;->A0R(JJ)V

    .line 27800
    :goto_7
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ii;->A00()V

    .line 27801
    return-void

    .line 27802
    :cond_14
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/DT;->A0C:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v0, v0

    if-eqz v0, :cond_15

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    if-eq v0, v7, :cond_15

    .line 27803
    const-wide/16 v0, 0x3e8

    invoke-direct {v5, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/DT;->A0R(JJ)V

    goto :goto_7

    .line 27804
    :cond_15
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/DT;->A0Q:Lcom/facebook/ads/redexgen/X/IJ;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/IJ;->ADc(I)V

    goto :goto_7

    :cond_16
    sget-object v4, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "A8R7VCW6d20zhsH9TJ0X19"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    const-string v1, "kPu9qHLeO477rnG8ZKl3CX"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    if-eqz v8, :cond_12

    goto :goto_6

    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A08()V
    .locals 2

    .line 27805
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0N(I)V

    .line 27806
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Lcom/facebook/ads/redexgen/X/DT;->A0o(ZZZ)V

    .line 27807
    return-void
.end method

.method private A09()V
    .locals 6

    .line 27808
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0F()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v5

    .line 27809
    .local p0, "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/AP;->A06()J

    move-result-wide v1

    .line 27810
    .local v0, "nextLoadPositionUs":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 27811
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0k(Z)V

    .line 27812
    return-void

    .line 27813
    :cond_0
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/DT;->A03:J

    .line 27814
    invoke-virtual {v5, v3, v4}, Lcom/facebook/ads/redexgen/X/AP;->A08(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 27815
    .local v1, "bufferedDurationUs":J
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/DT;->A0J:Lcom/facebook/ads/redexgen/X/AO;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0G:Lcom/facebook/ads/redexgen/X/Wq;

    .line 27816
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wq;->A78()Lcom/facebook/ads/redexgen/X/AU;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AU;->A01:F

    .line 27817
    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/AO;->AEZ(JF)Z

    move-result v0

    .line 27818
    .local v3, "continueLoading":Z
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0k(Z)V

    .line 27819
    if-eqz v0, :cond_1

    .line 27820
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A03:J

    invoke-virtual {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/AP;->A0F(J)V

    .line 27821
    :cond_1
    return-void
.end method

.method private A0A()V
    .locals 5

    .line 27822
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0I:Lcom/facebook/ads/redexgen/X/AH;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AH;->A06(Lcom/facebook/ads/redexgen/X/AT;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27823
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/DT;->A0E:Landroid/os/Handler;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0I:Lcom/facebook/ads/redexgen/X/AH;

    .line 27824
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AH;->A00(Lcom/facebook/ads/redexgen/X/AH;)I

    move-result v2

    .line 27825
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0I:Lcom/facebook/ads/redexgen/X/AH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AH;->A02(Lcom/facebook/ads/redexgen/X/AH;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27826
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0I:Lcom/facebook/ads/redexgen/X/AH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AH;->A01(Lcom/facebook/ads/redexgen/X/AH;)I

    move-result v1

    .line 27827
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 27828
    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 27829
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 27830
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0I:Lcom/facebook/ads/redexgen/X/AH;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AH;->A05(Lcom/facebook/ads/redexgen/X/AT;)V

    .line 27831
    :cond_0
    return-void

    .line 27832
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private A0B()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27833
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0F()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v4

    .line 27834
    .local p0, "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0H()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v1

    .line 27835
    .local v0, "readingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    if-eqz v4, :cond_3

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/AP;->A06:Z

    if-nez v0, :cond_3

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    if-ne v0, v4, :cond_3

    .line 27836
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/DT;->A0C:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v0, v3, v1

    .line 27837
    .local v0, "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Wn;->A7w()Z

    move-result v0

    if-nez v0, :cond_1

    .line 27838
    return-void

    .line 27839
    .end local v0    # "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27840
    :cond_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AP;->A08:Lcom/facebook/ads/redexgen/X/V3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/V3;->A9O()V

    .line 27841
    :cond_3
    return-void
.end method

.method private A0C()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27842
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A03:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/AR;->A0M(J)V

    .line 27843
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0Q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27844
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A03:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/AR;->A0I(JLcom/facebook/ads/redexgen/X/AT;)Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v10

    .line 27845
    .local p0, "info":Lcom/facebook/ads/redexgen/X/AQ;
    if-nez v10, :cond_1

    .line 27846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A07:Lcom/facebook/ads/redexgen/X/FN;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/FN;->A9P()V

    .line 27847
    .end local p0    # "info":Lcom/facebook/ads/redexgen/X/AQ;
    .end local v2
    .end local v0
    :cond_0
    :goto_0
    return-void

    .line 27848
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0L:Lcom/facebook/ads/redexgen/X/Am;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Ao;->A0A(ILcom/facebook/ads/redexgen/X/Am;Z)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/Am;->A03:Ljava/lang/Object;

    .line 27849
    .local v2, "uid":Ljava/lang/Object;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/DT;->A0U:[Lcom/facebook/ads/redexgen/X/Ah;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/DT;->A0N:Lcom/facebook/ads/redexgen/X/HG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0J:Lcom/facebook/ads/redexgen/X/AO;

    .line 27850
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AO;->A5e()Lcom/facebook/ads/redexgen/X/HJ;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/DT;->A07:Lcom/facebook/ads/redexgen/X/FN;

    .line 27851
    invoke-virtual/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/AR;->A0K([Lcom/facebook/ads/redexgen/X/Ah;Lcom/facebook/ads/redexgen/X/HG;Lcom/facebook/ads/redexgen/X/HJ;Lcom/facebook/ads/redexgen/X/FN;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/AQ;)Lcom/facebook/ads/redexgen/X/V3;

    move-result-object v2

    .line 27852
    .local v0, "mediaPeriod":Lcom/facebook/ads/redexgen/X/V3;
    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/AQ;->A03:J

    invoke-interface {v2, p0, v0, v1}, Lcom/facebook/ads/redexgen/X/V3;->ACy(Lcom/facebook/ads/redexgen/X/V4;J)V

    .line 27853
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/DT;->A0k(Z)V

    goto :goto_0
.end method

.method private A0D()V
    .locals 2

    .line 27854
    const/4 v1, 0x1

    invoke-direct {p0, v1, v1, v1}, Lcom/facebook/ads/redexgen/X/DT;->A0o(ZZZ)V

    .line 27855
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0J:Lcom/facebook/ads/redexgen/X/AO;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AO;->ABq()V

    .line 27856
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/DT;->A0N(I)V

    .line 27857
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0F:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 27858
    monitor-enter p0

    .line 27859
    :try_start_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0A:Z

    .line 27860
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 27861
    monitor-exit p0

    .line 27862
    return-void

    .line 27863
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private A0E()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 27864
    move-object v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0P()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27865
    return-void

    .line 27866
    :cond_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DT;->A0G:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wq;->A78()Lcom/facebook/ads/redexgen/X/AU;

    move-result-object v0

    iget v4, v0, Lcom/facebook/ads/redexgen/X/AU;->A01:F

    .line 27867
    .local v3, "playbackSpeed":F
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0G()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v7

    .line 27868
    .local v0, "periodHolder":Lcom/facebook/ads/redexgen/X/AP;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0H()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v2

    .line 27869
    .local v0, "readingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    const/4 v1, 0x1

    .line 27870
    .local v0, "selectionsChangedForReadPeriod":Z
    :goto_0
    if-eqz v7, :cond_1

    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/AP;->A06:Z

    if-nez v0, :cond_2

    .line 27871
    .end local v0    # "selectionsChangedForReadPeriod":Z
    .restart local v2
    :cond_1
    return-void

    .line 27872
    :cond_2
    invoke-virtual {v7, v4}, Lcom/facebook/ads/redexgen/X/AP;->A0I(F)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27873
    const/4 v6, 0x4

    if-eqz v1, :cond_b

    .line 27874
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0G()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v4

    .line 27875
    .local v0, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/AR;->A0S(Lcom/facebook/ads/redexgen/X/AP;)Z

    move-result v2

    .line 27876
    .local v7, "recreateStreams":Z
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DT;->A0T:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v0, v0

    new-array v5, v0, [Z

    .line 27877
    .local v0, "streamResetFlags":[Z
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A0A:J

    .line 27878
    invoke-virtual {v4, v0, v1, v2, v5}, Lcom/facebook/ads/redexgen/X/AP;->A0B(JZ[Z)J

    move-result-wide v9

    .line 27879
    .local v2, "periodPositionUs":J
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/AP;->A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AP;->A04:Lcom/facebook/ads/redexgen/X/HH;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0i(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HH;)V

    .line 27880
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    if-eq v0, v6, :cond_3

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AT;->A0A:J

    cmp-long v0, v9, v1

    if-eqz v0, :cond_3

    .line 27881
    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v8, v7, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v11, v0, Lcom/facebook/ads/redexgen/X/AT;->A01:J

    .line 27882
    invoke-virtual/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/AT;->A04(Lcom/facebook/ads/redexgen/X/FL;JJ)Lcom/facebook/ads/redexgen/X/AT;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 27883
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DT;->A0I:Lcom/facebook/ads/redexgen/X/AH;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/AH;->A04(I)V

    .line 27884
    invoke-direct {v3, v9, v10}, Lcom/facebook/ads/redexgen/X/DT;->A0P(J)V

    .line 27885
    :cond_3
    const/4 v7, 0x0

    .line 27886
    .local v0, "enabledRendererCount":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DT;->A0T:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v0, v0

    new-array v6, v0, [Z

    .line 27887
    .local v0, "rendererWasEnabledFlags":[Z
    const/4 v9, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/DT;->A0T:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v0, v1

    if-ge v9, v0, :cond_c

    .line 27888
    aget-object v8, v1, v9

    .line 27889
    .local v4, "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/Wn;->A7Q()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_2
    aput-boolean v0, v6, v9

    .line 27890
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AP;->A0A:[Lcom/facebook/ads/redexgen/X/Fi;

    aget-object v11, v0, v9

    .line 27891
    .local v0, "sampleStream":Lcom/facebook/ads/redexgen/X/Fi;
    if-eqz v11, :cond_4

    .line 27892
    add-int/lit8 v7, v7, 0x1

    .line 27893
    :cond_4
    aget-boolean v0, v6, v9

    if-eqz v0, :cond_5

    .line 27894
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/Wn;->A7V()Lcom/facebook/ads/redexgen/X/Fi;

    move-result-object v10

    sget-object v1, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "CIOLNyaJNw"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq v11, v10, :cond_6

    .line 27895
    invoke-direct {v3, v8}, Lcom/facebook/ads/redexgen/X/DT;->A0b(Lcom/facebook/ads/redexgen/X/Wn;)V

    .line 27896
    .end local v0    # "sampleStream":Lcom/facebook/ads/redexgen/X/Fi;
    .end local v4    # "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    .end local v0
    .restart local v2    # "periodPositionUs":J
    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 27897
    :cond_6
    aget-boolean v0, v5, v9

    if-eqz v0, :cond_5

    .line 27898
    .end local v0
    .local v2, "selectionsChangedForReadPeriod":Z
    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/DT;->A03:J

    invoke-interface {v8, v0, v1}, Lcom/facebook/ads/redexgen/X/Wn;->ADs(J)V

    goto :goto_3

    .line 27899
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 27900
    .end local v2    # "selectionsChangedForReadPeriod":Z
    .local v0, "selectionsChangedForReadPeriod":Z
    .end local v0    # "selectionsChangedForReadPeriod":Z
    .restart local v2    # "selectionsChangedForReadPeriod":Z
    :cond_8
    if-ne v7, v2, :cond_9

    .line 27901
    const/4 v1, 0x0

    .line 27902
    .end local v2    # "selectionsChangedForReadPeriod":Z
    .restart local v0    # "selectionsChangedForReadPeriod":Z
    .end local v2
    .restart local v0    # "selectionsChangedForReadPeriod":Z
    :cond_9
    iget-object v7, v7, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    goto/16 :goto_0

    .line 27903
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27904
    .end local v2
    .restart local v0    # "selectionsChangedForReadPeriod":Z
    .end local v0    # "selectionsChangedForReadPeriod":Z
    .restart local v2    # "selectionsChangedForReadPeriod":Z
    :cond_b
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/AR;->A0S(Lcom/facebook/ads/redexgen/X/AP;)Z

    .line 27905
    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/AP;->A06:Z

    if-eqz v0, :cond_d

    .line 27906
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/AQ;->A03:J

    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/DT;->A03:J

    .line 27907
    invoke-virtual {v7, v0, v1}, Lcom/facebook/ads/redexgen/X/AP;->A08(J)J

    move-result-wide v0

    .line 27908
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 27909
    .local v0, "loadingPeriodPositionUs":J
    const/4 v0, 0x0

    invoke-virtual {v7, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/AP;->A0A(JZ)J

    .line 27910
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/AP;->A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/AP;->A04:Lcom/facebook/ads/redexgen/X/HH;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0i(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HH;)V

    goto :goto_4

    .line 27911
    .end local v2    # "selectionsChangedForReadPeriod":Z
    .restart local v0    # "loadingPeriodPositionUs":J
    .end local v0    # "loadingPeriodPositionUs":J
    .end local v6    # "i":I
    .restart local v2    # "selectionsChangedForReadPeriod":Z
    :cond_c
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/AP;->A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AP;->A04:Lcom/facebook/ads/redexgen/X/HH;

    .line 27912
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AT;->A05(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HH;)Lcom/facebook/ads/redexgen/X/AT;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 27913
    invoke-direct {v3, v6, v7}, Lcom/facebook/ads/redexgen/X/DT;->A0p([ZI)V

    .line 27914
    .end local v0
    .end local v7    # "recreateStreams":Z
    .end local v0
    .end local v2    # "selectionsChangedForReadPeriod":Z
    .end local v0
    .end local v0
    .end local v0
    :cond_d
    :goto_4
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    const/4 v0, 0x4

    if-eq v1, v0, :cond_e

    .line 27915
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A09()V

    .line 27916
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A0J()V

    .line 27917
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/DT;->A0Q:Lcom/facebook/ads/redexgen/X/IJ;

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/IJ;->AEF(I)Z

    .line 27918
    :cond_e
    return-void
.end method

.method private A0F()V
    .locals 3

    .line 27919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local p0, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 27920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AG;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0r(Lcom/facebook/ads/redexgen/X/AG;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AG;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/redexgen/X/Af;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0A(Z)V

    .line 27922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 27923
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 27924
    .end local p0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0R:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 27925
    return-void
.end method

.method private A0G()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 27926
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/DT;->A09:Z

    .line 27927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0G:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wq;->A05()V

    .line 27928
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DT;->A0C:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v1, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v0, v2, v3

    .line 27929
    .local v2, "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Wn;->start()V

    .line 27930
    .end local v2    # "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 27931
    :cond_0
    return-void
.end method

.method private A0H()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 27932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0G:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wq;->A06()V

    .line 27933
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/DT;->A0C:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    .line 27934
    .local v2, "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0c(Lcom/facebook/ads/redexgen/X/Wn;)V

    .line 27935
    .end local v2    # "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27936
    :cond_0
    return-void
.end method

.method private A0I()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 27937
    move-object v1, p0

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/DT;->A07:Lcom/facebook/ads/redexgen/X/FN;

    if-nez v2, :cond_0

    .line 27938
    return-void

    .line 27939
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/DT;->A01:I

    if-lez v0, :cond_1

    .line 27940
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/FN;->A9P()V

    .line 27941
    return-void

    .line 27942
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A0C()V

    .line 27943
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0F()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v0

    .line 27944
    .local v1, "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AP;->A0H()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27945
    :cond_2
    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/DT;->A0k(Z)V

    .line 27946
    :cond_3
    :goto_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0P()Z

    move-result v0

    if-nez v0, :cond_5

    .line 27947
    return-void

    .line 27948
    :cond_4
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A08:Z

    if-nez v0, :cond_3

    .line 27949
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A09()V

    goto :goto_0

    .line 27950
    :cond_5
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0G()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v5

    .line 27951
    .local v0, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0H()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v4

    .line 27952
    .local v0, "readingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    const/4 v8, 0x0

    .line 27953
    .local v0, "advancedPlayingPeriod":Z
    :goto_1
    iget-boolean v6, v1, Lcom/facebook/ads/redexgen/X/DT;->A08:Z

    sget-object v3, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v2, v3, v0

    const/4 v0, 0x2

    aget-object v3, v3, v0

    const/16 v0, 0x1b

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_1c

    sget-object v3, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v2, "0oLwhKi5Kra6RCRQth8cI0tAgv4BlfMk"

    const/4 v0, 0x6

    aput-object v2, v3, v0

    if-eqz v6, :cond_8

    if-eq v5, v4, :cond_8

    iget-wide v6, v1, Lcom/facebook/ads/redexgen/X/DT;->A03:J

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/AP;->A00:J

    cmp-long v0, v6, v2

    if-ltz v0, :cond_8

    .line 27954
    if-eqz v8, :cond_6

    .line 27955
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A0A()V

    .line 27956
    :cond_6
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A06:Z

    if-eqz v0, :cond_7

    .line 27957
    const/4 v3, 0x0

    .line 27958
    .local v2, "discontinuityReason":I
    :goto_2
    move-object v2, v5

    .line 27959
    .local v0, "oldPlayingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0C()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v5

    .line 27960
    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/DT;->A0V(Lcom/facebook/ads/redexgen/X/AP;)V

    .line 27961
    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/AQ;->A03:J

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/AQ;->A00:J

    .line 27962
    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/AT;->A04(Lcom/facebook/ads/redexgen/X/FL;JJ)Lcom/facebook/ads/redexgen/X/AT;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 27963
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/DT;->A0I:Lcom/facebook/ads/redexgen/X/AH;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/AH;->A04(I)V

    .line 27964
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A0J()V

    .line 27965
    const/4 v8, 0x1

    .line 27966
    .end local v2    # "discontinuityReason":I
    .end local v0    # "oldPlayingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    goto :goto_1

    .line 27967
    :cond_7
    const/4 v3, 0x3

    goto :goto_2

    .line 27968
    :cond_8
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A05:Z

    if-eqz v0, :cond_b

    .line 27969
    const/4 v5, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/DT;->A0T:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v0, v2

    if-ge v5, v0, :cond_a

    .line 27970
    aget-object v3, v2, v5

    .line 27971
    .local v2, "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AP;->A0A:[Lcom/facebook/ads/redexgen/X/Fi;

    aget-object v2, v0, v5

    .line 27972
    .local v0, "sampleStream":Lcom/facebook/ads/redexgen/X/Fi;
    if-eqz v2, :cond_9

    .line 27973
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Wn;->A7V()Lcom/facebook/ads/redexgen/X/Fi;

    move-result-object v0

    if-ne v0, v2, :cond_9

    .line 27974
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Wn;->A7w()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 27975
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Wn;->AEL()V

    .line 27976
    .end local v2    # "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    .end local v0    # "sampleStream":Lcom/facebook/ads/redexgen/X/Fi;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 27977
    .end local v2
    :cond_a
    return-void

    .line 27978
    :cond_b
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    if-eqz v0, :cond_c

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AP;->A06:Z

    if-nez v0, :cond_d

    .line 27979
    .end local v1    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    .end local v0
    .restart local v8
    .restart local v6
    :cond_c
    return-void

    .line 27980
    :cond_d
    const/4 v5, 0x0

    .local v2, "i":I
    :goto_4
    iget-object v7, v1, Lcom/facebook/ads/redexgen/X/DT;->A0T:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v6, v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v0, 0x63

    if-eq v2, v0, :cond_10

    sget-object v3, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v2, "ghsgso7PHHKUfGJDBRDWa58h1rLx"

    const/4 v0, 0x4

    aput-object v2, v3, v0

    if-ge v5, v6, :cond_11

    .line 27981
    :goto_5
    aget-object v3, v7, v5

    .line 27982
    .local v0, "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AP;->A0A:[Lcom/facebook/ads/redexgen/X/Fi;

    aget-object v2, v0, v5

    .line 27983
    .local v0, "sampleStream":Lcom/facebook/ads/redexgen/X/Fi;
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Wn;->A7V()Lcom/facebook/ads/redexgen/X/Fi;

    move-result-object v0

    if-ne v0, v2, :cond_e

    if-eqz v2, :cond_f

    .line 27984
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Wn;->A7w()Z

    move-result v0

    if-nez v0, :cond_f

    .line 27985
    .restart local v0    # "sampleStream":Lcom/facebook/ads/redexgen/X/Fi;
    .restart local v0    # "sampleStream":Lcom/facebook/ads/redexgen/X/Fi;
    :cond_e
    return-void

    .line 27986
    .end local v0    # "sampleStream":Lcom/facebook/ads/redexgen/X/Fi;
    .end local v0
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_10
    sget-object v3, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v2, "W3Zxvi1uQeiwcOM1a3uIixoX4KFWrQEX"

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const-string v2, "hMjrL9hJ9zdobOz7Vqnbeo3Jken9e002"

    const/4 v0, 0x2

    aput-object v2, v3, v0

    if-ge v5, v6, :cond_11

    goto :goto_5

    .line 27987
    .end local v2    # "i":I
    .end local v0
    .end local v0
    :cond_11
    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/AP;->A04:Lcom/facebook/ads/redexgen/X/HH;

    .line 27988
    .local v2, "oldTrackSelectorResult":Lcom/facebook/ads/redexgen/X/HH;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0D()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v7

    .line 27989
    iget-object v6, v7, Lcom/facebook/ads/redexgen/X/AP;->A04:Lcom/facebook/ads/redexgen/X/HH;

    .line 27990
    .local v0, "newTrackSelectorResult":Lcom/facebook/ads/redexgen/X/HH;
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/AP;->A08:Lcom/facebook/ads/redexgen/X/V3;

    .line 27991
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/V3;->ADH()J

    move-result-wide v9

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v9, v2

    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0x1d

    if-eq v2, v0, :cond_17

    sget-object v3, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v2, "vjt4oSs9hMr9NwWN4mwojUjVUYrN8cQ6"

    const/4 v0, 0x6

    aput-object v2, v3, v0

    if-eqz v4, :cond_18

    :goto_6
    const/4 v13, 0x1

    .line 27992
    .local v0, "initialDiscontinuity":Z
    :goto_7
    const/4 v5, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/DT;->A0T:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v0, v2

    if-ge v5, v0, :cond_1b

    .line 27993
    aget-object v4, v2, v5

    .line 27994
    .local v0, "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    invoke-virtual {v8, v5}, Lcom/facebook/ads/redexgen/X/HH;->A00(I)Z

    move-result v0

    .line 27995
    .local v0, "rendererWasEnabled":Z
    if-nez v0, :cond_13

    .line 27996
    .end local v1
    .end local v0    # "rendererWasEnabled":Z
    .end local v0
    .end local v0
    .restart local v8
    .restart local v6
    :cond_12
    :goto_9
    add-int/lit8 v5, v5, 0x1

    move-object v1, p0

    goto :goto_8

    .line 27997
    :cond_13
    if-eqz v13, :cond_14

    .line 27998
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/Wn;->AEL()V

    goto :goto_9

    .line 27999
    :cond_14
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/Wn;->A8G()Z

    move-result v0

    if-nez v0, :cond_12

    .line 28000
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/HH;->A01:Lcom/facebook/ads/redexgen/X/HE;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/HE;->A00(I)Lcom/facebook/ads/redexgen/X/HD;

    move-result-object v12

    .line 28001
    .local v5, "newSelection":Lcom/facebook/ads/redexgen/X/HD;
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/HH;->A00(I)Z

    move-result v11

    .line 28002
    .local v0, "newRendererEnabled":Z
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/DT;->A0U:[Lcom/facebook/ads/redexgen/X/Ah;

    aget-object v0, v0, v5

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A7b()I

    move-result v1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_15

    const/4 v10, 0x1

    .line 28003
    .local v2, "isNoSampleRenderer":Z
    :goto_a
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/HH;->A03:[Lcom/facebook/ads/redexgen/X/Ai;

    aget-object v3, v0, v5

    .line 28004
    .local v4, "oldConfig":Lcom/facebook/ads/redexgen/X/Ai;
    iget-object v9, v6, Lcom/facebook/ads/redexgen/X/HH;->A03:[Lcom/facebook/ads/redexgen/X/Ai;

    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1a

    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "Ap10Ra2l8gLZ0YRne2"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    aget-object v0, v9, v5

    .line 28005
    .local v0, "newConfig":Lcom/facebook/ads/redexgen/X/Ai;
    if-eqz v11, :cond_16

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Ai;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    if-nez v10, :cond_16

    .line 28006
    invoke-static {v12}, Lcom/facebook/ads/redexgen/X/DT;->A0v(Lcom/facebook/ads/redexgen/X/HD;)[Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v3

    .line 28007
    .local p0, "formats":[Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v1
    .local v8, "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    iget-object v9, v7, Lcom/facebook/ads/redexgen/X/AP;->A0A:[Lcom/facebook/ads/redexgen/X/Fi;

    sget-object v1, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_19

    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "P6QWonkpaKbLAx4pgk"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    aget-object v2, v9, v5

    .line 28008
    .end local v2    # "isNoSampleRenderer":Z
    .end local v0    # "newConfig":Lcom/facebook/ads/redexgen/X/Ai;
    .local v6, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    .local v3, "isNoSampleRenderer":Z
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/AP;->A07()J

    move-result-wide v0

    .line 28009
    invoke-interface {v4, v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Wn;->ADh([Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/redexgen/X/Fi;J)V

    .line 28010
    .end local p0    # "formats":[Lcom/facebook/ads/internal/exoplayer2/Format;
    goto :goto_9

    .line 28011
    :cond_15
    const/4 v10, 0x0

    goto :goto_a

    .line 28012
    .end local v8    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    .end local v6    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    .end local v3    # "isNoSampleRenderer":Z
    .restart local v1    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    .restart local v2    # "isNoSampleRenderer":Z
    .restart local v0    # "newConfig":Lcom/facebook/ads/redexgen/X/Ai;
    .end local v1    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    .end local v2    # "isNoSampleRenderer":Z
    .end local v0    # "newConfig":Lcom/facebook/ads/redexgen/X/Ai;
    .restart local v8    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    .restart local v6    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    .restart local v3    # "isNoSampleRenderer":Z
    :cond_16
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/Wn;->AEL()V

    goto :goto_9

    :cond_17
    if-eqz v4, :cond_18

    goto/16 :goto_6

    .line 28013
    :cond_18
    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28014
    .end local v0
    .end local v8    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    .end local v6    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    .restart local v1    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    .restart local v0    # "newConfig":Lcom/facebook/ads/redexgen/X/Ai;
    :cond_1b
    return-void

    :cond_1c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0J()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 28015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0P()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28016
    return-void

    .line 28017
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0G()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v4

    .line 28018
    .local p0, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AP;->A08:Lcom/facebook/ads/redexgen/X/V3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/V3;->ADH()J

    move-result-wide v7

    .line 28019
    .local v1, "periodPositionUs":J
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v7, v1

    if-eqz v0, :cond_3

    .line 28020
    invoke-direct {p0, v7, v8}, Lcom/facebook/ads/redexgen/X/DT;->A0P(J)V

    .line 28021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AT;->A0A:J

    cmp-long v0, v7, v1

    if-eqz v0, :cond_1

    .line 28022
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v9, v0, Lcom/facebook/ads/redexgen/X/AT;->A01:J

    .line 28023
    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/AT;->A04(Lcom/facebook/ads/redexgen/X/FL;JJ)Lcom/facebook/ads/redexgen/X/AT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 28024
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0I:Lcom/facebook/ads/redexgen/X/AH;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AH;->A04(I)V

    .line 28025
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 28026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0C:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 28027
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A01:J

    .line 28028
    :goto_1
    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/AT;->A09:J

    .line 28029
    return-void

    .line 28030
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/AP;->A0C(Z)J

    move-result-wide v0

    goto :goto_1

    .line 28031
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0G:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wq;->A04()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A03:J

    .line 28032
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A03:J

    invoke-virtual {v4, v0, v1}, Lcom/facebook/ads/redexgen/X/AP;->A08(J)J

    move-result-wide v2

    .line 28033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A0A:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/DT;->A0Q(JJ)V

    .line 28034
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iput-wide v2, v0, Lcom/facebook/ads/redexgen/X/AT;->A0A:J

    goto :goto_0
.end method

.method public static A0K()V
    .locals 1

    const/16 v0, 0xa0

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/DT;->A0V:[B

    return-void

    :array_0
    .array-data 1
        0x28t
        0x15t
        0x2t
        0x3dt
        0x1t
        0xct
        0x14t
        0x8t
        0x1ft
        0x24t
        0x0t
        0x1dt
        0x1t
        0x24t
        0x3t
        0x19t
        0x8t
        0x1ft
        0x3t
        0xct
        0x1t
        0x28t
        0x15t
        0x2t
        0x3dt
        0x1t
        0xct
        0x14t
        0x8t
        0x1ft
        0x24t
        0x0t
        0x1dt
        0x1t
        0x24t
        0x3t
        0x19t
        0x8t
        0x1ft
        0x3t
        0xct
        0x1t
        0x57t
        0x25t
        0xct
        0x3t
        0x9t
        0x1t
        0x8t
        0x1ft
        0x19t
        0x37t
        0x3et
        0x3ft
        0x22t
        0x39t
        0x3et
        0x37t
        0x70t
        0x3dt
        0x35t
        0x23t
        0x23t
        0x31t
        0x37t
        0x35t
        0x23t
        0x70t
        0x23t
        0x35t
        0x3et
        0x24t
        0x70t
        0x31t
        0x36t
        0x24t
        0x35t
        0x22t
        0x70t
        0x22t
        0x35t
        0x3ct
        0x35t
        0x31t
        0x23t
        0x35t
        0x7et
        0x47t
        0x60t
        0x7at
        0x6bt
        0x7ct
        0x60t
        0x6ft
        0x62t
        0x2et
        0x7ct
        0x7bt
        0x60t
        0x7at
        0x67t
        0x63t
        0x6bt
        0x2et
        0x6bt
        0x7ct
        0x7ct
        0x61t
        0x7ct
        0x20t
        0x32t
        0xet
        0x3t
        0x1bt
        0x0t
        0x3t
        0x1t
        0x9t
        0x42t
        0x7t
        0x10t
        0x10t
        0xdt
        0x10t
        0x4ct
        0x66t
        0x5at
        0x40t
        0x47t
        0x56t
        0x50t
        0x15t
        0x50t
        0x47t
        0x47t
        0x5at
        0x47t
        0x1bt
        0x4at
        0x6dt
        0x76t
        0x69t
        0x39t
        0x7ft
        0x78t
        0x70t
        0x75t
        0x7ct
        0x7dt
        0x37t
        0x77t
        0x7ct
        0x40t
        0x7ct
        0x7et
        0x76t
        0x44t
        0x7ct
        0x61t
        0x78t
    .end array-data
.end method

.method private A0L(F)V
    .locals 5

    .line 28035
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0E()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v4

    .line 28036
    .local p0, "periodHolder":Lcom/facebook/ads/redexgen/X/AP;
    :goto_0
    if-eqz v4, :cond_2

    .line 28037
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AP;->A04:Lcom/facebook/ads/redexgen/X/HH;

    if-eqz v0, :cond_1

    .line 28038
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AP;->A04:Lcom/facebook/ads/redexgen/X/HH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/HH;->A01:Lcom/facebook/ads/redexgen/X/HE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HE;->A01()[Lcom/facebook/ads/redexgen/X/HD;

    move-result-object v3

    .line 28039
    .local p1, "trackSelections":[Lcom/facebook/ads/redexgen/X/HD;
    array-length v2, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v0, v3, v1

    .line 28040
    .local v0, "trackSelection":Lcom/facebook/ads/redexgen/X/HD;
    if-eqz v0, :cond_0

    .line 28041
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/HD;->ABa(F)V

    .line 28042
    .end local v0    # "trackSelection":Lcom/facebook/ads/redexgen/X/HD;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 28043
    .end local p1    # "trackSelections":[Lcom/facebook/ads/redexgen/X/HD;
    :cond_1
    iget-object v4, v4, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    goto :goto_0

    .line 28044
    :cond_2
    return-void
.end method

.method private A0M(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 28045
    iput p1, p0, Lcom/facebook/ads/redexgen/X/DT;->A02:I

    .line 28046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AR;->A0R(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28047
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0j(Z)V

    .line 28048
    :cond_0
    return-void
.end method

.method private A0N(I)V
    .locals 1

    .line 28049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    if-eq v0, p1, :cond_0

    .line 28050
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AT;->A02(I)Lcom/facebook/ads/redexgen/X/AT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 28051
    :cond_0
    return-void
.end method

.method private A0O(IZI)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 28052
    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0G()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v3

    .line 28053
    .local p2, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0T:[Lcom/facebook/ads/redexgen/X/Wn;

    aget-object v4, v0, p1

    .line 28054
    .local p3, "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0C:[Lcom/facebook/ads/redexgen/X/Wn;

    aput-object v4, v0, p3

    .line 28055
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/Wn;->A7Q()I

    move-result v0

    if-nez v0, :cond_0

    .line 28056
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AP;->A04:Lcom/facebook/ads/redexgen/X/HH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/HH;->A03:[Lcom/facebook/ads/redexgen/X/Ai;

    aget-object v5, v0, p1

    .line 28057
    .local v0, "rendererConfiguration":Lcom/facebook/ads/redexgen/X/Ai;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AP;->A04:Lcom/facebook/ads/redexgen/X/HH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/HH;->A01:Lcom/facebook/ads/redexgen/X/HE;

    .line 28058
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/HE;->A00(I)Lcom/facebook/ads/redexgen/X/HD;

    move-result-object v0

    .line 28059
    .local v5, "newSelection":Lcom/facebook/ads/redexgen/X/HD;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DT;->A0v(Lcom/facebook/ads/redexgen/X/HD;)[Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v6

    .line 28060
    .local v0, "formats":[Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A08:Z

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    const/4 v0, 0x3

    if-ne v1, v0, :cond_2

    const/4 v1, 0x1

    .line 28061
    .local v0, "playing":Z
    :goto_0
    if-nez p2, :cond_1

    if-eqz v1, :cond_1

    const/4 v10, 0x1

    .line 28062
    .local v0, "joining":Z
    :goto_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AP;->A0A:[Lcom/facebook/ads/redexgen/X/Fi;

    aget-object v7, v0, p1

    iget-wide v8, v2, Lcom/facebook/ads/redexgen/X/DT;->A03:J

    .line 28063
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/AP;->A07()J

    move-result-wide v11

    .line 28064
    invoke-interface/range {v4 .. v12}, Lcom/facebook/ads/redexgen/X/Wn;->A57(Lcom/facebook/ads/redexgen/X/Ai;[Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/redexgen/X/Fi;JZJ)V

    .line 28065
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0G:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Wq;->A09(Lcom/facebook/ads/redexgen/X/Wn;)V

    .line 28066
    if-eqz v1, :cond_0

    .line 28067
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/Wn;->start()V

    .line 28068
    .end local v0    # "joining":Z
    .end local v0
    .end local v5    # "newSelection":Lcom/facebook/ads/redexgen/X/HD;
    .end local v0
    .end local v0
    :cond_0
    return-void

    .line 28069
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 28070
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private A0P(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 28071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0P()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28072
    :goto_0
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/DT;->A03:J

    .line 28073
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DT;->A0G:Lcom/facebook/ads/redexgen/X/Wq;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A03:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Wq;->A07(J)V

    .line 28074
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/DT;->A0C:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v4, v5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v5, v3

    .line 28075
    .local v0, "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A03:J

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Wn;->ADs(J)V

    .line 28076
    .end local v0    # "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 28077
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0G()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "3Dp2X759xi1gKy2gc8ykMJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "GcHSrS1OF4oxjH6XmPjhKR"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, p1, p2}, Lcom/facebook/ads/redexgen/X/AP;->A09(J)J

    move-result-wide p1

    goto :goto_0

    .line 28078
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0Q(JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 28079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FL;->A01()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28080
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/DT;
    .end local p1    # null:J
    .end local p3    # null:J
    :cond_0
    return-void

    .line 28081
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AT;->A02:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_2

    .line 28082
    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    .line 28083
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    .line 28084
    .local p0, "currentPeriodIndex":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A00:I

    const/4 v6, 0x0

    if-lez v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0R:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AG;

    .line 28085
    .local p1, "previousInfo":Lcom/facebook/ads/redexgen/X/AG;
    :goto_0
    if-eqz v0, :cond_7

    iget v1, v0, Lcom/facebook/ads/redexgen/X/AG;->A00:I

    if-gt v1, v2, :cond_3

    iget v5, v0, Lcom/facebook/ads/redexgen/X/AG;->A00:I

    sget-object v3, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v3, v3, v1

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v1, 0x63

    if-eq v3, v1, :cond_6

    sget-object v4, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v3, "ZbbXGQ7fBHqOH9bFx5EieA"

    const/4 v1, 0x0

    aput-object v3, v4, v1

    const-string v3, "wqQaVgv9yDX8FIaCovLxd4"

    const/4 v1, 0x7

    aput-object v3, v4, v1

    if-ne v5, v2, :cond_7

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/AG;->A01:J

    cmp-long v0, v3, p1

    if-lez v0, :cond_7

    .line 28086
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A00:I

    .line 28087
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A00:I

    if-lez v0, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0R:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AG;

    goto :goto_0

    :cond_4
    move-object v0, v6

    goto :goto_0

    .line 28088
    :cond_5
    move-object v0, v6

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28089
    :cond_7
    iget v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 28090
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0R:Ljava/util/ArrayList;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/AG;

    .line 28091
    .local p3, "nextInfo":Lcom/facebook/ads/redexgen/X/AG;
    :goto_1
    if-eqz v1, :cond_b

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/AG;->A02:Ljava/lang/Object;

    if-eqz v0, :cond_b

    iget v0, v1, Lcom/facebook/ads/redexgen/X/AG;->A00:I

    if-lt v0, v2, :cond_8

    iget v0, v1, Lcom/facebook/ads/redexgen/X/AG;->A00:I

    if-ne v0, v2, :cond_b

    iget-wide v3, v1, Lcom/facebook/ads/redexgen/X/AG;->A01:J

    cmp-long v0, v3, p1

    if-gtz v0, :cond_b

    .line 28092
    :cond_8
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A00:I

    .line 28093
    iget v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 28094
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0R:Ljava/util/ArrayList;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/AG;

    goto :goto_1

    .line 28095
    :cond_9
    move-object v1, v6

    goto :goto_1

    .line 28096
    :cond_a
    move-object v1, v6

    goto :goto_1

    .line 28097
    :cond_b
    :goto_2
    if-eqz v1, :cond_f

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/AG;->A02:Ljava/lang/Object;

    if-eqz v0, :cond_f

    iget v0, v1, Lcom/facebook/ads/redexgen/X/AG;->A00:I

    if-ne v0, v2, :cond_f

    iget-wide v3, v1, Lcom/facebook/ads/redexgen/X/AG;->A01:J

    cmp-long v0, v3, p1

    if-lez v0, :cond_f

    iget-wide v3, v1, Lcom/facebook/ads/redexgen/X/AG;->A01:J

    cmp-long v0, v3, p3

    if-gtz v0, :cond_f

    .line 28098
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/redexgen/X/Af;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0Z(Lcom/facebook/ads/redexgen/X/Af;)V

    .line 28099
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/redexgen/X/Af;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Af;->A0B()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/redexgen/X/Af;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Af;->A0D()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 28100
    :cond_c
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0R:Ljava/util/ArrayList;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 28101
    :goto_3
    iget v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 28102
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0R:Ljava/util/ArrayList;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/AG;

    goto :goto_2

    .line 28103
    :cond_d
    move-object v1, v6

    goto :goto_2

    .line 28104
    :cond_e
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A00:I

    goto :goto_3

    .line 28105
    :cond_f
    return-void
.end method

.method private A0R(JJ)V
    .locals 2

    .line 28106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0Q:Lcom/facebook/ads/redexgen/X/IJ;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/IJ;->ADc(I)V

    .line 28107
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0Q:Lcom/facebook/ads/redexgen/X/IJ;

    add-long/2addr p1, p3

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/ads/redexgen/X/IJ;->AEG(IJ)Z

    .line 28108
    return-void
.end method

.method private A0S(Lcom/facebook/ads/redexgen/X/AF;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 28109
    move-object v0, p0

    move-object/from16 v3, p1

    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/AF;->A01:Lcom/facebook/ads/redexgen/X/FN;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DT;->A07:Lcom/facebook/ads/redexgen/X/FN;

    if-eq v2, v1, :cond_0

    .line 28110
    return-void

    .line 28111
    :cond_0
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v11, v1, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    .line 28112
    .local v0, "oldTimeline":Lcom/facebook/ads/redexgen/X/Ao;
    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/AF;->A00:Lcom/facebook/ads/redexgen/X/Ao;

    .line 28113
    .local v3, "timeline":Lcom/facebook/ads/redexgen/X/Ao;
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/AF;->A02:Ljava/lang/Object;

    .line 28114
    .local v2, "manifest":Ljava/lang/Object;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v1, v7}, Lcom/facebook/ads/redexgen/X/AR;->A0N(Lcom/facebook/ads/redexgen/X/Ao;)V

    .line 28115
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    invoke-virtual {v1, v7, v2}, Lcom/facebook/ads/redexgen/X/AT;->A03(Lcom/facebook/ads/redexgen/X/Ao;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/AT;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 28116
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A0F()V

    .line 28117
    iget v6, v0, Lcom/facebook/ads/redexgen/X/DT;->A01:I

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-lez v6, :cond_8

    .line 28118
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DT;->A0I:Lcom/facebook/ads/redexgen/X/AH;

    invoke-virtual {v3, v6}, Lcom/facebook/ads/redexgen/X/AH;->A03(I)V

    .line 28119
    iput v5, v0, Lcom/facebook/ads/redexgen/X/DT;->A01:I

    .line 28120
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DT;->A04:Lcom/facebook/ads/redexgen/X/AI;

    if-eqz v3, :cond_4

    .line 28121
    invoke-direct {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/DT;->A04(Lcom/facebook/ads/redexgen/X/AI;Z)Landroid/util/Pair;

    move-result-object v3

    .line 28122
    .local v1, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/DT;->A04:Lcom/facebook/ads/redexgen/X/AI;

    .line 28123
    if-nez v3, :cond_2

    .line 28124
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A08()V

    .line 28125
    :cond_1
    :goto_0
    return-void

    .line 28126
    :cond_2
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 28127
    .local v1, "periodIndex":I
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 28128
    .local v11, "positionUs":J
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v1, v2, v6, v7}, Lcom/facebook/ads/redexgen/X/AR;->A0L(IJ)Lcom/facebook/ads/redexgen/X/FL;

    move-result-object v3

    .line 28129
    .local v2, "periodId":Lcom/facebook/ads/redexgen/X/FL;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 28130
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/FL;->A01()Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v4, 0x0

    .line 28131
    :goto_1
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/AT;->A04(Lcom/facebook/ads/redexgen/X/FL;JJ)Lcom/facebook/ads/redexgen/X/AT;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    goto :goto_0

    .line 28132
    :cond_3
    move-wide v4, v6

    goto :goto_1

    .line 28133
    .end local v1    # "periodIndex":I
    .end local v1
    .end local v11    # "positionUs":J
    .end local v2    # "periodId":Lcom/facebook/ads/redexgen/X/FL;
    :cond_4
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v4, v3, Lcom/facebook/ads/redexgen/X/AT;->A02:J

    cmp-long v3, v4, v1

    if-nez v3, :cond_1

    .line 28134
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Ao;->A0E()Z

    move-result v6

    sget-object v5, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v4, v5, v3

    const/4 v3, 0x2

    aget-object v5, v5, v3

    const/16 v3, 0x1b

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v4, v3, :cond_7

    sget-object v5, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v4, "lH2oXw2RUPBHBuRA0"

    const/4 v3, 0x4

    aput-object v4, v5, v3

    if-eqz v6, :cond_5

    .line 28135
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A08()V

    goto :goto_0

    .line 28136
    :cond_5
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/DT;->A0B:Z

    .line 28137
    invoke-virtual {v7, v3}, Lcom/facebook/ads/redexgen/X/Ao;->A05(Z)I

    move-result v3

    .line 28138
    invoke-direct {v0, v7, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/DT;->A05(Lcom/facebook/ads/redexgen/X/Ao;IJ)Landroid/util/Pair;

    move-result-object v3

    .line 28139
    .local v1, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 28140
    .restart local v1    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 28141
    .local v11, "startPositionUs":J
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v1, v2, v6, v7}, Lcom/facebook/ads/redexgen/X/AR;->A0L(IJ)Lcom/facebook/ads/redexgen/X/FL;

    move-result-object v3

    .line 28142
    .restart local v2    # "periodId":Lcom/facebook/ads/redexgen/X/FL;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 28143
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/FL;->A01()Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide/16 v4, 0x0

    .line 28144
    :goto_2
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/AT;->A04(Lcom/facebook/ads/redexgen/X/FL;JJ)Lcom/facebook/ads/redexgen/X/AT;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    goto/16 :goto_0

    .line 28145
    :cond_6
    move-wide v4, v6

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28146
    :cond_8
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget v10, v3, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    .line 28147
    .local v1, "playingPeriodIndex":I
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v13, v3, Lcom/facebook/ads/redexgen/X/AT;->A01:J

    .line 28148
    .local v5, "contentPositionUs":J
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Ao;->A0E()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 28149
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Ao;->A0E()Z

    move-result v1

    if-nez v1, :cond_9

    .line 28150
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    .line 28151
    invoke-virtual {v1, v10, v13, v14}, Lcom/facebook/ads/redexgen/X/AR;->A0L(IJ)Lcom/facebook/ads/redexgen/X/FL;

    move-result-object v10

    .line 28152
    .local v1, "periodId":Lcom/facebook/ads/redexgen/X/FL;
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 28153
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/FL;->A01()Z

    move-result v1

    if-eqz v1, :cond_a

    const-wide/16 v11, 0x0

    .line 28154
    .end local v5    # "contentPositionUs":J
    .local v11, "contentPositionUs":J
    :goto_3
    invoke-virtual/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/AT;->A04(Lcom/facebook/ads/redexgen/X/FL;JJ)Lcom/facebook/ads/redexgen/X/AT;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 28155
    .end local v5
    .restart local v11    # "contentPositionUs":J
    :cond_9
    return-void

    .line 28156
    :cond_a
    move-wide v11, v13

    goto :goto_3

    .line 28157
    .end local v11    # "contentPositionUs":J
    .restart local v5    # "contentPositionUs":J
    :cond_b
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/AR;->A0E()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v3

    .line 28158
    .local v1, "periodHolder":Lcom/facebook/ads/redexgen/X/AP;
    if-nez v3, :cond_d

    .line 28159
    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/DT;->A0L:Lcom/facebook/ads/redexgen/X/Am;

    sget-object v8, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v8, v8, v6

    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v6, 0x63

    if-eq v8, v6, :cond_c

    sget-object v9, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v8, "AIgzGczszMkheYOO0l2WDA"

    const/4 v6, 0x0

    aput-object v8, v9, v6

    const-string v8, "AQm6fITMTu1q9a2hy8bL0W"

    const/4 v6, 0x7

    aput-object v8, v9, v6

    invoke-virtual {v11, v10, v12, v4}, Lcom/facebook/ads/redexgen/X/Ao;->A0A(ILcom/facebook/ads/redexgen/X/Am;Z)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v6

    iget-object v6, v6, Lcom/facebook/ads/redexgen/X/Am;->A03:Ljava/lang/Object;

    .line 28160
    .local v6, "playingPeriodUid":Ljava/lang/Object;
    :goto_4
    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/Ao;->A04(Ljava/lang/Object;)I

    move-result v6

    .line 28161
    .local v1, "periodIndex":I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_12

    .line 28162
    invoke-direct {v0, v10, v11, v7}, Lcom/facebook/ads/redexgen/X/DT;->A01(ILcom/facebook/ads/redexgen/X/Ao;Lcom/facebook/ads/redexgen/X/Ao;)I

    move-result v6

    .line 28163
    .local v1, "newPeriodIndex":I
    if-ne v6, v8, :cond_e

    .line 28164
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A08()V

    .line 28165
    return-void

    :cond_c
    sget-object v9, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v8, "kxPd1uECtZJZCmNWUxsBgkB7loYAAl3C"

    const/4 v6, 0x6

    aput-object v8, v9, v6

    invoke-virtual {v11, v10, v12, v4}, Lcom/facebook/ads/redexgen/X/Ao;->A0A(ILcom/facebook/ads/redexgen/X/Am;Z)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v6

    iget-object v6, v6, Lcom/facebook/ads/redexgen/X/Am;->A03:Ljava/lang/Object;

    goto :goto_4

    .line 28166
    :cond_d
    iget-object v6, v3, Lcom/facebook/ads/redexgen/X/AP;->A09:Ljava/lang/Object;

    goto :goto_4

    .line 28167
    :cond_e
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/DT;->A0L:Lcom/facebook/ads/redexgen/X/Am;

    .line 28168
    invoke-virtual {v7, v6, v5}, Lcom/facebook/ads/redexgen/X/Ao;->A09(ILcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v5

    iget v5, v5, Lcom/facebook/ads/redexgen/X/Am;->A00:I

    .line 28169
    invoke-direct {v0, v7, v5, v1, v2}, Lcom/facebook/ads/redexgen/X/DT;->A05(Lcom/facebook/ads/redexgen/X/Ao;IJ)Landroid/util/Pair;

    move-result-object v2

    .line 28170
    .local v7, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 28171
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 28172
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v1, v5, v9, v10}, Lcom/facebook/ads/redexgen/X/AR;->A0L(IJ)Lcom/facebook/ads/redexgen/X/FL;

    move-result-object v6

    .line 28173
    .restart local v2    # "periodId":Lcom/facebook/ads/redexgen/X/FL;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DT;->A0L:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v7, v5, v1, v4}, Lcom/facebook/ads/redexgen/X/Ao;->A0A(ILcom/facebook/ads/redexgen/X/Am;Z)Lcom/facebook/ads/redexgen/X/Am;

    .line 28174
    if-eqz v3, :cond_10

    .line 28175
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DT;->A0L:Lcom/facebook/ads/redexgen/X/Am;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/Am;->A03:Ljava/lang/Object;

    .line 28176
    .local v11, "newPeriodUid":Ljava/lang/Object;
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/AQ;->A00(I)Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v1

    iput-object v1, v3, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    .line 28177
    :goto_5
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    if-eqz v1, :cond_10

    .line 28178
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    .line 28179
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/AP;->A09:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 28180
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    invoke-virtual {v2, v1, v5}, Lcom/facebook/ads/redexgen/X/AR;->A0J(Lcom/facebook/ads/redexgen/X/AQ;I)Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v1

    iput-object v1, v3, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    goto :goto_5

    .line 28181
    :cond_f
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/AQ;->A00(I)Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v1

    iput-object v1, v3, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    goto :goto_5

    .line 28182
    .end local v11    # "newPeriodUid":Ljava/lang/Object;
    :cond_10
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/FL;->A01()Z

    move-result v1

    if-eqz v1, :cond_11

    const-wide/16 v1, 0x0

    .end local v0    # "oldTimeline":Lcom/facebook/ads/redexgen/X/Ao;
    .local v11, "oldTimeline":Lcom/facebook/ads/redexgen/X/Ao;
    :goto_6
    invoke-direct {v0, v6, v1, v2}, Lcom/facebook/ads/redexgen/X/DT;->A02(Lcom/facebook/ads/redexgen/X/FL;J)J

    move-result-wide v7

    .line 28183
    .local v3, "seekPositionUs":J
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/AT;->A04(Lcom/facebook/ads/redexgen/X/FL;JJ)Lcom/facebook/ads/redexgen/X/AT;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 28184
    return-void

    .line 28185
    :cond_11
    move-wide v1, v9

    goto :goto_6

    .line 28186
    .end local v3    # "seekPositionUs":J
    .end local v1    # "newPeriodIndex":I
    .end local v11    # "oldTimeline":Lcom/facebook/ads/redexgen/X/Ao;
    .end local v7    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v2    # "periodId":Lcom/facebook/ads/redexgen/X/FL;
    .restart local v0    # "oldTimeline":Lcom/facebook/ads/redexgen/X/Ao;
    .end local v0    # "oldTimeline":Lcom/facebook/ads/redexgen/X/Ao;
    .restart local v11    # "oldTimeline":Lcom/facebook/ads/redexgen/X/Ao;
    :cond_12
    if-eq v6, v10, :cond_13

    .line 28187
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    invoke-virtual {v1, v6}, Lcom/facebook/ads/redexgen/X/AT;->A01(I)Lcom/facebook/ads/redexgen/X/AT;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v1, 0x1d

    if-eq v2, v1, :cond_17

    sget-object v3, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v2, "bxSLNYRWzgoGTszax8Z4I"

    const/4 v1, 0x4

    aput-object v2, v3, v1

    iput-object v4, v0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 28188
    :cond_13
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    .line 28189
    .local v3, "playingPeriodId":Lcom/facebook/ads/redexgen/X/FL;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/FL;->A01()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 28190
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v1, v6, v13, v14}, Lcom/facebook/ads/redexgen/X/AR;->A0L(IJ)Lcom/facebook/ads/redexgen/X/FL;

    move-result-object v10

    .line 28191
    .local v0, "periodId":Lcom/facebook/ads/redexgen/X/FL;
    invoke-virtual {v10, v4}, Lcom/facebook/ads/redexgen/X/FL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 28192
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/FL;->A01()Z

    move-result v1

    if-eqz v1, :cond_14

    const-wide/16 v1, 0x0

    :goto_7
    invoke-direct {v0, v10, v1, v2}, Lcom/facebook/ads/redexgen/X/DT;->A02(Lcom/facebook/ads/redexgen/X/FL;J)J

    move-result-wide v11

    .line 28193
    .local v7, "seekPositionUs":J
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .end local v6    # "playingPeriodUid":Ljava/lang/Object;
    .local v1, "playingPeriodUid":Ljava/lang/Object;
    .end local v5    # "contentPositionUs":J
    .local v3, "contentPositionUs":J
    invoke-virtual/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/AT;->A04(Lcom/facebook/ads/redexgen/X/FL;JJ)Lcom/facebook/ads/redexgen/X/AT;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 28194
    return-void

    .line 28195
    :cond_14
    move-wide v1, v13

    goto :goto_7

    .line 28196
    .end local v6
    .end local v5
    .restart local v1    # "playingPeriodUid":Ljava/lang/Object;
    .restart local v3    # "contentPositionUs":J
    :cond_15
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/DT;->A03:J

    invoke-virtual {v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/AR;->A0U(Lcom/facebook/ads/redexgen/X/FL;J)Z

    move-result v1

    if-nez v1, :cond_16

    .line 28197
    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/DT;->A0j(Z)V

    .line 28198
    :cond_16
    return-void

    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0T(Lcom/facebook/ads/redexgen/X/AI;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 28199
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/DT;->A0I:Lcom/facebook/ads/redexgen/X/AH;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/AH;->A03(I)V

    .line 28200
    move-object/from16 v9, p1

    invoke-direct {v7, v9, v8}, Lcom/facebook/ads/redexgen/X/DT;->A04(Lcom/facebook/ads/redexgen/X/AI;Z)Landroid/util/Pair;

    move-result-object v4

    .line 28201
    .local v0, "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 28202
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/DT;->A00()I

    move-result v0

    new-instance v14, Lcom/facebook/ads/redexgen/X/FL;

    invoke-direct {v14, v0}, Lcom/facebook/ads/redexgen/X/FL;-><init>(I)V

    .line 28203
    .local v10, "periodId":Lcom/facebook/ads/redexgen/X/FL;
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 28204
    .local v8, "periodPositionUs":J
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 28205
    .local v0, "contentPositionUs":J
    const/4 v12, 0x1

    .line 28206
    .local v15, "seekPositionAdjusted":Z
    .local v10, "seekPositionAdjusted":Z
    :goto_0
    const/4 v6, 0x2

    :try_start_0
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/DT;->A07:Lcom/facebook/ads/redexgen/X/FN;

    if-eqz v2, :cond_b

    iget v2, v7, Lcom/facebook/ads/redexgen/X/DT;->A01:I

    if-lez v2, :cond_0

    goto/16 :goto_3

    .line 28207
    :cond_0
    cmp-long v2, v15, v10

    if-nez v2, :cond_1

    .line 28208
    const/4 v2, 0x4

    goto :goto_2

    .line 28209
    :cond_1
    move-wide v4, v15

    .line 28210
    .local v8, "newPeriodPositionUs":J
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    invoke-virtual {v14, v2}, Lcom/facebook/ads/redexgen/X/FL;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 28211
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/AR;->A0G()Lcom/facebook/ads/redexgen/X/AP;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    sget-object v8, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, v8, v2

    const/4 v2, 0x7

    aget-object v2, v8, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v3, v2, :cond_6

    goto :goto_1

    .line 28212
    .end local v10    # "seekPositionAdjusted":Z
    .end local v8    # "newPeriodPositionUs":J
    .end local v0    # "contentPositionUs":J
    .end local v15    # "seekPositionAdjusted":Z
    :cond_2
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 28213
    .local v10, "periodIndex":I
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 28214
    .restart local v0    # "contentPositionUs":J
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/AR;->A0L(IJ)Lcom/facebook/ads/redexgen/X/FL;

    move-result-object v14

    .line 28215
    .local v8, "periodId":Lcom/facebook/ads/redexgen/X/FL;
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/FL;->A01()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 28216
    const-wide/16 v15, 0x0

    sget-object v4, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, v4, v2

    const/4 v2, 0x7

    aget-object v2, v4, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v3, v2, :cond_3

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28217
    .local v15, "periodPositionUs":J
    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v3, "i2wx9svvSsraq7xK4Hb6P8jzWPWvECua"

    const/4 v2, 0x3

    aput-object v3, v4, v2

    const/4 v12, 0x1

    .local v5, "seekPositionAdjusted":Z
    goto :goto_0

    .line 28218
    .end local v5    # "seekPositionAdjusted":Z
    .end local v15    # "periodPositionUs":J
    :cond_4
    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 28219
    .restart local v15    # "periodPositionUs":J
    iget-wide v3, v9, Lcom/facebook/ads/redexgen/X/AI;->A01:J

    cmp-long v2, v3, v10

    if-nez v2, :cond_5

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 28220
    :goto_2
    :try_start_1
    invoke-direct {v7, v2}, Lcom/facebook/ads/redexgen/X/DT;->A0N(I)V

    .line 28221
    invoke-direct {v7, v5, v8, v5}, Lcom/facebook/ads/redexgen/X/DT;->A0o(ZZZ)V

    goto :goto_6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 28222
    .local v15, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    :cond_6
    sget-object v8, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v3, "hQgZLd0P1yiuMRtM5yatEhywmfTa4Rur"

    const/4 v2, 0x3

    aput-object v3, v8, v2

    if-eqz v10, :cond_7

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-eqz v2, :cond_7

    .line 28223
    :try_start_2
    iget-object v3, v10, Lcom/facebook/ads/redexgen/X/AP;->A08:Lcom/facebook/ads/redexgen/X/V3;

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/Ak;

    .line 28224
    invoke-interface {v3, v4, v5, v2}, Lcom/facebook/ads/redexgen/X/V3;->A5b(JLcom/facebook/ads/redexgen/X/Ak;)J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 28225
    :cond_7
    :try_start_3
    invoke-static {v4, v5}, Lcom/facebook/ads/redexgen/X/A3;->A01(J)J

    move-result-wide v10

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "contentPositionUs":J
    .local v12, "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :try_start_4
    iget-wide v2, v2, Lcom/facebook/ads/redexgen/X/AT;->A0A:J

    invoke-static {v2, v3}, Lcom/facebook/ads/redexgen/X/A3;->A01(J)J

    move-result-wide v8

    cmp-long v2, v10, v8

    if-nez v2, :cond_9

    .line 28226
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v15, v2, Lcom/facebook/ads/redexgen/X/AT;->A0A:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 28227
    .end local v15    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    .local v12, "periodPositionUs":J
    iget-object v13, v7, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .end local v15
    .local p0, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    move-wide/from16 v17, v0

    invoke-virtual/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/AT;->A04(Lcom/facebook/ads/redexgen/X/FL;JJ)Lcom/facebook/ads/redexgen/X/AT;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 28228
    if-eqz v12, :cond_8

    .line 28229
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/DT;->A0I:Lcom/facebook/ads/redexgen/X/AH;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/AH;->A04(I)V

    .line 28230
    :cond_8
    return-void

    .line 28231
    .end local v0
    .restart local v12    # "periodPositionUs":J
    :cond_9
    :try_start_5
    invoke-direct {v7, v14, v4, v5}, Lcom/facebook/ads/redexgen/X/DT;->A02(Lcom/facebook/ads/redexgen/X/FL;J)J

    move-result-wide v3

    .line 28232
    .end local v8    # "periodId":Lcom/facebook/ads/redexgen/X/FL;
    .local v9, "newPeriodPositionUs":J
    cmp-long v2, v15, v3

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    .line 28233
    .end local v0
    .restart local v12    # "periodPositionUs":J
    :cond_b
    :goto_3
    iput-object v9, v7, Lcom/facebook/ads/redexgen/X/DT;->A04:Lcom/facebook/ads/redexgen/X/AI;

    goto :goto_6

    .line 28234
    :goto_4
    const/4 v2, 0x1

    :goto_5
    or-int/2addr v12, v2

    .line 28235
    move-wide v15, v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 28236
    :goto_6
    iget-object v13, v7, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    move-wide/from16 v17, v0

    invoke-virtual/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/AT;->A04(Lcom/facebook/ads/redexgen/X/FL;JJ)Lcom/facebook/ads/redexgen/X/AT;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 28237
    if-eqz v12, :cond_c

    .line 28238
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/DT;->A0I:Lcom/facebook/ads/redexgen/X/AH;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/AH;->A04(I)V

    .line 28239
    :cond_c
    return-void

    .line 28240
    :catchall_0
    move-exception v2

    goto :goto_7

    .end local v12    # "periodPositionUs":J
    .restart local v0    # "contentPositionUs":J
    :catchall_1
    move-exception v2

    goto :goto_7

    :catchall_2
    move-exception v2

    .end local v0    # "contentPositionUs":J
    .restart local v12    # "periodPositionUs":J
    :goto_7
    iget-object v13, v7, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    move-wide/from16 v17, v0

    invoke-virtual/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/AT;->A04(Lcom/facebook/ads/redexgen/X/FL;JJ)Lcom/facebook/ads/redexgen/X/AT;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 28241
    if-eqz v12, :cond_d

    .line 28242
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/DT;->A0I:Lcom/facebook/ads/redexgen/X/AH;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/AH;->A04(I)V

    .line 28243
    :cond_d
    throw v2
.end method

.method public static synthetic A0U(Lcom/facebook/ads/redexgen/X/DT;Lcom/facebook/ads/redexgen/X/Af;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 28244
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DT;->A0X(Lcom/facebook/ads/redexgen/X/Af;)V

    return-void
.end method

.method private A0V(Lcom/facebook/ads/redexgen/X/AP;)V
    .locals 7
    .param p1    # Lcom/facebook/ads/redexgen/X/AP;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 28245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0G()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v6

    .line 28246
    .local p0, "newPlayingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    if-eqz v6, :cond_0

    if-ne p1, v6, :cond_1

    .line 28247
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/AP;
    .end local v0
    :cond_0
    return-void

    .line 28248
    :cond_1
    const/4 v4, 0x0

    .line 28249
    .local p1, "enabledRendererCount":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0T:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v0, v0

    new-array v3, v0, [Z

    .line 28250
    .local v0, "rendererWasEnabledFlags":[Z
    const/4 v5, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0T:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v0, v1

    if-ge v5, v0, :cond_6

    .line 28251
    aget-object v2, v1, v5

    .line 28252
    .local v4, "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Wn;->A7Q()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    aput-boolean v0, v3, v5

    .line 28253
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/AP;->A04:Lcom/facebook/ads/redexgen/X/HH;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/HH;->A00(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28254
    add-int/lit8 v4, v4, 0x1

    .line 28255
    :cond_2
    aget-boolean v0, v3, v5

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/AP;->A04:Lcom/facebook/ads/redexgen/X/HH;

    .line 28256
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/HH;->A00(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28257
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Wn;->A8G()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28258
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Wn;->A7V()Lcom/facebook/ads/redexgen/X/Fi;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AP;->A0A:[Lcom/facebook/ads/redexgen/X/Fi;

    aget-object v0, v0, v5

    if-ne v1, v0, :cond_4

    .line 28259
    :cond_3
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/DT;->A0b(Lcom/facebook/ads/redexgen/X/Wn;)V

    .line 28260
    .end local v4    # "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 28261
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 28262
    .end local v6    # "i":I
    :cond_6
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    sget-object v1, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "YeyTuc4hJN2cviDoFTSuVw"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "y3cCzPpceybwtUTWhAu8hu"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/AP;->A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/AP;->A04:Lcom/facebook/ads/redexgen/X/HH;

    .line 28263
    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/AT;->A05(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HH;)Lcom/facebook/ads/redexgen/X/AT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 28264
    invoke-direct {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/DT;->A0p([ZI)V

    .line 28265
    return-void

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0W(Lcom/facebook/ads/redexgen/X/AU;)V
    .locals 1

    .line 28266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0G:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Wq;->AET(Lcom/facebook/ads/redexgen/X/AU;)Lcom/facebook/ads/redexgen/X/AU;

    .line 28267
    return-void
.end method

.method private A0X(Lcom/facebook/ads/redexgen/X/Af;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 28268
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Af;->A0D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28269
    return-void

    .line 28270
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Af;->A04()Lcom/facebook/ads/redexgen/X/Ae;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Af;->A00()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Af;->A09()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ae;->A7q(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28271
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/Af;->A0A(Z)V

    .line 28272
    return-void

    .line 28273
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/Af;->A0A(Z)V

    .line 28274
    throw v0
.end method

.method private A0Y(Lcom/facebook/ads/redexgen/X/Af;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 28275
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Af;->A02()J

    move-result-wide v3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 28276
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DT;->A0Z(Lcom/facebook/ads/redexgen/X/Af;)V

    .line 28277
    :goto_0
    return-void

    .line 28278
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A07:Lcom/facebook/ads/redexgen/X/FN;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A01:I

    if-lez v0, :cond_2

    .line 28279
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/DT;
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0R:Ljava/util/ArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/AG;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/AG;-><init>(Lcom/facebook/ads/redexgen/X/Af;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28280
    :cond_2
    new-instance v4, Lcom/facebook/ads/redexgen/X/AG;

    invoke-direct {v4, p1}, Lcom/facebook/ads/redexgen/X/AG;-><init>(Lcom/facebook/ads/redexgen/X/Af;)V

    .line 28281
    .local p0, "pendingMessageInfo":Lcom/facebook/ads/redexgen/X/AG;
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/DT;->A0r(Lcom/facebook/ads/redexgen/X/AG;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28282
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/DT;->A0R:Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "bdowkwDe22b4JBVUMCxt2Emm6YTTpUJh"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28283
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0R:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    .line 28284
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0A(Z)V

    goto :goto_0
.end method

.method private A0Z(Lcom/facebook/ads/redexgen/X/Af;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 28285
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Af;->A03()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0Q:Lcom/facebook/ads/redexgen/X/IJ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/IJ;->A6q()Landroid/os/Looper;

    move-result-object v0

    if-ne v1, v0, :cond_2

    .line 28286
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DT;->A0X(Lcom/facebook/ads/redexgen/X/Af;)V

    .line 28287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    if-ne v0, v1, :cond_1

    .line 28288
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0Q:Lcom/facebook/ads/redexgen/X/IJ;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/IJ;->AEF(I)Z

    .line 28289
    :cond_1
    :goto_0
    return-void

    .line 28290
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0Q:Lcom/facebook/ads/redexgen/X/IJ;

    const/16 v0, 0xf

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/IJ;->A9b(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private A0a(Lcom/facebook/ads/redexgen/X/Af;)V
    .locals 2

    .line 28291
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Af;->A03()Landroid/os/Handler;

    move-result-object v1

    .line 28292
    .local p0, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/facebook/ads/redexgen/X/AE;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/AE;-><init>(Lcom/facebook/ads/redexgen/X/DT;Lcom/facebook/ads/redexgen/X/Af;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28293
    return-void
.end method

.method private A0b(Lcom/facebook/ads/redexgen/X/Wn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 28294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0G:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Wq;->A08(Lcom/facebook/ads/redexgen/X/Wn;)V

    .line 28295
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DT;->A0c(Lcom/facebook/ads/redexgen/X/Wn;)V

    .line 28296
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Wn;->A4l()V

    .line 28297
    return-void
.end method

.method private A0c(Lcom/facebook/ads/redexgen/X/Wn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 28298
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Wn;->A7Q()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 28299
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Wn;->stop()V

    .line 28300
    :cond_0
    return-void
.end method

.method private A0d(Lcom/facebook/ads/redexgen/X/Ak;)V
    .locals 0

    .line 28301
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/Ak;

    .line 28302
    return-void
.end method

.method private A0e(Lcom/facebook/ads/redexgen/X/V3;)V
    .locals 3

    .line 28303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AR;->A0T(Lcom/facebook/ads/redexgen/X/V3;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28304
    return-void

    .line 28305
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A03:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/AR;->A0M(J)V

    .line 28306
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A09()V

    .line 28307
    return-void
.end method

.method private A0f(Lcom/facebook/ads/redexgen/X/V3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 28308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AR;->A0T(Lcom/facebook/ads/redexgen/X/V3;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28309
    return-void

    .line 28310
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0F()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v2

    .line 28311
    .local p0, "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0G:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wq;->A78()Lcom/facebook/ads/redexgen/X/AU;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AU;->A01:F

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/AP;->A0E(F)V

    .line 28312
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/AP;->A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/AP;->A04:Lcom/facebook/ads/redexgen/X/HH;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0i(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HH;)V

    .line 28313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0P()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0C()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v0

    .line 28315
    .local p1, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A03:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/DT;->A0P(J)V

    .line 28316
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0V(Lcom/facebook/ads/redexgen/X/AP;)V

    .line 28317
    .end local p1    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A09()V

    .line 28318
    return-void
.end method

.method private final A0g(Lcom/facebook/ads/redexgen/X/V3;)V
    .locals 2

    .line 28319
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0Q:Lcom/facebook/ads/redexgen/X/IJ;

    const/16 v0, 0xa

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/IJ;->A9b(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28320
    return-void
.end method

.method private A0h(Lcom/facebook/ads/redexgen/X/FN;ZZ)V
    .locals 3

    .line 28321
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A01:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A01:I

    .line 28322
    invoke-direct {p0, v2, p2, p3}, Lcom/facebook/ads/redexgen/X/DT;->A0o(ZZZ)V

    .line 28323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0J:Lcom/facebook/ads/redexgen/X/AO;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AO;->onPrepared()V

    .line 28324
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DT;->A07:Lcom/facebook/ads/redexgen/X/FN;

    .line 28325
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/DT;->A0N(I)V

    .line 28326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0H:Lcom/facebook/ads/redexgen/X/Wo;

    invoke-interface {p1, v0, v2, p0}, Lcom/facebook/ads/redexgen/X/FN;->AD1(Lcom/facebook/ads/redexgen/X/Wo;ZLcom/facebook/ads/redexgen/X/FM;)V

    .line 28327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0Q:Lcom/facebook/ads/redexgen/X/IJ;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/IJ;->AEF(I)Z

    .line 28328
    return-void
.end method

.method private A0i(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HH;)V
    .locals 3

    .line 28329
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DT;->A0J:Lcom/facebook/ads/redexgen/X/AO;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0T:[Lcom/facebook/ads/redexgen/X/Wn;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/HH;->A01:Lcom/facebook/ads/redexgen/X/HE;

    invoke-interface {v2, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/AO;->ACI([Lcom/facebook/ads/redexgen/X/Wn;Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HE;)V

    .line 28330
    return-void
.end method

.method private A0j(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 28331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0G()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    .line 28332
    .local p0, "periodId":Lcom/facebook/ads/redexgen/X/FL;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AT;->A0A:J

    .line 28333
    const/4 v0, 0x1

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/DT;->A03(Lcom/facebook/ads/redexgen/X/FL;JZ)J

    move-result-wide v4

    .line 28334
    .local v1, "newPositionUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AT;->A0A:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_0

    .line 28335
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v6, v2, Lcom/facebook/ads/redexgen/X/AT;->A01:J

    .line 28336
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/AT;->A04(Lcom/facebook/ads/redexgen/X/FL;JJ)Lcom/facebook/ads/redexgen/X/AT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 28337
    if-eqz p1, :cond_0

    .line 28338
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0I:Lcom/facebook/ads/redexgen/X/AH;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AH;->A04(I)V

    .line 28339
    :cond_0
    return-void
.end method

.method private A0k(Z)V
    .locals 1

    .line 28340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A08:Z

    if-eq v0, p1, :cond_0

    .line 28341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AT;->A06(Z)Lcom/facebook/ads/redexgen/X/AT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 28342
    :cond_0
    return-void
.end method

.method private A0l(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 28343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A09:Z

    .line 28344
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/DT;->A08:Z

    .line 28345
    if-nez p1, :cond_1

    .line 28346
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A0H()V

    .line 28347
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A0J()V

    .line 28348
    :cond_0
    :goto_0
    return-void

    .line 28349
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    const/4 v0, 0x3

    const/4 v3, 0x2

    if-ne v1, v0, :cond_2

    .line 28350
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A0G()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_3

    .line 28351
    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "X2QfJ1e23pCpGilE5nvaFXYxLnWx3Vax"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0Q:Lcom/facebook/ads/redexgen/X/IJ;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/IJ;->AEF(I)Z

    goto :goto_0

    .line 28352
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    if-ne v0, v3, :cond_0

    .line 28353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0Q:Lcom/facebook/ads/redexgen/X/IJ;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/IJ;->AEF(I)Z

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0m(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 28354
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0B:Z

    .line 28355
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AR;->A0V(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28356
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0j(Z)V

    .line 28357
    :cond_0
    return-void
.end method

.method private A0n(ZZ)V
    .locals 3

    .line 28358
    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, p1}, Lcom/facebook/ads/redexgen/X/DT;->A0o(ZZZ)V

    .line 28359
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0I:Lcom/facebook/ads/redexgen/X/AH;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A01:I

    .line 28360
    add-int/2addr v0, p2

    .line 28361
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AH;->A03(I)V

    .line 28362
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A01:I

    .line 28363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0J:Lcom/facebook/ads/redexgen/X/AO;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AO;->ACB()V

    .line 28364
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/DT;->A0N(I)V

    .line 28365
    return-void
.end method

.method private A0o(ZZZ)V
    .locals 18

    .line 28366
    move-object/from16 v2, p0

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/DT;->A0Q:Lcom/facebook/ads/redexgen/X/IJ;

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/IJ;->ADc(I)V

    .line 28367
    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/facebook/ads/redexgen/X/DT;->A09:Z

    .line 28368
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0G:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wq;->A06()V

    .line 28369
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A03:J

    .line 28370
    iget-object v9, v2, Lcom/facebook/ads/redexgen/X/DT;->A0C:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v8, v9

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v0, v9, v7

    .line 28371
    .local v0, "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    :try_start_0
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0b(Lcom/facebook/ads/redexgen/X/Wn;)V

    goto :goto_2
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/A9; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 28372
    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v6

    .line 28373
    .local p0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x0

    const/16 v1, 0x15

    const/16 v0, 0xf

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/DT;->A06(III)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x8a

    const/16 v1, 0xc

    const/16 v0, 0x7b

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/DT;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28374
    .end local p0    # "e":Ljava/lang/Exception;
    .end local v0    # "renderer":Lcom/facebook/ads/redexgen/X/Wn;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 28375
    :cond_0
    new-array v0, v5, [Lcom/facebook/ads/redexgen/X/Wn;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0C:[Lcom/facebook/ads/redexgen/X/Wn;

    .line 28376
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    sget-object v3, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v3, v0

    const/4 v0, 0x2

    aget-object v3, v3, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_e

    sget-object v3, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "2WNzaDjkqcOaPFAy0QOPwI"

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const-string v1, "unAKX8spYNQMyMddShLfR5"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/AR;->A0O(Z)V

    .line 28377
    invoke-direct {v2, v5}, Lcom/facebook/ads/redexgen/X/DT;->A0k(Z)V

    .line 28378
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 28379
    iput-object v1, v2, Lcom/facebook/ads/redexgen/X/DT;->A04:Lcom/facebook/ads/redexgen/X/AI;

    .line 28380
    :cond_1
    if-eqz p3, :cond_4

    .line 28381
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ao;->A01:Lcom/facebook/ads/redexgen/X/Ao;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/AR;->A0N(Lcom/facebook/ads/redexgen/X/Ao;)V

    .line 28382
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    sget-object v3, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0x12

    if-eq v3, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v3, "oYGfQB8mGDj6jmVX6XAe4nZE0DoRm7Og"

    const/4 v0, 0x6

    aput-object v3, v4, v0

    check-cast v6, Lcom/facebook/ads/redexgen/X/AG;

    .line 28383
    .local v2, "pendingMessageInfo":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/redexgen/X/Af;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Af;->A0A(Z)V

    .line 28384
    .end local v2    # "pendingMessageInfo":Lcom/facebook/ads/redexgen/X/AG;
    goto :goto_3

    .line 28385
    :cond_3
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 28386
    iput v5, v2, Lcom/facebook/ads/redexgen/X/DT;->A00:I

    .line 28387
    :cond_4
    new-instance v6, Lcom/facebook/ads/redexgen/X/AT;

    .line 28388
    if-eqz p3, :cond_d

    sget-object v7, Lcom/facebook/ads/redexgen/X/Ao;->A01:Lcom/facebook/ads/redexgen/X/Ao;

    .line 28389
    :goto_4
    if-eqz p3, :cond_c

    move-object v8, v1

    .line 28390
    :goto_5
    if-eqz p2, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/DT;->A00()I

    move-result v0

    new-instance v9, Lcom/facebook/ads/redexgen/X/FL;

    invoke-direct {v9, v0}, Lcom/facebook/ads/redexgen/X/FL;-><init>(I)V

    .line 28391
    :goto_6
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_a

    move-wide v10, v12

    .line 28392
    :goto_7
    if-eqz p2, :cond_9

    :goto_8
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget v14, v0, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    const/4 v15, 0x0

    .line 28393
    if-eqz p3, :cond_7

    sget-object v3, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A04:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    .line 28394
    :goto_9
    if-eqz p3, :cond_6

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A0O:Lcom/facebook/ads/redexgen/X/HH;

    :goto_a
    move-object/from16 v16, v3

    move-object/from16 v17, v0

    invoke-direct/range {v6 .. v17}, Lcom/facebook/ads/redexgen/X/AT;-><init>(Lcom/facebook/ads/redexgen/X/Ao;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FL;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HH;)V

    iput-object v6, v2, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    .line 28395
    if-eqz p1, :cond_5

    .line 28396
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A07:Lcom/facebook/ads/redexgen/X/FN;

    if-eqz v0, :cond_5

    .line 28397
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/FN;->ADZ(Lcom/facebook/ads/redexgen/X/FM;)V

    .line 28398
    iput-object v1, v2, Lcom/facebook/ads/redexgen/X/DT;->A07:Lcom/facebook/ads/redexgen/X/FN;

    .line 28399
    :cond_5
    return-void

    .line 28400
    :cond_6
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/HH;

    goto :goto_a

    .line 28401
    :cond_7
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    sget-object v4, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v0, 0x12

    if-eq v4, v0, :cond_8

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/AT;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    goto :goto_9

    :cond_8
    sget-object v5, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v4, "udHBd6VluCWpjwypGpbQkm44C5lEXr7W"

    const/4 v0, 0x1

    aput-object v4, v5, v0

    const-string v4, "ikIjUWR3chEMULYYaopllYxVSgtPleKx"

    const/4 v0, 0x2

    aput-object v4, v5, v0

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/AT;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    goto :goto_9

    .line 28402
    :cond_9
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v12, v0, Lcom/facebook/ads/redexgen/X/AT;->A01:J

    goto :goto_8

    .line 28403
    :cond_a
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/AT;->A0A:J

    goto :goto_7

    .line 28404
    :cond_b
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    goto :goto_6

    .line 28405
    :cond_c
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/AT;->A07:Ljava/lang/Object;

    goto :goto_5

    .line 28406
    :cond_d
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    goto :goto_4

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0p([ZI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 28407
    new-array v0, p2, [Lcom/facebook/ads/redexgen/X/Wn;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0C:[Lcom/facebook/ads/redexgen/X/Wn;

    .line 28408
    const/4 v4, 0x0

    .line 28409
    .local p0, "enabledRendererCount":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0G()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v3

    .line 28410
    .local p1, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    const/4 v2, 0x0

    .local p2, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0T:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 28411
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AP;->A04:Lcom/facebook/ads/redexgen/X/HH;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/HH;->A00(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28412
    aget-boolean v1, p1, v2

    add-int/lit8 v0, v4, 0x1

    .end local p0    # "enabledRendererCount":I
    .local v4, "enabledRendererCount":I
    invoke-direct {p0, v2, v1, v4}, Lcom/facebook/ads/redexgen/X/DT;->A0O(IZI)V

    move v4, v0

    .line 28413
    .end local v4    # "enabledRendererCount":I
    .restart local p0    # "enabledRendererCount":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28414
    .end local p2    # "i":I
    :cond_1
    return-void
.end method

.method private A0q()Z
    .locals 6

    .line 28415
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0G()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v5

    .line 28416
    .local p0, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/AQ;->A01:J

    .line 28417
    .local v0, "playingPeriodDurationUs":J
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AT;->A0A:J

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    if-eqz v0, :cond_1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AP;->A06:Z

    if-nez v0, :cond_0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    .line 28418
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FL;->A01()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 28419
    :goto_0
    return v0

    .line 28420
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0r(Lcom/facebook/ads/redexgen/X/AG;)Z
    .locals 7

    .line 28421
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AG;->A02:Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 28422
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/redexgen/X/Af;

    .line 28423
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Af;->A08()Lcom/facebook/ads/redexgen/X/Ao;

    move-result-object v5

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/redexgen/X/Af;

    .line 28424
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Af;->A01()I

    move-result v3

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/redexgen/X/Af;

    .line 28425
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Af;->A02()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/A3;->A00(J)J

    move-result-wide v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AI;

    invoke-direct {v0, v5, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/AI;-><init>(Lcom/facebook/ads/redexgen/X/Ao;IJ)V

    .line 28426
    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/DT;->A04(Lcom/facebook/ads/redexgen/X/AI;Z)Landroid/util/Pair;

    move-result-object v3

    .line 28427
    .local p0, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-nez v3, :cond_2

    .line 28428
    return v4

    .line 28429
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AG;->A02:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A04(Ljava/lang/Object;)I

    move-result v1

    .line 28430
    .local p0, "index":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 28431
    return v4

    .line 28432
    :cond_1
    iput v1, p1, Lcom/facebook/ads/redexgen/X/AG;->A00:I

    goto :goto_0

    .line 28433
    :cond_2
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 28434
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 28435
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 28436
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0L:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v4, v3, v0, v6}, Lcom/facebook/ads/redexgen/X/Ao;->A0A(ILcom/facebook/ads/redexgen/X/Am;Z)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Am;->A03:Ljava/lang/Object;

    .line 28437
    invoke-virtual {p1, v5, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/AG;->A01(IJLjava/lang/Object;)V

    .line 28438
    .end local p0    # "index":I
    .end local p0
    :goto_0
    return v6
.end method

.method private A0s(Lcom/facebook/ads/redexgen/X/Wn;)Z
    .locals 2

    .line 28439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0H()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v1

    .line 28440
    .local p0, "readingPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AP;->A06:Z

    if-eqz v0, :cond_0

    .line 28441
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Wn;->A7w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 28442
    :goto_0
    return v0

    .line 28443
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0t(Lcom/facebook/ads/redexgen/X/FL;JLcom/facebook/ads/redexgen/X/AP;)Z
    .locals 5

    .line 28444
    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/FL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p4, Lcom/facebook/ads/redexgen/X/AP;->A06:Z

    if-eqz v0, :cond_1

    .line 28445
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0L:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A09(ILcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Am;

    .line 28446
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0L:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/Am;->A04(J)I

    move-result v1

    .line 28447
    .local p0, "nextAdGroupIndex":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0L:Lcom/facebook/ads/redexgen/X/Am;

    .line 28448
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Am;->A09(I)J

    move-result-wide v3

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AQ;->A02:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 28449
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 28450
    .end local p0    # "nextAdGroupIndex":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private A0u(Z)Z
    .locals 7

    .line 28451
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0C:[Lcom/facebook/ads/redexgen/X/Wn;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 28452
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A0q()Z

    move-result v0

    return v0

    .line 28453
    :cond_0
    const/4 v6, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "XitCw2lYTMNoWfZ3MNfhmS"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "pjSmPGutCkFid20LDJR8Tk"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-nez p1, :cond_2

    .line 28454
    return v6

    .line 28455
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/AT;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A08:Z

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 28456
    return v3

    .line 28457
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0K:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0F()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    .line 28458
    .local p1, "loadingHolder":Lcom/facebook/ads/redexgen/X/AP;
    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "c9QtbAseiMx42ehTAZ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A05:Z

    xor-int/2addr v0, v3

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/AP;->A0C(Z)J

    move-result-wide v3

    .line 28459
    .local v0, "bufferedPositionUs":J
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DT;->A0J:Lcom/facebook/ads/redexgen/X/AO;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A03:J

    .line 28460
    invoke-virtual {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/AP;->A08(J)J

    move-result-wide v0

    sub-long/2addr v3, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0G:Lcom/facebook/ads/redexgen/X/Wq;

    .line 28461
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wq;->A78()Lcom/facebook/ads/redexgen/X/AU;

    move-result-object v0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/AU;->A01:F

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A09:Z

    .line 28462
    invoke-interface {v2, v3, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/AO;->AEc(JFZ)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v6, 0x1

    .line 28463
    :cond_5
    return v6

    .line 28464
    .local p1, "loadingHolder":Lcom/facebook/ads/redexgen/X/AP;
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "5BPuibQqZ5NKjWZyuTION1z1lHkA3o6b"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "lue4BzZmQF8ChJf2GK4Pk4NwU097v1o6"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A05:Z

    xor-int/2addr v0, v3

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/AP;->A0C(Z)J

    move-result-wide v3

    .line 28465
    .local v0, "bufferedPositionUs":J
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    goto :goto_0
.end method

.method public static A0v(Lcom/facebook/ads/redexgen/X/HD;)[Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 28466
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/HD;->length()I

    move-result v5

    .line 28467
    .local p0, "length":I
    :goto_0
    new-array v4, v5, [Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 28468
    .local v5, "formats":[Lcom/facebook/ads/internal/exoplayer2/Format;
    const/4 v3, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 28469
    invoke-interface {p0, v3}, Lcom/facebook/ads/redexgen/X/HD;->A6d(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    aput-object v0, v4, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_1

    .line 28470
    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "cHoAaTwhCyKnC5gIlgOheFkD17ImOLE4"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "NdVO49IoL7wvUQC4on3mokgCd3AJvc50"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 28471
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28472
    .end local v4    # "i":I
    :cond_2
    return-object v4
.end method


# virtual methods
.method public final A0w()Landroid/os/Looper;
    .locals 1

    .line 28473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0F:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized A0x()V
    .locals 3

    monitor-enter p0

    .line 28474
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0A:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28475
    monitor-exit p0

    return-void

    .line 28476
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0Q:Lcom/facebook/ads/redexgen/X/IJ;

    const/4 v0, 0x7

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/IJ;->AEF(I)Z

    .line 28477
    const/4 v1, 0x0

    .line 28478
    .local p0, "wasInterrupted":Z
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0A:Z

    if-nez v0, :cond_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28479
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28480
    .end local v1
    .local v0, "e":Ljava/lang/InterruptedException;
    :catch_0
    const/4 v1, 0x1

    .line 28481
    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 28482
    :cond_1
    if-eqz v1, :cond_2

    .line 28483
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28484
    :cond_2
    monitor-exit p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "ci8xVCbgf6WZorAiSg"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28485
    .end local p0    # "wasInterrupted":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0y(Lcom/facebook/ads/redexgen/X/Ao;IJ)V
    .locals 3

    .line 28486
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DT;->A0Q:Lcom/facebook/ads/redexgen/X/IJ;

    new-instance v1, Lcom/facebook/ads/redexgen/X/AI;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/AI;-><init>(Lcom/facebook/ads/redexgen/X/Ao;IJ)V

    .line 28487
    const/4 v0, 0x3

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/IJ;->A9b(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 28488
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28489
    return-void
.end method

.method public final A0z(Lcom/facebook/ads/redexgen/X/FN;ZZ)V
    .locals 2

    .line 28490
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0Q:Lcom/facebook/ads/redexgen/X/IJ;

    .line 28491
    const/4 v0, 0x0

    invoke-interface {v1, v0, p2, p3, p1}, Lcom/facebook/ads/redexgen/X/IJ;->A9a(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 28492
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28493
    return-void
.end method

.method public final A10(Z)V
    .locals 3

    .line 28494
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DT;->A0Q:Lcom/facebook/ads/redexgen/X/IJ;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {v2, v0, p1, v1}, Lcom/facebook/ads/redexgen/X/IJ;->A9Z(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28495
    return-void
.end method

.method public final A11(Z)V
    .locals 3

    .line 28496
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DT;->A0Q:Lcom/facebook/ads/redexgen/X/IJ;

    const/4 v1, 0x0

    const/4 v0, 0x6

    invoke-interface {v2, v0, p1, v1}, Lcom/facebook/ads/redexgen/X/IJ;->A9Z(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28497
    return-void
.end method

.method public final bridge synthetic AAD(Lcom/facebook/ads/redexgen/X/Fk;)V
    .locals 0

    .line 28498
    check-cast p1, Lcom/facebook/ads/redexgen/X/V3;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DT;->A0g(Lcom/facebook/ads/redexgen/X/V3;)V

    return-void
.end method

.method public final ABZ(Lcom/facebook/ads/redexgen/X/AU;)V
    .locals 2

    .line 28499
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0E:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28500
    iget v0, p1, Lcom/facebook/ads/redexgen/X/AU;->A01:F

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0L(F)V

    .line 28501
    return-void
.end method

.method public final ABh(Lcom/facebook/ads/redexgen/X/V3;)V
    .locals 2

    .line 28502
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0Q:Lcom/facebook/ads/redexgen/X/IJ;

    const/16 v0, 0x9

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/IJ;->A9b(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28503
    return-void
.end method

.method public final AC6(Lcom/facebook/ads/redexgen/X/FN;Lcom/facebook/ads/redexgen/X/Ao;Ljava/lang/Object;)V
    .locals 3

    .line 28504
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DT;->A0Q:Lcom/facebook/ads/redexgen/X/IJ;

    new-instance v1, Lcom/facebook/ads/redexgen/X/AF;

    invoke-direct {v1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/AF;-><init>(Lcom/facebook/ads/redexgen/X/FN;Lcom/facebook/ads/redexgen/X/Ao;Ljava/lang/Object;)V

    .line 28505
    const/16 v0, 0x8

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/IJ;->A9b(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 28506
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28507
    return-void
.end method

.method public final declared-synchronized AEH(Lcom/facebook/ads/redexgen/X/Af;)V
    .locals 4

    monitor-enter p0

    .line 28508
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0A:Z

    if-eqz v0, :cond_0

    .line 28509
    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DT;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x32

    const/16 v1, 0x25

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DT;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28510
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0A(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28511
    monitor-exit p0

    return-void

    .line 28512
    .end local v0
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0Q:Lcom/facebook/ads/redexgen/X/IJ;

    const/16 v0, 0xe

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/IJ;->A9b(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28513
    monitor-exit p0

    return-void

    .line 28514
    .end local v2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    .line 28515
    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DT;->A06(III)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 28516
    return v6

    .line 28517
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/ads/redexgen/X/FN;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0h(Lcom/facebook/ads/redexgen/X/FN;ZZ)V

    goto :goto_5

    .line 28518
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0l(Z)V

    goto :goto_5

    .line 28519
    :pswitch_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A07()V

    goto :goto_5

    .line 28520
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/AI;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0T(Lcom/facebook/ads/redexgen/X/AI;)V

    goto :goto_5

    .line 28521
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/AU;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0W(Lcom/facebook/ads/redexgen/X/AU;)V

    goto :goto_5

    .line 28522
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0d(Lcom/facebook/ads/redexgen/X/Ak;)V

    goto :goto_5

    .line 28523
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/DT;->A0n(ZZ)V

    goto :goto_5

    .line 28524
    :pswitch_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A0D()V

    .line 28525
    return v3

    .line 28526
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/AF;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0S(Lcom/facebook/ads/redexgen/X/AF;)V

    goto :goto_5

    .line 28527
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/V3;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0f(Lcom/facebook/ads/redexgen/X/V3;)V

    goto :goto_5

    .line 28528
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/V3;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0e(Lcom/facebook/ads/redexgen/X/V3;)V

    goto :goto_5

    .line 28529
    :pswitch_b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A0E()V

    goto :goto_5

    .line 28530
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0M(I)V

    goto :goto_5

    .line 28531
    :pswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0m(Z)V

    goto :goto_5

    .line 28532
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Af;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0Y(Lcom/facebook/ads/redexgen/X/Af;)V

    goto :goto_5

    .line 28533
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Af;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0a(Lcom/facebook/ads/redexgen/X/Af;)V

    .line 28534
    :goto_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A0A()V

    goto :goto_6
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/A9; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 28535
    .end local v0
    :catch_0
    move-exception v4

    .line 28536
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0x7d

    const/16 v1, 0xd

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DT;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28537
    invoke-direct {p0, v6, v6}, Lcom/facebook/ads/redexgen/X/DT;->A0n(ZZ)V

    .line 28538
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0E:Landroid/os/Handler;

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/A9;->A00(Ljava/io/IOException;)Lcom/facebook/ads/redexgen/X/A9;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28539
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A0A()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 28540
    :catch_1
    move-exception v4

    .line 28541
    .local v0, "e":Lcom/facebook/ads/redexgen/X/A9;
    const/16 v2, 0x6e

    const/16 v1, 0xf

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DT;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28542
    invoke-direct {p0, v6, v6}, Lcom/facebook/ads/redexgen/X/DT;->A0n(ZZ)V

    .line 28543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A0E:Landroid/os/Handler;

    invoke-virtual {v0, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28544
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A0A()V

    goto :goto_6

    .line 28545
    :catch_2
    move-exception v4

    .line 28546
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v2, 0x57

    const/16 v1, 0x17

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DT;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28547
    invoke-direct {p0, v6, v6}, Lcom/facebook/ads/redexgen/X/DT;->A0n(ZZ)V

    .line 28548
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A0E:Landroid/os/Handler;

    .line 28549
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/A9;->A02(Ljava/lang/RuntimeException;)Lcom/facebook/ads/redexgen/X/A9;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 28550
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_5

    .line 28551
    sget-object v2, Lcom/facebook/ads/redexgen/X/DT;->A0W:[Ljava/lang/String;

    const-string v1, "BLVAUEtDSJNWXrvjpr"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A0A()V

    .line 28552
    :goto_6
    return v3

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
