.class public final Lcom/appnext/suggestedappswider/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/suggestedappswider/b/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0011B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0014\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/appnext/suggestedappswider/managers/SuggestedAppsWiderAdsResultManager;",
        "",
        "()V",
        "getAds",
        "",
        "context",
        "Landroid/content/Context;",
        "placementID",
        "",
        "postback",
        "suggestedAppsWiderAdsResultManagerCallbacks",
        "Lcom/appnext/suggestedappswider/managers/SuggestedAppsWiderAdsResultManager$SuggestedAppsWiderAdsResultManagerCallbacks;",
        "getEcpm",
        "",
        "suggestedAppsWiderModelModels",
        "",
        "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderModel;",
        "SuggestedAppsWiderAdsResultManagerCallbacks",
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
.field public static final hq:Lcom/appnext/suggestedappswider/b/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appnext/suggestedappswider/b/c;

    invoke-direct {v0}, Lcom/appnext/suggestedappswider/b/c;-><init>()V

    sput-object v0, Lcom/appnext/suggestedappswider/b/c;->hq:Lcom/appnext/suggestedappswider/b/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/suggestedappswider/b/c$a;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementID"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Lcom/appnext/suggestedappswider/b/b;->ho:Lcom/appnext/suggestedappswider/b/b$a;

    invoke-virtual {v0}, Lcom/appnext/suggestedappswider/b/b$a;->br()Lcom/appnext/suggestedappswider/b/b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderRequestData;

    invoke-direct {v1, p0, p1}, Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderRequestData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, p2}, Lcom/appnext/core/Ad;->setPostback(Ljava/lang/String;)V

    .line 4
    new-instance p2, Lcom/appnext/suggestedappswider/b/c$b;

    invoke-direct {p2, p3}, Lcom/appnext/suggestedappswider/b/c$b;-><init>(Lcom/appnext/suggestedappswider/b/c$a;)V

    .line 5
    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/appnext/core/d;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "SuggestedAppsWiderAdsResultManager$getAds"

    .line 6
    invoke-static {p1, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    new-instance p0, Lcom/appnext/core/AppnextError;

    const-string p1, "No Ads"

    invoke-direct {p0, p1}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lcom/appnext/suggestedappswider/b/c$a;->onError(Lcom/appnext/core/AppnextError;)V

    return-void
.end method

.method public static j(Ljava/util/List;)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderModel;",
            ">;)F"
        }
    .end annotation

    const-string v0, "suggestedAppsWiderModelModels"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderModel;

    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getECPM()F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p0

    :catchall_0
    :cond_0
    return v0
.end method
