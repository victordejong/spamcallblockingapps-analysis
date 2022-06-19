.class public interface abstract Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ANCollectionAdViewCallbacks"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0007\u001a\u00020\u0003H&J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;",
        "",
        "onAdClicked",
        "",
        "packageName",
        "",
        "onAdGotImpression",
        "onAdsLoadedSuccessfully",
        "onError",
        "error",
        "Lcom/appnext/core/AppnextError;",
        "SuggestedAppsWider_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onAdClicked(Ljava/lang/String;)V
.end method

.method public abstract onAdGotImpression(Ljava/lang/String;)V
.end method

.method public abstract onAdsLoadedSuccessfully()V
.end method

.method public abstract onError(Lcom/appnext/core/AppnextError;)V
.end method
