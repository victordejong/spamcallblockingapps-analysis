.class public final Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$getAds$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/suggestedappswider/b/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;->getAds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$getAds$1",
        "Lcom/appnext/suggestedappswider/managers/SuggestedAppsWiderAdsResultManager$SuggestedAppsWiderAdsResultManagerCallbacks;",
        "onAdsLoadedSuccessfully",
        "",
        "appnextSuggestedAppsWiderDataContainer",
        "Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;",
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


# instance fields
.field public final synthetic $appnextSuggestedAppsWiderLoaderCallbacks:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;


# direct methods
.method public constructor <init>(Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$getAds$1;->$appnextSuggestedAppsWiderLoaderCallbacks:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdsLoadedSuccessfully(Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;)V
    .locals 1

    const-string v0, "appnextSuggestedAppsWiderDataContainer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$getAds$1;->$appnextSuggestedAppsWiderLoaderCallbacks:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;->onAdsLoadedSuccessfully(Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;)V

    :cond_0
    return-void
.end method

.method public final onError(Lcom/appnext/core/AppnextError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$getAds$1;->$appnextSuggestedAppsWiderLoaderCallbacks:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;->onAdsLoadedError(Lcom/appnext/core/AppnextError;)V

    :cond_0
    return-void
.end method
