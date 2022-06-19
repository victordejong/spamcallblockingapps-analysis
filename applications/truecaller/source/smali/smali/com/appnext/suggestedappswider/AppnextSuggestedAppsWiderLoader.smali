.class public final Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0002J,\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;",
        "",
        "()V",
        "getAds",
        "",
        "context",
        "Landroid/content/Context;",
        "placementID",
        "",
        "postback",
        "appnextSuggestedAppsWiderLoaderCallbacks",
        "Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;",
        "loadAds",
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


# static fields
.field public static final INSTANCE:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;

    invoke-direct {v0}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;-><init>()V

    sput-object v0, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;->INSTANCE:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAds(Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;->getAds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;)V

    return-void
.end method

.method private final getAds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/appnext/suggestedappswider/b/c;->hq:Lcom/appnext/suggestedappswider/b/c;

    new-instance v0, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$getAds$1;

    invoke-direct {v0, p4}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$getAds$1;-><init>(Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;)V

    invoke-static {p1, p2, p3, v0}, Lcom/appnext/suggestedappswider/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/suggestedappswider/b/c$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "AppnextSuggestedAppsWiderLoader$getAds"

    .line 2
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p4, :cond_0

    .line 3
    new-instance p1, Lcom/appnext/core/AppnextError;

    const-string p2, "No Ads"

    invoke-direct {p1, p2}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;->onAdsLoadedError(Lcom/appnext/core/AppnextError;)V

    :cond_0
    return-void
.end method

.method public static final loadAds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementID"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/appnext/core/g;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 2
    new-instance v0, Lcom/appnext/core/AppnextError;

    const-string v1, "Connection Error"

    invoke-direct {v0, v1}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;->onAdsLoadedError(Lcom/appnext/core/AppnextError;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/appnext/suggestedappswider/b/d;->bs()Lcom/appnext/suggestedappswider/b/d;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$loadAds$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader$loadAds$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/appnext/core/SettingsManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/appnext/core/SettingsManager$ConfigCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "AppnextSuggestedAppsWiderLoader$loadAds"

    .line 5
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    sget-object v0, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;->INSTANCE:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;->getAds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;)V

    return-void
.end method
