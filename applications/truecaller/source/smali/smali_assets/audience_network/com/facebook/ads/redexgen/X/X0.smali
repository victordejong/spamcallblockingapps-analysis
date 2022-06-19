.class public final Lcom/facebook/ads/redexgen/X/X0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/9G;


# static fields
.field public static A03:Landroid/content/pm/PackageInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A04:Lcom/facebook/ads/redexgen/X/LT;

.field public static A05:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A06:Z

.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:[Lcom/facebook/ads/redexgen/X/0T;

.field public static final A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A0B:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/5v;

.field public final A01:Lcom/facebook/ads/redexgen/X/8J;

.field public final A02:Lcom/facebook/ads/redexgen/X/8w;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rjWu3o3XUIKJimpXtRLH"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "N3hUjd9gC1zTrolrzHWDwio6K0KaeF7v"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "V8BOZxTrBek9nlJry76rEN1tEiA1lgnf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2kaCuDD1e44XjFqxj97oS3bW7Y4jUXps"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "VcJxC1jbHxk7XwGyeCWvHwY9E4qRcx1x"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dO6RHNbAuKw0kDbwpnJR"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8jPNINbp0cYAxxIn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ugIdyp1aSJPFHYCiUHctz2XPYC5YD6Ud"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/X0;->A08:[Ljava/lang/String;

    .line 65594
    invoke-static {}, Lcom/facebook/ads/redexgen/X/X0;->A08()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/X0;->A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65595
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/X0;->A0B:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65596
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/X0;->A05:Ljava/lang/String;

    .line 65597
    sput-boolean v1, Lcom/facebook/ads/redexgen/X/X0;->A06:Z

    .line 65598
    const/16 v0, 0x9

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/0T;

    sget-object v0, Lcom/facebook/ads/redexgen/X/0T;->A10:Lcom/facebook/ads/redexgen/X/0T;

    aput-object v0, v2, v1

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A0e:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A11:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A19:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A0v:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A0x:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A1u:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A1v:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A1w:Lcom/facebook/ads/redexgen/X/0T;

    const/16 v0, 0x8

    aput-object v1, v2, v0

    sput-object v2, Lcom/facebook/ads/redexgen/X/X0;->A09:[Lcom/facebook/ads/redexgen/X/0T;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8J;ZLcom/facebook/ads/redexgen/X/5v;)V
    .locals 1

    .line 65599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65600
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    .line 65601
    new-instance v0, Lcom/facebook/ads/redexgen/X/8w;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/8w;-><init>(Lcom/facebook/ads/redexgen/X/8J;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A02:Lcom/facebook/ads/redexgen/X/8w;

    .line 65602
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/X0;->A00:Lcom/facebook/ads/redexgen/X/5v;

    .line 65603
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/X0;->A09(Lcom/facebook/ads/redexgen/X/8J;Z)V

    .line 65604
    return-void
.end method

.method public static declared-synchronized A00(Lcom/facebook/ads/redexgen/X/8J;)Landroid/content/pm/PackageInfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v1, Lcom/facebook/ads/redexgen/X/X0;

    monitor-enter v1

    .line 65605
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/X0;->A06:Z

    if-nez v0, :cond_0

    .line 65606
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lf;->A00(Lcom/facebook/ads/redexgen/X/8J;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/X0;->A03:Landroid/content/pm/PackageInfo;

    .line 65607
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/X0;->A06:Z

    .line 65608
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/X0;->A03:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65609
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized A01(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/LT;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/X0;

    monitor-enter v1

    .line 65610
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/X0;->A04:Lcom/facebook/ads/redexgen/X/LT;

    if-nez v0, :cond_0

    .line 65611
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A03()Lcom/facebook/ads/redexgen/X/8O;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8O;->A8H()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LU;->A00(Z)Lcom/facebook/ads/redexgen/X/LT;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/X0;->A04:Lcom/facebook/ads/redexgen/X/LT;

    .line 65612
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/X0;->A04:Lcom/facebook/ads/redexgen/X/LT;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65613
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static synthetic A02()Ljava/lang/String;
    .locals 1

    .line 65614
    sget-object v0, Lcom/facebook/ads/redexgen/X/X0;->A05:Ljava/lang/String;

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/X0;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/X0;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/X0;->A08:[Ljava/lang/String;

    const-string v1, "AJGqtkftO03LFXDJsHlFXR4ujVWNfKsn"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "0weTThgY8dzMPuXGgH30KJvXs1017h9U"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x49

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65615
    const/4 v6, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 65616
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v0, :cond_0

    .line 65617
    return-object v6

    .line 65618
    :cond_0
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 65619
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lb;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65620
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 65621
    .local v6, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/facebook/ads/redexgen/X/X0;->A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65622
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A1D:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v2}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 65623
    const/16 v2, 0x1da

    const/4 v1, 0x7

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 65624
    :cond_1
    return-object v6
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 65625
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/X0;->A04(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A06(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 65626
    sput-object p0, Lcom/facebook/ads/redexgen/X/X0;->A05:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A07()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 65627
    sget-object v0, Lcom/facebook/ads/redexgen/X/X0;->A0B:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x1e5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/X0;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x28t
        0xdt
        0x15t
        0x17t
        0x17t
        0x11t
        0x7t
        0x7t
        0x1dt
        0x16t
        0x1dt
        0x18t
        0x1dt
        0x0t
        0xdt
        0xbt
        0x11t
        0x1at
        0x15t
        0x16t
        0x18t
        0x11t
        0x10t
        0x29t
        0x2et
        0x38t
        0x2dt
        0x2at
        0x3ct
        0x57t
        0x62t
        0x6dt
        0x62t
        0x6ft
        0x6ct
        0x64t
        0x55t
        0x44t
        0x44t
        0x4bt
        0x59t
        0x5dt
        0x5at
        0x4bt
        0x47t
        0x50t
        0x5ft
        0x4bt
        0x42t
        0x51t
        0x46t
        0x47t
        0x5dt
        0x5bt
        0x5at
        0x4et
        0x5ct
        0x47t
        0x4et
        0x5ct
        0x2ct
        0x3et
        0x24t
        0x29t
        0x56t
        0x43t
        0x43t
        0x45t
        0x5et
        0x55t
        0x42t
        0x43t
        0x5et
        0x58t
        0x59t
        0x48t
        0x5et
        0x53t
        0x6at
        0x61t
        0x6ct
        0x6ct
        0x6dt
        0x7at
        0x77t
        0x7ct
        0x67t
        0x63t
        0x6dt
        0x66t
        0x77t
        0x6dt
        0x70t
        0x7ct
        0x7at
        0x69t
        0x7bt
        0x3et
        0x29t
        0x32t
        0x38t
        0x30t
        0x39t
        0x4ft
        0x4dt
        0x5ct
        0x5ct
        0x49t
        0x48t
        0x53t
        0x45t
        0x48t
        0x5ft
        0x15t
        0x17t
        0x4t
        0x4t
        0x1ft
        0x13t
        0x4t
        0x43t
        0x46t
        0x53t
        0x46t
        0x58t
        0x57t
        0x55t
        0x48t
        0x44t
        0x42t
        0x54t
        0x54t
        0x4et
        0x49t
        0x40t
        0x58t
        0x48t
        0x57t
        0x53t
        0x4et
        0x48t
        0x49t
        0x54t
        0x5ct
        0x59t
        0x4ct
        0x59t
        0x47t
        0x48t
        0x4at
        0x57t
        0x5bt
        0x5dt
        0x4bt
        0x4bt
        0x51t
        0x56t
        0x5ft
        0x47t
        0x57t
        0x48t
        0x4ct
        0x51t
        0x57t
        0x56t
        0x4bt
        0x47t
        0x5bt
        0x57t
        0x4dt
        0x56t
        0x4ct
        0x4at
        0x41t
        0x6ft
        0x6at
        0x7ft
        0x6at
        0x74t
        0x7bt
        0x79t
        0x64t
        0x68t
        0x6et
        0x78t
        0x78t
        0x62t
        0x65t
        0x6ct
        0x74t
        0x64t
        0x7bt
        0x7ft
        0x62t
        0x64t
        0x65t
        0x78t
        0x74t
        0x78t
        0x7ft
        0x6at
        0x7ft
        0x6et
        0x1ct
        0x1dt
        0x16t
        0xbt
        0x11t
        0xct
        0x1t
        0xdt
        0x1et
        0x5t
        0x5t
        0xet
        0x7t
        0x14t
        0x8t
        0x4t
        0x19t
        0xet
        0x14t
        0xet
        0x1dt
        0xet
        0x5t
        0x1ft
        0x18t
        0x30t
        0x23t
        0x38t
        0x38t
        0x33t
        0x3at
        0x29t
        0x3at
        0x39t
        0x31t
        0x31t
        0x33t
        0x32t
        0x1et
        0x39t
        0x31t
        0x34t
        0x3dt
        0x3ct
        0x78t
        0x2ct
        0x37t
        0x78t
        0x3at
        0x2dt
        0x31t
        0x34t
        0x3ct
        0x78t
        0x2dt
        0x2bt
        0x3dt
        0x2at
        0x78t
        0x2ct
        0x37t
        0x33t
        0x3dt
        0x36t
        0x5ft
        0x56t
        0x44t
        0x48t
        0x52t
        0x4ft
        0x58t
        0x47t
        0x5bt
        0x56t
        0x4et
        0x52t
        0x45t
        0x34t
        0x39t
        0x3bt
        0x3ct
        0x30t
        0x3dt
        0x26t
        0x3at
        0x38t
        0x3at
        0x31t
        0x3ct
        0x26t
        0x2dt
        0x2at
        0x26t
        0x34t
        0x2at
        0x25t
        0x28t
        0x33t
        0x3ft
        0x23t
        0x39t
        0x3et
        0x2ft
        0x29t
        0x2ft
        0x28t
        0x35t
        0x32t
        0x27t
        0x2at
        0x2at
        0x23t
        0x34t
        0x4bt
        0x48t
        0x44t
        0x46t
        0x4bt
        0x42t
        0x6dt
        0x61t
        0x6bt
        0x65t
        0x5t
        0xdt
        0xct
        0x1t
        0x9t
        0x1ct
        0x1t
        0x7t
        0x6t
        0x17t
        0x1bt
        0xdt
        0x1at
        0x1et
        0x1t
        0xbt
        0xdt
        0x48t
        0x43t
        0x52t
        0x51t
        0x49t
        0x54t
        0x4dt
        0x59t
        0x52t
        0x5ft
        0x56t
        0x43t
        0x5dt
        0x40t
        0x40t
        0x5bt
        0x4at
        0x4bt
        0xft
        0x9t
        0x1bt
        0x2t
        0x1bt
        0x1ft
        0x2t
        0x1ct
        0xdt
        0xdt
        0x2t
        0x14t
        0x13t
        0xet
        0x9t
        0x1ct
        0x11t
        0x11t
        0x18t
        0x19t
        0x60t
        0x66t
        0x74t
        0x6dt
        0x74t
        0x70t
        0x6dt
        0x73t
        0x62t
        0x62t
        0x6dt
        0x64t
        0x77t
        0x60t
        0x61t
        0x7bt
        0x7dt
        0x7ct
        0x61t
        0x71t
        0x60t
        0x77t
        0x77t
        0x7ct
        0x6dt
        0x7at
        0x77t
        0x7bt
        0x75t
        0x7at
        0x66t
        0x3ft
        0x2ft
        0x3et
        0x29t
        0x29t
        0x22t
        0x33t
        0x3bt
        0x25t
        0x28t
        0x38t
        0x24t
        0x7ft
        0x68t
        0x67t
        0x73t
        0x6ft
        0x6dt
        0x7ct
        0x6dt
        0x6et
        0x65t
        0x60t
        0x65t
        0x78t
        0x75t
        0x35t
        0x23t
        0x35t
        0x35t
        0x2ft
        0x29t
        0x28t
        0x39t
        0x32t
        0x2ft
        0x2bt
        0x23t
        0x1at
        0x1t
        0x6t
        0x1bt
        0x16t
        0x46t
        0x40t
        0x56t
        0x41t
        0x4ct
        0x52t
        0x54t
        0x56t
        0x5dt
        0x47t
        0x21t
        0x36t
        0x3bt
        0x27t
        0x36t
        0x25t
        0x36t
        0x3at
        0x24t
        0x73t
        0x71t
        0x7at
        0x71t
        0x66t
        0x7dt
        0x77t
        0x76t
        0x6dt
        0x74t
        0x74t
    .end array-data
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/8J;Z)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 65628
    sget-object v1, Lcom/facebook/ads/redexgen/X/X0;->A0B:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-virtual {v1, v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65629
    return-void

    .line 65630
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/X0;->A01(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/LT;

    .line 65631
    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kg;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 65632
    .local p0, "sp":Landroid/content/SharedPreferences;
    new-instance v5, Lcom/facebook/ads/redexgen/X/8w;

    invoke-direct {v5, p0}, Lcom/facebook/ads/redexgen/X/8w;-><init>(Lcom/facebook/ads/redexgen/X/8J;)V

    .line 65633
    .local v1, "deviceTrackingParams":Lcom/facebook/ads/redexgen/X/8w;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    const/4 v1, 0x4

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65634
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8w;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65635
    .local v4, "fingerprintSharedPrefKey":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v6, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/X0;->A05:Ljava/lang/String;

    .line 65636
    new-instance v0, Lcom/facebook/ads/redexgen/X/9I;

    invoke-direct {v0, p0, v6, v1}, Lcom/facebook/ads/redexgen/X/9I;-><init>(Lcom/facebook/ads/redexgen/X/8J;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 65637
    .local v0, "initialiser":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 65638
    if-eqz p1, :cond_1

    .line 65639
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65640
    .local p0, "e":Ljava/lang/Exception;
    :catch_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/X0;->A0B:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 65641
    .end local p0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final A6S()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/X0;->A09(Lcom/facebook/ads/redexgen/X/8J;Z)V

    .line 65643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8v;->A0B(Lcom/facebook/ads/redexgen/X/8J;)V

    .line 65644
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8v;->A08(Landroid/content/Context;)V

    .line 65645
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 65646
    .local p0, "environmentAdParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/9D;->A02(Lcom/facebook/ads/redexgen/X/8J;Ljava/util/Map;)Ljava/util/Map;

    .line 65647
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x13c

    const/4 v1, 0x6

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65648
    sget v8, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    .line 65649
    .local v3, "density":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 65650
    .local v0, "screenWidth":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 65651
    .local v0, "screenHeight":I
    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xcb

    const/4 v1, 0x7

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65652
    int-to-float v0, v7

    div-float/2addr v0, v8

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x19c

    const/16 v1, 0xc

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65653
    int-to-float v0, v6

    div-float/2addr v0, v8

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x18f

    const/16 v1, 0xd

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65654
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5h;->A03()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x40

    const/16 v1, 0xe

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65655
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5h;->A00()Lcom/facebook/ads/redexgen/X/5f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5f;->A02()Lcom/facebook/ads/redexgen/X/5e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5e;->name()Ljava/lang/String;

    move-result-object v4

    .line 65656
    const/16 v2, 0x12a

    const/16 v1, 0x9

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65657
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5h;->A00()Lcom/facebook/ads/redexgen/X/5f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5f;->A01()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 65658
    const/16 v2, 0x11c

    const/16 v1, 0xe

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65659
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A02:Lcom/facebook/ads/redexgen/X/8w;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9L;->A03(Lcom/facebook/ads/redexgen/X/8J;Lcom/facebook/ads/redexgen/X/8w;)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x61

    const/4 v1, 0x6

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A02:Lcom/facebook/ads/redexgen/X/8w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8w;->A07()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x71

    const/4 v1, 0x7

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A02:Lcom/facebook/ads/redexgen/X/8w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8w;->A08()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x142

    const/4 v1, 0x4

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X0;->A01(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/LT;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/LT;->A00:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x163

    const/4 v1, 0x6

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A02:Lcom/facebook/ads/redexgen/X/8w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8w;->A0A()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x133

    const/16 v1, 0x9

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65664
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LL;->A01()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x1a8

    const/16 v1, 0xe

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    .line 65666
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lw;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Lv;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Lv;->A00:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 65667
    const/16 v2, 0x157

    const/16 v1, 0xc

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    .line 65669
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A02(D)Ljava/lang/String;

    move-result-object v4

    .line 65670
    const/16 v2, 0x1b6

    const/16 v1, 0xc

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65671
    sget-object v6, Lcom/facebook/ads/redexgen/X/X0;->A05:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 65672
    const/16 v2, 0x17

    const/4 v1, 0x3

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/X0;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/X0;->A08:[Ljava/lang/String;

    const-string v1, "AqiFfSJaVcvWeekshHh0ldvtL31lvyuj"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "9HeqxNTbWRKyR8KfBHSSaEFZWfPVqzw4"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65673
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LU;->A02(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/X0;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    .line 65674
    .local v5, "app_certs":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 65675
    :goto_0
    const/16 v2, 0x37

    const/4 v1, 0x5

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65676
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LZ;->A05(Lcom/facebook/ads/redexgen/X/8J;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x1c2

    const/4 v1, 0x5

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A03()Lcom/facebook/ads/redexgen/X/8O;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8O;->A6u()Ljava/lang/String;

    move-result-object v4

    .line 65678
    .local v0, "mediationService":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 65679
    const/16 v2, 0x146

    const/16 v1, 0x11

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65680
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A02:Lcom/facebook/ads/redexgen/X/8w;

    .line 65681
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8w;->A0B()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 65682
    const/4 v2, 0x2

    const/16 v1, 0x15

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A02:Lcom/facebook/ads/redexgen/X/8w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8w;->A02()I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_4

    .line 65684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A02:Lcom/facebook/ads/redexgen/X/8w;

    .line 65685
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8w;->A02()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 65686
    const/16 v2, 0x24

    const/16 v1, 0x13

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65687
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    .line 65688
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9B;->A05(Lcom/facebook/ads/redexgen/X/8J;)Ljava/lang/String;

    move-result-object v4

    .line 65689
    const/16 v2, 0x1d1

    const/16 v1, 0x9

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65690
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8v;->A02()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Le;->A01(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x1e

    const/4 v1, 0x6

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65691
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JC;->A05(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65692
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A03()Lcom/facebook/ads/redexgen/X/8O;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8O;->A6b()Ljava/lang/String;

    move-result-object v4

    .line 65693
    .local v0, "fbLoginASID":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 65694
    const/16 v2, 0x3c

    const/4 v1, 0x4

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65695
    .end local v0    # "fbLoginASID":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    .line 65696
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A05()Lcom/facebook/ads/redexgen/X/8Y;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8Y;->A6G()Lcom/facebook/ads/redexgen/X/8X;

    move-result-object v8

    .line 65697
    .local v0, "dataProcessingOptions":Lcom/facebook/ads/redexgen/X/8X;
    const/16 v2, 0xae

    const/16 v1, 0x1d

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x8f

    const/16 v1, 0x1f

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x78

    const/16 v1, 0x17

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v4

    if-eqz v8, :cond_8

    .line 65698
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/8X;->A08()Ljava/lang/String;

    move-result-object v0

    .line 65699
    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65700
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/8X;->A05()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65701
    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65702
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/8X;->A06()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65703
    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65704
    :goto_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A00()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x67

    const/16 v1, 0xa

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65705
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/X0;->A00:Lcom/facebook/ads/redexgen/X/5v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5v;->A03(Lcom/facebook/ads/redexgen/X/8J;)Ljava/lang/String;

    move-result-object v4

    .line 65706
    .local v4, "bidderTokenExtras":Ljava/lang/String;
    if-eqz v4, :cond_6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 65707
    const/16 v2, 0x4e

    const/16 v1, 0x13

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65708
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    .line 65709
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A02()Lcom/facebook/ads/redexgen/X/8M;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8M;->A7u()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 65710
    const/16 v2, 0x10b

    const/16 v1, 0xd

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65711
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8g;->A0H(Lcom/facebook/ads/redexgen/X/8J;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xe4

    const/16 v1, 0xd

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65712
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 65713
    .local v2, "coreEventsSB":Ljava/lang/StringBuilder;
    sget-object v6, Lcom/facebook/ads/redexgen/X/X0;->A09:[Lcom/facebook/ads/redexgen/X/0T;

    .line 65714
    .local v1, "coreEvents":[Lcom/facebook/ads/redexgen/X/0T;
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_2
    array-length v0, v6

    const/4 v1, 0x1

    if-ge v4, v0, :cond_a

    .line 65715
    aget-object v0, v6, v4

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0T;->A02()I

    move-result v0

    add-int/lit16 v0, v0, 0xfa0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65716
    array-length v0, v6

    sub-int/2addr v0, v1

    if-eq v4, v0, :cond_7

    .line 65717
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65718
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 65719
    :cond_8
    const/16 v2, 0x1e1

    const/4 v1, 0x4

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65720
    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65721
    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 65722
    .local v5, "app_certs":Ljava/lang/String;
    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/X0;->A08:[Ljava/lang/String;

    const-string v1, "BCkwQrwTZAh8DbNWYHcyNfiOEn9j0AAp"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Pk3Ope4wXmj489nPkHNYEkNTYlpVjL8G"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v4, :cond_2

    goto/16 :goto_0

    .line 65723
    .end local v0    # "i":I
    :cond_a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xd2

    sget-object v2, Lcom/facebook/ads/redexgen/X/X0;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/X0;->A08:[Ljava/lang/String;

    const-string v1, "RdA"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v1, 0x12

    const/4 v0, 0x2

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X0;->A00(Lcom/facebook/ads/redexgen/X/8J;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 65725
    .local v0, "fbPackageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_c

    const/4 v3, 0x1

    :cond_c
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x169

    const/16 v1, 0x14

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65726
    if-eqz v4, :cond_d

    .line 65727
    iget v0, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x17d

    const/16 v1, 0x12

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65728
    :cond_d
    return-object v5
.end method

.method public final A7S()Ljava/lang/String;
    .locals 1

    .line 65729
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9F;->A00()Lcom/facebook/ads/redexgen/X/9E;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/X0;->A7T(Lcom/facebook/ads/redexgen/X/9E;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A7T(Lcom/facebook/ads/redexgen/X/9E;)Ljava/lang/String;
    .locals 8

    .line 65730
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A09(Lcom/facebook/ads/redexgen/X/8J;Z)V

    .line 65731
    const/4 v5, 0x0

    .line 65732
    .local p0, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 65733
    .local p1, "base64":Landroid/util/Base64OutputStream;
    const/4 v3, 0x0

    .line 65734
    .local v1, "zip":Ljava/util/zip/DeflaterOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v5, v0

    .line 65735
    const/4 v7, 0x0

    new-instance v0, Landroid/util/Base64OutputStream;

    invoke-direct {v0, v5, v7}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v4, v0

    .line 65736
    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v0, v4}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    .line 65737
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/X0;->A6S()Ljava/util/Map;

    move-result-object v2

    .line 65738
    .local v0, "environmentAdParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5h;->A00()Lcom/facebook/ads/redexgen/X/5f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5f;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A07(Lcom/facebook/ads/redexgen/X/8J;)V

    .line 65740
    :cond_0
    const/16 v6, 0x118

    const/4 v1, 0x4

    const/16 v0, 0x34

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v1

    .line 65741
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5h;->A00()Lcom/facebook/ads/redexgen/X/5f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5f;->A03()Ljava/lang/String;

    move-result-object v0

    .line 65742
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65743
    const/16 v6, 0x1c7

    const/16 v1, 0xa

    const/16 v0, 0x5a

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/X0;->A02:Lcom/facebook/ads/redexgen/X/8w;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    .line 65744
    invoke-static {v1, v0, v7}, Lcom/facebook/ads/redexgen/X/9L;->A06(Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/8J;Z)Ljava/lang/String;

    move-result-object v0

    .line 65745
    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65746
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65747
    const/16 v6, 0x67

    const/16 v1, 0xa

    const/16 v0, 0x45

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65748
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 65749
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65750
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/9E;->A2N(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 65751
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 65752
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 65753
    .local v4, "envParameters":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 65754
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 65755
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v6, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65756
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 65757
    invoke-virtual {v4}, Landroid/util/Base64OutputStream;->close()V

    .line 65758
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 65759
    :catch_0
    return-object v0

    .line 65760
    :catch_1
    move-exception v6

    .line 65761
    :try_start_2
    const/16 v2, 0xf1

    const/16 v1, 0x1a

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "out":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "base64":Landroid/util/Base64OutputStream;
    .end local v1    # "zip":Ljava/util/zip/DeflaterOutputStream;
    .end local v0    # "environmentAdParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65762
    .end local v0
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "envParameters":Lorg/json/JSONObject;
    :catchall_0
    move-exception v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/X0;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 65763
    .end local v0
    .restart local p0    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "base64":Landroid/util/Base64OutputStream;
    .restart local v1    # "zip":Ljava/util/zip/DeflaterOutputStream;
    .restart local v0    # "environmentAdParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/X0;->A08:[Ljava/lang/String;

    const-string v1, "tBEywTa582eygB6ZDfuZ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "t5OASyUSxnrvHDDzBp0B"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_5

    .line 65764
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 65765
    :cond_5
    if-eqz v4, :cond_6

    .line 65766
    invoke-virtual {v4}, Landroid/util/Base64OutputStream;->close()V

    .line 65767
    :cond_6
    if-eqz v5, :cond_7

    .line 65768
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 65769
    :catch_2
    :cond_7
    throw v6
.end method
