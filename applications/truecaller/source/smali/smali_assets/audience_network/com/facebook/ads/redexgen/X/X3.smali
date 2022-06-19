.class public final Lcom/facebook/ads/redexgen/X/X3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8L;


# static fields
.field public static A06:Lcom/facebook/ads/redexgen/X/X3;

.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/0U;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/8K;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/8Y;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/9C;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/Jf;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/GC;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kZNWMB05A80rolZkZr5gINRkemJedumA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "PGnlsDLswmZGHAGkHnqyou4j"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CQczeQcoxNMNqPeDO5UPH4delPie3CF6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ozs7AQnIuhnl4TF488yhCLnc3lqg3Tqv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QUMQF15y8F49TOv2Mbtf3pi6YRJU7tsl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "iRM3Hx3PCEqf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8yEJzjy1AvS4vnL"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zEXAgd0MZ6iopjt"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/X3;->A08:[Ljava/lang/String;

    .line 65778
    invoke-static {}, Lcom/facebook/ads/redexgen/X/X3;->A07()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/GC;)Lcom/facebook/ads/redexgen/X/5Z;
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/GC;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65780
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JD;->A18(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 65781
    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 65782
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5a;->A00()Lcom/facebook/ads/redexgen/X/5a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/5a;->A01(Lcom/facebook/ads/redexgen/X/GC;)Lcom/facebook/ads/redexgen/X/5Z;

    move-result-object p0

    return-object p0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/8Y;
    .locals 1

    .line 65783
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8Z;->A00()Lcom/facebook/ads/redexgen/X/8Z;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/8Z;->A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/8Y;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized A02()Lcom/facebook/ads/redexgen/X/X3;
    .locals 4

    const-class v3, Lcom/facebook/ads/redexgen/X/X3;

    sget-object v2, Lcom/facebook/ads/redexgen/X/X3;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/X3;->A08:[Ljava/lang/String;

    const-string v1, "yNOYv8BJbeG1jc93xecDuC4SV0M6ZsAO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "rgM7W1LhEjhuRpvAxAxTebmxK2ArHzjw"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    monitor-enter v3

    .line 65784
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/X3;->A06:Lcom/facebook/ads/redexgen/X/X3;

    if-nez v0, :cond_1

    .line 65785
    new-instance v0, Lcom/facebook/ads/redexgen/X/X3;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/X3;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/X3;->A06:Lcom/facebook/ads/redexgen/X/X3;

    .line 65786
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/X3;->A06:Lcom/facebook/ads/redexgen/X/X3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v0

    .line 65787
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/Qf;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65788
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JD;->A14(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65789
    const/4 v0, 0x0

    return-object v0

    .line 65790
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Qx;->A01(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/Qf;

    move-result-object v0

    return-object v0
.end method

.method private final declared-synchronized A04()Lcom/facebook/ads/redexgen/X/GC;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 65791
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A05:Lcom/facebook/ads/redexgen/X/GC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/8Y;Lcom/facebook/ads/redexgen/X/Qf;)Lcom/facebook/ads/redexgen/X/GC;
    .locals 17
    .param p2    # Lcom/facebook/ads/redexgen/X/Qf;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65792
    move-object/from16 v4, p0

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/JD;->A1l(Landroid/content/Context;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    move-object/from16 v16, p2

    if-nez v16, :cond_1

    .line 65793
    :cond_0
    return-object v8

    .line 65794
    :cond_1
    new-instance v3, Lcom/facebook/ads/redexgen/X/KU;

    const/4 v6, 0x0

    sget-object v7, Lcom/facebook/ads/redexgen/X/K9;->A07:Lcom/facebook/ads/redexgen/X/K9;

    .line 65795
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

    if-eq v1, v0, :cond_2

    .line 65796
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdSettings$TestAdType;->getAdTypeString()Ljava/lang/String;

    move-result-object v8

    .line 65797
    :cond_2
    const/4 v9, 0x0

    .line 65798
    invoke-static {v4}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v10

    .line 65799
    invoke-static {}, Lcom/facebook/ads/AdSettings;->isMixedAudience()Z

    move-result v11

    new-instance v12, Lcom/facebook/ads/redexgen/X/KE;

    invoke-direct {v12}, Lcom/facebook/ads/redexgen/X/KE;-><init>()V

    .line 65800
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/JD;->A0H(Landroid/content/Context;)I

    move-result v0

    .line 65801
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lp;->A01(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X3;->A06(III)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v3 .. v15}, Lcom/facebook/ads/redexgen/X/KU;-><init>(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/K9;Ljava/lang/String;IZZLcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65802
    .local v4, "adEnvironmentData":Lcom/facebook/ads/redexgen/X/KU;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/RK;->A00()Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v13

    .line 65803
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Kb;->A04(Lcom/facebook/ads/redexgen/X/8J;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/facebook/ads/redexgen/X/X4;

    invoke-direct {v1, v3, v4}, Lcom/facebook/ads/redexgen/X/X4;-><init>(Lcom/facebook/ads/redexgen/X/KU;Lcom/facebook/ads/redexgen/X/XS;)V

    .line 65804
    invoke-static {}, Lcom/facebook/ads/redexgen/X/RI;->A00()Lcom/facebook/ads/redexgen/X/RH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A00()Lcom/facebook/ads/redexgen/X/RI;

    move-result-object p2

    .line 65805
    move-object/from16 v15, p1

    move-object v14, v4

    move-object/from16 p1, v1

    invoke-virtual/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/RK;->A01(Lcom/facebook/ads/redexgen/X/8J;Lcom/facebook/ads/redexgen/X/8Y;Lcom/facebook/ads/redexgen/X/Qf;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/RJ;Lcom/facebook/ads/redexgen/X/RI;)Lcom/facebook/ads/redexgen/X/GC;

    move-result-object v0

    .line 65806
    return-object v0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/X3;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/X3;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/X3;->A08:[Ljava/lang/String;

    const-string v1, "Hv2WK1fJh7GnXaP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "jwUFRNkRPBL5IaL"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_2

    aget-byte p1, v3, p0

    sub-int/2addr p1, p2

    sget-object v2, Lcom/facebook/ads/redexgen/X/X3;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/X3;->A08:[Ljava/lang/String;

    const-string v1, "3jbuj6iR6sIerVLqEJ9xAsC0KuP7QrbG"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "qsuffxm3RCjhy50iWQEl04Txy4tWGAPw"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 v0, p1, -0x62

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x3c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/X3;->A07:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/X3;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/X3;->A08:[Ljava/lang/String;

    const-string v1, "XQj6tBQR93KUWcmqG7acynHpkyXbPHo4"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "0fPU7ngiro1m2vFzwgFa3cBnolZ3o5pA"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x3ct
        -0xbt
        -0x40t
        -0x39t
        -0x3ft
        -0x40t
        -0xdt
        -0x3bt
        -0x10t
        0x2t
        0x10t
        0x10t
        0x6t
        0xct
        0xbt
        -0x43t
        0x1t
        -0x2t
        0x11t
        -0x2t
        -0x43t
        0x6t
        0xbt
        0x6t
        0x11t
        0x6t
        -0x2t
        0x9t
        0x6t
        0x17t
        0x2t
        0x1t
        0x21t
        0x14t
        0x1ft
        0x1et
        0x21t
        0x23t
        0x2t
        0x14t
        0x22t
        0x22t
        0x18t
        0x1et
        0x1dt
        -0xdt
        0x10t
        0x23t
        0x10t
        -0x8t
        0x1dt
        0x18t
        0x23t
        0x18t
        0x10t
        0x1bt
        0x18t
        0x29t
        0x14t
        0x13t
    .end array-data
.end method

.method public static A08()V
    .locals 7

    const/16 v2, 0x20

    const/16 v1, 0x1c

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X3;->A06(III)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    const/16 v4, 0x18

    const/16 v3, 0x3b

    sget-object v1, Lcom/facebook/ads/redexgen/X/X3;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/X3;->A08:[Ljava/lang/String;

    const-string v1, "4ii3kc4oT9MJsiDOLfNQb5ib2"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/X3;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X3;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/KI;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65807
    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/5Z;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/5Z;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65808
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JD;->A18(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 65809
    :cond_0
    return-void

    .line 65810
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5X;->A00()Lcom/facebook/ads/redexgen/X/5X;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/5X;->A01(Lcom/facebook/ads/redexgen/X/5Z;Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/5W;

    .line 65811
    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/GC;)V
    .locals 3
    .param p1    # Lcom/facebook/ads/redexgen/X/GC;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65812
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JD;->A0h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 65813
    :cond_0
    return-void

    .line 65814
    :cond_1
    new-instance v2, Lcom/facebook/ads/redexgen/X/5v;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/5v;-><init>()V

    .line 65815
    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->getBidderTokenProviderApi()Lcom/facebook/ads/redexgen/X/58;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/58;->A00()Lcom/facebook/ads/redexgen/X/5w;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/5u;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/5u;-><init>(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/GC;Lcom/facebook/ads/redexgen/X/5v;Lcom/facebook/ads/redexgen/X/5w;)V

    .line 65816
    return-void
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/GC;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/GC;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65817
    if-nez p1, :cond_0

    .line 65818
    return-void

    .line 65819
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/JG;->A00(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/GC;)V

    .line 65820
    return-void
.end method


# virtual methods
.method public final declared-synchronized A0C(Lcom/facebook/ads/redexgen/X/XS;)V
    .locals 2

    monitor-enter p0

    .line 65821
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A05:Lcom/facebook/ads/redexgen/X/GC;

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65822
    monitor-exit p0

    return-void

    .line 65823
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/X3;->A01(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/8Y;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A02:Lcom/facebook/ads/redexgen/X/8Y;

    .line 65824
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/X3;->A03(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/Qf;

    move-result-object v1

    .line 65825
    .local p0, "networkModule":Lcom/facebook/ads/redexgen/X/Qf;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A02:Lcom/facebook/ads/redexgen/X/8Y;

    invoke-static {p1, v0, v1}, Lcom/facebook/ads/redexgen/X/X3;->A05(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/8Y;Lcom/facebook/ads/redexgen/X/Qf;)Lcom/facebook/ads/redexgen/X/GC;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A05:Lcom/facebook/ads/redexgen/X/GC;

    .line 65826
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A05:Lcom/facebook/ads/redexgen/X/GC;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/X3;->A00(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/GC;)Lcom/facebook/ads/redexgen/X/5Z;

    move-result-object v0

    .line 65827
    .local p1, "assetPreloadDbModule":Lcom/facebook/ads/redexgen/X/5Z;
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/X3;->A09(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/5Z;)V

    .line 65828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A05:Lcom/facebook/ads/redexgen/X/GC;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/X3;->A0A(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/GC;)V

    .line 65829
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A05:Lcom/facebook/ads/redexgen/X/GC;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/X3;->A0B(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/GC;)V

    .line 65830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A05:Lcom/facebook/ads/redexgen/X/GC;

    if-eqz v0, :cond_1

    .line 65831
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A05:Lcom/facebook/ads/redexgen/X/GC;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GC;->A5R()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65832
    .end local v0
    :cond_1
    monitor-exit p0

    return-void

    .line 65833
    .end local p0    # "networkModule":Lcom/facebook/ads/redexgen/X/Qf;
    .end local p1    # "assetPreloadDbModule":Lcom/facebook/ads/redexgen/X/5Z;
    .end local v1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A5Z(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/JT;
    .locals 1

    .line 65834
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U4;->A01(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized A5n(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/8K;
    .locals 1

    monitor-enter p0

    .line 65835
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A01:Lcom/facebook/ads/redexgen/X/8K;

    if-nez v0, :cond_0

    .line 65836
    new-instance v0, Lcom/facebook/ads/redexgen/X/X5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/X5;-><init>(Lcom/facebook/ads/redexgen/X/X3;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A01:Lcom/facebook/ads/redexgen/X/8K;

    .line 65837
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/8J;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A01:Lcom/facebook/ads/redexgen/X/8K;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 65838
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6H(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/8Y;
    .locals 1

    monitor-enter p0

    .line 65839
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A02:Lcom/facebook/ads/redexgen/X/8Y;

    if-nez v0, :cond_0

    .line 65840
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X3;->A01(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/8Y;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A02:Lcom/facebook/ads/redexgen/X/8Y;

    .line 65841
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/8J;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A02:Lcom/facebook/ads/redexgen/X/8Y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 65842
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6I(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/8l;
    .locals 1

    monitor-enter p0

    .line 65843
    :try_start_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/XJ;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/XJ;-><init>(Lcom/facebook/ads/redexgen/X/8J;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p1    # null:Lcom/facebook/ads/redexgen/X/8J;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6R(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/8M;
    .locals 4

    monitor-enter p0

    .line 65844
    :try_start_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/X6;

    invoke-direct {v3, p0, p1}, Lcom/facebook/ads/redexgen/X/X6;-><init>(Lcom/facebook/ads/redexgen/X/X3;Lcom/facebook/ads/redexgen/X/8J;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/X3;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/X3;->A08:[Ljava/lang/String;

    const-string v1, "2Vt1OUprKjNjnyD3"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    .end local p1    # null:Lcom/facebook/ads/redexgen/X/8J;
    .end local v3
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6e(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/0U;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 65845
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/JD;->A0r(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65846
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 65847
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A00:Lcom/facebook/ads/redexgen/X/0U;

    if-nez v0, :cond_1

    .line 65848
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0V;->A00()Lcom/facebook/ads/redexgen/X/0V;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/X9;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/X9;-><init>(Lcom/facebook/ads/redexgen/X/8J;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0V;->A01(Lcom/facebook/ads/redexgen/X/0S;)Lcom/facebook/ads/redexgen/X/0U;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A00:Lcom/facebook/ads/redexgen/X/0U;

    .line 65849
    .end local v0
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/X3;->A00:Lcom/facebook/ads/redexgen/X/0U;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/X3;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/X3;->A08:[Ljava/lang/String;

    const-string v1, "VIV2EvMRfEPiWlvmDKty9fFKFHJul9Yn"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "0wfCQdIt8NwFYvPKQ0QtM4LE4vJ9WdpV"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 65850
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A7F(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/8O;
    .locals 1

    monitor-enter p0

    .line 65851
    :try_start_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/X7;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/X7;-><init>(Lcom/facebook/ads/redexgen/X/8J;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p1    # null:Lcom/facebook/ads/redexgen/X/8J;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A7G(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XS;
    .locals 1

    .line 65852
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8I;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    .line 65853
    .local p0, "sdkContext":Lcom/facebook/ads/redexgen/X/XS;
    if-nez v0, :cond_0

    .line 65854
    new-instance v0, Lcom/facebook/ads/redexgen/X/XS;

    invoke-direct {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/XS;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8L;)V

    .line 65855
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8I;->A01(Lcom/facebook/ads/redexgen/X/XS;)V

    .line 65856
    :cond_0
    return-object v0
.end method

.method public final declared-synchronized A7H(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/Jf;
    .locals 1

    monitor-enter p0

    .line 65857
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A04:Lcom/facebook/ads/redexgen/X/Jf;

    if-nez v0, :cond_0

    .line 65858
    new-instance v0, Lcom/facebook/ads/redexgen/X/UB;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/UB;-><init>(Lcom/facebook/ads/redexgen/X/XS;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A04:Lcom/facebook/ads/redexgen/X/Jf;

    .line 65859
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/XS;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A04:Lcom/facebook/ads/redexgen/X/Jf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 65860
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A7N()Lcom/facebook/ads/redexgen/X/9C;
    .locals 1

    monitor-enter p0

    .line 65861
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A03:Lcom/facebook/ads/redexgen/X/9C;

    if-nez v0, :cond_0

    .line 65862
    new-instance v0, Lcom/facebook/ads/redexgen/X/9C;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9C;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A03:Lcom/facebook/ads/redexgen/X/9C;

    .line 65863
    invoke-static {}, Lcom/facebook/ads/redexgen/X/X3;->A08()V

    .line 65864
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X3;->A03:Lcom/facebook/ads/redexgen/X/9C;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 65865
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic A7W()Lcom/facebook/ads/redexgen/X/8P;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65866
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/X3;->A04()Lcom/facebook/ads/redexgen/X/GC;

    move-result-object v0

    return-object v0
.end method
