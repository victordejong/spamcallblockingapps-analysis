.class public final Lcom/appnext/suggestedappswider/a/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/suggestedappswider/a/a;->c(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/appnext/suggestedappswider/controllers/SuggestedAppsWiderActionsController$doClick$1",
        "Lcom/appnext/core/AppnextCK$IMarket;",
        "error",
        "",
        "finalLink",
        "",
        "onMarket",
        "marketUrl",
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
.field public final synthetic hk:Lcom/appnext/suggestedappswider/a/a;


# direct methods
.method public constructor <init>(Lcom/appnext/suggestedappswider/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/appnext/suggestedappswider/a/a$d;->hk:Lcom/appnext/suggestedappswider/a/a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/appnext/suggestedappswider/a/a$d;->hk:Lcom/appnext/suggestedappswider/a/a;

    invoke-static {p1}, Lcom/appnext/suggestedappswider/a/a;->a(Lcom/appnext/suggestedappswider/a/a;)Lcom/appnext/suggestedappswider/a/a$b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/appnext/suggestedappswider/a/a$b;->bp()V

    :cond_0
    return-void
.end method

.method public final onMarket(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
