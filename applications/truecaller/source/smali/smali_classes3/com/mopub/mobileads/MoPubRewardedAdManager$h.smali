.class public final Lcom/mopub/mobileads/MoPubRewardedAdManager$h;
.super Lcom/mopub/mobileads/MoPubRewardedAdManager$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedAdManager;->onRewardedAdShowError(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
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
    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$h;->b:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager$l;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$h;->b:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 2
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->j:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-virtual {v1, p1}, Lcom/mopub/mobileads/RewardedAdsLoaders;->c(Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->e:Lcom/mopub/mobileads/MoPubRewardedAdListener;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1, p1, v0}, Lcom/mopub/mobileads/MoPubRewardedAdListener;->onRewardedAdShowError(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method
