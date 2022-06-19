.class public final Lcom/facebook/ads/redexgen/X/5Q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/RewardedVideoAdApi;
.implements Lcom/facebook/ads/internal/context/Repairable;


# static fields
.field public static A05:[B


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/RewardedVideoAd;

.field public final A02:Lcom/facebook/ads/redexgen/X/21;

.field public final A03:Lcom/facebook/ads/redexgen/X/F2;

.field public final A04:Lcom/facebook/ads/redexgen/X/XT;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5Q;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/RewardedVideoAd;)V
    .locals 3

    .line 13940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13941
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/5Q;->A01:Lcom/facebook/ads/RewardedVideoAd;

    .line 13942
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/59;->A05(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/XT;

    .line 13943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/XT;

    .line 13944
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 13945
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A2g(Ljava/lang/String;Ljava/lang/String;)V

    .line 13946
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A01:Lcom/facebook/ads/RewardedVideoAd;

    new-instance v0, Lcom/facebook/ads/redexgen/X/21;

    invoke-direct {v0, v2, p2, v1}, Lcom/facebook/ads/redexgen/X/21;-><init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/String;Lcom/facebook/ads/RewardedVideoAd;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A02:Lcom/facebook/ads/redexgen/X/21;

    .line 13947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/XT;->A0G(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 13948
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A02:Lcom/facebook/ads/redexgen/X/21;

    new-instance v0, Lcom/facebook/ads/redexgen/X/F2;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/F2;-><init>(Lcom/facebook/ads/redexgen/X/21;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A03:Lcom/facebook/ads/redexgen/X/F2;

    .line 13949
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5Q;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x98

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5Q;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x74t
        0x72t
        0x7at
        0x77t
        0x73t
        -0x59t
        0x77t
        -0x5ct
        -0x5dt
        -0x5ft
        -0x57t
        -0x2et
        -0x5ct
        -0x2at
        -0x2et
        -0x5dt
        -0x7et
        -0x7dt
        -0x4dt
        0x7et
        -0x7dt
        -0x7at
        -0x79t
        0x4at
        0x4bt
        0x77t
        0x4at
        0x4bt
        0x4at
        0x4bt
        0x4bt
        0x52t
        0x77t
        0x7dt
        0x6et
        0x7bt
        0x77t
        0x6at
        0x75t
        0x29t
        0x6et
        0x7bt
        0x7bt
        0x78t
        0x7bt
        0x37t
        0x13t
        -0x33t
        -0x20t
        -0xet
        -0x24t
        -0x13t
        -0x21t
        -0x20t
        -0x21t
        -0x65t
        -0xft
        -0x1ct
        -0x21t
        -0x20t
        -0x16t
        -0x65t
        -0x24t
        -0x21t
        -0x65t
        -0x21t
        -0x20t
        -0x12t
        -0x11t
        -0x13t
        -0x16t
        -0xct
        -0x20t
        -0x21t
        -0x51t
        -0x3et
        -0x2ct
        -0x42t
        -0x31t
        -0x3ft
        -0x3et
        -0x3ft
        0x7dt
        -0x2dt
        -0x3at
        -0x3ft
        -0x3et
        -0x34t
        0x7dt
        -0x42t
        -0x3ft
        0x7dt
        -0x37t
        -0x34t
        -0x42t
        -0x3ft
        0x7dt
        -0x31t
        -0x3et
        -0x32t
        -0x2et
        -0x3et
        -0x30t
        -0x2ft
        -0x3et
        -0x3ft
        -0x3ft
        -0x2ct
        -0x1at
        -0x30t
        -0x1ft
        -0x2dt
        -0x2ct
        -0x2dt
        -0x71t
        -0x1bt
        -0x28t
        -0x2dt
        -0x2ct
        -0x22t
        -0x71t
        -0x30t
        -0x2dt
        -0x71t
        -0x1et
        -0x29t
        -0x22t
        -0x1at
        -0x71t
        -0x2et
        -0x30t
        -0x25t
        -0x25t
        -0x2ct
        -0x2dt
        -0x56t
        -0x55t
        -0x47t
        -0x46t
        -0x48t
        -0x4bt
        -0x41t
        -0x54t
        -0x51t
        -0x5ft
        -0x5ct
        -0x7ft
        -0x5ct
        -0x2bt
        -0x36t
        -0x2ft
        -0x27t
    .end array-data
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/RewardData;)V
    .locals 1

    .line 13950
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A03:Lcom/facebook/ads/redexgen/X/F2;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/F2;->A09(Lcom/facebook/ads/RewardData;)V

    .line 13951
    return-void
.end method

.method public final A03(Lcom/facebook/ads/RewardedVideoAdListener;)V
    .locals 2

    .line 13952
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A02:Lcom/facebook/ads/redexgen/X/21;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/21;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    .line 13953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2Z(Z)V

    .line 13954
    return-void

    .line 13955
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A04(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;ZZ)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A02:Lcom/facebook/ads/redexgen/X/21;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/21;->A06:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A02:Lcom/facebook/ads/redexgen/X/21;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/21;->A06:Ljava/lang/String;

    .line 13957
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1n;->A02(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->ADz()V

    .line 13959
    :cond_0
    if-nez p1, :cond_1

    .line 13960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2d()V

    .line 13961
    :goto_0
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/5Q;->A00:Z

    .line 13962
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A03:Lcom/facebook/ads/redexgen/X/F2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A01:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/F2;->A0A(Lcom/facebook/ads/RewardedVideoAd;Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 13963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2b()V

    .line 13964
    return-void

    .line 13965
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2c()V

    goto :goto_0
.end method

.method public final bridge synthetic buildLoadAdConfig()Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 13966
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5Q;->buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 1

    .line 13967
    new-instance v0, Lcom/facebook/ads/redexgen/X/5R;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5R;-><init>(Lcom/facebook/ads/redexgen/X/5Q;)V

    return-object v0
.end method

.method public final bridge synthetic buildShowAdConfig()Lcom/facebook/ads/FullScreenAd$ShowConfigBuilder;
    .locals 1

    .line 13968
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5Q;->buildShowAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final buildShowAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;
    .locals 1

    .line 13969
    new-instance v0, Lcom/facebook/ads/redexgen/X/5S;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/5S;-><init>()V

    return-object v0
.end method

.method public final destroy()V
    .locals 5

    const/16 v2, 0x87

    const/4 v1, 0x7

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x2f

    const/16 v1, 0x1b

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KI;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13971
    return-void

    .line 13972
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A03:Lcom/facebook/ads/redexgen/X/F2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F2;->A05()V

    .line 13973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2h()V

    .line 13974
    return-void
.end method

.method public final finalize()V
    .locals 1

    .line 13975
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A03:Lcom/facebook/ads/redexgen/X/F2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cG;->A04()V

    .line 13976
    return-void
.end method

.method public final getPlacementId()Ljava/lang/String;
    .locals 1

    .line 13977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A02:Lcom/facebook/ads/redexgen/X/21;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/21;->A0C:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoDuration()I
    .locals 1

    .line 13978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A02:Lcom/facebook/ads/redexgen/X/21;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/21;->A00:I

    return v0
.end method

.method public final isAdInvalidated()Z
    .locals 2

    .line 13979
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A03:Lcom/facebook/ads/redexgen/X/F2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F2;->A0B()Z

    move-result v1

    .line 13980
    .local p0, "isInvalidated":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A4W(Z)V

    .line 13981
    return v1
.end method

.method public final isAdLoaded()Z
    .locals 1

    .line 13982
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A03:Lcom/facebook/ads/redexgen/X/F2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F2;->A0C()Z

    move-result v0

    return v0
.end method

.method public final loadAd()V
    .locals 5

    const/16 v2, 0x8e

    const/4 v1, 0x6

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x4a

    const/16 v1, 0x20

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x17

    const/16 v1, 0x8

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KI;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13983
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A04(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;ZZ)V

    .line 13984
    return-void
.end method

.method public final loadAd(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;)V
    .locals 0

    .line 13985
    check-cast p1, Lcom/facebook/ads/redexgen/X/5R;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5R;->A00()V

    .line 13986
    return-void
.end method

.method public final registerAdCompanionView(Lcom/facebook/ads/internal/api/AdCompanionView;)V
    .locals 1

    .line 13987
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A00:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A03:Lcom/facebook/ads/redexgen/X/F2;

    .line 13988
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F2;->A07()Lcom/facebook/ads/redexgen/X/c8;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A03:Lcom/facebook/ads/redexgen/X/F2;

    .line 13990
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F2;->A07()Lcom/facebook/ads/redexgen/X/c8;

    move-result-object v0

    .line 13991
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/c8;->A0H(Lcom/facebook/ads/internal/api/AdCompanionView;)V

    .line 13992
    :cond_0
    return-void
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .locals 7

    .line 13993
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A02:Lcom/facebook/ads/redexgen/X/21;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/21;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    .line 13994
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A02:Lcom/facebook/ads/redexgen/X/21;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/21;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/5Q;->A01:Lcom/facebook/ads/RewardedVideoAd;

    const/16 v4, 0x7d1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1f

    const/16 v1, 0x10

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A02:Lcom/facebook/ads/redexgen/X/21;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/21;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    .line 13995
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Lp;->A03(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/AdError;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 13996
    invoke-interface {v6, v5, v0}, Lcom/facebook/ads/RewardedVideoAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 13997
    :cond_0
    return-void
.end method

.method public final setExtraHints(Lcom/facebook/ads/ExtraHints;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13998
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A02:Lcom/facebook/ads/redexgen/X/21;

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getHints()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/21;->A06:Ljava/lang/String;

    .line 13999
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A02:Lcom/facebook/ads/redexgen/X/21;

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getMediationData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/21;->A07:Ljava/lang/String;

    .line 14000
    return-void
.end method

.method public final show()Z
    .locals 5

    const/16 v2, 0x94

    const/4 v1, 0x4

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x6a

    const/16 v1, 0x1d

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x10

    const/4 v1, 0x7

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KI;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14001
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2m()V

    .line 14002
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5Q;->A03:Lcom/facebook/ads/redexgen/X/F2;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5Q;->A01:Lcom/facebook/ads/RewardedVideoAd;

    new-instance v1, Lcom/facebook/ads/redexgen/X/5S;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/5S;-><init>()V

    .line 14003
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5S;->withAppOrientation(I)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;

    move-result-object v0

    .line 14004
    invoke-interface {v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;

    move-result-object v0

    .line 14005
    invoke-virtual {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/F2;->A0D(Lcom/facebook/ads/RewardedVideoAd;Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z

    move-result v1

    .line 14006
    .local p0, "result":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A2l(Z)V

    .line 14007
    return v1
.end method

.method public final show(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z
    .locals 5

    const/16 v2, 0x94

    const/4 v1, 0x4

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x6a

    const/16 v1, 0x1d

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KI;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2m()V

    .line 14009
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A03:Lcom/facebook/ads/redexgen/X/F2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A01:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/F2;->A0D(Lcom/facebook/ads/RewardedVideoAd;Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z

    move-result v1

    .line 14010
    .local p0, "result":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A2l(Z)V

    .line 14011
    return v1
.end method

.method public final unregisterAdCompanionView()V
    .locals 1

    .line 14012
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A00:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A03:Lcom/facebook/ads/redexgen/X/F2;

    .line 14013
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F2;->A07()Lcom/facebook/ads/redexgen/X/c8;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A03:Lcom/facebook/ads/redexgen/X/F2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F2;->A07()Lcom/facebook/ads/redexgen/X/c8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c8;->A0F()V

    .line 14015
    :cond_0
    return-void
.end method
