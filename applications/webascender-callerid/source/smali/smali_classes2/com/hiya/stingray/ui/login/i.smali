.class public Lcom/hiya/stingray/ui/login/i;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/login/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/hiya/stingray/ui/login/o;

.field private final c:Lcom/hiya/stingray/manager/e1;

.field private final d:Lcom/hiya/stingray/manager/x3;

.field private final e:Li/c/b0/c/a;

.field private final f:Lcom/hiya/stingray/manager/g3;

.field private final g:Lcom/hiya/stingray/manager/s1;

.field private final h:Lcom/hiya/stingray/manager/j2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/manager/x3;Li/c/b0/c/a;Lcom/hiya/stingray/manager/d3;Lcom/hiya/stingray/manager/g3;Lcom/hiya/stingray/manager/s1;Lcom/hiya/stingray/manager/j2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/hiya/stingray/ui/login/i;->b:Lcom/hiya/stingray/ui/login/o;

    .line 3
    iput-object p3, p0, Lcom/hiya/stingray/ui/login/i;->c:Lcom/hiya/stingray/manager/e1;

    .line 4
    iput-object p4, p0, Lcom/hiya/stingray/ui/login/i;->d:Lcom/hiya/stingray/manager/x3;

    .line 5
    iput-object p5, p0, Lcom/hiya/stingray/ui/login/i;->e:Li/c/b0/c/a;

    .line 6
    iput-object p7, p0, Lcom/hiya/stingray/ui/login/i;->f:Lcom/hiya/stingray/manager/g3;

    .line 7
    iput-object p8, p0, Lcom/hiya/stingray/ui/login/i;->g:Lcom/hiya/stingray/manager/s1;

    .line 8
    iput-object p9, p0, Lcom/hiya/stingray/ui/login/i;->h:Lcom/hiya/stingray/manager/j2;

    return-void
.end method

.method private B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/i;->h:Lcom/hiya/stingray/manager/j2;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/j2;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/login/j;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/login/j;->E()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/login/j;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/login/j;->y(Z)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/login/j;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/login/j;->done()V

    :goto_0
    return-void
.end method

.method private D(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v0}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "required_permission_allow"

    .line 2
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    goto :goto_0

    :cond_0
    const-string p1, "required_permission_deny"

    .line 3
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/i;->c:Lcom/hiya/stingray/manager/e1;

    const-string v1, "onboard_get_started"

    .line 5
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 6
    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    const-string v1, "user_prompt_action"

    .line 7
    invoke-virtual {p1, v1, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method static synthetic t(Lcom/hiya/stingray/ui/login/i;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/login/i;->D(Z)V

    return-void
.end method

.method public static synthetic v(Lcom/hiya/stingray/ui/login/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/hiya/stingray/ui/login/i;->B()V

    return-void
.end method

.method private synthetic w(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/login/i;->B()V

    return-void
.end method


# virtual methods
.method A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/i;->h:Lcom/hiya/stingray/manager/j2;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/j2;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/login/i;->h:Lcom/hiya/stingray/manager/j2;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/j2;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/i;->h:Lcom/hiya/stingray/manager/j2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/j2;->f(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/login/j;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/login/j;->y(Z)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/login/j;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/login/j;->done()V

    return-void
.end method

.method C()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/login/j;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/login/j;->y(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/login/j;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/login/j;->L()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/HiyaApplication;

    invoke-virtual {v0}, Lcom/hiya/stingray/HiyaApplication;->m()V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/i;->f:Lcom/hiya/stingray/manager/g3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/g3;->k()V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/i;->e:Li/c/b0/c/a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/login/i;->d:Lcom/hiya/stingray/manager/x3;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/x3;->e()Li/c/b0/b/e;

    move-result-object v1

    const-wide/16 v2, 0x2

    .line 5
    invoke-virtual {v1, v2, v3}, Li/c/b0/b/e;->C(J)Li/c/b0/b/e;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xbb8

    .line 6
    invoke-virtual {v1, v3, v4, v2}, Li/c/b0/b/e;->I(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/e;

    move-result-object v1

    .line 7
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v1

    .line 8
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/ui/login/e;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/login/e;-><init>(Lcom/hiya/stingray/ui/login/i;)V

    new-instance v3, Lcom/hiya/stingray/ui/login/f;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/login/f;-><init>(Lcom/hiya/stingray/ui/login/i;)V

    .line 9
    invoke-virtual {v1, v2, v3}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/i;->c:Lcom/hiya/stingray/manager/e1;

    new-instance v1, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v1}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string v2, "onboard_get_started"

    .line 2
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "view_screen"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method u(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;[I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/i;->b:Lcom/hiya/stingray/ui/login/o;

    new-instance v5, Lcom/hiya/stingray/ui/login/i$a;

    invoke-direct {v5, p0}, Lcom/hiya/stingray/ui/login/i$a;-><init>(Lcom/hiya/stingray/ui/login/i;)V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/hiya/stingray/ui/login/o;->e(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;[ILcom/hiya/stingray/ui/login/o$a;)V

    return-void
.end method

.method public synthetic x(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/login/i;->w(Ljava/lang/Throwable;)V

    return-void
.end method

.method y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/i;->g:Lcom/hiya/stingray/manager/s1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/s1;->e()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/login/j;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/login/j;->done()V

    return-void
.end method

.method z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/i;->h:Lcom/hiya/stingray/manager/j2;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/j2;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/login/i;->h:Lcom/hiya/stingray/manager/j2;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/j2;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/login/j;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/login/j;->T()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/login/j;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/login/j;->y(Z)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/login/j;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/login/j;->done()V

    :goto_0
    return-void
.end method
