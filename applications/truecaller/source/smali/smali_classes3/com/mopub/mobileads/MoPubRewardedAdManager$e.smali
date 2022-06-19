.class public final Lcom/mopub/mobileads/MoPubRewardedAdManager$e;
.super Lcom/mopub/mobileads/MoPubRewardedAdManager$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedAdManager;->onRewardedAdLoadFailure(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/mopub/mobileads/MoPubErrorCode;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$e;->b:Lcom/mopub/mobileads/MoPubErrorCode;

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
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$e;->b:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 7
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    .line 8
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 9
    iget-object v0, v0, Le/n/b/p0;->h:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    .line 12
    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    const/4 v0, 0x0

    .line 13
    iput-object v0, p1, Le/n/b/p0;->h:Ljava/lang/String;

    :cond_1
    return-void
.end method
