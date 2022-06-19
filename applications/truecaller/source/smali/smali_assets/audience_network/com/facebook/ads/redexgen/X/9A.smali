.class public final Lcom/facebook/ads/redexgen/X/9A;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/99;
    }
.end annotation


# static fields
.field public static A00:Z

.field public static A01:Z

.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A05:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A06:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qrNp1wG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4f9SKAEMWw8LBpPH9ClfYFaSVVluVAOE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "62aVnpwn360RV3u8SEcmxFYidJmBvefX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Gce9ySP9MgoEln4cNVrEo5sJO8CSkBrv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "GAv6eBsy68sSiadtgyjEU9blJSusD372"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OMedkGV5dbFzDsS0dZcen"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wlEAAxVLaYYUt0VSnPi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2B4l1t7rFez9Iyb0KdS6JKEUq9HBo8Fu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9A;->A03:[Ljava/lang/String;

    .line 19851
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9A;->A03()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9A;->A06:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19852
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9A;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19853
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9A;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/Kl;
    .locals 1

    .line 19855
    new-instance v0, Lcom/facebook/ads/redexgen/X/XF;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/XF;-><init>()V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/L1;
    .locals 1

    .line 19856
    new-instance v0, Lcom/facebook/ads/redexgen/X/XE;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XE;-><init>(Lcom/facebook/ads/redexgen/X/XS;)V

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/9A;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/9A;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/9A;->A03:[Ljava/lang/String;

    const-string v1, "IDfTBPjSyvL4biEe7dLkbKSavqcQmadb"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "Oy3yacq1X2KDRnpIDSUXWs28RTZJmhMt"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3c

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

.method public static A03()V
    .locals 1

    const/16 v0, 0xde

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9A;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x3ct
        -0x3ct
        -0x39t
        -0xat
        -0x3bt
        -0xat
        -0x3bt
        -0xbt
        -0x42t
        -0x46t
        -0x47t
        -0x13t
        -0x24t
        -0x1ft
        -0x23t
        -0x1at
        -0x25t
        -0x23t
        -0x3at
        -0x23t
        -0x14t
        -0x11t
        -0x19t
        -0x16t
        -0x1dt
        -0x3et
        -0x4dt
        -0x46t
        -0x71t
        -0x28t
        -0x23t
        -0x28t
        -0x1dt
        -0x28t
        -0x30t
        -0x25t
        -0x28t
        -0x17t
        -0x30t
        -0x1dt
        -0x28t
        -0x22t
        -0x23t
        -0x71t
        -0x1et
        -0x1dt
        -0x30t
        -0x1ft
        -0x1dt
        -0x2ct
        -0x2dt
        -0x3ct
        -0x2bt
        -0x24t
        -0x6ft
        -0x18t
        -0x2et
        -0x1ct
        -0x6ft
        -0x2et
        -0x23t
        -0x1dt
        -0x2at
        -0x2et
        -0x2bt
        -0x16t
        -0x6ft
        -0x26t
        -0x21t
        -0x26t
        -0x1bt
        -0x26t
        -0x2et
        -0x23t
        -0x26t
        -0x15t
        -0x2at
        -0x2bt
        -0x6et
        -0x6ft
        -0x3ct
        -0x24t
        -0x26t
        -0x1ft
        -0x1ft
        -0x26t
        -0x21t
        -0x28t
        -0x61t
        -0x3et
        -0x28t
        -0x22t
        -0x77t
        -0x33t
        -0x28t
        -0x29t
        -0x70t
        -0x23t
        -0x77t
        -0x34t
        -0x36t
        -0x2bt
        -0x2bt
        -0x77t
        -0x56t
        -0x22t
        -0x33t
        -0x2et
        -0x32t
        -0x29t
        -0x34t
        -0x32t
        -0x49t
        -0x32t
        -0x23t
        -0x20t
        -0x28t
        -0x25t
        -0x2ct
        -0x56t
        -0x33t
        -0x24t
        -0x69t
        -0x2et
        -0x29t
        -0x2et
        -0x23t
        -0x2et
        -0x36t
        -0x2bt
        -0x2et
        -0x1dt
        -0x32t
        -0x6ft
        -0x6et
        -0x69t
        -0x77t
        -0x44t
        -0x28t
        -0x2at
        -0x32t
        -0x77t
        -0x31t
        -0x22t
        -0x29t
        -0x34t
        -0x23t
        -0x2et
        -0x28t
        -0x29t
        -0x36t
        -0x2bt
        -0x2et
        -0x23t
        -0x1et
        -0x77t
        -0x2at
        -0x36t
        -0x1et
        -0x77t
        -0x29t
        -0x28t
        -0x23t
        -0x77t
        -0x20t
        -0x28t
        -0x25t
        -0x2ct
        -0x77t
        -0x27t
        -0x25t
        -0x28t
        -0x27t
        -0x32t
        -0x25t
        -0x2bt
        -0x1et
        -0x69t
        -0x42t
        -0x33t
        -0x3at
        -0x1ft
        -0x21t
        -0x18t
        -0x21t
        -0x14t
        -0x1dt
        -0x23t
        -0x9t
        -0x4t
        -0x9t
        0x2t
        -0x9t
        -0x11t
        -0x6t
        -0x9t
        0x8t
        -0xdt
        0x5t
        0xat
        0x5t
        0x10t
        0x5t
        -0x3t
        0x8t
        0x5t
        0x16t
        0x1t
        -0x3ct
        -0x3bt
        -0x44t
        0xat
        0xbt
        0x10t
        -0x44t
        -0x1t
        -0x3t
        0x8t
        0x8t
        0x1t
        0x0t
        -0x36t
    .end array-data
.end method

.method public static A04(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 2

    .line 19857
    sget-object v1, Lcom/facebook/ads/redexgen/X/M1;->A01:Lcom/facebook/ads/redexgen/X/M1;

    new-instance v0, Lcom/facebook/ads/redexgen/X/XG;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/XG;-><init>(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M1;->execute(Ljava/lang/Runnable;)V

    .line 19858
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 0

    .line 19859
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/9A;->A04(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V

    return-void
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/XS;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 19860
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JF;->A0P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/9A;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 19861
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19862
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    .line 19863
    .local p0, "defaultUncaughtExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v1, Lcom/facebook/ads/redexgen/X/XC;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/XC;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/8c;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/8c;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/8b;)V

    .line 19864
    .local v0, "reportHandler":Lcom/facebook/ads/redexgen/X/8c;
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19865
    :catch_0
    move-exception v0

    .line 19866
    .local p0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object p0

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A1L:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 19867
    const/16 v2, 0xb5

    const/4 v1, 0x7

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9A;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 19868
    .end local p0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/XS;)V
    .locals 2

    .line 19869
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-static {p0, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/9A;->A0G(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 19870
    return-void
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/XS;)V
    .locals 2

    .line 19871
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-static {p0, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/9A;->A0G(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 19872
    return-void
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/XS;)V
    .locals 1

    .line 19873
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JD;->A1U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19874
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/9A;->A0E(Lcom/facebook/ads/redexgen/X/XS;I)V

    .line 19875
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JD;->A1Y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19876
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/9A;->A0B(Lcom/facebook/ads/redexgen/X/XS;)V

    .line 19877
    :cond_1
    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/XS;)V
    .locals 2

    .line 19878
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JD;->A1V(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19879
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/9A;->A0F(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 19880
    :cond_0
    return-void
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/XS;)V
    .locals 2

    .line 19881
    sget-object v1, Lcom/facebook/ads/redexgen/X/MA;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/XH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XH;-><init>(Lcom/facebook/ads/redexgen/X/XS;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19882
    return-void
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/XS;)V
    .locals 3

    .line 19883
    new-instance v2, Lcom/facebook/ads/redexgen/X/XB;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/XB;-><init>(Lcom/facebook/ads/redexgen/X/8J;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/XA;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/XA;-><init>()V

    .line 19884
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    .line 19885
    invoke-static {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A0C(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/8f;Lcom/facebook/ads/redexgen/X/8e;Z)V

    .line 19886
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A08()Lcom/facebook/ads/redexgen/X/JT;

    .line 19887
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/5x;->A04(Lcom/facebook/ads/redexgen/X/XS;Ljava/lang/String;)V

    .line 19888
    return-void
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/XS;)V
    .locals 0

    .line 19889
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/9A;->A0C(Lcom/facebook/ads/redexgen/X/XS;)V

    return-void
.end method

.method public static A0E(Lcom/facebook/ads/redexgen/X/XS;I)V
    .locals 6

    .line 19890
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8I;->A01(Lcom/facebook/ads/redexgen/X/XS;)V

    .line 19891
    sget-object v1, Lcom/facebook/ads/redexgen/X/9A;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19892
    return-void

    .line 19893
    :cond_0
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebuggerOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19894
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/KI;->A02()V

    .line 19895
    :cond_2
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/9A;->A06(Lcom/facebook/ads/redexgen/X/XS;)V

    .line 19896
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JD;->A0k(Landroid/content/Context;)Z

    move-result v3

    .line 19897
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v2

    .line 19898
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9A;->A00()Lcom/facebook/ads/redexgen/X/Kl;

    move-result-object v1

    .line 19899
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/9A;->A01(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/L1;

    move-result-object v0

    .line 19900
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ky;->A00(ZZLcom/facebook/ads/redexgen/X/Kl;Lcom/facebook/ads/redexgen/X/L1;)V

    .line 19901
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JD;->A02(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    .line 19902
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/5q;->A03(J)V

    .line 19903
    new-instance v0, Lcom/facebook/ads/redexgen/X/XD;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XD;-><init>(Lcom/facebook/ads/redexgen/X/XS;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qx;->A09(Lcom/facebook/ads/redexgen/X/Qd;)V

    .line 19904
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 19905
    const/16 v2, 0x8

    const/16 v1, 0x11

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9A;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x59

    const/16 v1, 0x59

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9A;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19906
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A0J:I

    const/16 v2, 0xc6

    const/16 v1, 0x18

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9A;->A02(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/String;)V

    .line 19907
    const/16 v2, 0xb2

    const/4 v1, 0x3

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9A;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A98(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 19908
    :cond_3
    const-class v0, Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {p0, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A04(Lcom/facebook/ads/redexgen/X/XS;Ljava/lang/Class;)V

    .line 19909
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/MA;->A05(Landroid/content/Context;)V

    .line 19910
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Je;->A05(Lcom/facebook/ads/redexgen/X/8J;)V

    .line 19911
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/0u;->A0C(Lcom/facebook/ads/redexgen/X/8J;)V

    .line 19912
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JD;->A0s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19913
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/4r;->A00(Landroid/content/Context;)V

    .line 19914
    :cond_4
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JD;->A1D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19915
    invoke-static {}, Lcom/facebook/ads/redexgen/X/X3;->A02()Lcom/facebook/ads/redexgen/X/X3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/X3;->A7H(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/Jf;

    .line 19916
    :cond_5
    return-void
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V
    .locals 5
    .param p1    # Lcom/facebook/ads/AudienceNetworkAds$InitListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 19917
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8I;->A01(Lcom/facebook/ads/redexgen/X/XS;)V

    .line 19918
    const/4 v2, 0x0

    .line 19919
    .local p0, "execute":Z
    const-class v1, Lcom/facebook/ads/redexgen/X/9A;

    monitor-enter v1

    .line 19920
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/9A;->A00:Z

    const/4 v4, 0x1

    if-nez v0, :cond_2

    .line 19921
    if-eq p2, v4, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 19922
    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 19923
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/9A;->A01:Z

    if-nez v0, :cond_2

    .line 19924
    sput-boolean v4, Lcom/facebook/ads/redexgen/X/9A;->A01:Z

    .line 19925
    const/4 v2, 0x1

    goto :goto_1

    .line 19926
    :cond_1
    :goto_0
    sput-boolean v4, Lcom/facebook/ads/redexgen/X/9A;->A00:Z

    .line 19927
    const/4 v2, 0x1

    .line 19928
    :cond_2
    :goto_1
    monitor-exit v1

    .line 19929
    if-eqz v2, :cond_4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19930
    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/9A;->A0E(Lcom/facebook/ads/redexgen/X/XS;I)V

    .line 19931
    sget-object v1, Lcom/facebook/ads/redexgen/X/MA;->A08:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/XI;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/XI;-><init>(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/AudienceNetworkAds$InitListener;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19932
    .end local p1    # null:Lcom/facebook/ads/AudienceNetworkAds$InitListener;
    :cond_3
    :goto_2
    return-void

    .line 19933
    :cond_4
    if-ne p2, v4, :cond_3

    .line 19934
    const/16 v2, 0x33

    const/16 v1, 0x26

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9A;->A02(III)Ljava/lang/String;

    move-result-object v3

    .line 19935
    .local p1, "alreadyInitializedMessage":Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 19936
    new-instance v0, Lcom/facebook/ads/redexgen/X/99;

    invoke-direct {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/99;-><init>(ZLjava/lang/String;)V

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/9A;->A04(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V

    goto :goto_2

    .line 19937
    :cond_5
    const/16 v2, 0x8

    const/16 v1, 0x11

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9A;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 19938
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static A0G(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V
    .locals 5
    .param p1    # Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AudienceNetworkAds$InitListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v2, 0xbc

    const/16 v1, 0xa

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9A;->A02(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x19

    const/16 v1, 0x1a

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9A;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9A;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KI;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19939
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qx;->A06()V

    .line 19940
    invoke-static {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/9A;->A0F(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 19941
    return-void
.end method

.method public static declared-synchronized A0H()Z
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/9A;

    monitor-enter v1

    .line 19942
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/9A;->A00:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
