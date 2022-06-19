.class public final Lcom/appnext/suggestedappswider/a/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/suggestedappswider/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\n\u001a\u00020\u0005H\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0011H\u0016R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/appnext/suggestedappswider/controllers/SuggestedAppsWiderActionsController$UserActionInterfaceImpl;",
        "Lcom/appnext/core/UserAction$UserActionInterface;",
        "context",
        "Landroid/content/Context;",
        "appnextAd",
        "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;",
        "(Landroid/content/Context;Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V",
        "mAppnextAd",
        "mSuggestedAppsWiderObject",
        "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderRequestData;",
        "getAdData",
        "getAdObject",
        "Lcom/appnext/core/Ad;",
        "getSettingsManager",
        "Lcom/appnext/core/SettingsManager;",
        "report",
        "",
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
.field private final hg:Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;

.field private final hj:Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderRequestData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appnextAd"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderRequestData;

    invoke-virtual {p2}, Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;->getPlacementID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderRequestData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appnext/suggestedappswider/a/a$c;->hj:Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderRequestData;

    .line 3
    iput-object p2, p0, Lcom/appnext/suggestedappswider/a/a$c;->hg:Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;

    return-void
.end method


# virtual methods
.method public final c()Lcom/appnext/core/Ad;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/suggestedappswider/a/a$c;->hj:Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderRequestData;

    return-object v0
.end method

.method public final bridge synthetic d()Lcom/appnext/core/AppnextAd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/suggestedappswider/a/a$c;->hg:Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;

    return-object v0
.end method

.method public final e()Lcom/appnext/core/SettingsManager;
    .locals 2

    .line 1
    invoke-static {}, Lcom/appnext/suggestedappswider/b/d;->bs()Lcom/appnext/suggestedappswider/b/d;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final report(Ljava/lang/String;)V
    .locals 1

    const-string v0, "report"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
