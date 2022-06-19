.class public final Lcom/facebook/ads/redexgen/X/5A;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/InitApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V
    .locals 1
    .param p2    # Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/AudienceNetworkAds$InitListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13419
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/59;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    .line 13420
    invoke-static {v0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/9A;->A0G(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 13421
    return-void
.end method

.method public final isInitialized()Z
    .locals 1

    .line 13422
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9A;->A0H()Z

    move-result v0

    return v0
.end method

.method public final maybeAttachCrashListener(Landroid/content/Context;)V
    .locals 1

    .line 13423
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/59;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9A;->A06(Lcom/facebook/ads/redexgen/X/XS;)V

    .line 13424
    return-void
.end method

.method public final onAdEventManagerCreated(Landroid/content/Context;)V
    .locals 1

    .line 13425
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/59;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9A;->A07(Lcom/facebook/ads/redexgen/X/XS;)V

    .line 13426
    return-void
.end method

.method public final onAdLoadInvoked(Landroid/content/Context;)V
    .locals 1

    .line 13427
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/59;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9A;->A08(Lcom/facebook/ads/redexgen/X/XS;)V

    .line 13428
    return-void
.end method

.method public final onContentProviderCreated(Landroid/content/Context;)V
    .locals 1

    .line 13429
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/59;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9A;->A09(Lcom/facebook/ads/redexgen/X/XS;)V

    .line 13430
    return-void
.end method
