.class public final Lcom/hiya/stingray/ui/premium/l;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/premium/m;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Z

.field private final c:Lcom/hiya/stingray/manager/o1;

.field private final d:Lcom/hiya/stingray/manager/h4;

.field private final e:Li/c/b0/c/a;

.field private final f:Lcom/hiya/stingray/manager/y2;

.field private final g:Lcom/hiya/stingray/manager/u3;

.field private final h:Lcom/hiya/stingray/util/a0;

.field private final i:Lcom/hiya/stingray/manager/o2;

.field private final j:Lcom/hiya/stingray/manager/a4;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/o1;Lcom/hiya/stingray/manager/h4;Lcom/hiya/stingray/q/d/f;Li/c/b0/c/a;Lcom/hiya/stingray/manager/y2;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/manager/o2;Lcom/hiya/stingray/manager/a4;)V
    .locals 1

    const-string v0, "callLogManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAccountManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userSharedPreferences"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "compositeDisposable"

    invoke-static {p4, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "lookupManager"

    invoke-static {p5, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "premiumManager"

    invoke-static {p6, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "rxEventBus"

    invoke-static {p7, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "deviceUserInfoManager"

    invoke-static {p8, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "selectManager"

    invoke-static {p9, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/l;->c:Lcom/hiya/stingray/manager/o1;

    iput-object p2, p0, Lcom/hiya/stingray/ui/premium/l;->d:Lcom/hiya/stingray/manager/h4;

    iput-object p4, p0, Lcom/hiya/stingray/ui/premium/l;->e:Li/c/b0/c/a;

    iput-object p5, p0, Lcom/hiya/stingray/ui/premium/l;->f:Lcom/hiya/stingray/manager/y2;

    iput-object p6, p0, Lcom/hiya/stingray/ui/premium/l;->g:Lcom/hiya/stingray/manager/u3;

    iput-object p7, p0, Lcom/hiya/stingray/ui/premium/l;->h:Lcom/hiya/stingray/util/a0;

    iput-object p8, p0, Lcom/hiya/stingray/ui/premium/l;->i:Lcom/hiya/stingray/manager/o2;

    iput-object p9, p0, Lcom/hiya/stingray/ui/premium/l;->j:Lcom/hiya/stingray/manager/a4;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/premium/l;->b:Z

    return-void
.end method

.method public static final synthetic t(Lcom/hiya/stingray/ui/premium/l;)Lcom/hiya/stingray/manager/y2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/premium/l;->f:Lcom/hiya/stingray/manager/y2;

    return-object p0
.end method


# virtual methods
.method public final u()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/l;->i:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/premium/m;

    invoke-interface {v1}, Lcom/hiya/stingray/ui/premium/m;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/o2;->u(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final v()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/l;->i:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/premium/m;

    invoke-interface {v1}, Lcom/hiya/stingray/ui/premium/m;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/o2;->B(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final w()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/premium/l;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/hiya/stingray/ui/premium/l;->b:Z

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/m;

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/premium/m;->b(Z)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/m;

    iget-object v2, p0, Lcom/hiya/stingray/ui/premium/l;->g:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/u3;->K()Lcom/hiya/stingray/t/d1;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/hiya/stingray/ui/premium/m;->k0(Lcom/hiya/stingray/t/d1;)V

    .line 5
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/m;

    iget-object v2, p0, Lcom/hiya/stingray/ui/premium/l;->j:Lcom/hiya/stingray/manager/a4;

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/a4;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/hiya/stingray/ui/premium/m;->S0(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/l;->c:Lcom/hiya/stingray/manager/o1;

    .line 7
    iget-object v2, p0, Lcom/hiya/stingray/ui/premium/l;->d:Lcom/hiya/stingray/manager/h4;

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/manager/o1;->o(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->takeLast(I)Li/c/b0/b/v;

    move-result-object v0

    .line 9
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 10
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 11
    sget-object v1, Lcom/hiya/stingray/ui/premium/l$a;->f:Lcom/hiya/stingray/ui/premium/l$a;

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 12
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 13
    new-instance v1, Lcom/hiya/stingray/ui/premium/l$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/premium/l$b;-><init>(Lcom/hiya/stingray/ui/premium/l;)V

    .line 14
    new-instance v2, Lcom/hiya/stingray/ui/premium/l$c;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/premium/l$c;-><init>(Lcom/hiya/stingray/ui/premium/l;)V

    .line 15
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/l;->e:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public final x(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/l;->i:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/premium/m;

    invoke-interface {v1}, Lcom/hiya/stingray/ui/premium/m;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/o2;->a(Landroid/content/Context;Z)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/l;->h:Lcom/hiya/stingray/util/a0;

    new-instance v0, Lcom/hiya/stingray/ui/local/settings/d$a;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/local/settings/d$a;-><init>()V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final y(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/l;->i:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/premium/m;

    invoke-interface {v1}, Lcom/hiya/stingray/ui/premium/m;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/o2;->b(Landroid/content/Context;Z)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/l;->h:Lcom/hiya/stingray/util/a0;

    new-instance v0, Lcom/hiya/stingray/ui/local/settings/d$a;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/local/settings/d$a;-><init>()V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final z()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/m;

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/l;->i:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/ui/premium/m;

    invoke-interface {v2}, Lcom/hiya/stingray/ui/premium/m;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/manager/o2;->B(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/l;->i:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/ui/premium/m;

    invoke-interface {v2}, Lcom/hiya/stingray/ui/premium/m;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/manager/o2;->u(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/premium/m;->G0(Z)V

    return-void
.end method
