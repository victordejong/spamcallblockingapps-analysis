.class public Lcom/hiya/stingray/ui/calllog/t;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/calllog/u;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/hiya/stingray/manager/o1;

.field private final c:Lcom/hiya/stingray/manager/h4;

.field private final d:Lcom/hiya/stingray/ui/common/error/e;

.field private final e:Lcom/hiya/stingray/util/a0;

.field private final f:Lcom/hiya/stingray/ui/login/o;

.field private final g:Lcom/hiya/stingray/t/i1/c0;

.field private final h:Lcom/hiya/stingray/t/i1/t0;

.field private final i:Lcom/hiya/stingray/t/i1/t;

.field private final j:Lcom/hiya/stingray/manager/o2;

.field private k:Li/c/b0/c/a;

.field private l:Li/c/b0/c/c;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/hiya/stingray/t/d0;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/hiya/stingray/manager/u3;

.field private o:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/o1;Lcom/hiya/stingray/manager/h4;Lcom/hiya/stingray/ui/common/error/e;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/t/i1/c0;Lcom/hiya/stingray/t/i1/t0;Lcom/hiya/stingray/t/i1/t;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/manager/o2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    .line 2
    new-instance v0, Li/c/b0/c/a;

    invoke-direct {v0}, Li/c/b0/c/a;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->k:Li/c/b0/c/a;

    .line 3
    invoke-static {}, Li/c/b0/c/b;->b()Li/c/b0/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->l:Li/c/b0/c/c;

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->o:Ljava/lang/Boolean;

    .line 5
    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/t;->b:Lcom/hiya/stingray/manager/o1;

    .line 6
    iput-object p3, p0, Lcom/hiya/stingray/ui/calllog/t;->d:Lcom/hiya/stingray/ui/common/error/e;

    .line 7
    iput-object p4, p0, Lcom/hiya/stingray/ui/calllog/t;->e:Lcom/hiya/stingray/util/a0;

    .line 8
    iput-object p2, p0, Lcom/hiya/stingray/ui/calllog/t;->c:Lcom/hiya/stingray/manager/h4;

    .line 9
    iput-object p5, p0, Lcom/hiya/stingray/ui/calllog/t;->f:Lcom/hiya/stingray/ui/login/o;

    .line 10
    iput-object p6, p0, Lcom/hiya/stingray/ui/calllog/t;->g:Lcom/hiya/stingray/t/i1/c0;

    .line 11
    iput-object p7, p0, Lcom/hiya/stingray/ui/calllog/t;->h:Lcom/hiya/stingray/t/i1/t0;

    .line 12
    iput-object p8, p0, Lcom/hiya/stingray/ui/calllog/t;->i:Lcom/hiya/stingray/t/i1/t;

    .line 13
    iput-object p9, p0, Lcom/hiya/stingray/ui/calllog/t;->n:Lcom/hiya/stingray/manager/u3;

    .line 14
    iput-object p10, p0, Lcom/hiya/stingray/ui/calllog/t;->j:Lcom/hiya/stingray/manager/o2;

    return-void
.end method

.method private synthetic B(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/ui/calllog/d;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/calllog/d;-><init>(Lcom/hiya/stingray/ui/calllog/t;)V

    invoke-static {p1, v0}, Lcom/google/common/collect/a0;->h(Ljava/lang/Iterable;Lcom/google/common/base/g;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private synthetic D(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->o:Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->d:Lcom/hiya/stingray/ui/common/error/e;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/common/error/e;->g(Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->e:Lcom/hiya/stingray/util/a0;

    new-instance v1, Lcom/hiya/stingray/t/e1/a;

    const-class v2, Lcom/hiya/stingray/ui/calllog/t;

    const-string v3, "Failed to get a call log data"

    invoke-direct {v1, v2, v3, p1}, Lcom/hiya/stingray/t/e1/a;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast p1, Lcom/hiya/stingray/ui/calllog/u;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/hiya/stingray/ui/calllog/u;->f0(Z)V

    return-void
.end method

.method private synthetic F(Lf/h/k/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "CallLogPresenterLog"

    .line 1
    invoke-static {v0}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lf/h/k/c;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Received %d call log items"

    invoke-virtual {v0, v2, v1}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/calllog/u;

    iget-object v1, p1, Lf/h/k/c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v2, p1, Lf/h/k/c;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/hiya/stingray/ui/calllog/u;->d0(Ljava/util/Map;Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/hiya/stingray/ui/calllog/u;

    check-cast v0, Lcom/hiya/stingray/ui/calllog/u;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/calllog/u;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p1, Lf/h/k/c;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hiya/stingray/util/f0;->j(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/hiya/stingray/ui/calllog/u;->d(Ljava/util/List;)V

    .line 4
    iget-object p1, p1, Lf/h/k/c;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/t;->m:Ljava/util/Map;

    .line 5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/t;->o:Ljava/lang/Boolean;

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast p1, Lcom/hiya/stingray/ui/calllog/u;

    invoke-interface {p1, v3}, Lcom/hiya/stingray/ui/calllog/u;->f0(Z)V

    return-void
.end method

.method private synthetic H()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "CallLogPresenterLog"

    .line 1
    invoke-static {v0}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Refreshing on terminate"

    invoke-virtual {v0, v2, v1}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/calllog/u;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/calllog/u;->I()V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->e:Lcom/hiya/stingray/util/a0;

    const-class v1, Lcom/hiya/stingray/util/i0/d;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->e(Ljava/lang/Class;)V

    return-void
.end method

.method private synthetic J(Lcom/hiya/stingray/t/d0;)Lcom/hiya/stingray/ui/b;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->g:Lcom/hiya/stingray/t/i1/c0;

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
    iget-object v1, p0, Lcom/hiya/stingray/ui/calllog/t;->h:Lcom/hiya/stingray/t/i1/t0;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/t/i1/t0;->a(Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/z0;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/hiya/stingray/ui/calllog/t;->i:Lcom/hiya/stingray/t/i1/t;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->f()Lcom/hiya/stingray/t/m0;

    move-result-object p1

    iget-object v3, p0, Lcom/hiya/stingray/ui/calllog/t;->n:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v3

    invoke-virtual {v2, v0, v1, p1, v3}, Lcom/hiya/stingray/t/i1/t;->a(Lcom/hiya/stingray/t/p0;Lcom/hiya/stingray/t/z0;Lcom/hiya/stingray/t/m0;Z)Lcom/hiya/stingray/ui/b;

    move-result-object p1

    return-object p1
.end method

.method private synthetic L(Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/calllog/u;

    invoke-interface {v0, p1, p2}, Lcom/hiya/stingray/ui/calllog/u;->d0(Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method private synthetic N(Ljava/util/Map;)Li/c/b0/b/a0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/calllog/t;->v(Ljava/util/Map;)Li/c/b0/b/v;

    move-result-object p1

    sget-object v1, Lcom/hiya/stingray/ui/calllog/n;->a:Lcom/hiya/stingray/ui/calllog/n;

    invoke-static {v0, p1, v1}, Li/c/b0/b/v;->zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/c;)Li/c/b0/b/v;

    move-result-object p1

    invoke-static {}, Lcom/hiya/stingray/s/c;->b()Li/c/b0/b/b0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private synthetic P(Ljava/util/Map;)Li/c/b0/b/a0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/calllog/t;->v(Ljava/util/Map;)Li/c/b0/b/v;

    move-result-object p1

    sget-object v1, Lcom/hiya/stingray/ui/calllog/n;->a:Lcom/hiya/stingray/ui/calllog/n;

    invoke-static {v0, p1, v1}, Li/c/b0/b/v;->zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/c;)Li/c/b0/b/v;

    move-result-object p1

    invoke-static {}, Lcom/hiya/stingray/s/c;->b()Li/c/b0/b/b0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private synthetic R(Lcom/hiya/stingray/manager/u3$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/hiya/stingray/util/i0/d$a;->BINDINGS_ONLY:Lcom/hiya/stingray/util/i0/d$a;

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/calllog/t;->W(Lcom/hiya/stingray/util/i0/d$a;)V

    return-void
.end method

.method private synthetic T(Lcom/hiya/stingray/util/i0/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/util/i0/d;->a()Lcom/hiya/stingray/util/i0/d$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/calllog/t;->W(Lcom/hiya/stingray/util/i0/d$a;)V

    return-void
.end method

.method private W(Lcom/hiya/stingray/util/i0/d$a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CallLogPresenterLog"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hiya/stingray/util/i0/d$a;->FULL_REFRESH:Lcom/hiya/stingray/util/i0/d$a;

    if-eq p1, v0, :cond_0

    .line 2
    invoke-static {v2}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Already doing a full refresh, skipping (%s)."

    invoke-virtual {v0, p1, v2}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-static {v2}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v1, "Refreshing call log (%s)"

    invoke-virtual {v0, v1, v2}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/hiya/stingray/ui/calllog/t$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v3, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/calllog/t;->X()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/calllog/t;->Z()V

    goto :goto_0

    .line 7
    :cond_3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/calllog/t;->Y()V

    goto :goto_0

    .line 8
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/t;->o:Ljava/lang/Boolean;

    .line 9
    invoke-direct {p0}, Lcom/hiya/stingray/ui/calllog/t;->u()V

    :goto_0
    return-void
.end method

.method private X()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->m:Ljava/util/Map;

    .line 2
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/calllog/t;->v(Ljava/util/Map;)Li/c/b0/b/v;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/hiya/stingray/s/c;->c()Li/c/b0/b/b0;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v1

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/calllog/t;->y()Li/c/b0/d/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/c/b0/b/v;->doOnTerminate(Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/ui/calllog/h;

    invoke-direct {v2, p0, v0}, Lcom/hiya/stingray/ui/calllog/h;-><init>(Lcom/hiya/stingray/ui/calllog/t;Ljava/util/Map;)V

    sget-object v0, Lcom/hiya/stingray/ui/calllog/r;->f:Lcom/hiya/stingray/ui/calllog/r;

    .line 5
    invoke-virtual {v1, v2, v0}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->l:Li/c/b0/c/c;

    .line 6
    iget-object v1, p0, Lcom/hiya/stingray/ui/calllog/t;->k:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method private Y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->m:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->b:Lcom/hiya/stingray/manager/o1;

    iget-object v1, p0, Lcom/hiya/stingray/ui/calllog/t;->c:Lcom/hiya/stingray/manager/h4;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hiya/stingray/ui/calllog/t;->m:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/manager/o1;->k0(Ljava/lang/String;Ljava/util/Map;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/hiya/stingray/s/c;->c()Li/c/b0/b/b0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/calllog/t;->y()Li/c/b0/d/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->doOnTerminate(Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/ui/calllog/g;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/calllog/g;-><init>(Lcom/hiya/stingray/ui/calllog/t;)V

    .line 5
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/ui/calllog/t;->x()Li/c/b0/d/g;

    move-result-object v1

    invoke-direct {p0}, Lcom/hiya/stingray/ui/calllog/t;->w()Li/c/b0/d/g;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->l:Li/c/b0/c/c;

    .line 7
    iget-object v1, p0, Lcom/hiya/stingray/ui/calllog/t;->k:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    :cond_0
    return-void
.end method

.method private Z()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->m:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->b:Lcom/hiya/stingray/manager/o1;

    iget-object v1, p0, Lcom/hiya/stingray/ui/calllog/t;->c:Lcom/hiya/stingray/manager/h4;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hiya/stingray/ui/calllog/t;->m:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/manager/o1;->h(Ljava/lang/String;Ljava/util/Map;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/hiya/stingray/s/c;->c()Li/c/b0/b/b0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/calllog/t;->y()Li/c/b0/d/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->doOnTerminate(Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/ui/calllog/i;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/calllog/i;-><init>(Lcom/hiya/stingray/ui/calllog/t;)V

    .line 5
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/ui/calllog/t;->x()Li/c/b0/d/g;

    move-result-object v1

    invoke-direct {p0}, Lcom/hiya/stingray/ui/calllog/t;->w()Li/c/b0/d/g;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->l:Li/c/b0/c/c;

    .line 7
    iget-object v1, p0, Lcom/hiya/stingray/ui/calllog/t;->k:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    :cond_0
    return-void
.end method

.method private a0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->k:Li/c/b0/c/a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/calllog/t;->e:Lcom/hiya/stingray/util/a0;

    const-class v2, Lcom/hiya/stingray/manager/u3$h;

    .line 2
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/hiya/stingray/s/c;->c()Li/c/b0/b/b0;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/ui/calllog/e;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/calllog/e;-><init>(Lcom/hiya/stingray/ui/calllog/t;)V

    .line 4
    invoke-virtual {v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method private b0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->k:Li/c/b0/c/a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/calllog/t;->e:Lcom/hiya/stingray/util/a0;

    const-class v2, Lcom/hiya/stingray/util/i0/d;

    .line 2
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/hiya/stingray/s/c;->c()Li/c/b0/b/b0;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/ui/calllog/m;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/calllog/m;-><init>(Lcom/hiya/stingray/ui/calllog/t;)V

    .line 4
    invoke-virtual {v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method private t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->j:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/o2;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->f:Lcom/hiya/stingray/ui/login/o;

    iget-object v1, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/hiya/stingray/ui/calllog/u;

    invoke-interface {v1}, Lcom/hiya/stingray/ui/calllog/u;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/hiya/stingray/util/n;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->j:Lcom/hiya/stingray/manager/o2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/o2;->D(Z)V

    :cond_0
    return-void
.end method

.method private u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->b:Lcom/hiya/stingray/manager/o1;

    iget-object v1, p0, Lcom/hiya/stingray/ui/calllog/t;->c:Lcom/hiya/stingray/manager/h4;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/o1;->j(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/hiya/stingray/s/c;->c()Li/c/b0/b/b0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/calllog/t;->y()Li/c/b0/d/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->doOnTerminate(Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/ui/calllog/j;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/calllog/j;-><init>(Lcom/hiya/stingray/ui/calllog/t;)V

    .line 4
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/hiya/stingray/ui/calllog/t;->x()Li/c/b0/d/g;

    move-result-object v1

    invoke-direct {p0}, Lcom/hiya/stingray/ui/calllog/t;->w()Li/c/b0/d/g;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->l:Li/c/b0/c/c;

    .line 6
    iget-object v1, p0, Lcom/hiya/stingray/ui/calllog/t;->k:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method private v(Ljava/util/Map;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/hiya/stingray/t/d0;",
            "Ljava/lang/Integer;",
            ">;)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/ui/b;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/calllog/c;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/ui/calllog/c;-><init>(Lcom/hiya/stingray/ui/calllog/t;Ljava/util/Map;)V

    invoke-static {v0}, Li/c/b0/b/v;->fromCallable(Ljava/util/concurrent/Callable;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private w()Li/c/b0/d/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/d/g<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/calllog/f;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/calllog/f;-><init>(Lcom/hiya/stingray/ui/calllog/t;)V

    return-object v0
.end method

.method private x()Li/c/b0/d/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/d/g<",
            "Lf/h/k/c<",
            "Ljava/util/Map<",
            "Lcom/hiya/stingray/t/d0;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/ui/b;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/calllog/l;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/calllog/l;-><init>(Lcom/hiya/stingray/ui/calllog/t;)V

    return-object v0
.end method

.method private y()Li/c/b0/d/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/calllog/k;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/calllog/k;-><init>(Lcom/hiya/stingray/ui/calllog/t;)V

    return-object v0
.end method

.method private synthetic z(Ljava/util/Map;)Li/c/b0/b/a0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/calllog/t;->v(Ljava/util/Map;)Li/c/b0/b/v;

    move-result-object p1

    sget-object v1, Lcom/hiya/stingray/ui/calllog/n;->a:Lcom/hiya/stingray/ui/calllog/n;

    invoke-static {v0, p1, v1}, Li/c/b0/b/v;->zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/c;)Li/c/b0/b/v;

    move-result-object p1

    invoke-static {}, Lcom/hiya/stingray/s/c;->b()Li/c/b0/b/b0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public synthetic A(Ljava/util/Map;)Li/c/b0/b/a0;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/calllog/t;->z(Ljava/util/Map;)Li/c/b0/b/a0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic C(Ljava/util/Map;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/calllog/t;->B(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic E(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/calllog/t;->D(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic G(Lf/h/k/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/calllog/t;->F(Lf/h/k/c;)V

    return-void
.end method

.method public synthetic I()V
    .locals 0

    invoke-direct {p0}, Lcom/hiya/stingray/ui/calllog/t;->H()V

    return-void
.end method

.method public synthetic K(Lcom/hiya/stingray/t/d0;)Lcom/hiya/stingray/ui/b;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/calllog/t;->J(Lcom/hiya/stingray/t/d0;)Lcom/hiya/stingray/ui/b;

    move-result-object p1

    return-object p1
.end method

.method public synthetic M(Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/calllog/t;->L(Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public synthetic O(Ljava/util/Map;)Li/c/b0/b/a0;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/calllog/t;->N(Ljava/util/Map;)Li/c/b0/b/a0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic Q(Ljava/util/Map;)Li/c/b0/b/a0;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/calllog/t;->P(Ljava/util/Map;)Li/c/b0/b/a0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic S(Lcom/hiya/stingray/manager/u3$h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/calllog/t;->R(Lcom/hiya/stingray/manager/u3$h;)V

    return-void
.end method

.method public synthetic U(Lcom/hiya/stingray/util/i0/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/calllog/t;->T(Lcom/hiya/stingray/util/i0/d;)V

    return-void
.end method

.method public V()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->m:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/hiya/stingray/util/i0/d$a;->FULL_REFRESH:Lcom/hiya/stingray/util/i0/d$a;

    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/calllog/t;->W(Lcom/hiya/stingray/util/i0/d$a;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/calllog/u;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/calllog/u;->f0(Z)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/hiya/stingray/util/i0/d$a;->FETCH_MISSING_CALL_LOGS:Lcom/hiya/stingray/util/i0/d$a;

    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/calllog/t;->W(Lcom/hiya/stingray/util/i0/d$a;)V

    :goto_0
    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->o:Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/t;->k:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->d()V

    return-void
.end method

.method public p()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/calllog/t;->b0()V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/calllog/t;->t()V

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/calllog/t;->a0()V

    .line 4
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/calllog/t;->V()V

    return-void
.end method
