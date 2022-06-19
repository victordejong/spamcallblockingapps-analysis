.class public final Lcom/hiya/stingray/ui/local/settings/d;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/local/settings/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/local/settings/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/hiya/stingray/ui/login/o;

.field private final c:Lcom/hiya/stingray/util/a0;

.field private final d:Lcom/hiya/stingray/ui/local/settings/b;

.field private final e:Li/c/b0/c/a;

.field private final f:Lcom/hiya/stingray/manager/o2;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/ui/local/settings/b;Li/c/b0/c/a;Lcom/hiya/stingray/manager/o2;)V
    .locals 1

    const-string v0, "permissionHandler"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callSettingsAnalyticsHelper"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceUserInfoManager"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/d;->b:Lcom/hiya/stingray/ui/login/o;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/settings/d;->c:Lcom/hiya/stingray/util/a0;

    iput-object p3, p0, Lcom/hiya/stingray/ui/local/settings/d;->d:Lcom/hiya/stingray/ui/local/settings/b;

    iput-object p4, p0, Lcom/hiya/stingray/ui/local/settings/d;->e:Li/c/b0/c/a;

    iput-object p5, p0, Lcom/hiya/stingray/ui/local/settings/d;->f:Lcom/hiya/stingray/manager/o2;

    return-void
.end method


# virtual methods
.method public final A(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/d;->f:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/o2;->B(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final B(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    aget-object v0, v0, v1

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/settings/d;->f:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v1, p1, v0}, Lcom/hiya/stingray/manager/o2;->E(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/d;->d:Lcom/hiya/stingray/ui/local/settings/b;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/ui/local/settings/b;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public final C(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/d;->f:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/manager/o2;->G(Landroid/content/Context;Z)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/d;->d:Lcom/hiya/stingray/ui/local/settings/b;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/local/settings/b;->b(Z)V

    return-void
.end method

.method public final D(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/d;->f:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/manager/o2;->I(Landroid/content/Context;Z)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/d;->d:Lcom/hiya/stingray/ui/local/settings/b;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/local/settings/b;->c(Z)V

    return-void
.end method

.method public final E(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    aget-object v0, v0, v1

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/settings/d;->f:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v1, p1, v0}, Lcom/hiya/stingray/manager/o2;->J(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/d;->d:Lcom/hiya/stingray/ui/local/settings/b;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/ui/local/settings/b;->d(Landroid/content/Context;Z)V

    return-void
.end method

.method public final F(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/d;->f:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/manager/o2;->K(Landroid/content/Context;Z)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/d;->d:Lcom/hiya/stingray/ui/local/settings/b;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/local/settings/b;->e(Z)V

    return-void
.end method

.method public final G(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/d;->f:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/manager/o2;->L(Landroid/content/Context;Z)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/d;->d:Lcom/hiya/stingray/ui/local/settings/b;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/local/settings/b;->f(Z)V

    return-void
.end method

.method public final H(Landroid/content/Context;Z)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    aget-object v0, v0, v1

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/settings/d;->f:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v1, p1, v0}, Lcom/hiya/stingray/manager/o2;->O(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/d;->c:Lcom/hiya/stingray/util/a0;

    new-instance v1, Lcom/hiya/stingray/util/i0/d;

    sget-object v2, Lcom/hiya/stingray/util/i0/d$a;->BLOCK_STATUS_ONLY:Lcom/hiya/stingray/util/i0/d$a;

    invoke-direct {v1, v2}, Lcom/hiya/stingray/util/i0/d;-><init>(Lcom/hiya/stingray/util/i0/d$a;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->d(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/d;->d:Lcom/hiya/stingray/ui/local/settings/b;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/ui/local/settings/b;->g(Landroid/content/Context;Z)V

    return-void
.end method

.method public p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/d;->c:Lcom/hiya/stingray/util/a0;

    .line 2
    const-class v1, Lcom/hiya/stingray/ui/local/settings/d$a;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 4
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/hiya/stingray/ui/local/settings/d$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/settings/d$b;-><init>(Lcom/hiya/stingray/ui/local/settings/d;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/settings/d;->e:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public final t(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/d;->f:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/o2;->u(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final u(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/d;->f:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/o2;->v(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final v(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/d;->f:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/o2;->x(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final w(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/d;->f:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/o2;->y(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final x(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/d;->f:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/o2;->z(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final y(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/d;->f:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/o2;->A(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final z()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/settings/e;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/local/settings/e;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/settings/d;->b:Lcom/hiya/stingray/ui/login/o;

    sget-object v2, Lcom/hiya/stingray/util/n;->d:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/d;->f:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/o2;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
