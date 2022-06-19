.class public final synthetic Le/n/b/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/mopub/mobileads/AdAdapter;

.field public final synthetic b:Lcom/mopub/common/MoPubReward;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/common/MoPubReward;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/n/b/a0;->a:Lcom/mopub/mobileads/AdAdapter;

    iput-object p2, p0, Le/n/b/a0;->b:Lcom/mopub/common/MoPubReward;

    iput-object p3, p0, Le/n/b/a0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Le/n/b/a0;->a:Lcom/mopub/mobileads/AdAdapter;

    iget-object v1, p0, Le/n/b/a0;->b:Lcom/mopub/common/MoPubReward;

    iget-object v2, p0, Le/n/b/a0;->c:Ljava/lang/String;

    .line 1
    sget-object v3, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v3, v3, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 2
    iget-object v3, v3, Le/n/b/p0;->f:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mopub/common/MoPubReward;

    .line 3
    invoke-virtual {v1}, Lcom/mopub/common/MoPubReward;->isSuccessful()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    move-object v1, v3

    .line 4
    :cond_1
    :goto_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    sget-object v2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v2, v2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    invoke-virtual {v2, v0}, Le/n/b/p0;->b(Lcom/mopub/mobileads/AdAdapter;)Ljava/util/Set;

    move-result-object v0

    .line 7
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    :goto_1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOULD_REWARD:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/mopub/common/MoPubReward;->getAmount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/mopub/common/MoPubReward;->getLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 10
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->e:Lcom/mopub/mobileads/MoPubRewardedAdListener;

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {v0, v3, v1}, Lcom/mopub/mobileads/MoPubRewardedAdListener;->onRewardedAdCompleted(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V

    :cond_3
    return-void
.end method
