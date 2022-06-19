.class public final Le/a/p/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/p/c;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/p/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/p/d$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/p/d$c;

    iget v1, v0, Le/a/p/d$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/p/d$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/p/d$c;

    invoke-direct {v0, p0, p1}, Le/a/p/d$c;-><init>(Le/a/p/d;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/p/d$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/p/d$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le/a/p/d;->e()Le/a/b0/e/b;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    .line 5
    :cond_3
    invoke-virtual {p0}, Le/a/p/d;->j()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object p1

    const-string v2, "graph.asyncIoCoroutineContext()"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v2, Le/a/p/d$d;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Le/a/p/d$d;-><init>(Le/a/p/d;Ls1/w/d;)V

    iput v3, v0, Le/a/p/d$c;->e:I

    invoke-static {p1, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 7
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/b0/e/d;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/p/d;->j()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v0

    const-string v1, "graph.asyncIoCoroutineContext()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Le/a/p/d$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/p/d$b;-><init>(Le/a/p/d;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c()Landroid/content/Intent;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/p/d;->a:Landroid/content/Context;

    const-class v1, Lcom/truecaller/ui/WizardActivity;

    invoke-static {v0, v1}, Le/a/r/t/c;->ua(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Wizard.getWizardSecondar\u2026zardActivity::class.java)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/p/d;->i()Lcom/truecaller/TrueApp;

    invoke-virtual {p0}, Le/a/p/d;->i()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->W()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/p/d;->i()Lcom/truecaller/TrueApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/truecaller/TrueApp;->a0(Z)V

    .line 3
    iget-object v0, p0, Le/a/p/d;->a:Landroid/content/Context;

    const-class v1, Lcom/truecaller/ui/WizardActivity;

    sget-object v2, Lcom/truecaller/wizard/framework/WizardStartContext;->EDIT_PROFILE:Lcom/truecaller/wizard/framework/WizardStartContext;

    invoke-static {v0, v1, v2}, Le/a/r/t/c;->Ga(Landroid/content/Context;Ljava/lang/Class;Lcom/truecaller/wizard/framework/WizardStartContext;)V

    :cond_0
    return-void
.end method

.method public e()Le/a/b0/e/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/p/d;->h()Le/a/b0/e/l;

    move-result-object v0

    invoke-interface {v0}, Le/a/b0/e/l;->e()Le/a/b0/e/b;

    move-result-object v0

    return-object v0
.end method

.method public f(Ls1/z/b/l;)Le/a/r2/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;)",
            "Le/a/r2/a;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/p/d;->j()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->B4()Le/a/r2/f;

    move-result-object v0

    const-string v1, "graph.accountNetworkManager()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f4/a/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/f4/a/b;->b(Z)Le/a/r2/x;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Le/a/p/d;->j()Le/a/j2;

    move-result-object v1

    invoke-interface {v1}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v1

    const-string v2, "graph.actorsThreads()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {v1}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v1

    new-instance v2, Le/a/p/d$a;

    invoke-direct {v2, p1}, Le/a/p/d$a;-><init>(Ls1/z/b/l;)V

    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    move-result-object p1

    const-string v0, "accountNetworkManager.te\u2026     action(it)\n        }"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public g()Le/a/b0/e/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/p/d;->h()Le/a/b0/e/l;

    move-result-object v0

    invoke-interface {v0}, Le/a/b0/e/l;->g()Le/a/b0/e/b;

    move-result-object v0

    return-object v0
.end method

.method public final h()Le/a/b0/e/l;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/p/d;->j()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object v0

    const-string v1, "graph.accountManager()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final i()Lcom/truecaller/TrueApp;
    .locals 2

    .line 1
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    const-string v1, "TrueApp.getApp()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final j()Le/a/j2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/p/d;->i()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    const-string v1, "app.objectsGraph"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
