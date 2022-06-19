.class public final Le/a/y4/g/h;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.service.t9.T9SyncHelper$scheduleT9Sync$1"
    f = "T9SyncHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Lcom/truecaller/TrueApp;


# direct methods
.method public constructor <init>(Lcom/truecaller/TrueApp;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/y4/g/h;->e:Lcom/truecaller/TrueApp;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/y4/g/h;

    iget-object v0, p0, Le/a/y4/g/h;->e:Lcom/truecaller/TrueApp;

    invoke-direct {p1, v0, p2}, Le/a/y4/g/h;-><init>(Lcom/truecaller/TrueApp;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/y4/g/h;

    iget-object v0, p0, Le/a/y4/g/h;->e:Lcom/truecaller/TrueApp;

    invoke-direct {p1, v0, p2}, Le/a/y4/g/h;-><init>(Lcom/truecaller/TrueApp;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/y4/g/h;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/y4/g/h;->e:Lcom/truecaller/TrueApp;

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Le/a/m0/a1$m;->a()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Le/a/y4/f/e;

    invoke-direct {v2}, Le/a/y4/f/e;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3
    iget-object p1, p0, Le/a/y4/g/h;->e:Lcom/truecaller/TrueApp;

    invoke-virtual {p1}, Lcom/truecaller/TrueApp;->W()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "RefreshT9MappingService.extra.rebuild_all"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Ln3/m0/f;

    invoke-direct {v0, p1}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 7
    invoke-static {v0}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    const-string p1, "Data.Builder()\n         \u2026\n                .build()"

    .line 8
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object p1

    const-string v1, "TrueApp.getApp()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/j2;->D()Ln3/m0/y;

    move-result-object p1

    const-string v1, "TrueApp.getApp().objectsGraph.workManager()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v1, Ln3/m0/r$a;

    const-class v2, Lcom/truecaller/service/t9/RefreshT9MappingWorker;

    invoke-direct {v1, v2}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 11
    iget-object v2, v1, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v0, v2, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 12
    invoke-virtual {v1}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    const-string v1, "OneTimeWorkRequest.Build\u2026\n                .build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    check-cast v0, Ln3/m0/r;

    .line 14
    sget-object v1, Ln3/m0/h;->a:Ln3/m0/h;

    const-string v2, "com.truecaller.service.t9.RefreshT9MappingWorker"

    invoke-virtual {p1, v2, v1, v0}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    .line 15
    iget-object p1, p0, Le/a/y4/g/h;->e:Lcom/truecaller/TrueApp;

    const-string v0, "context"

    .line 16
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/service/contact/RefreshContactIndexingService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "RefreshContactIndexingService.action.sync"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 19
    const-class v1, Lcom/truecaller/service/contact/RefreshContactIndexingService;

    const v2, 0x7f0a0e0e

    .line 20
    invoke-static {p1, v1, v2, v0}, Ln3/k/a/i;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    .line 21
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
