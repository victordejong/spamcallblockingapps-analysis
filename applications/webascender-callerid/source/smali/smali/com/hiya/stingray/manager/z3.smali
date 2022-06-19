.class public Lcom/hiya/stingray/manager/z3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/q/b/u;

.field private final b:Lcom/hiya/stingray/t/i1/o;

.field private final c:Lcom/hiya/stingray/q/b/j;

.field private final d:Lcom/hiya/stingray/t/i1/z;

.field private final e:Lcom/hiya/stingray/t/i1/t0;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/q/b/u;Lcom/hiya/stingray/t/i1/o;Lcom/hiya/stingray/q/b/j;Lcom/hiya/stingray/t/i1/z;Lcom/hiya/stingray/t/i1/t0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/manager/z3;->a:Lcom/hiya/stingray/q/b/u;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/manager/z3;->b:Lcom/hiya/stingray/t/i1/o;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/manager/z3;->c:Lcom/hiya/stingray/q/b/j;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/manager/z3;->d:Lcom/hiya/stingray/t/i1/z;

    .line 6
    iput-object p5, p0, Lcom/hiya/stingray/manager/z3;->e:Lcom/hiya/stingray/t/i1/t0;

    return-void
.end method

.method static synthetic a(Lcom/hiya/stingray/manager/z3;)Lcom/hiya/stingray/t/i1/z;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/z3;->d:Lcom/hiya/stingray/t/i1/z;

    return-object p0
.end method

.method static synthetic b(Lcom/hiya/stingray/manager/z3;Ljava/lang/String;Ljava/util/List;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/manager/z3;->h(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private f(Li/c/b0/b/v;Li/c/b0/b/v;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/d0;",
            ">;>;",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n0;",
            ">;>;)",
            "Li/c/b0/b/v<",
            "Lcom/google/common/collect/g<",
            "Lcom/hiya/stingray/ui/calllog/x;",
            "Lcom/hiya/stingray/t/n0;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/u0;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/u0;-><init>(Lcom/hiya/stingray/manager/z3;)V

    invoke-static {p1, p2, v0}, Li/c/b0/b/v;->zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/c;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private g(Lcom/hiya/stingray/t/n0;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/t/n0;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n0;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/t/n0;

    .line 2
    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->i()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private h(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/i/a;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/q/c/i/a;

    .line 2
    invoke-virtual {v0}, Lcom/hiya/stingray/q/c/i/a;->Q0()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/hiya/stingray/q/c/i/a;->P0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/hiya/stingray/q/c/i/a;->Q0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/q/c/i/a;->P0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/q/c/i/a;->P0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic i(Lcom/hiya/stingray/t/n0;)Lcom/hiya/stingray/t/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/z3;->b:Lcom/hiya/stingray/t/i1/o;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/i1/o;->b(Lcom/hiya/stingray/t/n0;)Lcom/hiya/stingray/t/d0;

    move-result-object p1

    return-object p1
.end method

.method private synthetic k(Ljava/util/List;Ljava/util/List;)Lcom/google/common/collect/g;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/g;->D()Lcom/google/common/collect/g;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/t/d0;

    .line 4
    invoke-virtual {v2}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lcom/hiya/stingray/manager/z3;->e:Lcom/hiya/stingray/t/i1/t0;

    invoke-virtual {v2}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/hiya/stingray/t/i1/t0;->a(Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/z0;

    move-result-object v5

    .line 7
    invoke-virtual {v2}, Lcom/hiya/stingray/t/d0;->h()Lcom/hiya/stingray/t/b0;

    move-result-object v6

    .line 8
    invoke-direct {p0, v4, v5, v6}, Lcom/hiya/stingray/manager/z3;->n(Ljava/lang/String;Lcom/hiya/stingray/t/z0;Lcom/hiya/stingray/t/b0;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    sget-object v4, Lcom/hiya/stingray/ui/calllog/x;->CALLLOG:Lcom/hiya/stingray/ui/calllog/x;

    invoke-virtual {v0, v4, v3}, Lcom/google/common/collect/g;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v2}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0, v3, p2}, Lcom/hiya/stingray/manager/z3;->g(Lcom/hiya/stingray/t/n0;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    sget-object p1, Lcom/hiya/stingray/manager/w0;->f:Lcom/hiya/stingray/manager/w0;

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 14
    sget-object p1, Lcom/hiya/stingray/ui/calllog/x;->CALLLOG_AND_CONTACTS:Lcom/hiya/stingray/ui/calllog/x;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/g;->i(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method static synthetic m(Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/n0;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object p0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 p1, 0x0

    .line 3
    invoke-static {p0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    .line 5
    :cond_2
    invoke-static {p0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p1, -0x1

    goto :goto_2

    .line 6
    :cond_3
    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p1, 0x1

    :cond_4
    :goto_2
    return p1
.end method

.method private n(Ljava/lang/String;Lcom/hiya/stingray/t/z0;Lcom/hiya/stingray/t/b0;)Z
    .locals 0

    .line 1
    sget-object p1, Lcom/hiya/stingray/t/z0;->OK:Lcom/hiya/stingray/t/z0;

    if-eq p2, p1, :cond_0

    sget-object p1, Lcom/hiya/stingray/t/z0;->UNCERTAIN:Lcom/hiya/stingray/t/z0;

    if-ne p2, p1, :cond_1

    :cond_0
    sget-object p1, Lcom/hiya/stingray/t/b0;->NOT_BLOCKED:Lcom/hiya/stingray/t/b0;

    if-ne p1, p3, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public c()Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n0;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/z3;->a:Lcom/hiya/stingray/q/b/u;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/u;->b()Li/c/b0/b/v;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/z3;->c:Lcom/hiya/stingray/q/b/j;

    invoke-virtual {v1}, Lcom/hiya/stingray/q/b/j;->b()Li/c/b0/b/v;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/manager/z3$a;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/manager/z3$a;-><init>(Lcom/hiya/stingray/manager/z3;)V

    invoke-static {v0, v1, v2}, Li/c/b0/b/v;->zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/c;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/hiya/stingray/t/n0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/t/n0;",
            ")",
            "Li/c/b0/b/v<",
            "Lcom/hiya/stingray/t/d0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/v0;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/manager/v0;-><init>(Lcom/hiya/stingray/manager/z3;Lcom/hiya/stingray/t/n0;)V

    invoke-static {v0}, Li/c/b0/b/v;->fromCallable(Ljava/util/concurrent/Callable;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/util/List;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/d0;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lcom/google/common/collect/g<",
            "Lcom/hiya/stingray/ui/calllog/x;",
            "Lcom/hiya/stingray/t/n0;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/z3;->c()Li/c/b0/b/v;

    move-result-object v0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/hiya/stingray/manager/z3;->f(Li/c/b0/b/v;Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public synthetic j(Lcom/hiya/stingray/t/n0;)Lcom/hiya/stingray/t/d0;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/z3;->i(Lcom/hiya/stingray/t/n0;)Lcom/hiya/stingray/t/d0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic l(Ljava/util/List;Ljava/util/List;)Lcom/google/common/collect/g;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/manager/z3;->k(Ljava/util/List;Ljava/util/List;)Lcom/google/common/collect/g;

    move-result-object p1

    return-object p1
.end method
