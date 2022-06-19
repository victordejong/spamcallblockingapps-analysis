.class public Lcom/hiya/stingray/ui/contactdetails/x;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/contactdetails/a0;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/hiya/stingray/manager/h4;

.field private final c:Lcom/hiya/stingray/manager/c2;

.field private final d:Lcom/hiya/stingray/ui/common/error/e;

.field private final e:Lcom/hiya/stingray/util/a0;

.field private final f:Lcom/hiya/stingray/manager/o1;

.field private final g:Lcom/hiya/stingray/t/i1/c0;

.field private final h:Lcom/hiya/stingray/t/i1/t0;

.field private final i:Lcom/hiya/stingray/t/i1/t;

.field private final j:Lcom/hiya/stingray/manager/y1;

.field private final k:Lcom/hiya/stingray/manager/u3;

.field private final l:Landroid/content/Context;

.field private final m:Lcom/hiya/stingray/manager/e1;

.field private final n:Lcom/hiya/stingray/r/a;

.field private final o:Li/c/b0/c/a;

.field private p:Lcom/hiya/stingray/t/d0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/h4;Lcom/hiya/stingray/manager/c2;Lcom/hiya/stingray/ui/common/error/e;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/manager/o1;Lcom/hiya/stingray/t/i1/c0;Lcom/hiya/stingray/t/i1/t0;Lcom/hiya/stingray/t/i1/t;Lcom/hiya/stingray/manager/y1;Li/c/b0/c/a;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/r/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/x;->p:Lcom/hiya/stingray/t/d0;

    .line 3
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/x;->l:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/x;->b:Lcom/hiya/stingray/manager/h4;

    .line 5
    iput-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/x;->c:Lcom/hiya/stingray/manager/c2;

    .line 6
    iput-object p4, p0, Lcom/hiya/stingray/ui/contactdetails/x;->d:Lcom/hiya/stingray/ui/common/error/e;

    .line 7
    iput-object p5, p0, Lcom/hiya/stingray/ui/contactdetails/x;->e:Lcom/hiya/stingray/util/a0;

    .line 8
    iput-object p6, p0, Lcom/hiya/stingray/ui/contactdetails/x;->f:Lcom/hiya/stingray/manager/o1;

    .line 9
    iput-object p7, p0, Lcom/hiya/stingray/ui/contactdetails/x;->g:Lcom/hiya/stingray/t/i1/c0;

    .line 10
    iput-object p8, p0, Lcom/hiya/stingray/ui/contactdetails/x;->h:Lcom/hiya/stingray/t/i1/t0;

    .line 11
    iput-object p9, p0, Lcom/hiya/stingray/ui/contactdetails/x;->i:Lcom/hiya/stingray/t/i1/t;

    .line 12
    iput-object p10, p0, Lcom/hiya/stingray/ui/contactdetails/x;->j:Lcom/hiya/stingray/manager/y1;

    .line 13
    iput-object p11, p0, Lcom/hiya/stingray/ui/contactdetails/x;->o:Li/c/b0/c/a;

    .line 14
    iput-object p12, p0, Lcom/hiya/stingray/ui/contactdetails/x;->k:Lcom/hiya/stingray/manager/u3;

    .line 15
    iput-object p13, p0, Lcom/hiya/stingray/ui/contactdetails/x;->m:Lcom/hiya/stingray/manager/e1;

    .line 16
    iput-object p14, p0, Lcom/hiya/stingray/ui/contactdetails/x;->n:Lcom/hiya/stingray/r/a;

    return-void
.end method

.method private synthetic A(Lcom/hiya/stingray/util/i0/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/x;->e:Lcom/hiya/stingray/util/a0;

    const-class v0, Lcom/hiya/stingray/util/i0/c;

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/a0;->e(Ljava/lang/Class;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast p1, Lcom/hiya/stingray/ui/contactdetails/a0;

    invoke-interface {p1}, Lcom/hiya/stingray/ui/contactdetails/a0;->s0()V

    return-void
.end method

.method private synthetic C(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/contactdetails/x;->Q()V

    return-void
.end method

.method private synthetic E(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/t/d0;

    .line 3
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/x;->x(Lcom/hiya/stingray/t/d0;)Lcom/hiya/stingray/ui/contactdetails/d0;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/hiya/stingray/ui/contactdetails/a0;

    invoke-interface {v1, p1}, Lcom/hiya/stingray/ui/contactdetails/a0;->q(Lcom/hiya/stingray/t/d0;)V

    .line 5
    iget-object v1, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/hiya/stingray/ui/contactdetails/a0;

    invoke-interface {v1, v0}, Lcom/hiya/stingray/ui/contactdetails/a0;->R0(Lcom/hiya/stingray/ui/contactdetails/d0;)V

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/hiya/stingray/ui/contactdetails/x;->R(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;)V

    :cond_0
    return-void
.end method

.method private synthetic G(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/x;->d:Lcom/hiya/stingray/ui/common/error/e;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/common/error/e;->g(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/x;->e:Lcom/hiya/stingray/util/a0;

    new-instance v1, Lcom/hiya/stingray/t/e1/a;

    const-class v2, Lcom/hiya/stingray/ui/contactdetails/x;

    const-string v3, "Failed to get a call log data"

    invoke-direct {v1, v2, v3, p1}, Lcom/hiya/stingray/t/e1/a;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic I(Lcom/hiya/stingray/ui/contactdetails/d0;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/contactdetails/a0;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/x;->w(Lcom/hiya/stingray/ui/contactdetails/d0;Z)[Lcom/hiya/stingray/ui/contactdetails/e0;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/a0;->H0([Lcom/hiya/stingray/ui/contactdetails/e0;)V

    return-void
.end method

.method private synthetic K(Lcom/hiya/stingray/ui/contactdetails/d0;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/contactdetails/a0;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/hiya/stingray/ui/contactdetails/x;->w(Lcom/hiya/stingray/ui/contactdetails/d0;Z)[Lcom/hiya/stingray/ui/contactdetails/e0;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/a0;->H0([Lcom/hiya/stingray/ui/contactdetails/e0;)V

    .line 2
    invoke-static {p2}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic t(Lcom/hiya/stingray/ui/contactdetails/x;)Lcom/hiya/stingray/t/d0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/contactdetails/x;->p:Lcom/hiya/stingray/t/d0;

    return-object p0
.end method

.method static synthetic u(Lcom/hiya/stingray/ui/contactdetails/x;)Lcom/hiya/stingray/util/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/contactdetails/x;->e:Lcom/hiya/stingray/util/a0;

    return-object p0
.end method

.method static synthetic v(Lcom/hiya/stingray/ui/contactdetails/x;)Lcom/hiya/stingray/ui/common/error/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/contactdetails/x;->d:Lcom/hiya/stingray/ui/common/error/e;

    return-object p0
.end method

.method private w(Lcom/hiya/stingray/ui/contactdetails/d0;Z)[Lcom/hiya/stingray/ui/contactdetails/e0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/ui/contactdetails/d0;->getSections()[Lcom/hiya/stingray/ui/contactdetails/e0;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/x;->l:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f050004

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/x;->k:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3;->T()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lcom/hiya/stingray/ui/contactdetails/e0;->USER_REPORTS:Lcom/hiya/stingray/ui/contactdetails/e0;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    sget-object p1, Lcom/hiya/stingray/ui/contactdetails/e0;->HEADER:Lcom/hiya/stingray/ui/contactdetails/e0;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/x;->m:Lcom/hiya/stingray/manager/e1;

    .line 8
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object p2

    const-string v1, "is_spam"

    .line 9
    invoke-virtual {p2, v1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 10
    invoke-virtual {p2}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p2

    const-string v1, "user_prompt_view"

    .line 11
    invoke-virtual {p1, v1, p2}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 12
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/hiya/stingray/ui/contactdetails/e0;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1
.end method

.method private synthetic y(Lkotlin/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/x;->e:Lcom/hiya/stingray/util/a0;

    new-instance v0, Lcom/hiya/stingray/util/i0/e;

    invoke-direct {v0}, Lcom/hiya/stingray/util/i0/e;-><init>()V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/a0;->d(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic B(Lcom/hiya/stingray/util/i0/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/x;->A(Lcom/hiya/stingray/util/i0/c;)V

    return-void
.end method

.method public synthetic D(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/x;->C(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic F(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/x;->E(Ljava/util/List;)V

    return-void
.end method

.method public synthetic H(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/x;->G(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic J(Lcom/hiya/stingray/ui/contactdetails/d0;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/x;->I(Lcom/hiya/stingray/ui/contactdetails/d0;Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic L(Lcom/hiya/stingray/ui/contactdetails/d0;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/x;->K(Lcom/hiya/stingray/ui/contactdetails/d0;Ljava/lang/Throwable;)V

    return-void
.end method

.method public M(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/contactdetails/a0;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/contactdetails/a0;->V(Z)V

    .line 2
    invoke-virtual {p0, v1, p2}, Lcom/hiya/stingray/ui/contactdetails/x;->S(ZLcom/hiya/stingray/ui/contactdetails/d0;)V

    .line 3
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/x;->o:Li/c/b0/c/a;

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/x;->c:Lcom/hiya/stingray/manager/c2;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/x;->b:Lcom/hiya/stingray/manager/h4;

    .line 4
    invoke-virtual {v1}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/c2;->c(Ljava/lang/String;Lcom/hiya/stingray/t/d0;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/s/b;

    invoke-direct {v0}, Lcom/hiya/stingray/s/b;-><init>()V

    .line 5
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/x$d;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/contactdetails/x$d;-><init>(Lcom/hiya/stingray/ui/contactdetails/x;)V

    .line 6
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->doOnTerminate(Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/x$b;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/contactdetails/x$b;-><init>(Lcom/hiya/stingray/ui/contactdetails/x;)V

    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/x$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/contactdetails/x$c;-><init>(Lcom/hiya/stingray/ui/contactdetails/x;)V

    .line 7
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 8
    invoke-virtual {p2, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public N()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/x;->j:Lcom/hiya/stingray/manager/y1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/y1;->b()Li/c/b0/b/l;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/i;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/contactdetails/i;-><init>(Lcom/hiya/stingray/ui/contactdetails/x;)V

    .line 2
    invoke-virtual {v0, v1}, Li/c/b0/b/l;->r(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/x;->o:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public O(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/contactdetails/a0;

    invoke-interface {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/a0;->Q0(Ljava/lang/String;)V

    return-void
.end method

.method public P(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/contactdetails/a0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/contactdetails/a0;->V(Z)V

    .line 2
    invoke-virtual {p0, v1, p2}, Lcom/hiya/stingray/ui/contactdetails/x;->S(ZLcom/hiya/stingray/ui/contactdetails/d0;)V

    .line 3
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/x;->o:Li/c/b0/c/a;

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/x;->c:Lcom/hiya/stingray/manager/c2;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/x;->b:Lcom/hiya/stingray/manager/h4;

    .line 4
    invoke-virtual {v1}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/c2;->C(Ljava/lang/String;Lcom/hiya/stingray/t/d0;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/s/b;

    invoke-direct {v0}, Lcom/hiya/stingray/s/b;-><init>()V

    .line 5
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/x$g;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/contactdetails/x$g;-><init>(Lcom/hiya/stingray/ui/contactdetails/x;)V

    .line 6
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->doOnTerminate(Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/x$e;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/contactdetails/x$e;-><init>(Lcom/hiya/stingray/ui/contactdetails/x;)V

    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/x$f;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/contactdetails/x$f;-><init>(Lcom/hiya/stingray/ui/contactdetails/x;)V

    .line 7
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 8
    invoke-virtual {p2, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public Q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/x;->p:Lcom/hiya/stingray/t/d0;

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/contactdetails/x;->x(Lcom/hiya/stingray/t/d0;)Lcom/hiya/stingray/ui/contactdetails/d0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/hiya/stingray/ui/contactdetails/a0;

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/x;->p:Lcom/hiya/stingray/t/d0;

    invoke-interface {v1, v2}, Lcom/hiya/stingray/ui/contactdetails/a0;->q(Lcom/hiya/stingray/t/d0;)V

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/hiya/stingray/ui/contactdetails/a0;

    invoke-interface {v1, v0}, Lcom/hiya/stingray/ui/contactdetails/a0;->R0(Lcom/hiya/stingray/ui/contactdetails/d0;)V

    .line 4
    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/x;->p:Lcom/hiya/stingray/t/d0;

    invoke-virtual {p0, v1, v0}, Lcom/hiya/stingray/ui/contactdetails/x;->R(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;)V

    return-void
.end method

.method public R(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/x;->p:Lcom/hiya/stingray/t/d0;

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->h()Lcom/hiya/stingray/t/b0;

    move-result-object v0

    invoke-static {v0}, Lcom/hiya/stingray/util/f0;->i(Lcom/hiya/stingray/t/b0;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/hiya/stingray/ui/contactdetails/a0;

    invoke-interface {v1, v0}, Lcom/hiya/stingray/ui/contactdetails/a0;->V(Z)V

    .line 4
    iget-object v1, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/hiya/stingray/ui/contactdetails/a0;

    invoke-interface {v1, v0}, Lcom/hiya/stingray/ui/contactdetails/a0;->X0(Z)V

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/hiya/stingray/ui/contactdetails/x;->S(ZLcom/hiya/stingray/ui/contactdetails/d0;)V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/x;->o:Li/c/b0/c/a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/x;->n:Lcom/hiya/stingray/r/a;

    .line 7
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/r/a;->a(Lcom/hiya/stingray/t/d0;)Li/c/b0/b/e0;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/hiya/stingray/s/c;->d()Li/c/b0/b/j0;

    move-result-object v1

    invoke-virtual {p1, v1}, Li/c/b0/b/e0;->e(Li/c/b0/b/j0;)Li/c/b0/b/e0;

    move-result-object p1

    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/f;

    invoke-direct {v1, p0, p2}, Lcom/hiya/stingray/ui/contactdetails/f;-><init>(Lcom/hiya/stingray/ui/contactdetails/x;Lcom/hiya/stingray/ui/contactdetails/d0;)V

    new-instance v2, Lcom/hiya/stingray/ui/contactdetails/e;

    invoke-direct {v2, p0, p2}, Lcom/hiya/stingray/ui/contactdetails/e;-><init>(Lcom/hiya/stingray/ui/contactdetails/x;Lcom/hiya/stingray/ui/contactdetails/d0;)V

    .line 9
    invoke-virtual {p1, v1, v2}, Li/c/b0/b/e0;->B(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method S(ZLcom/hiya/stingray/ui/contactdetails/d0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/contactdetails/a0;

    invoke-virtual {p2}, Lcom/hiya/stingray/ui/contactdetails/d0;->isShowCallButton()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/contactdetails/a0;->F0(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/contactdetails/a0;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/x;->p:Lcom/hiya/stingray/t/d0;

    invoke-interface {v0, p1, p2, v1}, Lcom/hiya/stingray/ui/contactdetails/a0;->Q(ZLcom/hiya/stingray/ui/contactdetails/d0;Lcom/hiya/stingray/t/d0;)V

    .line 3
    sget-object v0, Lcom/hiya/stingray/ui/contactdetails/d0;->PRIVATE:Lcom/hiya/stingray/ui/contactdetails/d0;

    if-eq p2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/contactdetails/a0;

    invoke-interface {v0, v2}, Lcom/hiya/stingray/ui/contactdetails/a0;->O(Z)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/contactdetails/a0;

    invoke-interface {v0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/a0;->R(ZLcom/hiya/stingray/ui/contactdetails/d0;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/x;->o:Li/c/b0/c/a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/x;->f:Lcom/hiya/stingray/manager/o1;

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/x;->b:Lcom/hiya/stingray/manager/h4;

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3, v2}, Lcom/hiya/stingray/manager/o1;->l(Ljava/lang/String;ILjava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    .line 2
    invoke-virtual {p1, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/d;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/contactdetails/d;-><init>(Lcom/hiya/stingray/ui/contactdetails/x;)V

    new-instance v2, Lcom/hiya/stingray/ui/contactdetails/h;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/contactdetails/h;-><init>(Lcom/hiya/stingray/ui/contactdetails/x;)V

    .line 3
    invoke-virtual {p1, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public p()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/x;->e:Lcom/hiya/stingray/util/a0;

    const-class v1, Lcom/hiya/stingray/util/i0/e;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/hiya/stingray/ui/contactdetails/a0;

    .line 2
    invoke-interface {v1}, Lcom/hiya/stingray/ui/contactdetails/a0;->x()Li/c/b0/b/v;

    move-result-object v1

    invoke-static {v1}, Lcom/trello/rxlifecycle4/d/c;->b(Li/c/b0/b/v;)Lcom/trello/rxlifecycle4/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3e8

    .line 3
    invoke-virtual {v0, v2, v3, v1}, Li/c/b0/b/v;->throttleLast(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/x$a;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/contactdetails/x$a;-><init>(Lcom/hiya/stingray/ui/contactdetails/x;)V

    .line 4
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/x;->e:Lcom/hiya/stingray/util/a0;

    const-class v2, Lcom/hiya/stingray/util/i0/c;

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/ui/contactdetails/c;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/contactdetails/c;-><init>(Lcom/hiya/stingray/ui/contactdetails/x;)V

    .line 6
    invoke-virtual {v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/x;->o:Li/c/b0/c/a;

    iget-object v3, p0, Lcom/hiya/stingray/ui/contactdetails/x;->e:Lcom/hiya/stingray/util/a0;

    const-class v4, Lcom/hiya/stingray/manager/u3$h;

    .line 8
    invoke-virtual {v3, v4}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object v3

    new-instance v4, Lcom/hiya/stingray/s/b;

    invoke-direct {v4}, Lcom/hiya/stingray/s/b;-><init>()V

    .line 9
    invoke-virtual {v3, v4}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v3

    new-instance v4, Lcom/hiya/stingray/ui/contactdetails/g;

    invoke-direct {v4, p0}, Lcom/hiya/stingray/ui/contactdetails/g;-><init>(Lcom/hiya/stingray/ui/contactdetails/x;)V

    .line 10
    invoke-virtual {v3, v4}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v3

    .line 11
    invoke-virtual {v2, v3}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 12
    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/x;->o:Li/c/b0/c/a;

    invoke-virtual {v2, v1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 13
    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/x;->o:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public x(Lcom/hiya/stingray/t/d0;)Lcom/hiya/stingray/ui/contactdetails/d0;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/x;->g:Lcom/hiya/stingray/t/i1/c0;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/stingray/t/n0;->k()Lcom/google/common/collect/z;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/hiya/stingray/t/i1/c0;->a(Lcom/hiya/stingray/t/n0;Ljava/lang/String;Z)Lcom/hiya/stingray/t/p0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/x;->h:Lcom/hiya/stingray/t/i1/t0;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/t/i1/t0;->a(Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/z0;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/x;->i:Lcom/hiya/stingray/t/i1/t;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->f()Lcom/hiya/stingray/t/m0;

    move-result-object p1

    iget-object v3, p0, Lcom/hiya/stingray/ui/contactdetails/x;->k:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v3

    invoke-virtual {v2, v0, v1, p1, v3}, Lcom/hiya/stingray/t/i1/t;->a(Lcom/hiya/stingray/t/p0;Lcom/hiya/stingray/t/z0;Lcom/hiya/stingray/t/m0;Z)Lcom/hiya/stingray/ui/b;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/hiya/stingray/t/i1/t;->c(Lcom/hiya/stingray/ui/b;)Lcom/hiya/stingray/ui/contactdetails/d0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic z(Lkotlin/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/x;->y(Lkotlin/r;)V

    return-void
.end method
