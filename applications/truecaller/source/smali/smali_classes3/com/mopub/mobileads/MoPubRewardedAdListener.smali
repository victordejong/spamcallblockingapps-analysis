.class public interface abstract Lcom/mopub/mobileads/MoPubRewardedAdListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u000b\u0010\u0006J\u001f\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\r\u0010\u0006J\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u000e\u0010\u0006J\'\u0010\u0013\u001a\u00020\u00042\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H&\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/mopub/mobileads/MoPubRewardedAdListener;",
        "",
        "",
        "adUnitId",
        "Ls1/s;",
        "onRewardedAdLoadSuccess",
        "(Ljava/lang/String;)V",
        "Lcom/mopub/mobileads/MoPubErrorCode;",
        "errorCode",
        "onRewardedAdLoadFailure",
        "(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V",
        "onRewardedAdStarted",
        "onRewardedAdShowError",
        "onRewardedAdClicked",
        "onRewardedAdClosed",
        "",
        "adUnitIds",
        "Lcom/mopub/common/MoPubReward;",
        "reward",
        "onRewardedAdCompleted",
        "(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V",
        "mopub-sdk-fullscreen_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# virtual methods
.method public abstract onRewardedAdClicked(Ljava/lang/String;)V
.end method

.method public abstract onRewardedAdClosed(Ljava/lang/String;)V
.end method

.method public abstract onRewardedAdCompleted(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/common/MoPubReward;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRewardedAdLoadFailure(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
.end method

.method public abstract onRewardedAdLoadSuccess(Ljava/lang/String;)V
.end method

.method public abstract onRewardedAdShowError(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
.end method

.method public abstract onRewardedAdStarted(Ljava/lang/String;)V
.end method
