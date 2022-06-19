.class public final Le/a/y4/f/e;
.super Le/a/b0/i/b;
.source "SourceFile"


# instance fields
.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x7d0

    .line 1
    invoke-direct {p0, v0, v1, v2}, Le/a/b0/i/b;-><init>(Landroid/os/Handler;J)V

    .line 2
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    const-string v1, "TrueApp.getApp()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TrueApp.getApp().objectsGraph.applicationContext()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/y4/f/e;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "RefreshT9MappingService.extra.rebuild_all"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ln3/m0/f;

    invoke-direct {v1, v0}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 4
    invoke-static {v1}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    const-string v0, "Data.Builder()\n         \u2026\n                .build()"

    .line 5
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    const-string v2, "TrueApp.getApp()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->D()Ln3/m0/y;

    move-result-object v0

    const-string v2, "TrueApp.getApp().objectsGraph.workManager()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v2, Ln3/m0/r$a;

    const-class v3, Lcom/truecaller/service/t9/RefreshT9MappingWorker;

    invoke-direct {v2, v3}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 8
    iget-object v3, v2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v1, v3, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 9
    invoke-virtual {v2}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v1

    const-string v2, "OneTimeWorkRequest.Build\u2026\n                .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    check-cast v1, Ln3/m0/r;

    .line 11
    sget-object v2, Ln3/m0/h;->a:Ln3/m0/h;

    const-string v3, "com.truecaller.service.t9.RefreshT9MappingWorker"

    invoke-virtual {v0, v3, v2, v1}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    .line 12
    iget-object v0, p0, Le/a/y4/f/e;->d:Landroid/content/Context;

    const-string v1, "context"

    .line 13
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/service/contact/RefreshContactIndexingService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "RefreshContactIndexingService.action.sync"

    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 16
    const-class v2, Lcom/truecaller/service/contact/RefreshContactIndexingService;

    const v3, 0x7f0a0e0e

    .line 17
    invoke-static {v0, v2, v3, v1}, Ln3/k/a/i;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method
