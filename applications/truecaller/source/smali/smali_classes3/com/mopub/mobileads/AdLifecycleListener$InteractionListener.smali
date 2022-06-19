.class public interface abstract Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;
.implements Lcom/mopub/mobileads/AdLifecycleListener$FullscreenInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdLifecycleListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InteractionListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008f\u0018\u00002\u00020\u00012\u00020\u0002J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H&\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\n\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u000b\u0010\t\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u0091(0\u0001\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;",
        "Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;",
        "Lcom/mopub/mobileads/AdLifecycleListener$FullscreenInteractionListener;",
        "Lcom/mopub/mobileads/MoPubErrorCode;",
        "errorCode",
        "Ls1/s;",
        "onAdFailed",
        "(Lcom/mopub/mobileads/MoPubErrorCode;)V",
        "onAdShown",
        "()V",
        "onAdClicked",
        "onAdImpression",
        "mopub-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# virtual methods
.method public abstract onAdClicked()V
.end method

.method public bridge abstract synthetic onAdCollapsed()V
.end method

.method public bridge abstract synthetic onAdComplete(Lcom/mopub/common/MoPubReward;)V
.end method

.method public bridge abstract synthetic onAdDismissed()V
.end method

.method public bridge abstract synthetic onAdExpanded()V
.end method

.method public abstract onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
.end method

.method public abstract onAdImpression()V
.end method

.method public bridge abstract synthetic onAdPauseAutoRefresh()V
.end method

.method public bridge abstract synthetic onAdResumeAutoRefresh()V
.end method

.method public abstract onAdShown()V
.end method
