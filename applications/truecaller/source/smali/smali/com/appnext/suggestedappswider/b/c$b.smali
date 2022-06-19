.class public final Lcom/appnext/suggestedappswider/b/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/suggestedappswider/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/suggestedappswider/b/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0004H\u0016J\u001d\u0010\u0005\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u0001H\u0006H\u0016\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/appnext/suggestedappswider/managers/SuggestedAppsWiderAdsResultManager$getAds$2",
        "Lcom/appnext/core/AdsManager$AdListener;",
        "error",
        "",
        "",
        "loaded",
        "T",
        "ads",
        "(Ljava/lang/Object;)V",
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
.field public final synthetic hr:Lcom/appnext/suggestedappswider/b/c$a;


# direct methods
.method public constructor <init>(Lcom/appnext/suggestedappswider/b/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/appnext/suggestedappswider/b/c$b;->hr:Lcom/appnext/suggestedappswider/b/c$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    const-string v0, "SuggestedAppsWiderAdsResultManager$loaded"

    const-string v1, "No Ads"

    if-eqz p1, :cond_3

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/appnext/suggestedappswider/b/c$b;->hr:Lcom/appnext/suggestedappswider/b/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    check-cast p1, Ljava/util/ArrayList;

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 4
    new-instance v3, Lcom/appnext/core/AppnextError;

    invoke-direct {v3, v1}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-interface {v2, v3}, Lcom/appnext/suggestedappswider/b/c$a;->onError(Lcom/appnext/core/AppnextError;)V

    .line 6
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appnext/core/AppnextAd;

    .line 8
    new-instance v5, Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderModel;

    invoke-direct {v5, v4}, Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderModel;-><init>(Lcom/appnext/core/AppnextAd;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    sget-object p1, Lcom/appnext/suggestedappswider/b/a;->hl:Lcom/appnext/suggestedappswider/b/a;

    invoke-virtual {p1, v3}, Lcom/appnext/suggestedappswider/b/a;->i(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_2

    .line 10
    new-instance v4, Lcom/appnext/suggestedappswider/models/a;

    .line 11
    sget-object v5, Lcom/appnext/suggestedappswider/b/c;->hq:Lcom/appnext/suggestedappswider/b/c;

    invoke-static {v3}, Lcom/appnext/suggestedappswider/b/c;->j(Ljava/util/List;)F

    move-result v3

    .line 12
    invoke-direct {v4, p1, v3}, Lcom/appnext/suggestedappswider/models/a;-><init>(Ljava/lang/String;F)V

    .line 13
    invoke-interface {v2, v4}, Lcom/appnext/suggestedappswider/b/c$a;->onAdsLoadedSuccessfully(Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_2
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/appnext/suggestedappswider/b/c$b;->hr:Lcom/appnext/suggestedappswider/b/c$a;

    if-eqz p1, :cond_4

    .line 16
    new-instance v2, Lcom/appnext/core/AppnextError;

    invoke-direct {v2, v1}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-interface {p1, v2}, Lcom/appnext/suggestedappswider/b/c$a;->onError(Lcom/appnext/core/AppnextError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 18
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    iget-object p1, p0, Lcom/appnext/suggestedappswider/b/c$b;->hr:Lcom/appnext/suggestedappswider/b/c$a;

    if-eqz p1, :cond_4

    new-instance v0, Lcom/appnext/core/AppnextError;

    invoke-direct {v0, v1}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/appnext/suggestedappswider/b/c$a;->onError(Lcom/appnext/core/AppnextError;)V

    :cond_4
    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appnext/suggestedappswider/b/c$b;->hr:Lcom/appnext/suggestedappswider/b/c$a;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/appnext/core/AppnextError;

    invoke-direct {v1, p1}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/appnext/suggestedappswider/b/c$a;->onError(Lcom/appnext/core/AppnextError;)V

    :cond_0
    return-void
.end method
