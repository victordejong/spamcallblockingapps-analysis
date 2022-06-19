.class public final Lcom/mopub/mobileads/MoPubRewardedAdManager$d;
.super Lcom/mopub/mobileads/MoPubRewardedAdManager$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedAdManager;->onRewardedAdLoadSuccess(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/AdAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager$l;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    .line 2
    iget-object v1, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->i:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    .line 5
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->j:Lcom/mopub/mobileads/RewardedAdsLoaders;

    .line 6
    iget-object v0, v0, Lcom/mopub/mobileads/RewardedAdsLoaders;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/n/b/f0;

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/mopub/network/AdLoader;->creativeDownloadSuccess()V

    .line 8
    :goto_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    .line 9
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->e:Lcom/mopub/mobileads/MoPubRewardedAdListener;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdListener;->onRewardedAdLoadSuccess(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
