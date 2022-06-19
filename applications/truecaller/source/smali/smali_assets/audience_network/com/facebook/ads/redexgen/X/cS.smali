.class public abstract Lcom/facebook/ads/redexgen/X/cS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/KW;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HardcodedIPAddressUse"
    }
.end annotation


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;

.field public static final A0F:Landroid/os/Handler;

.field public static final A0G:Lcom/facebook/ads/redexgen/X/0s;

.field public static final A0H:Lcom/facebook/ads/redexgen/X/KX;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static final A0I:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/0n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/0n;

.field public A02:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/94;

.field public A05:Lcom/facebook/ads/redexgen/X/KU;

.field public A06:Lcom/facebook/ads/redexgen/X/0o;

.field public final A07:Lcom/facebook/ads/redexgen/X/1o;

.field public final A08:Lcom/facebook/ads/redexgen/X/JT;

.field public final A09:Lcom/facebook/ads/redexgen/X/0s;

.field public final A0A:Lcom/facebook/ads/redexgen/X/KX;

.field public final A0B:Lcom/facebook/ads/redexgen/X/XT;

.field public volatile A0C:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4yJhIog9RzpC9w4XHjq79o6hmz2pMXrt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bLneqHgNlbzxjE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "P7gevZ65hMGDm5VmgpkLcWEi46YxYduR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Pajg2XTKXpS0pN0AoGLcPnQoa2IWF6Z7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YyJRdl3XxpBTstTmsw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OvgbPt0JG7dlaj99kqPbJKVmb9CPKTVr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "21VbiQWRKHmC0d4xB3zoTsbqXtN2ZOxw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Q3Y9mBD7X4l0uaedlY7FP5X0xCsXbtIX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/cS;->A0E:[Ljava/lang/String;

    .line 71715
    invoke-static {}, Lcom/facebook/ads/redexgen/X/cS;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/M7;->A02()V

    .line 71716
    const-class v0, Lcom/facebook/ads/redexgen/X/cS;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cS;->A0I:Ljava/lang/String;

    .line 71717
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/cS;->A0F:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1o;)V
    .locals 5

    .line 71718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71719
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A03:J

    .line 71720
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A02:Ljava/lang/String;

    .line 71721
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    .line 71722
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cS;->A07:Lcom/facebook/ads/redexgen/X/1o;

    .line 71723
    sget-object v0, Lcom/facebook/ads/redexgen/X/cS;->A0H:Lcom/facebook/ads/redexgen/X/KX;

    if-eqz v0, :cond_1

    .line 71724
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0A:Lcom/facebook/ads/redexgen/X/KX;

    .line 71725
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0A:Lcom/facebook/ads/redexgen/X/KX;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/KX;->A0O(Lcom/facebook/ads/redexgen/X/KW;)V

    .line 71726
    sget-object v0, Lcom/facebook/ads/redexgen/X/cS;->A0G:Lcom/facebook/ads/redexgen/X/0s;

    if-eqz v0, :cond_0

    .line 71727
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A09:Lcom/facebook/ads/redexgen/X/0s;

    .line 71728
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A0m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 71729
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/0s;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/0s;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A09:Lcom/facebook/ads/redexgen/X/0s;

    goto :goto_1

    .line 71730
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/KX;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0A:Lcom/facebook/ads/redexgen/X/KX;

    goto :goto_0

    .line 71731
    :goto_2
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 71732
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_2

    .line 71733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    goto :goto_3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71734
    :catch_0
    move-exception v4

    .line 71735
    .local p0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/facebook/ads/redexgen/X/cS;->A0I:Ljava/lang/String;

    const/16 v2, 0x30

    const/16 v1, 0x23

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71736
    .end local p0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->onAdLoadInvoked(Landroid/content/Context;)V

    .line 71737
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8J;->A08()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A08:Lcom/facebook/ads/redexgen/X/JT;

    .line 71738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4V()V

    .line 71739
    return-void
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/cS;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x8

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

    const/16 v0, 0x109

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cS;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0x4bt
        0x6et
        0x6bt
        0x7at
        0x7et
        0x6ft
        0x78t
        0x2at
        0x6et
        0x65t
        0x6ft
        0x79t
        0x2at
        0x64t
        0x65t
        0x7et
        0x2at
        0x6ft
        0x72t
        0x63t
        0x79t
        0x7et
        0x4et
        0x6bt
        0x6et
        0x7ft
        0x7bt
        0x6at
        0x7dt
        0x2ft
        0x66t
        0x7ct
        0x2ft
        0x61t
        0x7at
        0x63t
        0x63t
        0x2ft
        0x60t
        0x61t
        0x2ft
        0x7ct
        0x7bt
        0x6et
        0x7dt
        0x7bt
        0x4et
        0x6bt
        0x3et
        0x19t
        0x11t
        0x14t
        0x1dt
        0x1ct
        0x58t
        0xct
        0x17t
        0x58t
        0x11t
        0x16t
        0x11t
        0xct
        0x11t
        0x19t
        0x14t
        0x11t
        0x2t
        0x1dt
        0x58t
        0x3bt
        0x17t
        0x17t
        0x13t
        0x11t
        0x1dt
        0x35t
        0x19t
        0x16t
        0x19t
        0x1ft
        0x1dt
        0xat
        0x56t
        0x22t
        0x3t
        0x4ct
        0x1t
        0x3t
        0x1et
        0x9t
        0x4ct
        0xdt
        0x8t
        0x4ct
        0xft
        0xdt
        0x2t
        0x8t
        0x5t
        0x8t
        0xdt
        0x18t
        0x9t
        0x1ft
        0x42t
        0x58t
        0x7dt
        0x60t
        0x61t
        0x68t
        0x2ft
        0x6et
        0x6bt
        0x6et
        0x7ft
        0x7bt
        0x6at
        0x7dt
        0x2ft
        0x7bt
        0x76t
        0x7ft
        0x6at
        0x21t
        0x2at
        0x2ft
        0x6bt
        0x2at
        0x27t
        0x39t
        0x2et
        0x2at
        0x2ft
        0x32t
        0x6bt
        0x38t
        0x3ft
        0x2at
        0x39t
        0x3ft
        0x2et
        0x2ft
        0x4ct
        0x5dt
        0x44t
        0x2ct
        0x3bt
        0x5bt
        0x5et
        0x4bt
        0x5et
        0x70t
        0x5dt
        0x55t
        0x5at
        0x5ct
        0x4bt
        0x1ft
        0x56t
        0x4ct
        0x1ft
        0x51t
        0x4at
        0x53t
        0x53t
        0x30t
        0x3bt
        0x36t
        0x27t
        0x2ct
        0x25t
        0x21t
        0x30t
        0x31t
        0xat
        0x3ct
        0x31t
        0x1ct
        0x17t
        0xft
        0x10t
        0xbt
        0x16t
        0x17t
        0x14t
        0x1ct
        0x17t
        0xdt
        0x59t
        0x10t
        0xat
        0x59t
        0x1ct
        0x14t
        0x9t
        0xdt
        0x0t
        0x49t
        0x5dt
        0x4at
        0x5et
        0x5at
        0x4at
        0x41t
        0x4ct
        0x56t
        0x70t
        0x4ct
        0x4et
        0x5ft
        0x5ft
        0x46t
        0x41t
        0x48t
        0x47t
        0x40t
        0x58t
        0x4ft
        0x42t
        0x47t
        0x4at
        0xet
        0x5et
        0x42t
        0x4ft
        0x4dt
        0x4bt
        0x43t
        0x4bt
        0x40t
        0x5at
        0xet
        0x47t
        0x40t
        0xet
        0x5ct
        0x4bt
        0x5dt
        0x5et
        0x41t
        0x40t
        0x5dt
        0x4bt
        0x2ft
        0x2ct
        0x22t
        0x27t
        0x1ct
        0x37t
        0x2at
        0x2et
        0x26t
        0x1ct
        0x2et
        0x30t
        0x6dt
        0x7at
        0x6et
        0x6at
        0x7at
        0x6ct
        0x6bt
        0x40t
        0x76t
        0x7bt
    .end array-data
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/TW;)V
    .locals 12

    .line 71740
    move-object v4, p0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/TW;->A00()Lcom/facebook/ads/redexgen/X/94;

    move-result-object v1

    .line 71741
    .local p1, "placement":Lcom/facebook/ads/redexgen/X/94;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/94;->A05()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    if-nez v0, :cond_1

    .line 71742
    .end local v4
    .end local v1
    .end local v0
    .end local v2
    .end local v1
    .end local v0
    .end local v3
    .end local v0
    .end local v2
    :cond_0
    const/16 v2, 0xd6

    const/16 v1, 0x1d

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A06(III)Ljava/lang/String;

    move-result-object v3

    .line 71743
    .local v4, "errorMessage":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_AD_PLACEMENT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    new-instance v2, Lcom/facebook/ads/redexgen/X/K3;

    invoke-direct {v2, v0, v3}, Lcom/facebook/ads/redexgen/X/K3;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    .line 71744
    .local v1, "error":Lcom/facebook/ads/redexgen/X/K3;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/K3;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0R;->A4X(ILjava/lang/String;)V

    .line 71745
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 71746
    return-void

    .line 71747
    :cond_1
    iput-object v1, v4, Lcom/facebook/ads/redexgen/X/cS;->A04:Lcom/facebook/ads/redexgen/X/94;

    .line 71748
    const/4 v0, 0x0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/cS;->A00:Lcom/facebook/ads/redexgen/X/0n;

    .line 71749
    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/cS;->A04:Lcom/facebook/ads/redexgen/X/94;

    .line 71750
    .local v4, "currentPlacement":Lcom/facebook/ads/redexgen/X/94;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/94;->A04()Lcom/facebook/ads/redexgen/X/92;

    move-result-object v3

    .line 71751
    .local v1, "placementAd":Lcom/facebook/ads/redexgen/X/92;
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A06(III)Ljava/lang/String;

    move-result-object v6

    if-nez v3, :cond_2

    .line 71752
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v6}, Lcom/facebook/ads/redexgen/X/K3;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v6

    .line 71753
    .local v0, "error":Lcom/facebook/ads/redexgen/X/K3;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    .line 71754
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v5

    .line 71755
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/K3;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v3

    const/16 v2, 0x53

    const/16 v1, 0x16

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4X(ILjava/lang/String;)V

    .line 71756
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 71757
    return-void

    .line 71758
    .end local v0    # "error":Lcom/facebook/ads/redexgen/X/K3;
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/92;->A02()Ljava/lang/String;

    move-result-object v7

    .line 71759
    .local v2, "adapterName":Ljava/lang/String;
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/cS;->A09:Lcom/facebook/ads/redexgen/X/0s;

    .line 71760
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/94;->A05()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A0D()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0s;->A00(Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/redexgen/X/0n;

    move-result-object v2

    .line 71761
    .local v1, "adapter":Lcom/facebook/ads/redexgen/X/0n;
    if-nez v2, :cond_3

    .line 71762
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    .line 71763
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v6

    sget v5, Lcom/facebook/ads/redexgen/X/8m;->A0S:I

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A06(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v0, v7}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71764
    const/16 v2, 0x8e

    const/4 v1, 0x3

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v5, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 71765
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/K3;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/cS;->AAW(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 71766
    return-void

    .line 71767
    :cond_3
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cS;->A07:Lcom/facebook/ads/redexgen/X/1o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1o;->A00()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v1

    .line 71768
    .local v0, "adapterType":Lcom/facebook/ads/internal/protocol/AdPlacementType;
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/0n;->A75()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    if-eq v1, v0, :cond_4

    .line 71769
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v6}, Lcom/facebook/ads/redexgen/X/K3;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v6

    .line 71770
    .restart local v0    # "adapterType":Lcom/facebook/ads/internal/protocol/AdPlacementType;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    .line 71771
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v5

    .line 71772
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/K3;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v3

    const/16 v2, 0x69

    const/16 v1, 0x13

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4X(ILjava/lang/String;)V

    .line 71773
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 71774
    return-void

    .line 71775
    .end local v0    # "adapterType":Lcom/facebook/ads/internal/protocol/AdPlacementType;
    :cond_4
    iput-object v2, v4, Lcom/facebook/ads/redexgen/X/cS;->A00:Lcom/facebook/ads/redexgen/X/0n;

    .line 71776
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/94;->A05()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v8

    .line 71777
    .local v0, "placementDefinition":Lcom/facebook/ads/redexgen/X/95;
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/95;->A0F()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71778
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->AE0()V

    .line 71779
    :cond_5
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/92;->A04()Lorg/json/JSONObject;

    move-result-object v7

    .line 71780
    .local v3, "dataObject":Lorg/json/JSONObject;
    if-eqz v7, :cond_8

    .line 71781
    const/16 v6, 0xff

    const/16 v1, 0xa

    const/16 v0, 0x17

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71782
    .local v0, "requestId":Ljava/lang/String;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->AEV(Ljava/lang/String;)V

    .line 71783
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/8J;->A0B(Ljava/lang/String;)V

    .line 71784
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8I;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    .line 71785
    .local v2, "sdkContext":Lcom/facebook/ads/redexgen/X/XS;
    if-eqz v0, :cond_6

    .line 71786
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/8J;->A0B(Ljava/lang/String;)V

    .line 71787
    :cond_6
    const/16 v6, 0xc5

    const/16 v1, 0x11

    const/16 v0, 0x27

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/cS;->A0A(Lorg/json/JSONObject;)V

    .line 71788
    .end local v0    # "requestId":Ljava/lang/String;
    .end local v2    # "sdkContext":Lcom/facebook/ads/redexgen/X/XS;
    new-instance v6, Lcom/facebook/ads/redexgen/X/1p;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cS;->A07:Lcom/facebook/ads/redexgen/X/1o;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/1o;->A08:Ljava/lang/String;

    .line 71789
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/95;->A0C()J

    move-result-wide v10

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/1p;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/95;Ljava/lang/String;J)V

    .line 71790
    .local v0, "loadConfig":Lcom/facebook/ads/redexgen/X/1p;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cS;->A05:Lcom/facebook/ads/redexgen/X/KU;

    if-nez v0, :cond_7

    .line 71791
    const/16 v2, 0xb1

    const/16 v1, 0x14

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A06(III)Ljava/lang/String;

    move-result-object v3

    .line 71792
    .local v2, "errorMessage":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/K3;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v2

    .line 71793
    .local v0, "error":Lcom/facebook/ads/redexgen/X/K3;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/K3;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0R;->A4X(ILjava/lang/String;)V

    .line 71794
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 71795
    return-void

    .line 71796
    .end local v2    # "errorMessage":Ljava/lang/String;
    .end local v0    # "error":Lcom/facebook/ads/redexgen/X/K3;
    :cond_7
    invoke-virtual {v4, v2, v5, v3, v6}, Lcom/facebook/ads/redexgen/X/cS;->A0L(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/94;Lcom/facebook/ads/redexgen/X/92;Lcom/facebook/ads/redexgen/X/1p;)V

    .line 71797
    return-void

    .line 71798
    .end local v0
    :cond_8
    const/16 v2, 0x93

    const/16 v1, 0x12

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A06(III)Ljava/lang/String;

    move-result-object v3

    .line 71799
    .local v0, "errorMessage":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/K3;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v2

    .line 71800
    .local v2, "error":Lcom/facebook/ads/redexgen/X/K3;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/K3;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0R;->A4X(ILjava/lang/String;)V

    .line 71801
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 71802
    return-void
.end method

.method private final A09(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 71803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4Y(Z)V

    .line 71804
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A03:J

    .line 71805
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-ge v1, v0, :cond_1

    .line 71806
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->API_NOT_SUPPORTED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/K3;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/K3;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/cS;->AAW(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 71807
    return-void

    .line 71808
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 71809
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A07:Lcom/facebook/ads/redexgen/X/1o;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/1o;->A08:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A07:Lcom/facebook/ads/redexgen/X/1o;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1o;->A07:Lcom/facebook/ads/redexgen/X/K9;

    new-instance v2, Lcom/facebook/ads/redexgen/X/KE;

    invoke-direct {v2, v3, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;-><init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K9;)V
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/K4; {:try_start_0 .. :try_end_0} :catch_0

    .line 71810
    .local p0, "bidPayload":Lcom/facebook/ads/redexgen/X/KE;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cS;->A07:Lcom/facebook/ads/redexgen/X/1o;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    .line 71811
    invoke-virtual {v1, v0, v2, p2}, Lcom/facebook/ads/redexgen/X/1o;->A01(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/KE;Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/redexgen/X/KU;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A05:Lcom/facebook/ads/redexgen/X/KU;

    sget-object v1, Lcom/facebook/ads/redexgen/X/cS;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_2

    .line 71812
    sget-object v2, Lcom/facebook/ads/redexgen/X/cS;->A0E:[Ljava/lang/String;

    const-string v1, "3q2wB1pMY3UXfOrLgu"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "CsXqAZILgfX2KA"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cS;->A0A:Lcom/facebook/ads/redexgen/X/KX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A05:Lcom/facebook/ads/redexgen/X/KU;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A0N(Lcom/facebook/ads/redexgen/X/KU;)V

    .line 71813
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 71814
    .end local p0    # "bidPayload":Lcom/facebook/ads/redexgen/X/KE;
    :catch_0
    move-exception v0

    .line 71815
    .local p0, "e":Lcom/facebook/ads/redexgen/X/K4;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/K3;->A02(Lcom/facebook/ads/redexgen/X/K4;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/cS;->AAW(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 71816
    return-void
.end method

.method private A0A(Lorg/json/JSONObject;)V
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 71817
    if-eqz p1, :cond_0

    .line 71818
    const/16 v2, 0xa5

    const/16 v1, 0xc

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A02:Ljava/lang/String;

    .line 71819
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/0u;->A0G(Lorg/json/JSONObject;)V

    .line 71820
    :cond_0
    return-void
.end method


# virtual methods
.method public final A0B()J
    .locals 2

    .line 71821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A04:Lcom/facebook/ads/redexgen/X/94;

    if-eqz v0, :cond_0

    .line 71822
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/94;->A03()J

    move-result-wide v0

    return-wide v0

    .line 71823
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final A0C()Landroid/os/Handler;
    .locals 1

    .line 71824
    sget-object v0, Lcom/facebook/ads/redexgen/X/cS;->A0F:Landroid/os/Handler;

    return-object v0
.end method

.method public final A0D()Lcom/facebook/ads/redexgen/X/95;
    .locals 1

    .line 71825
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A04:Lcom/facebook/ads/redexgen/X/94;

    if-nez v0, :cond_0

    .line 71826
    const/4 v0, 0x0

    return-object v0

    .line 71827
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/94;->A05()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    return-object v0
.end method

.method public final A0E()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 71828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A01:Lcom/facebook/ads/redexgen/X/0n;

    if-nez v0, :cond_0

    .line 71829
    const/4 v0, 0x0

    return-object v0

    .line 71830
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0n;->A61()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0F()V
    .locals 5

    .line 71831
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A03:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A01(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A2e(J)V

    .line 71832
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A01:Lcom/facebook/ads/redexgen/X/0n;

    if-nez v0, :cond_0

    .line 71833
    return-void

    .line 71834
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 71835
    .local p0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A03:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A04(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xf3

    const/16 v1, 0xc

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71836
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A01:Lcom/facebook/ads/redexgen/X/0n;

    .line 71837
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0n;->A61()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A08:Lcom/facebook/ads/redexgen/X/JT;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Jb;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JT;)V

    .line 71838
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Jb;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ja;->A08:Lcom/facebook/ads/redexgen/X/Ja;

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/Jb;->A02(Lcom/facebook/ads/redexgen/X/Ja;Ljava/util/Map;)V

    .line 71839
    return-void
.end method

.method public final A0G()V
    .locals 5

    .line 71840
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cS;->A01:Lcom/facebook/ads/redexgen/X/0n;

    const/16 v2, 0x8e

    const/4 v1, 0x3

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A06(III)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_0

    .line 71841
    const/16 v2, 0x16

    const/16 v1, 0x1a

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A06(III)Ljava/lang/String;

    move-result-object v3

    .line 71842
    .local p0, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    .line 71843
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8m;->A0I:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/String;)V

    .line 71844
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 71845
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 71846
    .local v3, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0R;->A4X(ILjava/lang/String;)V

    .line 71847
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/K3;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 71848
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4a()V

    .line 71849
    return-void

    .line 71850
    .end local p0    # "errorMessage":Ljava/lang/String;
    .end local v3    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0C:Z

    if-eqz v0, :cond_1

    .line 71851
    const/16 v2, 0x7c

    const/16 v1, 0x12

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A06(III)Ljava/lang/String;

    move-result-object v3

    .line 71852
    .restart local p0    # "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    .line 71853
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8m;->A0E:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/String;)V

    .line 71854
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 71855
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_ALREADY_STARTED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 71856
    .restart local v3    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0R;->A4X(ILjava/lang/String;)V

    .line 71857
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/K3;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 71858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4Z()V

    .line 71859
    return-void

    .line 71860
    .end local p0    # "errorMessage":Ljava/lang/String;
    .end local v3    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A01:Lcom/facebook/ads/redexgen/X/0n;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0n;->A61()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71861
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cS;->A08:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A01:Lcom/facebook/ads/redexgen/X/0n;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0n;->A61()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/JT;->A99(Ljava/lang/String;)V

    .line 71862
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4b()V

    .line 71863
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0C:Z

    .line 71864
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cS;->A0J()V

    .line 71865
    return-void
.end method

.method public final A0H()V
    .locals 1

    .line 71866
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/cS;->A0R(Z)V

    .line 71867
    return-void
.end method

.method public final A0I()V
    .locals 1

    .line 71868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A02:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 71869
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0u;->A0D(Ljava/lang/String;)V

    .line 71870
    :cond_0
    return-void
.end method

.method public abstract A0J()V
.end method

.method public final A0K(Lcom/facebook/ads/redexgen/X/0n;)V
    .locals 0

    .line 71871
    if-eqz p1, :cond_0

    .line 71872
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/0n;->onDestroy()V

    .line 71873
    :cond_0
    return-void
.end method

.method public abstract A0L(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/94;Lcom/facebook/ads/redexgen/X/92;Lcom/facebook/ads/redexgen/X/1p;)V
.end method

.method public final A0M(Lcom/facebook/ads/redexgen/X/0o;)V
    .locals 0

    .line 71874
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    .line 71875
    return-void
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/1p;)V
    .locals 4

    .line 71876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4U()V

    .line 71877
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1p;->A03()Lorg/json/JSONObject;

    move-result-object v3

    .line 71878
    .local p0, "dataObject":Lorg/json/JSONObject;
    const/16 v2, 0x91

    const/4 v1, 0x2

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71879
    .local p1, "clientToken":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A08:Lcom/facebook/ads/redexgen/X/JT;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JT;)V

    .line 71881
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Jb;
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ja;->A04:Lcom/facebook/ads/redexgen/X/Ja;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A02(Lcom/facebook/ads/redexgen/X/Ja;Ljava/util/Map;)V

    .line 71882
    .end local v0    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Jb;
    :cond_0
    return-void
.end method

.method public A0O(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 71883
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A09(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 71884
    return-void
.end method

.method public final A0P(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 71885
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/cS;->A0O(Ljava/lang/String;)V

    .line 71886
    return-void
.end method

.method public final A0Q(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 71887
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/cS;->A09(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 71888
    return-void
.end method

.method public A0R(Z)V
    .locals 1

    .line 71889
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0C:Z

    if-nez v0, :cond_0

    .line 71890
    return-void

    .line 71891
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4c()V

    .line 71892
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A01:Lcom/facebook/ads/redexgen/X/0n;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/cS;->A0K(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 71893
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0C:Z

    .line 71894
    return-void
.end method

.method public final A0S()Z
    .locals 1

    .line 71895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A04:Lcom/facebook/ads/redexgen/X/94;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/94;->A0A()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized AAW(Lcom/facebook/ads/redexgen/X/K3;)V
    .locals 2

    monitor-enter p0

    .line 71896
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cS;->A0C()Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/cT;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/cT;-><init>(Lcom/facebook/ads/redexgen/X/cS;Lcom/facebook/ads/redexgen/X/K3;)V

    .line 71897
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71898
    monitor-exit p0

    return-void

    .line 71899
    .end local v1
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ACC(Lcom/facebook/ads/redexgen/X/TW;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    monitor-enter p0

    .line 71900
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/cS;->A08(Lcom/facebook/ads/redexgen/X/TW;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71901
    .restart local v1
    :catch_0
    move-exception v4

    .line 71902
    .local p0, "ex":Ljava/lang/Exception;
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    .line 71903
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v3

    const/16 v2, 0x8e

    const/4 v1, 0x3

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A06(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8m;->A0L:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 71904
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71905
    .end local p0    # "ex":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 71906
    .end local v2
    .end local v1
    :catchall_0
    move-exception v0

    .end local v1
    monitor-exit p0

    throw v0
.end method
