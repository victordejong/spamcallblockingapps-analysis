.class public final Lcom/appnext/suggestedappswider/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/suggestedappswider/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u0011\u001a\u00020\u000c2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0014R\u0011\u0010\u0002\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001e\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u000e\u0010\u0010\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/appnext/suggestedappswider/controllers/SuggestedAppsWiderActionsController$Reports;",
        "",
        "appnextAd",
        "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;",
        "(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V",
        "getAppnextAd",
        "()Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;",
        "bannerId",
        "",
        "getBannerId",
        "()Ljava/lang/String;",
        "<set-?>",
        "",
        "isImpressionReported",
        "()Z",
        "isVtaReported",
        "mAppnextAd",
        "equals",
        "obj",
        "setImpressionReported",
        "",
        "setVtaReported",
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
.field private final bannerId:Ljava/lang/String;

.field private final hg:Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;

.field private hh:Z

.field private hi:Z


# direct methods
.method public constructor <init>(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V
    .locals 2

    const-string v0, "appnextAd"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appnextAd.getBannerID()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appnext/suggestedappswider/a/a$a;->bannerId:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/appnext/suggestedappswider/a/a$a;->hg:Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/appnext/suggestedappswider/a/a$a;->hi:Z

    .line 5
    iput-boolean p1, p0, Lcom/appnext/suggestedappswider/a/a$a;->hh:Z

    return-void
.end method


# virtual methods
.method public final bh()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/appnext/suggestedappswider/a/a$a;->hh:Z

    return-void
.end method

.method public final bi()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/appnext/suggestedappswider/a/a$a;->hi:Z

    return-void
.end method

.method public final bk()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/appnext/suggestedappswider/a/a$a;->hh:Z

    return v0
.end method

.method public final bl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/appnext/suggestedappswider/a/a$a;->hi:Z

    return v0
.end method

.method public final bo()Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/suggestedappswider/a/a$a;->hg:Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    instance-of v0, p1, Lcom/appnext/suggestedappswider/a/a$a;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/appnext/suggestedappswider/a/a$a;

    iget-object v0, v0, Lcom/appnext/suggestedappswider/a/a$a;->bannerId:Ljava/lang/String;

    iget-object v1, p0, Lcom/appnext/suggestedappswider/a/a$a;->bannerId:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    const-string v1, "CollectionsAdsActionsController$Reports"

    .line 3
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
