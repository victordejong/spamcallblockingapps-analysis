.class public final Lcom/facebook/ads/redexgen/X/Jx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
.implements Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Z

.field public final A05:Lcom/facebook/ads/NativeAdBase;

.field public final A06:Lcom/facebook/ads/redexgen/X/Tj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Tj;Lcom/facebook/ads/NativeAdBase;)V
    .locals 1

    .line 41055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41056
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A01:I

    .line 41057
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A00:I

    .line 41058
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A06:Lcom/facebook/ads/redexgen/X/Tj;

    .line 41059
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Jx;->A05:Lcom/facebook/ads/NativeAdBase;

    .line 41060
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 5

    .line 41061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    if-nez v0, :cond_0

    .line 41062
    sget-object v0, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 41063
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 41064
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jl;->A00(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v4

    .line 41065
    .local p0, "internalMediaCacheFlag":Lcom/facebook/ads/redexgen/X/Jl;
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Jx;->A04:Z

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A00:I

    new-instance v2, Lcom/facebook/ads/redexgen/X/7O;

    invoke-direct {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/7O;-><init>(ZII)V

    .line 41066
    .local v0, "nativeAdMemoryCacheConfig":Lcom/facebook/ads/redexgen/X/7O;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A06:Lcom/facebook/ads/redexgen/X/Tj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A03:Ljava/lang/String;

    invoke-virtual {v1, v4, v0, v2}, Lcom/facebook/ads/redexgen/X/Tj;->A1T(Lcom/facebook/ads/redexgen/X/Jl;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/7O;)V

    .line 41067
    return-void
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/Ad$LoadAdConfig;
    .locals 1

    .line 41068
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jx;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;
    .locals 0

    .line 41069
    return-object p0
.end method

.method public final withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 2

    .line 41070
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A06:Lcom/facebook/ads/redexgen/X/Tj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A05:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Tj;->A1R(Lcom/facebook/ads/NativeAdListener;Lcom/facebook/ads/NativeAdBase;)V

    .line 41071
    return-object p0
.end method

.method public final bridge synthetic withBid(Ljava/lang/String;)Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 41072
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Jx;->withBid(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final withBid(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 0

    .line 41073
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A03:Ljava/lang/String;

    .line 41074
    return-object p0
.end method

.method public final withMediaCacheFlag(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 0

    .line 41075
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 41076
    return-object p0
.end method

.method public final withPreloadedIconView(II)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 1

    .line 41077
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A04:Z

    .line 41078
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A01:I

    .line 41079
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Jx;->A00:I

    .line 41080
    return-object p0
.end method
