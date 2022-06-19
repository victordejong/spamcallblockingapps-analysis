.class public final Le/n/b/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/b/n0;->a:Ljava/lang/String;

    iput-object p2, p0, Le/n/b/n0;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    .line 2
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 3
    iget-object v1, p0, Le/n/b/n0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Le/n/b/p0;->c(Ljava/lang/String;)Lcom/mopub/common/MoPubReward;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/mopub/common/MoPubReward;->getLabel()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v5, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/mopub/common/MoPubReward;->getAmount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v6, v0

    .line 7
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    .line 8
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 9
    iget-object v1, p0, Le/n/b/n0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Le/n/b/p0;->a(Ljava/lang/String;)Lcom/mopub/mobileads/AdAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAdapter;->getBaseAdClassName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v7, v0

    .line 11
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    .line 12
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 13
    iget-object v1, p0, Le/n/b/n0;->a:Ljava/lang/String;

    .line 14
    iget-object v0, v0, Le/n/b/p0;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    .line 16
    iget-object v2, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->c:Landroid/content/Context;

    .line 17
    iget-object v3, p0, Le/n/b/n0;->b:Ljava/lang/String;

    .line 18
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 19
    iget-object v4, v0, Le/n/b/p0;->i:Ljava/lang/String;

    .line 20
    invoke-static/range {v2 .. v8}, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->makeRewardedAdCompletionRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
