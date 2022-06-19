.class public final Lcom/hiya/stingray/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/client/callerid/ui/d;
.implements Lcom/hiya/client/callerid/ui/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/l$a;,
        Lcom/hiya/stingray/l$b;,
        Lcom/hiya/stingray/l$c;
    }
.end annotation


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Lcom/hiya/stingray/manager/e1;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Lcom/hiya/stingray/manager/q2;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Lcom/hiya/stingray/ui/f;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/hiya/stingray/manager/u3;

.field private final g:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Lcom/hiya/stingray/manager/w1;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/hiya/stingray/manager/o2;

.field private final i:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Lcom/hiya/stingray/manager/h2;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/hiya/stingray/util/a0;

.field private final k:Li/c/b0/c/a;

.field private final l:Lcom/hiya/stingray/ui/login/o;

.field private final m:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Lcom/hiya/stingray/manager/s2;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Lcom/hiya/stingray/manager/c2;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Lcom/hiya/stingray/manager/h4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lh/a;Lh/a;Lh/a;Lcom/hiya/stingray/manager/u3;Lh/a;Lcom/hiya/stingray/manager/o2;Lh/a;Lcom/hiya/stingray/util/a0;Li/c/b0/c/a;Lcom/hiya/stingray/ui/login/o;Lh/a;Lh/a;Lh/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lh/a<",
            "Lcom/hiya/stingray/manager/e1;",
            ">;",
            "Lh/a<",
            "Lcom/hiya/stingray/manager/q2;",
            ">;",
            "Lh/a<",
            "Lcom/hiya/stingray/ui/f;",
            ">;",
            "Lcom/hiya/stingray/manager/u3;",
            "Lh/a<",
            "Lcom/hiya/stingray/manager/w1;",
            ">;",
            "Lcom/hiya/stingray/manager/o2;",
            "Lh/a<",
            "Lcom/hiya/stingray/manager/h2;",
            ">;",
            "Lcom/hiya/stingray/util/a0;",
            "Li/c/b0/c/a;",
            "Lcom/hiya/stingray/ui/login/o;",
            "Lh/a<",
            "Lcom/hiya/stingray/manager/s2;",
            ">;",
            "Lh/a<",
            "Lcom/hiya/stingray/manager/c2;",
            ">;",
            "Lh/a<",
            "Lcom/hiya/stingray/manager/h4;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManagerLazy"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventProfileManagerLazy"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presenterHelperLazy"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumManager"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockManagerLazy"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceUserInfoManager"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "agentLazy"

    invoke-static {p8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p9, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {p10, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionHandler"

    invoke-static {p11, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lazyExperimentManager"

    invoke-static {p12, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lazyCustomBlockManager"

    invoke-static {p13, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lazyUserAccountManager"

    invoke-static {p14, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/l;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/l;->c:Lh/a;

    iput-object p3, p0, Lcom/hiya/stingray/l;->d:Lh/a;

    iput-object p4, p0, Lcom/hiya/stingray/l;->e:Lh/a;

    iput-object p5, p0, Lcom/hiya/stingray/l;->f:Lcom/hiya/stingray/manager/u3;

    iput-object p6, p0, Lcom/hiya/stingray/l;->g:Lh/a;

    iput-object p7, p0, Lcom/hiya/stingray/l;->h:Lcom/hiya/stingray/manager/o2;

    iput-object p8, p0, Lcom/hiya/stingray/l;->i:Lh/a;

    iput-object p9, p0, Lcom/hiya/stingray/l;->j:Lcom/hiya/stingray/util/a0;

    iput-object p10, p0, Lcom/hiya/stingray/l;->k:Li/c/b0/c/a;

    iput-object p11, p0, Lcom/hiya/stingray/l;->l:Lcom/hiya/stingray/ui/login/o;

    iput-object p12, p0, Lcom/hiya/stingray/l;->m:Lh/a;

    iput-object p13, p0, Lcom/hiya/stingray/l;->n:Lh/a;

    iput-object p14, p0, Lcom/hiya/stingray/l;->o:Lh/a;

    return-void
.end method

.method private final n(Lg/g/b/c/k;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/m;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/l;->h:Lcom/hiya/stingray/manager/o2;

    iget-object v0, p0, Lcom/hiya/stingray/l;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/manager/o2;->x(Landroid/content/Context;)Z

    move-result p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/l;->h:Lcom/hiya/stingray/manager/o2;

    iget-object v0, p0, Lcom/hiya/stingray/l;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/manager/o2;->v(Landroid/content/Context;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method private final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/l;->j:Lcom/hiya/stingray/util/a0;

    new-instance v1, Lcom/hiya/stingray/l$b;

    invoke-direct {v1}, Lcom/hiya/stingray/l$b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/l;->j:Lcom/hiya/stingray/util/a0;

    new-instance v1, Lcom/hiya/stingray/l$c;

    invoke-direct {v1}, Lcom/hiya/stingray/l$c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/hiya/client/callerid/ui/b0/e;Lcom/hiya/client/callerid/ui/d$c;)V
    .locals 1

    const-string p1, "displayOptions"

    invoke-static {p2, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/l;->c:Lh/a;

    invoke-interface {p1}, Lh/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/manager/e1;

    const-string p2, "caller_id_shown"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public b(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;)Z
    .locals 1

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "direction"

    invoke-static {p2, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/l;->h:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/o2;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hiya/stingray/l;->l:Lcom/hiya/stingray/ui/login/o;

    .line 2
    iget-object p2, p0, Lcom/hiya/stingray/l;->b:Landroid/content/Context;

    .line 3
    sget-object v0, Lcom/hiya/stingray/util/n;->d:[Ljava/lang/String;

    .line 4
    invoke-virtual {p1, p2, v0}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/l;->h:Lcom/hiya/stingray/manager/o2;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/manager/o2;->D(Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public c(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;ZZ)Z
    .locals 1

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/hiya/client/callerid/ui/d$b;->b(Lcom/hiya/client/callerid/ui/d;Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;ZZ)Z

    move-result p1

    return p1
.end method

.method public d(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/d$c;)V
    .locals 1

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdWithSource"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "displayOptions"

    invoke-static {p4, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p3

    invoke-virtual {p3}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object p3

    sget-object p4, Lg/g/b/c/q;->SPAM:Lg/g/b/c/q;

    if-eq p3, p4, :cond_2

    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p3

    invoke-virtual {p3}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object p3

    sget-object p4, Lg/g/b/c/q;->FRAUD:Lg/g/b/c/q;

    if-ne p3, p4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p3

    invoke-virtual {p3}, Lg/g/b/c/f;->n()Lg/g/b/c/i;

    move-result-object p3

    sget-object p4, Lg/g/b/c/i;->BUSINESS:Lg/g/b/c/i;

    if-eq p3, p4, :cond_1

    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p2

    invoke-virtual {p2}, Lg/g/b/c/f;->n()Lg/g/b/c/i;

    move-result-object p2

    sget-object p3, Lg/g/b/c/i;->PERSON:Lg/g/b/c/i;

    if-ne p2, p3, :cond_3

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/hiya/stingray/l;->p()V

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/hiya/stingray/l;->o()V

    .line 5
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/hiya/stingray/l;->i:Lh/a;

    invoke-interface {p2}, Lh/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hiya/stingray/manager/h2;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/hiya/stingray/manager/h2;->r(Ljava/lang/String;)V

    return-void
.end method

.method public e(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;Z)Z
    .locals 1

    const-string p4, "number"

    invoke-static {p1, p4}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "callerId"

    invoke-static {p2, p4}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "direction"

    invoke-static {p3, p4}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p4, p0, Lcom/hiya/stingray/l;->b:Landroid/content/Context;

    invoke-static {}, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;->P()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2
    iget-object p4, p0, Lcom/hiya/stingray/l;->d:Lh/a;

    invoke-interface {p4}, Lh/a;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/hiya/stingray/manager/q2;

    .line 3
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v0

    invoke-virtual {p4, p1, v0}, Lcom/hiya/stingray/manager/q2;->e(Ljava/lang/String;Lg/g/b/c/f;)Li/c/b0/b/e;

    move-result-object p1

    .line 4
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object p4

    invoke-virtual {p1, p4}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object p1

    .line 5
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object p4

    invoke-virtual {p1, p4}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object p1

    .line 6
    sget-object p4, Lcom/hiya/stingray/l$f;->f:Lcom/hiya/stingray/l$f;

    sget-object v0, Lcom/hiya/stingray/l$g;->f:Lcom/hiya/stingray/l$g;

    invoke-virtual {p1, p4, v0}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 7
    iget-object p4, p0, Lcom/hiya/stingray/l;->k:Li/c/b0/c/a;

    invoke-virtual {p4, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 8
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->b()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hiya/stingray/l;->h:Lcom/hiya/stingray/manager/o2;

    iget-object p4, p0, Lcom/hiya/stingray/l;->b:Landroid/content/Context;

    invoke-virtual {p1, p4}, Lcom/hiya/stingray/manager/o2;->z(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return p2

    .line 9
    :cond_0
    invoke-direct {p0, p3}, Lcom/hiya/stingray/l;->n(Lg/g/b/c/k;)Z

    move-result p1

    if-nez p1, :cond_1

    return p2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public f(Lg/g/b/c/k;Z)Z
    .locals 0

    const-string p2, "direction"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public g(Lcom/hiya/client/callerid/ui/d$d;Lcom/hiya/client/callerid/ui/b0/j;ZLcom/hiya/client/callerid/ui/b0/e;)V
    .locals 2

    const-string p3, "inActiveCallAction"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "number"

    invoke-static {p2, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/hiya/stingray/l;->c:Lh/a;

    invoke-interface {p2}, Lh/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object p3

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "Locale.ROOT"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    if-eqz p4, :cond_0

    .line 4
    invoke-virtual {p4}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    sget-object p4, Lcom/hiya/stingray/manager/d1;->a:Lcom/hiya/stingray/manager/d1$a;

    invoke-virtual {p4, p1}, Lcom/hiya/stingray/manager/d1$a;->d(Lg/g/b/c/q;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/hiya/stingray/util/g0/c$a;->j(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    :cond_0
    const-string p1, "incall_ui_in_call"

    .line 6
    invoke-virtual {p3, p1}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 7
    invoke-virtual {p3}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    const-string p3, "in_call"

    .line 8
    invoke-virtual {p2, p3, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public h(Landroid/content/Context;Lcom/hiya/client/callerid/ui/d$g;Lcom/hiya/client/callerid/ui/b0/j;ZLcom/hiya/client/callerid/ui/b0/e;)Z
    .locals 4

    const-string p4, "activityContext"

    invoke-static {p1, p4}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "action"

    invoke-static {p2, p4}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "number"

    invoke-static {p3, p4}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p4, p0, Lcom/hiya/stingray/l;->c:Lh/a;

    invoke-interface {p4}, Lh/a;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "Locale.ROOT"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    if-eqz p5, :cond_0

    .line 4
    invoke-virtual {p5}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p5

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 5
    sget-object v1, Lcom/hiya/stingray/manager/d1;->a:Lcom/hiya/stingray/manager/d1$a;

    invoke-virtual {v1, p5}, Lcom/hiya/stingray/manager/d1$a;->d(Lg/g/b/c/q;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Lcom/hiya/stingray/util/g0/c$a;->j(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    :cond_0
    const-string p5, "incall_ui_postcall"

    .line 6
    invoke-virtual {v0, p5}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 7
    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p5

    const-string v0, "post_call_prompt"

    .line 8
    invoke-virtual {p4, v0, p5}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 9
    sget-object p4, Lcom/hiya/stingray/m;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p4, p2

    const/4 p4, 0x1

    if-eq p2, p4, :cond_2

    const/4 p5, 0x2

    if-eq p2, p5, :cond_1

    const/4 p1, 0x0

    return p1

    .line 10
    :cond_1
    iget-object p2, p0, Lcom/hiya/stingray/l;->b:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/hiya/stingray/ui/submitreport/ReportActivity;->O(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/hiya/stingray/l;->n:Lh/a;

    invoke-interface {p1}, Lh/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/manager/c2;

    .line 12
    iget-object p2, p0, Lcom/hiya/stingray/l;->o:Lh/a;

    invoke-interface {p2}, Lh/a;->get()Ljava/lang/Object;

    move-result-object p2

    const-string p5, "lazyUserAccountManager.get()"

    invoke-static {p2, p5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/hiya/stingray/manager/h4;

    invoke-virtual {p2}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-virtual {p3}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lkotlin/s/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 14
    sget-object p5, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;->FULL_NUMBER:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    .line 15
    invoke-virtual {p1, p2, p3, p5}, Lcom/hiya/stingray/manager/c2;->a(Ljava/lang/String;Ljava/util/List;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)Li/c/b0/b/v;

    move-result-object p1

    .line 16
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object p2

    invoke-virtual {p1, p2}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    .line 17
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object p2

    invoke-virtual {p1, p2}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    .line 18
    sget-object p2, Lcom/hiya/stingray/l$d;->f:Lcom/hiya/stingray/l$d;

    sget-object p3, Lcom/hiya/stingray/l$e;->f:Lcom/hiya/stingray/l$e;

    invoke-virtual {p1, p2, p3}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/hiya/stingray/l;->k:Li/c/b0/c/a;

    invoke-virtual {p2, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    :goto_0
    return p4
.end method

.method public i(Lcom/hiya/client/callerid/ui/b0/j;)Lcom/hiya/client/callerid/ui/c$a;
    .locals 1

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/hiya/client/callerid/ui/c$c;->a(Lcom/hiya/client/callerid/ui/c;Lcom/hiya/client/callerid/ui/b0/j;)Lcom/hiya/client/callerid/ui/c$a;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/hiya/client/callerid/ui/b0/j;ZLcom/hiya/client/callerid/ui/b0/e;)Lcom/hiya/client/callerid/ui/d$f;
    .locals 5

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/l;->m:Lh/a;

    invoke-interface {p1}, Lh/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/manager/s2;

    sget-object v0, Lcom/hiya/stingray/manager/s2$c;->END_AND_REPORT:Lcom/hiya/stingray/manager/s2$c;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/hiya/stingray/manager/s2;->r(Lcom/hiya/stingray/manager/s2;Lcom/hiya/stingray/manager/s2$c;ZILjava/lang/Object;)Z

    move-result p1

    .line 2
    iget-object v4, p0, Lcom/hiya/stingray/l;->m:Lh/a;

    invoke-interface {v4}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hiya/stingray/manager/s2;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/hiya/stingray/manager/s2;->n(Lcom/hiya/stingray/manager/s2;Lcom/hiya/stingray/manager/s2$c;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_6

    if-nez p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p3}, Lcom/hiya/client/callerid/ui/b0/e;->b()Z

    move-result p2

    if-nez p2, :cond_2

    .line 4
    invoke-virtual {p3}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p2

    invoke-virtual {p2}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object p2

    invoke-static {p2}, Lg/g/b/a/g/a/c;->a(Lg/g/b/c/q;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 5
    invoke-virtual {p3}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p2

    invoke-virtual {p2}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    sget-object p1, Lcom/hiya/client/callerid/ui/d$e;->DISABLED:Lcom/hiya/client/callerid/ui/d$e;

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 6
    sget-object p1, Lcom/hiya/client/callerid/ui/d$e;->DISABLED:Lcom/hiya/client/callerid/ui/d$e;

    goto :goto_1

    :cond_3
    const-string p1, "1"

    .line 7
    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/hiya/client/callerid/ui/d$e;->BUTTON:Lcom/hiya/client/callerid/ui/d$e;

    goto :goto_1

    :cond_4
    const-string p1, "2"

    .line 8
    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/hiya/client/callerid/ui/d$e;->ACTION_SHEET:Lcom/hiya/client/callerid/ui/d$e;

    goto :goto_1

    .line 9
    :cond_5
    sget-object p1, Lcom/hiya/client/callerid/ui/d$e;->DISABLED:Lcom/hiya/client/callerid/ui/d$e;

    goto :goto_1

    .line 10
    :cond_6
    :goto_0
    sget-object p1, Lcom/hiya/client/callerid/ui/d$e;->DISABLED:Lcom/hiya/client/callerid/ui/d$e;

    .line 11
    :goto_1
    new-instance p2, Lcom/hiya/client/callerid/ui/d$f;

    invoke-direct {p2, p1}, Lcom/hiya/client/callerid/ui/d$f;-><init>(Lcom/hiya/client/callerid/ui/d$e;)V

    return-object p2
.end method

.method public k(Lcom/hiya/client/callerid/ui/b0/j;ZLcom/hiya/client/callerid/ui/b0/e;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/client/callerid/ui/b0/j;",
            "Z",
            "Lcom/hiya/client/callerid/ui/b0/e;",
            ")",
            "Ljava/util/List<",
            "Lcom/hiya/client/callerid/ui/d$g;",
            ">;"
        }
    .end annotation

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/hiya/client/callerid/ui/d$b;->a(Lcom/hiya/client/callerid/ui/d;Lcom/hiya/client/callerid/ui/b0/j;ZLcom/hiya/client/callerid/ui/b0/e;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public l(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;)Lcom/hiya/client/callerid/ui/c$a;
    .locals 9

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerId"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/l;->g:Lh/a;

    invoke-interface {v0}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/hiya/stingray/manager/w1;

    .line 2
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v4

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->b()Z

    move-result v4

    .line 5
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object v5

    .line 6
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/c/f;->n()Lg/g/b/c/i;

    move-result-object v6

    const/4 v7, 0x1

    .line 7
    sget-object v8, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    .line 8
    invoke-virtual/range {v1 .. v8}, Lcom/hiya/stingray/manager/w1;->e(Ljava/lang/String;ZZLg/g/b/c/q;Lg/g/b/c/i;ZLg/g/b/c/k;)Li/c/b0/b/v;

    move-result-object p1

    .line 9
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Li/c/b0/b/v;->blockingFirst(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    .line 11
    new-instance p2, Lcom/hiya/client/callerid/ui/c$a;

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lcom/hiya/client/callerid/ui/c$a;-><init>(ZZZZZILkotlin/w/c/g;)V

    return-object p2
.end method

.method public m(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;Z)Lcom/hiya/client/callerid/ui/d$c;
    .locals 5

    const-string p1, "direction"

    invoke-static {p3, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 2
    invoke-static {p4}, Lg/g/b/a/g/a/c;->a(Lg/g/b/c/q;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p4

    invoke-virtual {p4}, Lg/g/b/c/f;->g()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-lez p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/hiya/stingray/l;->m:Lh/a;

    invoke-interface {v0}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/manager/s2;

    sget-object v1, Lcom/hiya/stingray/manager/s2$c;->NO_AVATAR:Lcom/hiya/stingray/manager/s2$c;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, p3, v2, v3}, Lcom/hiya/stingray/manager/s2;->r(Lcom/hiya/stingray/manager/s2;Lcom/hiya/stingray/manager/s2$c;ZILjava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, p1

    .line 5
    iget-object v1, p0, Lcom/hiya/stingray/l;->m:Lh/a;

    invoke-interface {v1}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/manager/s2;

    sget-object v4, Lcom/hiya/stingray/manager/s2$c;->NO_CALL_REASON:Lcom/hiya/stingray/manager/s2$c;

    invoke-static {v1, v4, p3, v2, v3}, Lcom/hiya/stingray/manager/s2;->r(Lcom/hiya/stingray/manager/s2;Lcom/hiya/stingray/manager/s2$c;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p4, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    .line 6
    iget-object p3, p0, Lcom/hiya/stingray/l;->e:Lh/a;

    invoke-interface {p3}, Lh/a;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/hiya/stingray/ui/f;

    .line 7
    iget-object p4, p0, Lcom/hiya/stingray/l;->f:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {p4}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result p4

    invoke-virtual {p3, p4, p2}, Lcom/hiya/stingray/ui/f;->h(ZLcom/hiya/client/callerid/ui/b0/e;)Lg/g/b/c/f;

    move-result-object v3

    .line 8
    :cond_4
    new-instance p2, Lcom/hiya/client/callerid/ui/d$c;

    invoke-direct {p2, v0, p1, v3}, Lcom/hiya/client/callerid/ui/d$c;-><init>(ZZLg/g/b/c/f;)V

    return-object p2
.end method
