.class public final Lcom/mopub/mobileads/MoPubRewardedAdManager$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedAdManager;->onRewardedAdShowError(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/mopub/mobileads/MoPubErrorCode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$i;->b:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$i;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$i;->b:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 2
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-static {v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    sget-object v2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v2, v2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->j:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-virtual {v2, v0}, Lcom/mopub/mobileads/RewardedAdsLoaders;->c(Ljava/lang/String;)V

    .line 5
    sget-object v2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v2, v2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->e:Lcom/mopub/mobileads/MoPubRewardedAdListener;

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v2, v0, v1}, Lcom/mopub/mobileads/MoPubRewardedAdListener;->onRewardedAdShowError(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method
