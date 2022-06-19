.class public final Lcom/facebook/ads/redexgen/X/X7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8O;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/8J;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8J;)V
    .locals 0

    .line 65885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65886
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/X7;->A00:Lcom/facebook/ads/redexgen/X/8J;

    .line 65887
    return-void
.end method


# virtual methods
.method public final A6a()Ljava/lang/String;
    .locals 1

    .line 65888
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X7;->A00:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kb;->A02(Lcom/facebook/ads/redexgen/X/8J;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A6b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65889
    invoke-static {}, Lcom/facebook/ads/internal/bridge/fbsdk/FBLoginASID;->getFBLoginASID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A6u()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65890
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getMediationService()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A7E()Lcom/facebook/ads/redexgen/X/8N;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X7;->A00:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0}, Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;->getAdvertisingIdInfoDirectly(Landroid/content/Context;)Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;

    move-result-object v1

    .line 65892
    .local p0, "advertisingId":Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;
    if-nez v1, :cond_0

    .line 65893
    const/4 v0, 0x0

    return-object v0

    .line 65894
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/X8;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/X8;-><init>(Lcom/facebook/ads/redexgen/X/X7;Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;)V

    return-object v0
.end method

.method public final A7e()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65895
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A7f()Ljava/lang/String;
    .locals 1

    .line 65896
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X7;->A00:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0}, Lcom/facebook/ads/internal/api/BuildConfigApi;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A8H()Z
    .locals 1

    .line 65897
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    return v0
.end method
