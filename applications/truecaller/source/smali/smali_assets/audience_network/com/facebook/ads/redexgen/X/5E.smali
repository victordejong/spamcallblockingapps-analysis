.class public final Lcom/facebook/ads/redexgen/X/5E;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;


# static fields
.field public static A0G:[B

.field public static A0H:[Ljava/lang/String;

.field public static final A0I:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/MediaViewVideoRenderer;

.field public A01:Lcom/facebook/ads/VideoAutoplayBehavior;

.field public A02:Lcom/facebook/ads/redexgen/X/57;

.field public A03:Lcom/facebook/ads/redexgen/X/XT;

.field public A04:Lcom/facebook/ads/redexgen/X/Jm;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/AA;

.field public A06:Z

.field public A07:Z

.field public A08:Lcom/facebook/ads/NativeAd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A09:Lcom/facebook/ads/redexgen/X/Mi;

.field public final A0A:Lcom/facebook/ads/redexgen/X/M3;

.field public final A0B:Lcom/facebook/ads/redexgen/X/L3;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Kq;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Kk;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Kc;

.field public final A0F:Lcom/facebook/ads/redexgen/X/KM;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Ds1OlE9QLNwB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "aoTFD1mdY9qS2iG1b6xBMIzf9BXXSrYm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "osndMvDCAJCV1YpU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nBivoQhUG9UhcV9idWewaYAmGQw5UcJS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JB025Vwse6xgHKaH4PdlPsgjNbTaZijW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Rr8Hg5ZtJOltbAd8rryGswWrdJNm13cq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "EfdUYpEvlCzoAxPYZB8PQhxNy"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DXUiKhR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5E;->A0H:[Ljava/lang/String;

    .line 13530
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5E;->A02()V

    const-class v0, Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5E;->A0I:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13532
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ej;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ej;-><init>(Lcom/facebook/ads/redexgen/X/5E;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A0D:Lcom/facebook/ads/redexgen/X/Kk;

    .line 13533
    new-instance v0, Lcom/facebook/ads/redexgen/X/Eb;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Eb;-><init>(Lcom/facebook/ads/redexgen/X/5E;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A0C:Lcom/facebook/ads/redexgen/X/Kq;

    .line 13534
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ea;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ea;-><init>(Lcom/facebook/ads/redexgen/X/5E;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A0B:Lcom/facebook/ads/redexgen/X/L3;

    .line 13535
    new-instance v0, Lcom/facebook/ads/redexgen/X/EZ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/EZ;-><init>(Lcom/facebook/ads/redexgen/X/5E;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A0E:Lcom/facebook/ads/redexgen/X/Kc;

    .line 13536
    new-instance v0, Lcom/facebook/ads/redexgen/X/EY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/EY;-><init>(Lcom/facebook/ads/redexgen/X/5E;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A09:Lcom/facebook/ads/redexgen/X/Mi;

    .line 13537
    new-instance v0, Lcom/facebook/ads/redexgen/X/EX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/EX;-><init>(Lcom/facebook/ads/redexgen/X/5E;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A0F:Lcom/facebook/ads/redexgen/X/KM;

    .line 13538
    new-instance v0, Lcom/facebook/ads/redexgen/X/E8;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/E8;-><init>(Lcom/facebook/ads/redexgen/X/5E;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A0A:Lcom/facebook/ads/redexgen/X/M3;

    .line 13539
    new-instance v0, Lcom/facebook/ads/redexgen/X/57;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/57;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A02:Lcom/facebook/ads/redexgen/X/57;

    .line 13540
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/5E;)Lcom/facebook/ads/MediaViewVideoRenderer;
    .locals 0

    .line 13541
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5E;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5E;->A0G:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xcf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5E;->A0G:[B

    return-void

    :array_0
    .array-data 1
        -0x1et
        0x7t
        0xft
        -0x6t
        0x5t
        0x2t
        -0x3t
        -0x47t
        -0x11t
        0x2t
        -0x2t
        0x10t
        -0x47t
        -0x4t
        0x8t
        0x7t
        0xct
        0xdt
        0xbt
        0xet
        -0x4t
        0xdt
        0x8t
        0xbt
        -0x47t
        0x9t
        -0x6t
        0xbt
        -0x6t
        0x6t
        0xct
        -0x47t
        0xdt
        0x12t
        0x9t
        -0x2t
        -0x39t
        -0x22t
        -0x10t
        -0x10t
        -0xat
        -0xct
        -0x7t
        -0xet
        -0x55t
        -0x8t
        0x0t
        -0x2t
        -0x1t
        -0x55t
        -0x13t
        -0x10t
        -0x55t
        -0x5t
        -0x3t
        -0x10t
        -0x12t
        -0x10t
        -0x11t
        -0x10t
        -0x11t
        -0x55t
        -0x13t
        0x4t
        -0x55t
        -0x14t
        -0x55t
        -0x12t
        -0x14t
        -0x9t
        -0x9t
        -0x55t
        -0x1t
        -0x6t
        -0x55t
        -0x10t
        -0x7t
        -0xet
        -0x14t
        -0xet
        -0x10t
        -0x22t
        -0x10t
        -0x10t
        -0xat
        -0x49t
        -0x55t
        -0x14t
        -0x7t
        -0x11t
        -0x55t
        -0xft
        -0x6t
        -0x9t
        -0x9t
        -0x6t
        0x2t
        -0x10t
        -0x11t
        -0x55t
        -0x13t
        0x4t
        -0x55t
        -0x14t
        -0x55t
        -0x12t
        -0x14t
        -0x9t
        -0x9t
        -0x55t
        -0x1t
        -0x6t
        -0x55t
        -0x11t
        -0xct
        -0x2t
        -0x10t
        -0x7t
        -0xet
        -0x14t
        -0xet
        -0x10t
        -0x22t
        -0x10t
        -0x10t
        -0xat
        -0x47t
        -0x1bt
        -0x16t
        -0xct
        -0x1at
        -0x11t
        -0x18t
        -0x1et
        -0x18t
        -0x1at
        -0x2ct
        -0x1at
        -0x1at
        -0x14t
        -0x5ft
        -0x1ct
        -0x1et
        -0x13t
        -0x13t
        -0x1at
        -0x1bt
        -0x5ft
        -0x8t
        -0x16t
        -0xbt
        -0x17t
        -0x10t
        -0xat
        -0xbt
        -0x5ft
        -0x1at
        -0x11t
        -0x18t
        -0x1et
        -0x18t
        -0x1at
        -0x2ct
        -0x1at
        -0x1at
        -0x14t
        -0x51t
        0x4at
        0x53t
        0x4ct
        0x46t
        0x4ct
        0x4at
        0x38t
        0x4at
        0x4at
        0x50t
        0x5t
        0x48t
        0x46t
        0x51t
        0x51t
        0x4at
        0x49t
        0x5t
        0x5ct
        0x4et
        0x59t
        0x4dt
        0x54t
        0x5at
        0x59t
        0x5t
        0x49t
        0x4et
        0x58t
        0x4at
        0x53t
        0x4ct
        0x46t
        0x4ct
        0x4at
        0x38t
        0x4at
        0x4at
        0x50t
        0x13t
    .end array-data
.end method


# virtual methods
.method public final A03()V
    .locals 4

    .line 13542
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/MediaViewVideoRenderer;->pause(Z)V

    .line 13543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/AA;->setClientToken(Ljava/lang/String;)V

    .line 13544
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/AA;->setVideoMPD(Ljava/lang/String;)V

    .line 13545
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    move-object v0, v2

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->setVideoURI(Landroid/net/Uri;)V

    .line 13546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/AA;->setVideoCTA(Ljava/lang/String;)V

    .line 13547
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/AA;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 13548
    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A01:Lcom/facebook/ads/VideoAutoplayBehavior;

    .line 13549
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A08:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 13550
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Tj;

    move-result-object v0

    .line 13551
    invoke-virtual {v0, v3, v3}, Lcom/facebook/ads/redexgen/X/Tj;->A1a(ZZ)V

    .line 13552
    :cond_0
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/5E;->A08:Lcom/facebook/ads/NativeAd;

    .line 13553
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A04:Lcom/facebook/ads/redexgen/X/Jm;

    if-eqz v0, :cond_1

    .line 13554
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Jm;->AF6()V

    .line 13555
    :cond_1
    return-void
.end method

.method public final A04(Lcom/facebook/ads/NativeAd;)V
    .locals 3

    .line 13556
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5E;->A08:Lcom/facebook/ads/NativeAd;

    .line 13557
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Tj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A10()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v1

    .line 13558
    .local p0, "adObjectContext":Lcom/facebook/ads/redexgen/X/XT;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/XT;->A0F(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 13559
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/5F;

    .line 13560
    .local p1, "nativeAdApi":Lcom/facebook/ads/redexgen/X/5F;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    .line 13561
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Tj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A19()Ljava/lang/String;

    move-result-object v0

    .line 13562
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->setClientToken(Ljava/lang/String;)V

    .line 13563
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/5F;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->setVideoMPD(Ljava/lang/String;)V

    .line 13564
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/5F;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->setVideoURI(Ljava/lang/String;)V

    .line 13565
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Tj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0x()Lcom/facebook/ads/redexgen/X/cy;

    move-result-object v0

    .line 13566
    .local v0, "adapter":Lcom/facebook/ads/redexgen/X/cy;
    if-eqz v0, :cond_0

    .line 13567
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cy;->A0F()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->setVideoProgressReportIntervalMs(I)V

    .line 13568
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->setVideoCTA(Ljava/lang/String;)V

    .line 13569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AA;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 13570
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/5F;->getVideoAutoplayBehavior()Lcom/facebook/ads/VideoAutoplayBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A01:Lcom/facebook/ads/VideoAutoplayBehavior;

    .line 13571
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A04:Lcom/facebook/ads/redexgen/X/Jm;

    if-eqz v0, :cond_1

    .line 13572
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Jm;->AER(Lcom/facebook/ads/NativeAd;)V

    .line 13573
    :cond_1
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/JT;)V
    .locals 1

    .line 13574
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AA;->setAdEventManager(Lcom/facebook/ads/redexgen/X/JT;)V

    .line 13575
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/Jm;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/Jm;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13576
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5E;->A04:Lcom/facebook/ads/redexgen/X/Jm;

    .line 13577
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/Mc;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/Mc;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AA;->setListener(Lcom/facebook/ads/redexgen/X/Mc;)V

    .line 13579
    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 13580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->A0V()V

    .line 13581
    return-void
.end method

.method public final disengageSeek(Lcom/facebook/ads/VideoStartReason;)V
    .locals 4

    .line 13582
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A06:Z

    if-nez v0, :cond_2

    .line 13583
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/5E;->A0H:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/5E;->A0H:[Ljava/lang/String;

    const-string v1, "WtsbSHtQErqq"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "XLMSbaKAMNULMDv3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 13584
    sget-object v3, Lcom/facebook/ads/redexgen/X/5E;->A0I:Ljava/lang/String;

    const/16 v2, 0x7f

    const/16 v1, 0x28

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5E;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13585
    :cond_1
    return-void

    .line 13586
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A06:Z

    .line 13587
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A07:Z

    if-eqz v0, :cond_3

    .line 13588
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    .line 13589
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Pj;->A00(Lcom/facebook/ads/VideoStartReason;)Lcom/facebook/ads/redexgen/X/Pj;

    move-result-object v1

    const/4 v0, 0x3

    .line 13590
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0b(Lcom/facebook/ads/redexgen/X/Pj;I)V

    .line 13591
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onSeekDisengaged()V

    .line 13592
    return-void
.end method

.method public final engageSeek()V
    .locals 4

    .line 13593
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A06:Z

    if-eqz v0, :cond_1

    .line 13594
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13595
    sget-object v3, Lcom/facebook/ads/redexgen/X/5E;->A0I:Ljava/lang/String;

    const/16 v2, 0xa7

    const/16 v1, 0x28

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5E;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13596
    :cond_0
    return-void

    .line 13597
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/5E;->A06:Z

    .line 13598
    sget-object v1, Lcom/facebook/ads/redexgen/X/QW;->A0A:Lcom/facebook/ads/redexgen/X/QW;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getState()Lcom/facebook/ads/redexgen/X/QW;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QW;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A07:Z

    .line 13599
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Po;->A0e(ZI)V

    .line 13600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onSeekEngaged()V

    .line 13601
    return-void
.end method

.method public final getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;
    .locals 1

    .line 13602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A02:Lcom/facebook/ads/redexgen/X/57;

    return-object v0
.end method

.method public final getCurrentTimeMs()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 13603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getCurrentPositionInMillis()I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 13604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getDuration()I

    move-result v0

    return v0
.end method

.method public final getVideoView()Landroid/view/View;
    .locals 1

    .line 13605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getVideoView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getVolume()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 13606
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getVolume()F

    move-result v0

    return v0
.end method

.method public final initialize(Lcom/facebook/ads/internal/api/AdViewConstructorParams;Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .locals 7

    .line 13607
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/5E;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    .line 13608
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 13609
    .local p0, "context":Landroid/content/Context;
    instance-of v0, v3, Lcom/facebook/ads/redexgen/X/XT;

    if-eqz v0, :cond_3

    .line 13610
    check-cast v3, Lcom/facebook/ads/redexgen/X/XT;

    .line 13611
    .local p1, "adContextWrapper":Lcom/facebook/ads/redexgen/X/XT;
    .restart local p1    # "adContextWrapper":Lcom/facebook/ads/redexgen/X/XT;
    :goto_0
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/5E;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 13612
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getInitializationType()I

    move-result v0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_0

    if-ne v0, v4, :cond_4

    .line 13613
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v2

    .line 13614
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleRes()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AA;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/AA;-><init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    .line 13615
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {p2}, Lcom/facebook/ads/MediaViewVideoRenderer;->shouldAllowBackgroundPlayback()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->setEnableBackgroundVideo(Z)V

    .line 13616
    const/4 v3, -0x1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 13617
    .local p2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Po;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13618
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5E;->A02:Lcom/facebook/ads/redexgen/X/57;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v1, v0, v3, v2}, Lcom/facebook/ads/redexgen/X/57;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 13619
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ld;->A0A:Lcom/facebook/ads/redexgen/X/Ld;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ld;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Ld;)V

    .line 13620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    .line 13621
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getEventBus()Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v3

    const/4 v0, 0x7

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9P;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A0D:Lcom/facebook/ads/redexgen/X/Kk;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A0C:Lcom/facebook/ads/redexgen/X/Kq;

    aput-object v0, v2, v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A0B:Lcom/facebook/ads/redexgen/X/L3;

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A0E:Lcom/facebook/ads/redexgen/X/Kc;

    aput-object v0, v2, v4

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A09:Lcom/facebook/ads/redexgen/X/Mi;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A0F:Lcom/facebook/ads/redexgen/X/KM;

    aput-object v0, v2, v1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A0A:Lcom/facebook/ads/redexgen/X/M3;

    aput-object v0, v2, v1

    .line 13622
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9O;->A03([Lcom/facebook/ads/redexgen/X/9P;)V

    .line 13623
    return-void

    .line 13624
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v2

    .line 13625
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleAttr()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AA;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/AA;-><init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    .line 13626
    goto :goto_1

    .line 13627
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AA;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/AA;-><init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    .line 13628
    goto :goto_1

    .line 13629
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/AA;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/AA;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    .line 13630
    goto :goto_1

    .line 13631
    .end local p1    # "adContextWrapper":Lcom/facebook/ads/redexgen/X/XT;
    :cond_3
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/59;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v3

    goto/16 :goto_0

    .line 13632
    :cond_4
    const/4 v2, 0x0

    const/16 v1, 0x25

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5E;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final pause(Z)V
    .locals 2

    .line 13633
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    const/4 v0, 0x2

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0e(ZI)V

    .line 13634
    return-void
.end method

.method public final play(Lcom/facebook/ads/VideoStartReason;)V
    .locals 3

    .line 13635
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    .line 13636
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Pj;->A00(Lcom/facebook/ads/VideoStartReason;)Lcom/facebook/ads/redexgen/X/Pj;

    move-result-object v1

    .line 13637
    const/4 v0, 0x2

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0b(Lcom/facebook/ads/redexgen/X/Pj;I)V

    .line 13638
    return-void
.end method

.method public final seekTo(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 13639
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A06:Z

    if-nez v0, :cond_1

    .line 13640
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13641
    sget-object v3, Lcom/facebook/ads/redexgen/X/5E;->A0I:Ljava/lang/String;

    const/16 v2, 0x25

    const/16 v1, 0x5a

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5E;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13642
    :cond_0
    return-void

    .line 13643
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Po;->A0Y(I)V

    .line 13644
    return-void
.end method

.method public final setVolume(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 13645
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Po;->setVolume(F)V

    .line 13646
    return-void
.end method

.method public final shouldAutoplay()Z
    .locals 3

    .line 13647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5E;->A05:Lcom/facebook/ads/redexgen/X/AA;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getState()Lcom/facebook/ads/redexgen/X/QW;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A06:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v1, v0, :cond_1

    .line 13648
    :cond_0
    return v2

    .line 13649
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5E;->A01:Lcom/facebook/ads/VideoAutoplayBehavior;

    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->ON:Lcom/facebook/ads/VideoAutoplayBehavior;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5E;->A01:Lcom/facebook/ads/VideoAutoplayBehavior;

    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    if-ne v1, v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method
