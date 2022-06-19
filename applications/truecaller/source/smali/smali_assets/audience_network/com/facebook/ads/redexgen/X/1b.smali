.class public final Lcom/facebook/ads/redexgen/X/1b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/1a;
    }
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/7J;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/Nv;

.field public A02:Lcom/facebook/ads/redexgen/X/On;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/cj;

.field public final A04:Lcom/facebook/ads/redexgen/X/1a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jJreqFAWfQsm2UlBXjWleQZy51A8w9r3"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "B5vxrqY9e1pfFDILbPSJEQZe5Zep9JAF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7hwRhDIA2xM98ucsNVPICP0872"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8yYdfjKxcW1uK5E8nS4F9bT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "cwoTvwLLOWGZrFwonmn2qn9xu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wuc4L"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VoE60CbUCih"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1JGxuEjawtyxaKItdz1AQ1lnM"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1b;->A06:[Ljava/lang/String;

    .line 4016
    invoke-static {}, Lcom/facebook/ads/redexgen/X/1b;->A07()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1p;Lcom/facebook/ads/redexgen/X/1a;Ljava/lang/String;)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4018
    sget-object v0, Lcom/facebook/ads/redexgen/X/Nv;->A06:Lcom/facebook/ads/redexgen/X/Nv;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A01:Lcom/facebook/ads/redexgen/X/Nv;

    .line 4019
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/1p;->A03()Lorg/json/JSONObject;

    move-result-object v0

    .line 4020
    .local p0, "dataObject":Lorg/json/JSONObject;
    invoke-static {p1, p2, p4, v0}, Lcom/facebook/ads/redexgen/X/1b;->A02(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1p;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/cj;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    .line 4021
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/1b;->A04:Lcom/facebook/ads/redexgen/X/1a;

    .line 4022
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/XT;)Lcom/facebook/ads/AdError;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4023
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0X()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4024
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A0R:I

    const/4 v2, 0x5

    const/16 v1, 0x2b

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1b;->A06(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/String;)V

    .line 4025
    const/16 v2, 0x3e

    const/4 v1, 0x3

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1b;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 4026
    const/16 v0, 0x7d6

    invoke-static {v0}, Lcom/facebook/ads/AdError;->internalError(I)Lcom/facebook/ads/AdError;

    move-result-object v0

    return-object v0

    .line 4027
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/1b;)Lcom/facebook/ads/redexgen/X/cj;
    .locals 0

    .line 4028
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    return-object p0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1p;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/cj;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4029
    invoke-static {p3, p0}, Lcom/facebook/ads/redexgen/X/cj;->A02(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/XT;)Lcom/facebook/ads/redexgen/X/cj;

    move-result-object p0

    .line 4030
    .local p0, "adDataBundle":Lcom/facebook/ads/redexgen/X/cj;
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/16;->A0c(Ljava/lang/String;)V

    .line 4031
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1p;->A01()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    .line 4032
    .local p1, "definition":Lcom/facebook/ads/redexgen/X/95;
    if-eqz v0, :cond_0

    .line 4033
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A06()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A0Z(I)V

    .line 4034
    :cond_0
    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/1b;)Lcom/facebook/ads/redexgen/X/1a;
    .locals 0

    .line 4035
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1b;->A04:Lcom/facebook/ads/redexgen/X/1a;

    return-object p0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/XT;)Lcom/facebook/ads/redexgen/X/7J;
    .locals 1

    .line 4036
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A00:Lcom/facebook/ads/redexgen/X/7J;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/7J;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/7J;-><init>(Lcom/facebook/ads/redexgen/X/8J;)V

    goto :goto_0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/1b;Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/On;
    .locals 0

    .line 4037
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1b;->A02:Lcom/facebook/ads/redexgen/X/On;

    return-object p1
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1b;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x60

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x4d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1b;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x61t
        -0x27t
        -0x1bt
        -0x22t
        -0x23t
        -0x51t
        -0x2ct
        -0x26t
        -0x35t
        -0x28t
        -0x2ct
        -0x39t
        -0x2et
        -0x7at
        -0x55t
        -0x28t
        -0x28t
        -0x2bt
        -0x28t
        -0x7at
        -0x68t
        -0x6at
        -0x6at
        -0x64t
        -0x7at
        -0x23t
        -0x31t
        -0x26t
        -0x32t
        -0x2bt
        -0x25t
        -0x26t
        -0x7at
        -0x39t
        -0x7at
        -0x24t
        -0x39t
        -0x2et
        -0x31t
        -0x36t
        -0x7at
        -0x59t
        -0x36t
        -0x51t
        -0x2ct
        -0x34t
        -0x2bt
        -0x6ct
        0x1ft
        0x22t
        0x1dt
        0x22t
        0x1ft
        0x32t
        0x1ft
        0x1dt
        0x20t
        0x33t
        0x2ct
        0x22t
        0x2at
        0x23t
        -0x2dt
        -0x1et
        -0x25t
        -0x35t
        -0x30t
        -0x2at
        -0x39t
        -0x2ct
        -0x2bt
        -0x2at
        -0x35t
        -0x2at
        -0x35t
        -0x3dt
        -0x32t
    .end array-data
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 11

    .line 4038
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A06()Lcom/facebook/ads/redexgen/X/1U;

    move-result-object v0

    .line 4039
    .local p0, "playableData":Lcom/facebook/ads/redexgen/X/1U;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0A()Lcom/facebook/ads/redexgen/X/Nv;

    move-result-object v0

    .line 4040
    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1b;->A0A(Lcom/facebook/ads/redexgen/X/Nv;)V

    .line 4041
    new-instance v4, Lcom/facebook/ads/redexgen/X/ca;

    invoke-direct {v4, p0}, Lcom/facebook/ads/redexgen/X/ca;-><init>(Lcom/facebook/ads/redexgen/X/1b;)V

    .line 4042
    .local p1, "playablePreCacheListener":Lcom/facebook/ads/redexgen/X/1j;
    new-instance v5, Lcom/facebook/ads/redexgen/X/7J;

    invoke-direct {v5, p1}, Lcom/facebook/ads/redexgen/X/7J;-><init>(Lcom/facebook/ads/redexgen/X/8J;)V

    .line 4043
    .local v0, "cacheManager":Lcom/facebook/ads/redexgen/X/7J;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/JD;->A1N(Landroid/content/Context;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    .line 4044
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5V;->A0A(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v9, 0x1

    :goto_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/1b;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 4045
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Nv;->A06:Lcom/facebook/ads/redexgen/X/Nv;

    goto :goto_0

    .line 4046
    .local v3, "isUnifiedAssetsLoaderEnabled":Z
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/1b;->A06:[Ljava/lang/String;

    const-string v1, "rsw451NGt86"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Yd4DtCWl7E1Fg10XBidxjBNo2K"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v9, :cond_3

    .line 4047
    new-instance v4, Lcom/facebook/ads/redexgen/X/5V;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    .line 4048
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Lorg/json/JSONObject;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    .line 4049
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0U()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    .line 4050
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/facebook/ads/redexgen/X/cZ;

    invoke-direct {v10, p0}, Lcom/facebook/ads/redexgen/X/cZ;-><init>(Lcom/facebook/ads/redexgen/X/1b;)V

    invoke-direct/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/5V;-><init>(Lcom/facebook/ads/redexgen/X/7J;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5U;)V

    .line 4051
    .local v0, "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/5V;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    .line 4052
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8J;->A08()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Jb;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JT;)V

    .line 4053
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Jb;
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/7J;->A0b(Lcom/facebook/ads/redexgen/X/Jb;)V

    .line 4054
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/5V;->A0B()V

    .line 4055
    .end local v0    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Jb;
    .end local v0
    :goto_2
    return-void

    .line 4056
    :cond_3
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    sget-object v2, Lcom/facebook/ads/redexgen/X/1b;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    invoke-static {p1, v5, v3, v4}, Lcom/facebook/ads/redexgen/X/1l;->A02(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/16;ZLcom/facebook/ads/redexgen/X/1j;)V

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/1b;->A06:[Ljava/lang/String;

    const-string v1, "NvwaqOE8NtZ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Mi75BUZiVIPk9FHJPOQQgiG4jh"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {p1, v5, v3, v4}, Lcom/facebook/ads/redexgen/X/1l;->A02(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/16;ZLcom/facebook/ads/redexgen/X/1j;)V

    goto :goto_2
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/XT;Ljava/util/EnumSet;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XT;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    .line 4057
    .local v2, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    move-object/from16 v0, p0

    move-object v0, v0

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/16;->A0l()Z

    move-result v1

    .line 4058
    .local v5, "isDSL":Z
    move-object/from16 v3, p1

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/1b;->A04(Lcom/facebook/ads/redexgen/X/XT;)Lcom/facebook/ads/redexgen/X/7J;

    move-result-object v13

    .line 4059
    .local v4, "cacheManager":Lcom/facebook/ads/redexgen/X/7J;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    .line 4060
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8J;->A08()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v4

    new-instance v2, Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {v2, v5, v4}, Lcom/facebook/ads/redexgen/X/Jb;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JT;)V

    .line 4061
    .local v2, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Jb;
    invoke-virtual {v13, v2}, Lcom/facebook/ads/redexgen/X/7J;->A0b(Lcom/facebook/ads/redexgen/X/Jb;)V

    .line 4062
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/JD;->A1N(Landroid/content/Context;)Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    .line 4063
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/5V;->A0A(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v17, 0x1

    .line 4064
    .local v2, "isUnifiedAssetsLoaderEnabled":Z
    :goto_0
    if-eqz v17, :cond_0

    .line 4065
    new-instance v12, Lcom/facebook/ads/redexgen/X/5V;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    .line 4066
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Lorg/json/JSONObject;

    move-result-object v14

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    .line 4067
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/16;->A0U()Ljava/lang/String;

    move-result-object v15

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    .line 4068
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v16

    new-instance v2, Lcom/facebook/ads/redexgen/X/cd;

    invoke-direct {v2, v0, v3, v1}, Lcom/facebook/ads/redexgen/X/cd;-><init>(Lcom/facebook/ads/redexgen/X/1b;Lcom/facebook/ads/redexgen/X/XT;Z)V

    move-object/from16 v18, v2

    invoke-direct/range {v12 .. v18}, Lcom/facebook/ads/redexgen/X/5V;-><init>(Lcom/facebook/ads/redexgen/X/7J;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5U;)V

    .line 4069
    .local v0, "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/5V;
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/5V;->A0B()V

    .line 4070
    .end local v0    # "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/5V;
    .end local v1
    .end local v13
    .end local v2    # "isUnifiedAssetsLoaderEnabled":Z
    :goto_1
    return-void

    .line 4071
    :cond_0
    const/16 v5, 0x41

    const/16 v4, 0xc

    const/4 v2, 0x2

    invoke-static {v5, v4, v2}, Lcom/facebook/ads/redexgen/X/1b;->A06(III)Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_1

    .line 4072
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    .line 4073
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    .line 4074
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/facebook/ads/redexgen/X/7I;

    invoke-direct {v7, v5, v2, v4}, Lcom/facebook/ads/redexgen/X/7I;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4075
    .local v1, "cacheFileData":Lcom/facebook/ads/redexgen/X/7I;
    iput-boolean v6, v7, Lcom/facebook/ads/redexgen/X/7I;->A04:Z

    .line 4076
    const/4 v6, 0x0

    const/4 v5, 0x5

    const/16 v2, 0x11

    invoke-static {v6, v5, v2}, Lcom/facebook/ads/redexgen/X/1b;->A06(III)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/facebook/ads/redexgen/X/7I;->A03:Ljava/lang/String;

    .line 4077
    invoke-virtual {v13, v7}, Lcom/facebook/ads/redexgen/X/7J;->A0X(Lcom/facebook/ads/redexgen/X/7I;)V

    .line 4078
    .end local v1    # "cacheFileData":Lcom/facebook/ads/redexgen/X/7I;
    :cond_1
    new-instance v7, Lcom/facebook/ads/redexgen/X/7G;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    .line 4079
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/facebook/ads/redexgen/X/PD;->A04:I

    sget v10, Lcom/facebook/ads/redexgen/X/PD;->A04:I

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    .line 4080
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v11

    const/16 v6, 0x41

    const/16 v5, 0xc

    const/4 v2, 0x2

    invoke-static {v6, v5, v2}, Lcom/facebook/ads/redexgen/X/1b;->A06(III)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/7G;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 4081
    invoke-virtual {v13, v7}, Lcom/facebook/ads/redexgen/X/7J;->A0W(Lcom/facebook/ads/redexgen/X/7G;)V

    .line 4082
    sget-object v2, Lcom/facebook/ads/CacheFlag;->VIDEO:Lcom/facebook/ads/CacheFlag;

    move-object/from16 v5, p2

    invoke-virtual {v5, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    .line 4083
    .local v1, "cacheVideos":Z
    const/4 v11, 0x0

    .line 4084
    .local v13, "i":I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/QJ;->A03()Z

    move-result v2

    invoke-static {v3, v2}, Lcom/facebook/ads/redexgen/X/JD;->A1x(Landroid/content/Context;Z)Z

    move-result v10

    .line 4085
    .local v2, "useExoPlayerCacheForDSL":Z
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/16;->A0X()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/19;

    .line 4086
    .local v2, "adInfo":Lcom/facebook/ads/redexgen/X/19;
    new-instance v14, Lcom/facebook/ads/redexgen/X/7G;

    .line 4087
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v15

    .line 4088
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/1h;->A00(Lcom/facebook/ads/redexgen/X/1C;)I

    move-result v16

    .line 4089
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/1h;->A01(Lcom/facebook/ads/redexgen/X/1C;)I

    move-result v17

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    .line 4090
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v18

    const/16 v7, 0x41

    const/16 v6, 0xc

    const/4 v5, 0x2

    invoke-static {v7, v6, v5}, Lcom/facebook/ads/redexgen/X/1b;->A06(III)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v14 .. v19}, Lcom/facebook/ads/redexgen/X/7G;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 4091
    .local v6, "imageData":Lcom/facebook/ads/redexgen/X/7G;
    if-nez v11, :cond_7

    .line 4092
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/7J;->A0V(Lcom/facebook/ads/redexgen/X/7G;)V

    .line 4093
    :goto_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/19;->A0G()Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/1K;->A00()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 4094
    .local v2, "endCardUrl":Ljava/lang/String;
    new-instance v14, Lcom/facebook/ads/redexgen/X/7G;

    const/16 v16, -0x1

    const/16 v17, -0x1

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    .line 4095
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v18

    const/16 v7, 0x41

    const/16 v6, 0xc

    const/4 v5, 0x2

    invoke-static {v7, v6, v5}, Lcom/facebook/ads/redexgen/X/1b;->A06(III)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v14 .. v19}, Lcom/facebook/ads/redexgen/X/7G;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 4096
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/7J;->A0W(Lcom/facebook/ads/redexgen/X/7G;)V

    .line 4097
    .end local v2    # "endCardUrl":Ljava/lang/String;
    goto :goto_4

    .line 4098
    :cond_2
    if-eqz v12, :cond_3

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4099
    new-instance v14, Lcom/facebook/ads/redexgen/X/7I;

    .line 4100
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v15

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    .line 4101
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v16

    .line 4102
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/1C;->A05()J

    move-result-wide v18

    const/16 v6, 0x41

    const/16 v5, 0xc

    const/4 v2, 0x2

    invoke-static {v6, v5, v2}, Lcom/facebook/ads/redexgen/X/1b;->A06(III)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v14 .. v19}, Lcom/facebook/ads/redexgen/X/7I;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 4103
    .local v3, "videoData":Lcom/facebook/ads/redexgen/X/7I;
    const/4 v2, 0x0

    iput-boolean v2, v14, Lcom/facebook/ads/redexgen/X/7I;->A04:Z

    .line 4104
    if-nez v11, :cond_5

    .line 4105
    if-eqz v1, :cond_4

    if-nez v10, :cond_4

    .line 4106
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/7J;->A0X(Lcom/facebook/ads/redexgen/X/7I;)V

    .line 4107
    .end local v2
    .end local v6    # "imageData":Lcom/facebook/ads/redexgen/X/7G;
    :cond_3
    :goto_5
    add-int/lit8 v11, v11, 0x1

    .line 4108
    goto/16 :goto_2

    .line 4109
    :cond_4
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/7J;->A0a(Lcom/facebook/ads/redexgen/X/7I;)V

    goto :goto_5

    .line 4110
    :cond_5
    if-eqz v1, :cond_6

    if-nez v10, :cond_6

    .line 4111
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/7J;->A0Y(Lcom/facebook/ads/redexgen/X/7I;)V

    goto :goto_5

    .line 4112
    :cond_6
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/7J;->A0Z(Lcom/facebook/ads/redexgen/X/7I;)V

    goto :goto_5

    .line 4113
    :cond_7
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/7J;->A0W(Lcom/facebook/ads/redexgen/X/7G;)V

    goto/16 :goto_3

    .line 4114
    :cond_8
    new-instance v2, Lcom/facebook/ads/redexgen/X/cb;

    invoke-direct {v2, v0, v3, v1}, Lcom/facebook/ads/redexgen/X/cb;-><init>(Lcom/facebook/ads/redexgen/X/1b;Lcom/facebook/ads/redexgen/X/XT;Z)V

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    .line 4115
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/7C;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/7C;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4116
    invoke-virtual {v13, v2, v0}, Lcom/facebook/ads/redexgen/X/7J;->A0U(Lcom/facebook/ads/redexgen/X/7B;Lcom/facebook/ads/redexgen/X/7C;)V

    goto/16 :goto_1

    .line 4117
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/Nv;)V
    .locals 0

    .line 4118
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1b;->A01:Lcom/facebook/ads/redexgen/X/Nv;

    .line 4119
    return-void
.end method


# virtual methods
.method public final A0B()Lcom/facebook/ads/redexgen/X/16;
    .locals 1

    .line 4120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    return-object v0
.end method

.method public final A0C()Lcom/facebook/ads/redexgen/X/Kd;
    .locals 4

    .line 4121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4122
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A03:Lcom/facebook/ads/redexgen/X/Kd;

    return-object v0

    .line 4123
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0X()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/1b;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/1b;->A06:[Ljava/lang/String;

    const-string v1, "f4kXngrP8CD5dz"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v0, 0x1

    if-le v3, v0, :cond_1

    .line 4124
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A06:Lcom/facebook/ads/redexgen/X/Kd;

    return-object v0

    .line 4125
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A06()Lcom/facebook/ads/redexgen/X/1U;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4126
    sget-object v3, Lcom/facebook/ads/redexgen/X/Kd;->A08:Lcom/facebook/ads/redexgen/X/Kd;

    sget-object v2, Lcom/facebook/ads/redexgen/X/1b;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/1b;->A06:[Ljava/lang/String;

    const-string v1, "ny"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    .line 4127
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1b;->A0I()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4128
    sget-object v3, Lcom/facebook/ads/redexgen/X/Kd;->A09:Lcom/facebook/ads/redexgen/X/Kd;

    sget-object v2, Lcom/facebook/ads/redexgen/X/1b;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/1b;->A06:[Ljava/lang/String;

    const-string v1, "JH"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4129
    :cond_6
    sget-object v3, Lcom/facebook/ads/redexgen/X/Kd;->A07:Lcom/facebook/ads/redexgen/X/Kd;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1b;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/1b;->A06:[Ljava/lang/String;

    const-string v1, "93R6MUXHMTxUt8WfLt1oZ3ea5zubl3sl"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "9xXPI1nVQC4CSUB4soKlPH985bh9DAt9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v3

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/1b;->A06:[Ljava/lang/String;

    const-string v1, "ySAy4b6nQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3
.end method

.method public final A0D()Lcom/facebook/ads/redexgen/X/Nv;
    .locals 1

    .line 4130
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A01:Lcom/facebook/ads/redexgen/X/Nv;

    return-object v0
.end method

.method public final A0E()Ljava/lang/String;
    .locals 1

    .line 4131
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0F()V
    .locals 1

    .line 4132
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A04:Lcom/facebook/ads/redexgen/X/1a;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1a;->AF5()V

    .line 4133
    return-void
.end method

.method public final A0G(Landroid/content/Intent;Lcom/facebook/ads/RewardData;Ljava/lang/String;)V
    .locals 4

    .line 4134
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/16;->A0a(Lcom/facebook/ads/RewardData;)V

    .line 4135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/16;->A0e(Ljava/lang/String;)V

    .line 4136
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    const/16 v2, 0x30

    const/16 v1, 0xe

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1b;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4137
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/XT;Ljava/util/EnumSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XT;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    .line 4138
    .local v0, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1b;->A00(Lcom/facebook/ads/redexgen/X/XT;)Lcom/facebook/ads/AdError;

    move-result-object v1

    .line 4139
    .local p0, "adError":Lcom/facebook/ads/AdError;
    if-eqz v1, :cond_0

    .line 4140
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A04:Lcom/facebook/ads/redexgen/X/1a;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/1a;->A9i(Lcom/facebook/ads/AdError;)V

    .line 4141
    return-void

    .line 4142
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A04:Lcom/facebook/ads/redexgen/X/1a;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1a;->ADP()V

    .line 4143
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1b;->A0C()Lcom/facebook/ads/redexgen/X/Kd;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A08:Lcom/facebook/ads/redexgen/X/Kd;

    if-ne v1, v0, :cond_1

    .line 4144
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1b;->A08(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 4145
    :goto_0
    return-void

    .line 4146
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1b;->A09(Lcom/facebook/ads/redexgen/X/XT;Ljava/util/EnumSet;)V

    goto :goto_0
.end method

.method public final A0I()Z
    .locals 1

    .line 4147
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final A0J()Z
    .locals 1

    .line 4148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0j()Z

    move-result v0

    return v0
.end method
