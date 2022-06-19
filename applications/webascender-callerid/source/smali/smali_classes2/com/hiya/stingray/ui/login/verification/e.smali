.class public final Lcom/hiya/stingray/ui/login/verification/e;
.super Landroidx/lifecycle/a;
.source "SourceFile"


# instance fields
.field public d:Lcom/hiya/stingray/ui/premium/j;

.field public e:Lcom/hiya/stingray/q/d/f;

.field public f:Lcom/hiya/stingray/manager/u3;

.field public g:Li/c/b0/c/a;

.field public h:Lcom/hiya/stingray/manager/o2;

.field public i:Lcom/hiya/stingray/manager/a4;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    invoke-static {p1}, Lcom/hiya/stingray/s/a;->b(Landroid/content/Context;)Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->V(Lcom/hiya/stingray/ui/login/verification/e;)V

    return-void
.end method

.method public static final synthetic g(Lcom/hiya/stingray/ui/login/verification/e;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/e;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final h(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/e;->h:Lcom/hiya/stingray/manager/o2;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/lifecycle/a;->f()Landroid/app/Application;

    move-result-object v2

    const-string v3, "getApplication<HiyaApplication>()"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/hiya/stingray/HiyaApplication;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v2, p1}, Lcom/hiya/stingray/manager/o2;->a(Landroid/content/Context;Z)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/e;->d:Lcom/hiya/stingray/ui/premium/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/premium/j;->a(Z)V

    return-void

    :cond_0
    const-string p1, "analyticsManager"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "deviceUserInfoManager"

    .line 5
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public final i(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/e;->h:Lcom/hiya/stingray/manager/o2;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/lifecycle/a;->f()Landroid/app/Application;

    move-result-object v2

    const-string v3, "getApplication<HiyaApplication>()"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/hiya/stingray/HiyaApplication;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v2, p1}, Lcom/hiya/stingray/manager/o2;->b(Landroid/content/Context;Z)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/e;->d:Lcom/hiya/stingray/ui/premium/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/premium/j;->b(Z)V

    return-void

    :cond_0
    const-string p1, "analyticsManager"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "deviceUserInfoManager"

    .line 5
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/e;->f:Lcom/hiya/stingray/manager/u3;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->x()Li/c/b0/b/p;

    move-result-object v0

    .line 2
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v0, v2}, Li/c/b0/b/p;->l(Li/c/b0/b/d0;)Li/c/b0/b/p;

    move-result-object v0

    .line 3
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v0, v2}, Li/c/b0/b/p;->s(Li/c/b0/b/d0;)Li/c/b0/b/p;

    move-result-object v0

    .line 4
    new-instance v2, Lcom/hiya/stingray/ui/login/verification/e$a;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/login/verification/e$a;-><init>(Lcom/hiya/stingray/ui/login/verification/e;)V

    .line 5
    sget-object v3, Lcom/hiya/stingray/ui/login/verification/e$b;->f:Lcom/hiya/stingray/ui/login/verification/e$b;

    .line 6
    invoke-virtual {v0, v2, v3}, Li/c/b0/b/p;->p(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v2, p0, Lcom/hiya/stingray/ui/login/verification/e;->g:Li/c/b0/c/a;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    goto :goto_0

    :cond_0
    const-string v0, "compositeDisposable"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "premiumManager"

    .line 8
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/e;->i:Lcom/hiya/stingray/manager/a4;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/a4;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "selectManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final m()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/e;->h:Lcom/hiya/stingray/manager/o2;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/a;->f()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/o2;->u(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "deviceUserInfoManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/e;->h:Lcom/hiya/stingray/manager/o2;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/a;->f()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/o2;->B(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "deviceUserInfoManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
