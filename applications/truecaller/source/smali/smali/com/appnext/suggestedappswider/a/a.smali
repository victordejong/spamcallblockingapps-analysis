.class public final Lcom/appnext/suggestedappswider/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/suggestedappswider/a/a$b;,
        Lcom/appnext/suggestedappswider/a/a$a;,
        Lcom/appnext/suggestedappswider/a/a$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\n\u0018\u00002\u00020\u0001:\u0003\u001f !B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0018\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0016\u0010\u0016\u001a\u00020\u000f2\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0018J\u000e\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0018\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u0015H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/appnext/suggestedappswider/controllers/SuggestedAppsWiderActionsController;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "mHandler",
        "Landroid/os/Handler;",
        "mReports",
        "",
        "Lcom/appnext/suggestedappswider/controllers/SuggestedAppsWiderActionsController$Reports;",
        "suggestedAppsWiderActionsControllerCallbacks",
        "Lcom/appnext/suggestedappswider/controllers/SuggestedAppsWiderActionsController$SuggestedAppsWiderActionsControllerCallbacks;",
        "doClick",
        "",
        "appnextAd",
        "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;",
        "impression",
        "impressionIfNecessary",
        "visiblePercenet",
        "",
        "initController",
        "ads",
        "",
        "openOnlyStore",
        "sendImpression",
        "setSuggestedAppsWiderActionsControllerCallbacks",
        "vta",
        "vtaIfNecessary",
        "visiblePercent",
        "Reports",
        "SuggestedAppsWiderActionsControllerCallbacks",
        "UserActionInterfaceImpl",
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
.field private final context:Landroid/content/Context;

.field private go:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appnext/suggestedappswider/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private hf:Lcom/appnext/suggestedappswider/a/a$b;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appnext/suggestedappswider/a/a;->context:Landroid/content/Context;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/appnext/suggestedappswider/a/a;->go:Ljava/util/List;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/appnext/suggestedappswider/a/a;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic a(Lcom/appnext/suggestedappswider/a/a;)Lcom/appnext/suggestedappswider/a/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/suggestedappswider/a/a;->hf:Lcom/appnext/suggestedappswider/a/a$b;

    return-object p0
.end method

.method private static final a(Lcom/appnext/suggestedappswider/a/a;Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$appnextAd"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object p0, p0, Lcom/appnext/suggestedappswider/a/a;->context:Landroid/content/Context;

    .line 64
    invoke-static {p0}, Lcom/appnext/core/adswatched/a;->o(Landroid/content/Context;)Lcom/appnext/core/adswatched/a;

    move-result-object p0

    .line 65
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1200"

    invoke-virtual {p0, p1, v0}, Lcom/appnext/core/adswatched/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final a(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;Lcom/appnext/suggestedappswider/a/a;ILcom/appnext/suggestedappswider/a/a$a;)V
    .locals 1

    const-string v0, "$appnextAd"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$reports"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance v0, Lcom/appnext/suggestedappswider/a/a$a;

    invoke-direct {v0, p0}, Lcom/appnext/suggestedappswider/a/a$a;-><init>(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V

    .line 4
    iget-object p0, p1, Lcom/appnext/suggestedappswider/a/a;->go:Ljava/util/List;

    invoke-static {p0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_0

    .line 5
    iget-object v0, p1, Lcom/appnext/suggestedappswider/a/a;->go:Ljava/util/List;

    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appnext/suggestedappswider/a/a$a;

    invoke-virtual {p0}, Lcom/appnext/suggestedappswider/a/a$a;->bl()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/appnext/suggestedappswider/b/d;->bs()Lcom/appnext/suggestedappswider/b/d;

    move-result-object p0

    const-string v0, "min_imp_precentage"

    .line 7
    invoke-virtual {p0, v0}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getInstance()\n                                        .get(\"min_imp_precentage\")"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lt p2, p0, :cond_1

    .line 8
    invoke-virtual {p3}, Lcom/appnext/suggestedappswider/a/a$a;->bo()Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/appnext/suggestedappswider/a/a;->e(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V

    .line 9
    invoke-virtual {p3}, Lcom/appnext/suggestedappswider/a/a$a;->bi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "CollectionsAdsActionsController$impressionIfNecessary"

    .line 10
    invoke-static {p1, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private static final b(Lcom/appnext/suggestedappswider/a/a;Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$appnextAd"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p0, p0, Lcom/appnext/suggestedappswider/a/a;->context:Landroid/content/Context;

    .line 13
    invoke-static {p0}, Lcom/appnext/core/adswatched/a;->o(Landroid/content/Context;)Lcom/appnext/core/adswatched/a;

    move-result-object p0

    .line 14
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1200"

    invoke-virtual {p0, p1, v0}, Lcom/appnext/core/adswatched/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final b(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;Lcom/appnext/suggestedappswider/a/a;ILcom/appnext/suggestedappswider/a/a$a;)V
    .locals 1

    const-string v0, "$appnextAd"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$reports"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :try_start_0
    new-instance v0, Lcom/appnext/suggestedappswider/a/a$a;

    invoke-direct {v0, p0}, Lcom/appnext/suggestedappswider/a/a$a;-><init>(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V

    .line 5
    iget-object p0, p1, Lcom/appnext/suggestedappswider/a/a;->go:Ljava/util/List;

    invoke-static {p0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_0

    .line 6
    iget-object v0, p1, Lcom/appnext/suggestedappswider/a/a;->go:Ljava/util/List;

    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appnext/suggestedappswider/a/a$a;

    invoke-virtual {p0}, Lcom/appnext/suggestedappswider/a/a$a;->bl()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/appnext/suggestedappswider/b/d;->bs()Lcom/appnext/suggestedappswider/b/d;

    move-result-object p0

    const-string v0, "min_vta_precentage"

    .line 8
    invoke-virtual {p0, v0}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getInstance()\n                                        .get(\"min_vta_precentage\")"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lt p2, p0, :cond_1

    .line 9
    invoke-virtual {p3}, Lcom/appnext/suggestedappswider/a/a$a;->bh()V

    .line 10
    invoke-virtual {p3}, Lcom/appnext/suggestedappswider/a/a$a;->bo()Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/appnext/suggestedappswider/a/a;->d(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "CollectionsAdsActionsController$impressionIfNecessary"

    .line 11
    invoke-static {p1, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private final d(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/appnext/core/q;

    iget-object v1, p0, Lcom/appnext/suggestedappswider/a/a;->context:Landroid/content/Context;

    new-instance v2, Lcom/appnext/suggestedappswider/a/a$c;

    invoke-direct {v2, v1, p1}, Lcom/appnext/suggestedappswider/a/a$c;-><init>(Landroid/content/Context;Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V

    invoke-direct {v0, v1, v2}, Lcom/appnext/core/q;-><init>(Landroid/content/Context;Lcom/appnext/core/q$a;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Vta - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getAdTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;->getImpressionURL()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/appnext/core/q;->a(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Lcom/appnext/core/f$a;)V

    .line 4
    invoke-static {}, Lcom/appnext/core/o;->az()Lcom/appnext/core/o;

    move-result-object v0

    new-instance v1, Le/e/a/a/c;

    invoke-direct {v1, p0, p1}, Le/e/a/a/c;-><init>(Lcom/appnext/suggestedappswider/a/a;Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V

    invoke-virtual {v0, v1}, Lcom/appnext/core/o;->a(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lcom/appnext/suggestedappswider/a/a;->hf:Lcom/appnext/suggestedappswider/a/a$b;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getAdPackage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "appnextAd.adPackage"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/appnext/suggestedappswider/a/a$b;->K(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "CollectionsAdsActionsController$vta"

    .line 6
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private final e(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/appnext/core/q;

    iget-object v1, p0, Lcom/appnext/suggestedappswider/a/a;->context:Landroid/content/Context;

    new-instance v2, Lcom/appnext/suggestedappswider/a/a$c;

    invoke-direct {v2, v1, p1}, Lcom/appnext/suggestedappswider/a/a$c;-><init>(Landroid/content/Context;Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V

    invoke-direct {v0, v1, v2}, Lcom/appnext/core/q;-><init>(Landroid/content/Context;Lcom/appnext/core/q$a;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/appnext/core/q;->d(Lcom/appnext/core/AppnextAd;)V

    const-string v0, "Impression - "

    .line 3
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getAdTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/appnext/core/o;->az()Lcom/appnext/core/o;

    move-result-object v0

    new-instance v1, Le/e/a/a/d;

    invoke-direct {v1, p0, p1}, Le/e/a/a/d;-><init>(Lcom/appnext/suggestedappswider/a/a;Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V

    invoke-virtual {v0, v1}, Lcom/appnext/core/o;->a(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lcom/appnext/suggestedappswider/a/a;->hf:Lcom/appnext/suggestedappswider/a/a$b;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getAdPackage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "appnextAd.adPackage"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/appnext/suggestedappswider/a/a$b;->K(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "CollectionsAdsActionsController$impression"

    .line 6
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;Lcom/appnext/suggestedappswider/a/a;ILcom/appnext/suggestedappswider/a/a$a;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/appnext/suggestedappswider/a/a;->a(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;Lcom/appnext/suggestedappswider/a/a;ILcom/appnext/suggestedappswider/a/a$a;)V

    return-void
.end method

.method public static synthetic g(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;Lcom/appnext/suggestedappswider/a/a;ILcom/appnext/suggestedappswider/a/a$a;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/appnext/suggestedappswider/a/a;->b(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;Lcom/appnext/suggestedappswider/a/a;ILcom/appnext/suggestedappswider/a/a$a;)V

    return-void
.end method

.method public static synthetic i(Lcom/appnext/suggestedappswider/a/a;Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/appnext/suggestedappswider/a/a;->a(Lcom/appnext/suggestedappswider/a/a;Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V

    return-void
.end method

.method public static synthetic j(Lcom/appnext/suggestedappswider/a/a;Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/appnext/suggestedappswider/a/a;->b(Lcom/appnext/suggestedappswider/a/a;Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/appnext/suggestedappswider/a/a$b;)V
    .locals 1

    const-string v0, "suggestedAppsWiderActionsControllerCallbacks"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/appnext/suggestedappswider/a/a;->hf:Lcom/appnext/suggestedappswider/a/a$b;

    return-void
.end method

.method public final a(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V
    .locals 7

    const-string v0, "report_vta_instead_of_impresssion"

    const-string v1, "CollectionsAdsActionsController$impressionIfNecessary"

    const-string v2, "appnextAd"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x64

    .line 11
    :try_start_0
    iget-object v3, p0, Lcom/appnext/suggestedappswider/a/a;->go:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 12
    new-instance v3, Lcom/appnext/suggestedappswider/a/a$a;

    invoke-direct {v3, p1}, Lcom/appnext/suggestedappswider/a/a$a;-><init>(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V

    .line 13
    iget-object v4, p0, Lcom/appnext/suggestedappswider/a/a;->go:Ljava/util/List;

    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_4

    .line 14
    iget-object v4, p0, Lcom/appnext/suggestedappswider/a/a;->go:Ljava/util/List;

    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_0

    goto/16 :goto_0

    .line 15
    :cond_0
    iget-object v4, p0, Lcom/appnext/suggestedappswider/a/a;->go:Ljava/util/List;

    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appnext/suggestedappswider/a/a$a;

    .line 16
    invoke-static {}, Lcom/appnext/suggestedappswider/b/d;->bs()Lcom/appnext/suggestedappswider/b/d;

    move-result-object v5

    .line 17
    invoke-virtual {v5, v0}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v3, :cond_4

    .line 19
    :cond_1
    invoke-virtual {v4}, Lcom/appnext/suggestedappswider/a/a$a;->bl()Z

    move-result v3

    if-nez v3, :cond_4

    .line 20
    invoke-static {}, Lcom/appnext/suggestedappswider/b/d;->bs()Lcom/appnext/suggestedappswider/b/d;

    move-result-object v3

    const-string v5, "min_imp_precentage"

    .line 21
    invoke-virtual {v3, v5}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "getInstance()\n                    .get(\"min_imp_precentage\")"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v2, v3, :cond_4

    .line 22
    invoke-static {}, Lcom/appnext/suggestedappswider/b/d;->bs()Lcom/appnext/suggestedappswider/b/d;

    move-result-object v3

    const-string v5, "postpone_impression_sec"

    invoke-virtual {v3, v5}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "getInstance().get(\"postpone_impression_sec\")"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 24
    invoke-static {}, Lcom/appnext/suggestedappswider/b/d;->bs()Lcom/appnext/suggestedappswider/b/d;

    move-result-object v5

    const-string v6, "repeat_viewable_criteria"

    .line 25
    invoke-virtual {v5, v6}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    .line 27
    iget-object v5, p0, Lcom/appnext/suggestedappswider/a/a;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_4

    .line 28
    invoke-static {v5}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    new-instance v6, Le/e/a/a/a;

    invoke-direct {v6, p1, p0, v2, v4}, Le/e/a/a/a;-><init>(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;Lcom/appnext/suggestedappswider/a/a;ILcom/appnext/suggestedappswider/a/a$a;)V

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 29
    :cond_2
    :try_start_1
    new-instance v3, Lcom/appnext/suggestedappswider/a/a$a;

    invoke-direct {v3, p1}, Lcom/appnext/suggestedappswider/a/a$a;-><init>(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V

    .line 30
    iget-object v5, p0, Lcom/appnext/suggestedappswider/a/a;->go:Ljava/util/List;

    invoke-static {v5}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_3

    .line 31
    iget-object v5, p0, Lcom/appnext/suggestedappswider/a/a;->go:Ljava/util/List;

    invoke-static {v5}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appnext/suggestedappswider/a/a$a;

    invoke-virtual {v3}, Lcom/appnext/suggestedappswider/a/a$a;->bl()Z

    move-result v3

    if-nez v3, :cond_4

    .line 32
    :cond_3
    invoke-virtual {v4}, Lcom/appnext/suggestedappswider/a/a$a;->bi()V

    .line 33
    invoke-virtual {v4}, Lcom/appnext/suggestedappswider/a/a$a;->bo()Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/appnext/suggestedappswider/a/a;->e(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 34
    :try_start_2
    invoke-static {v1, v3}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    .line 35
    invoke-static {v1, v3}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    :cond_4
    :goto_0
    :try_start_3
    iget-object v3, p0, Lcom/appnext/suggestedappswider/a/a;->go:Ljava/util/List;

    if-eqz v3, :cond_a

    .line 37
    new-instance v3, Lcom/appnext/suggestedappswider/a/a$a;

    invoke-direct {v3, p1}, Lcom/appnext/suggestedappswider/a/a$a;-><init>(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V

    .line 38
    iget-object v4, p0, Lcom/appnext/suggestedappswider/a/a;->go:Ljava/util/List;

    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 39
    invoke-static {}, Lcom/appnext/suggestedappswider/b/d;->bs()Lcom/appnext/suggestedappswider/b/d;

    move-result-object v4

    .line 40
    invoke-virtual {v4, v0}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 42
    invoke-static {}, Lcom/appnext/suggestedappswider/b/d;->bs()Lcom/appnext/suggestedappswider/b/d;

    move-result-object v4

    .line 43
    invoke-virtual {v4, v0}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v3, :cond_a

    :cond_5
    if-ltz v3, :cond_9

    .line 45
    iget-object v0, p0, Lcom/appnext/suggestedappswider/a/a;->go:Ljava/util/List;

    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v3, v0, :cond_6

    goto/16 :goto_1

    .line 46
    :cond_6
    iget-object v0, p0, Lcom/appnext/suggestedappswider/a/a;->go:Ljava/util/List;

    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/suggestedappswider/a/a$a;

    .line 47
    invoke-virtual {v0}, Lcom/appnext/suggestedappswider/a/a$a;->bk()Z

    move-result v3

    if-nez v3, :cond_a

    .line 48
    invoke-static {}, Lcom/appnext/suggestedappswider/b/d;->bs()Lcom/appnext/suggestedappswider/b/d;

    move-result-object v3

    const-string v4, "min_vta_precentage"

    .line 49
    invoke-virtual {v3, v4}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInstance()\n                    .get(\"min_vta_precentage\")"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v2, v3, :cond_a

    .line 50
    invoke-static {}, Lcom/appnext/suggestedappswider/b/d;->bs()Lcom/appnext/suggestedappswider/b/d;

    move-result-object v3

    const-string v4, "postpone_vta_sec"

    invoke-virtual {v3, v4}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInstance().get(\"postpone_vta_sec\")"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 51
    invoke-static {}, Lcom/appnext/suggestedappswider/b/d;->bs()Lcom/appnext/suggestedappswider/b/d;

    move-result-object v4

    const-string v5, "repeat_vta_viewable_criteria"

    .line 52
    invoke-virtual {v4, v5}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-lez v3, :cond_7

    .line 54
    iget-object v4, p0, Lcom/appnext/suggestedappswider/a/a;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_a

    .line 55
    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    new-instance v5, Le/e/a/a/b;

    invoke-direct {v5, p1, p0, v2, v0}, Le/e/a/a/b;-><init>(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;Lcom/appnext/suggestedappswider/a/a;ILcom/appnext/suggestedappswider/a/a$a;)V

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v2, v3

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-void

    .line 56
    :cond_7
    :try_start_4
    new-instance v2, Lcom/appnext/suggestedappswider/a/a$a;

    invoke-direct {v2, p1}, Lcom/appnext/suggestedappswider/a/a$a;-><init>(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V

    .line 57
    iget-object p1, p0, Lcom/appnext/suggestedappswider/a/a;->go:Ljava/util/List;

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_8

    .line 58
    iget-object v2, p0, Lcom/appnext/suggestedappswider/a/a;->go:Ljava/util/List;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appnext/suggestedappswider/a/a$a;

    invoke-virtual {p1}, Lcom/appnext/suggestedappswider/a/a$a;->bl()Z

    move-result p1

    if-nez p1, :cond_a

    .line 59
    :cond_8
    invoke-virtual {v0}, Lcom/appnext/suggestedappswider/a/a$a;->bh()V

    .line 60
    invoke-virtual {v0}, Lcom/appnext/suggestedappswider/a/a$a;->bo()Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/appnext/suggestedappswider/a/a;->d(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    .line 61
    :try_start_5
    invoke-static {v1, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_9
    :goto_1
    return-void

    :catchall_3
    move-exception p1

    .line 62
    invoke-static {v1, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public final b(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V
    .locals 3

    const-string v0, "appnextAd"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lcom/appnext/core/q;

    iget-object v1, p0, Lcom/appnext/suggestedappswider/a/a;->context:Landroid/content/Context;

    new-instance v2, Lcom/appnext/suggestedappswider/a/a$c;

    invoke-direct {v2, v1, p1}, Lcom/appnext/suggestedappswider/a/a$c;-><init>(Landroid/content/Context;Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V

    invoke-direct {v0, v1, v2}, Lcom/appnext/core/q;-><init>(Landroid/content/Context;Lcom/appnext/core/q$a;)V

    .line 2
    new-instance v1, Lcom/appnext/suggestedappswider/a/a$e;

    invoke-direct {v1, p0}, Lcom/appnext/suggestedappswider/a/a$e;-><init>(Lcom/appnext/suggestedappswider/a/a;)V

    invoke-virtual {v0, p1, v1}, Lcom/appnext/core/q;->c(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/f$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "CollectionsAdsActionsController$openOnlyStore"

    .line 3
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V
    .locals 4

    const-string v0, "appnextAd"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lcom/appnext/core/q;

    iget-object v1, p0, Lcom/appnext/suggestedappswider/a/a;->context:Landroid/content/Context;

    new-instance v2, Lcom/appnext/suggestedappswider/a/a$c;

    invoke-direct {v2, v1, p1}, Lcom/appnext/suggestedappswider/a/a$c;-><init>(Landroid/content/Context;Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V

    invoke-direct {v0, v1, v2}, Lcom/appnext/core/q;-><init>(Landroid/content/Context;Lcom/appnext/core/q$a;)V

    .line 2
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getAppURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;->getPlacementID()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/appnext/suggestedappswider/a/a$d;

    invoke-direct {v3, p0}, Lcom/appnext/suggestedappswider/a/a$d;-><init>(Lcom/appnext/suggestedappswider/a/a;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/appnext/core/q;->a(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/f$a;)V

    .line 3
    iget-object v0, p0, Lcom/appnext/suggestedappswider/a/a;->hf:Lcom/appnext/suggestedappswider/a/a$b;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getAdPackage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "appnextAd.adPackage"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/appnext/suggestedappswider/a/a$b;->L(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "CollectionsAdsActionsController$doClick"

    .line 4
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final h(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appnext/suggestedappswider/a/a;->go:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;

    .line 4
    iget-object v1, p0, Lcom/appnext/suggestedappswider/a/a;->go:Ljava/util/List;

    new-instance v2, Lcom/appnext/suggestedappswider/a/a$a;

    invoke-direct {v2, v0}, Lcom/appnext/suggestedappswider/a/a$a;-><init>(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "CollectionsAdsActionsController$init"

    .line 5
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
