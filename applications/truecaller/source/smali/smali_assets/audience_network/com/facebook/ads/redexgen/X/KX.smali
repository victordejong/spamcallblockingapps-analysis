.class public final Lcom/facebook/ads/redexgen/X/KX;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/KW;
    }
.end annotation


# static fields
.field public static A06:[B

.field public static final A07:Lcom/facebook/ads/redexgen/X/M8;

.field public static final A08:Ljava/util/concurrent/Executor;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/KW;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/XT;

.field public final A04:Lcom/facebook/ads/redexgen/X/KY;

.field public final A05:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 41614
    invoke-static {}, Lcom/facebook/ads/redexgen/X/KX;->A0A()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/M8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/M8;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/KX;->A07:Lcom/facebook/ads/redexgen/X/M8;

    .line 41615
    sget-object v0, Lcom/facebook/ads/redexgen/X/KX;->A07:Lcom/facebook/ads/redexgen/X/M8;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KX;->A08:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 2

    .line 41616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41617
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A00:J

    .line 41618
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 41619
    invoke-static {}, Lcom/facebook/ads/redexgen/X/KY;->A00()Lcom/facebook/ads/redexgen/X/KY;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A04:Lcom/facebook/ads/redexgen/X/KY;

    .line 41620
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Kb;->A01(Lcom/facebook/ads/redexgen/X/8J;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A05:Ljava/lang/String;

    .line 41621
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/KX;)J
    .locals 1

    .line 41622
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/KX;)Lcom/facebook/ads/redexgen/X/XT;
    .locals 0

    .line 41623
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/KX;)Lcom/facebook/ads/redexgen/X/KY;
    .locals 0

    .line 41624
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KX;->A04:Lcom/facebook/ads/redexgen/X/KY;

    return-object p0
.end method

.method private A03(JLcom/facebook/ads/redexgen/X/KU;)Lcom/facebook/ads/redexgen/X/Qg;
    .locals 1

    .line 41625
    new-instance v0, Lcom/facebook/ads/redexgen/X/TZ;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/facebook/ads/redexgen/X/TZ;-><init>(Lcom/facebook/ads/redexgen/X/KX;Lcom/facebook/ads/redexgen/X/KU;J)V

    return-object v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/KX;JLcom/facebook/ads/redexgen/X/KU;)Lcom/facebook/ads/redexgen/X/Qg;
    .locals 0

    .line 41626
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KX;->A03(JLcom/facebook/ads/redexgen/X/KU;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object p0

    return-object p0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KX;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x50

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/KX;)Ljava/lang/String;
    .locals 0

    .line 41627
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KX;->A05:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/KX;)Ljava/util/Map;
    .locals 0

    .line 41628
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KX;->A02:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/KX;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 41629
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KX;->A02:Ljava/util/Map;

    return-object p1
.end method

.method private A09()V
    .locals 6

    .line 41630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qx;->A0A(Lcom/facebook/ads/redexgen/X/8J;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41631
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/KX;
    :cond_0
    return-void

    .line 41632
    :cond_1
    const/16 v2, 0x8

    const/4 v1, 0x5

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A05(III)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/String;)V

    .line 41633
    .local p0, "ex":Lcom/facebook/ads/redexgen/X/8n;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/8n;->A03(I)V

    .line 41634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 41635
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/8m;->A1k:I

    .line 41636
    const/16 v2, 0x6b

    const/4 v1, 0x7

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 41637
    return-void
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x7c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KX;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x3dt
        0x38t
        0x39t
        0x3bt
        0x3bt
        0x38t
        0x3bt
        0x3at
        0x7at
        0x69t
        0x6bt
        0x77t
        0x75t
        0x4et
        0x41t
        0x44t
        0x48t
        0x43t
        0x59t
        0x52t
        0x5ft
        0x48t
        0x5ct
        0x58t
        0x48t
        0x5et
        0x59t
        0x52t
        0x44t
        0x49t
        0x62t
        0x58t
        0xbt
        0x79t
        0x65t
        0x11t
        0xbt
        0x64t
        0x65t
        0xat
        0x6ct
        0x63t
        0x66t
        0x66t
        0xat
        0x58t
        0x4ft
        0x49t
        0x4ft
        0x43t
        0x5ct
        0x4ft
        0x4et
        0x14t
        0x35t
        0x7at
        0x1ct
        0x33t
        0x36t
        0x36t
        0x7at
        0x3ft
        0x28t
        0x28t
        0x35t
        0x28t
        0x7at
        0x39t
        0x35t
        0x3et
        0x3ft
        0x7at
        0x1t
        0x7ft
        0x29t
        0x7t
        0x7at
        0x7ft
        0x29t
        0x26t
        0x7t
        0x48t
        0x6t
        0xdt
        0x1ct
        0x1ft
        0x7t
        0x1at
        0x3t
        0x48t
        0xbt
        0x7t
        0x6t
        0x6t
        0xdt
        0xbt
        0x1ct
        0x1t
        0x7t
        0x6t
        0x58t
        0x5at
        0x51t
        0x5at
        0x4dt
        0x56t
        0x5ct
        0x28t
        0x23t
        0x32t
        0x31t
        0x29t
        0x34t
        0x2dt
        0x37t
        0x36t
        0x1ft
        0x30t
        0x35t
        0x35t
        0x11t
        0x36t
        0x36t
        0x32t
    .end array-data
.end method

.method private A0B(ILjava/lang/String;)V
    .locals 6

    const/16 v2, 0x72

    const/16 v1, 0xa

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A05(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x25

    const/16 v1, 0x10

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A05(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/KI;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41638
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    .line 41639
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const/16 v2, 0x35

    const/16 v1, 0x1a

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 41640
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/KI;->A04(Ljava/lang/String;Ljava/lang/String;)V

    .line 41641
    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/K3;)V
    .locals 1

    .line 41642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A01:Lcom/facebook/ads/redexgen/X/KW;

    if-eqz v0, :cond_0

    .line 41643
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/KW;->AAW(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 41644
    :cond_0
    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/K3;)V
    .locals 1

    .line 41645
    new-instance v0, Lcom/facebook/ads/redexgen/X/TX;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/TX;-><init>(Lcom/facebook/ads/redexgen/X/KX;Lcom/facebook/ads/redexgen/X/K3;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M1;->A00(Ljava/lang/Runnable;)V

    .line 41646
    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/KX;Lcom/facebook/ads/redexgen/X/K3;)V
    .locals 0

    .line 41647
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KX;->A0C(Lcom/facebook/ads/redexgen/X/K3;)V

    return-void
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/KX;Lcom/facebook/ads/redexgen/X/K3;)V
    .locals 0

    .line 41648
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KX;->A0D(Lcom/facebook/ads/redexgen/X/K3;)V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/KX;Lcom/facebook/ads/redexgen/X/TW;)V
    .locals 0

    .line 41649
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KX;->A0J(Lcom/facebook/ads/redexgen/X/TW;)V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/KX;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/KU;)V
    .locals 0

    .line 41650
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/KX;->A0L(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/KU;)V

    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/KX;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/KU;)V
    .locals 0

    .line 41651
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/KX;->A0M(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/KU;)V

    return-void
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/TW;)V
    .locals 1

    .line 41652
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A01:Lcom/facebook/ads/redexgen/X/KW;

    if-eqz v0, :cond_0

    .line 41653
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/KW;->ACC(Lcom/facebook/ads/redexgen/X/TW;)V

    .line 41654
    :cond_0
    return-void
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/TW;)V
    .locals 1

    .line 41655
    new-instance v0, Lcom/facebook/ads/redexgen/X/TY;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/TY;-><init>(Lcom/facebook/ads/redexgen/X/KX;Lcom/facebook/ads/redexgen/X/TW;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M1;->A00(Ljava/lang/Runnable;)V

    .line 41656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A04()Lcom/facebook/ads/redexgen/X/8P;

    move-result-object v0

    .line 41658
    .local p0, "syncModule":Lcom/facebook/ads/redexgen/X/8P;
    if-eqz v0, :cond_0

    .line 41659
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8P;->A5R()V

    .line 41660
    .end local p0    # "syncModule":Lcom/facebook/ads/redexgen/X/8P;
    :cond_0
    return-void
.end method

.method private A0L(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/KU;)V
    .locals 10

    move-object v0, p0

    .line 41661
    :try_start_0
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/KX;->A04:Lcom/facebook/ads/redexgen/X/KY;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2, v1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KY;->A06(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Ka;

    move-result-object v6

    .line 41662
    .local p0, "serverResponse":Lcom/facebook/ads/redexgen/X/Ka;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Ka;->A00()Lcom/facebook/ads/redexgen/X/94;

    move-result-object v7

    .line 41663
    .local v6, "placement":Lcom/facebook/ads/redexgen/X/94;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v2

    .line 41664
    .local v7, "sdkContext":Lcom/facebook/ads/redexgen/X/XS;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8J;->A01()Lcom/facebook/ads/redexgen/X/8K;

    move-result-object v1

    invoke-interface {v1, v2, p1}, Lcom/facebook/ads/redexgen/X/8K;->A8k(Lcom/facebook/ads/redexgen/X/XS;Ljava/lang/String;)V

    .line 41665
    const/4 v5, 0x1

    if-eqz v7, :cond_0

    .line 41666
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/JD;->A0O(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/JD;

    move-result-object v2

    .line 41667
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/94;->A08()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/JD;->A24(Ljava/lang/String;)V

    .line 41668
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/8l;->A9M()V

    .line 41669
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v2

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/94;->A06()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/2A;->A0O(Lcom/facebook/ads/redexgen/X/XS;Ljava/lang/String;)V

    .line 41670
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/94;->A05()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v1

    .line 41671
    .local v3, "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/95;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/95;->A0B()J

    move-result-wide v1

    .line 41672
    invoke-static {v1, v2, p4}, Lcom/facebook/ads/redexgen/X/KT;->A05(JLcom/facebook/ads/redexgen/X/KU;)V

    .line 41673
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    sget-object v1, Lcom/facebook/ads/redexgen/X/KX;->A08:Ljava/util/concurrent/Executor;

    invoke-static {v2, v1, v7}, Lcom/facebook/ads/redexgen/X/MJ;->A01(Lcom/facebook/ads/redexgen/X/XT;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/94;)V

    .line 41674
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x1e

    const/4 v2, 0x7

    const/16 v1, 0x7b

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/KX;->A05(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41675
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LZ;->A02()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v8, v1}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/String;)V

    .line 41676
    .local p4, "reactNativeException":Lcom/facebook/ads/redexgen/X/8n;
    invoke-virtual {v8, v5}, Lcom/facebook/ads/redexgen/X/8n;->A04(I)V

    .line 41677
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/8n;->A08(Z)V

    .line 41678
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 41679
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v4

    const/16 v3, 0x64

    const/4 v2, 0x7

    const/16 v1, 0x6f

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/KX;->A05(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8m;->A1K:I

    .line 41680
    invoke-interface {v4, v2, v1, v8}, Lcom/facebook/ads/redexgen/X/8l;->A9G(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 41681
    .end local v3    # "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/95;
    .end local p4    # "reactNativeException":Lcom/facebook/ads/redexgen/X/8n;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/KV;->A00:[I

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Ka;->A01()Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/KZ;->ordinal()I

    move-result v1

    aget v2, v2, v1

    if-eq v2, v5, :cond_3

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    .line 41682
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_RESPONSE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 41683
    .local v7, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 41684
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/KX;->A00:J

    .line 41685
    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/Ly;->A01(J)J

    move-result-wide v5

    .line 41686
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v7

    .line 41687
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v9

    .line 41688
    move-object v8, p1

    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/0R;->A2j(JILjava/lang/String;Z)V

    .line 41689
    invoke-static {v3, p1}, Lcom/facebook/ads/redexgen/X/K3;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/KX;->A0D(Lcom/facebook/ads/redexgen/X/K3;)V

    goto/16 :goto_3

    .line 41690
    .end local v7    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_1
    check-cast v6, Lcom/facebook/ads/redexgen/X/TV;

    .line 41691
    .local p2, "serverResponseError":Lcom/facebook/ads/redexgen/X/TV;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/TV;->A04()Ljava/lang/String;

    move-result-object v8

    .line 41692
    .local v3, "errorMsg":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/TV;->A03()I

    move-result v2

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->ERROR_MESSAGE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 41693
    invoke-static {v2, v1}, Lcom/facebook/ads/internal/protocol/AdErrorType;->adErrorTypeFromCode(ILcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v3

    .line 41694
    .local p4, "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/TV;->A03()I

    move-result v1

    invoke-direct {v0, v1, v8}, Lcom/facebook/ads/redexgen/X/KX;->A0B(ILjava/lang/String;)V

    .line 41695
    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    move-object v8, p1

    .line 41696
    .local v0, "finalErrMessage":Ljava/lang/String;
    :goto_0
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 41697
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/KX;->A00:J

    .line 41698
    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/Ly;->A01(J)J

    move-result-wide v5

    .line 41699
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v7

    .line 41700
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v9

    .line 41701
    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/0R;->A2j(JILjava/lang/String;Z)V

    .line 41702
    invoke-static {v3, v8}, Lcom/facebook/ads/redexgen/X/K3;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/KX;->A0D(Lcom/facebook/ads/redexgen/X/K3;)V

    goto/16 :goto_3

    .line 41703
    .end local p2    # "serverResponseError":Lcom/facebook/ads/redexgen/X/TV;
    .end local v3    # "errorMsg":Ljava/lang/String;
    .end local p4    # "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local v0    # "finalErrMessage":Ljava/lang/String;
    :cond_3
    move-object v5, v6

    check-cast v5, Lcom/facebook/ads/redexgen/X/TW;

    .line 41704
    .local p2, "ads":Lcom/facebook/ads/redexgen/X/TW;
    if-eqz v7, :cond_5

    .line 41705
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/94;->A05()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v1

    .line 41706
    .local v3, "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/95;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/95;->A0E()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41707
    invoke-static {p1, p4}, Lcom/facebook/ads/redexgen/X/KT;->A07(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/KU;)V

    .line 41708
    :cond_4
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KX;->A02:Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 41709
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/KX;->A02:Ljava/util/Map;

    const/16 v3, 0xd

    const/16 v2, 0x11

    const/16 v1, 0x5d

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/KX;->A05(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 41710
    .local p4, "clientChallenge":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Ka;->A02()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 41711
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 41712
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 41713
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8J;->A01()Lcom/facebook/ads/redexgen/X/8K;

    move-result-object v3

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 41714
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Ka;->A02()Ljava/lang/String;

    move-result-object v1

    .line 41715
    invoke-interface {v3, v2, v4, v1}, Lcom/facebook/ads/redexgen/X/8K;->ADq(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/String;Ljava/lang/String;)V

    .line 41716
    .end local v3    # "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/95;
    .end local p4    # "clientChallenge":Ljava/lang/String;
    :cond_5
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/KX;->A00:J

    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/Ly;->A01(J)J

    move-result-wide v1

    invoke-interface {v3, v1, v2}, Lcom/facebook/ads/redexgen/X/0R;->A2k(J)V

    .line 41717
    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/KX;->A0K(Lcom/facebook/ads/redexgen/X/TW;)V

    goto :goto_3

    .line 41718
    :cond_6
    const/4 v4, 0x0

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 41719
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 41720
    .local p0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 41721
    .local v6, "errorMessage":Ljava/lang/String;
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->PARSER_FAILURE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 41722
    .local v7, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 41723
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/KX;->A00:J

    .line 41724
    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/Ly;->A01(J)J

    move-result-wide v5

    .line 41725
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v7

    .line 41726
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v9

    .line 41727
    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/0R;->A2j(JILjava/lang/String;Z)V

    .line 41728
    invoke-static {v3, v8}, Lcom/facebook/ads/redexgen/X/K3;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/KX;->A0D(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 41729
    .end local p0    # "e":Ljava/lang/Exception;
    .end local v6    # "errorMessage":Ljava/lang/String;
    .end local v7    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :goto_3
    return-void
.end method

.method private A0M(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/KU;)V
    .locals 7

    .line 41730
    sget-object v0, Lcom/facebook/ads/redexgen/X/KX;->A08:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ta;

    move-object v2, p0

    move-wide v4, p2

    move-object v6, p4

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Ta;-><init>(Lcom/facebook/ads/redexgen/X/KX;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/KU;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 41731
    return-void
.end method


# virtual methods
.method public final A0N(Lcom/facebook/ads/redexgen/X/KU;)V
    .locals 10

    .line 41732
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A00:J

    .line 41733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lw;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Lv;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lv;->A07:Lcom/facebook/ads/redexgen/X/Lv;

    if-ne v1, v0, :cond_0

    .line 41734
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KX;->A09()V

    .line 41735
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 41736
    .local p0, "networkError":Lcom/facebook/ads/internal/protocol/AdErrorType;
    const/16 v2, 0x4f

    const/16 v1, 0x15

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A05(III)Ljava/lang/String;

    move-result-object v8

    .line 41737
    .local v3, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 41738
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A00:J

    .line 41739
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A01(J)J

    move-result-wide v5

    .line 41740
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v7

    .line 41741
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v9

    .line 41742
    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/0R;->A2j(JILjava/lang/String;Z)V

    .line 41743
    new-instance v0, Lcom/facebook/ads/redexgen/X/K3;

    invoke-direct {v0, v3, v8}, Lcom/facebook/ads/redexgen/X/K3;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KX;->A0D(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 41744
    return-void

    .line 41745
    .end local p0    # "networkError":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local v3    # "errorMessage":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8v;->A0B(Lcom/facebook/ads/redexgen/X/8J;)V

    .line 41746
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/KT;->A08(Lcom/facebook/ads/redexgen/X/KU;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41747
    sget-object v1, Lcom/facebook/ads/redexgen/X/MA;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Tc;-><init>(Lcom/facebook/ads/redexgen/X/KX;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 41748
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/KT;->A02(Lcom/facebook/ads/redexgen/X/KU;)Ljava/lang/String;

    move-result-object v2

    .line 41749
    .local p0, "lastResponse":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 41750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->AFB()V

    .line 41751
    const-wide/16 v0, 0x0

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/facebook/ads/redexgen/X/KX;->A0M(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/KU;)V

    .line 41752
    return-void

    .line 41753
    :cond_1
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 41754
    .local p1, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 41755
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KX;->A00:J

    .line 41756
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A01(J)J

    move-result-wide v4

    .line 41757
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 41758
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v7

    .line 41759
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 41760
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/0R;->A2j(JILjava/lang/String;Z)V

    .line 41761
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/K3;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KX;->A0D(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 41762
    return-void

    .line 41763
    .end local p0    # "lastResponse":Ljava/lang/String;
    .end local p1    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/KX;->A08:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tb;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Tb;-><init>(Lcom/facebook/ads/redexgen/X/KX;Lcom/facebook/ads/redexgen/X/KU;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 41764
    return-void
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/KW;)V
    .locals 0

    .line 41765
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KX;->A01:Lcom/facebook/ads/redexgen/X/KW;

    .line 41766
    return-void
.end method
