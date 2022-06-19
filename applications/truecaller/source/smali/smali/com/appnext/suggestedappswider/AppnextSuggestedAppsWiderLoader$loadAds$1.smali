.class public final Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$loadAds$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/SettingsManager$ConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;->loadAds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0004H\u0016J\u001e\u0010\u0005\u001a\u00020\u00032\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$loadAds$1",
        "Lcom/appnext/core/SettingsManager$ConfigCallback;",
        "error",
        "",
        "",
        "loaded",
        "config",
        "Ljava/util/HashMap;",
        "",
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

.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $placementID:Ljava/lang/String;

.field public final synthetic $postback:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$loadAds$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$loadAds$1;->$placementID:Ljava/lang/String;

    iput-object p3, p0, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$loadAds$1;->$postback:Ljava/lang/String;

    iput-object p4, p0, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$loadAds$1;->$appnextSuggestedAppsWiderLoaderCallbacks:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object p1, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;->INSTANCE:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;

    .line 2
    iget-object v0, p0, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$loadAds$1;->$context:Landroid/content/Context;

    .line 3
    iget-object v1, p0, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$loadAds$1;->$placementID:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$loadAds$1;->$postback:Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$loadAds$1;->$appnextSuggestedAppsWiderLoaderCallbacks:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;

    .line 6
    invoke-static {p1, v0, v1, v2, v3}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;->access$getAds(Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;)V

    return-void
.end method

.method public final loaded(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;->INSTANCE:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;

    .line 2
    iget-object v0, p0, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$loadAds$1;->$context:Landroid/content/Context;

    .line 3
    iget-object v1, p0, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$loadAds$1;->$placementID:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$loadAds$1;->$postback:Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$loadAds$1;->$appnextSuggestedAppsWiderLoaderCallbacks:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;

    .line 6
    invoke-static {p1, v0, v1, v2, v3}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;->access$getAds(Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;)V

    return-void
.end method
