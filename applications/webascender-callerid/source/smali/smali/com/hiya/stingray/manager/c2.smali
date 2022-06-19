.class public Lcom/hiya/stingray/manager/c2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/q/a/i;

.field private final c:Lcom/hiya/stingray/t/i1/o;

.field private final d:Lcom/hiya/stingray/t/i1/a;

.field private final e:Lcom/hiya/stingray/q/b/u;

.field private final f:Lcom/hiya/stingray/q/b/p;

.field private final g:Lcom/hiya/stingray/manager/h4;

.field private final h:Lcom/hiya/stingray/manager/r3;

.field private final i:Lcom/hiya/stingray/manager/o2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/q/a/i;Lcom/hiya/stingray/t/i1/o;Lcom/hiya/stingray/t/i1/a;Lcom/hiya/stingray/q/b/u;Lcom/hiya/stingray/q/b/p;Lcom/hiya/stingray/manager/h4;Lcom/hiya/stingray/manager/r3;Lcom/hiya/stingray/manager/o2;Lg/g/b/a/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/manager/c2;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/manager/c2;->b:Lcom/hiya/stingray/q/a/i;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/manager/c2;->c:Lcom/hiya/stingray/t/i1/o;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/manager/c2;->d:Lcom/hiya/stingray/t/i1/a;

    .line 6
    iput-object p5, p0, Lcom/hiya/stingray/manager/c2;->e:Lcom/hiya/stingray/q/b/u;

    .line 7
    iput-object p6, p0, Lcom/hiya/stingray/manager/c2;->f:Lcom/hiya/stingray/q/b/p;

    .line 8
    iput-object p7, p0, Lcom/hiya/stingray/manager/c2;->g:Lcom/hiya/stingray/manager/h4;

    .line 9
    iput-object p8, p0, Lcom/hiya/stingray/manager/c2;->h:Lcom/hiya/stingray/manager/r3;

    .line 10
    iput-object p9, p0, Lcom/hiya/stingray/manager/c2;->i:Lcom/hiya/stingray/manager/o2;

    return-void
.end method

.method private D(Li/c/b0/b/v;Li/c/b0/b/v;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/i/a;",
            ">;>;",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/e;",
            ">;>;)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/c0;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 3
    new-instance v0, Lcom/hiya/stingray/manager/e0;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/e0;-><init>(Lcom/hiya/stingray/manager/c2;)V

    invoke-static {p1, p2, v0}, Li/c/b0/b/v;->zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/c;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/util/List;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;Lcom/hiya/stingray/t/y0;Z)Li/c/b0/b/v;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;",
            "Lcom/hiya/stingray/t/y0;",
            "Z)",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object v1

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-static {v2}, Lcom/hiya/stingray/util/p;->w(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/hiya/stingray/manager/c2;->h:Lcom/hiya/stingray/manager/r3;

    sget-object v4, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;->FULL_NUMBER:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    if-ne p3, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4, v2, p4}, Lcom/hiya/stingray/manager/r3;->c(ZLjava/lang/String;Lcom/hiya/stingray/t/y0;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    iget-object v3, p0, Lcom/hiya/stingray/manager/c2;->h:Lcom/hiya/stingray/manager/r3;

    sget-object v4, Lcom/hiya/stingray/q/c/h/b;->ADD_BLACKLIST:Lcom/hiya/stingray/q/c/h/b;

    invoke-virtual {v3, v2, v4, p5}, Lcom/hiya/stingray/manager/r3;->b(Ljava/lang/String;Lcom/hiya/stingray/q/c/h/b;Z)Li/c/b0/b/e;

    move-result-object v3

    invoke-virtual {v1, v3}, Li/c/b0/b/e;->d(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object v1

    .line 7
    :cond_2
    iget-object v3, p0, Lcom/hiya/stingray/manager/c2;->d:Lcom/hiya/stingray/t/i1/a;

    invoke-virtual {v3, v2, p3}, Lcom/hiya/stingray/t/i1/a;->c(Ljava/lang/String;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)Lg/g/a/a/i/d;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_3
    iget-object p2, p0, Lcom/hiya/stingray/manager/c2;->b:Lcom/hiya/stingray/q/a/i;

    invoke-interface {p2, p1, v0}, Lcom/hiya/stingray/q/a/i;->g(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    invoke-virtual {v1, p1}, Li/c/b0/b/e;->f(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/e;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/e;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/common/collect/q;->g(Ljava/lang/Iterable;)Lcom/google/common/collect/q;

    move-result-object p2

    new-instance v0, Lcom/hiya/stingray/manager/c2$a;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/manager/c2$a;-><init>(Lcom/hiya/stingray/manager/c2;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/google/common/collect/q;->d(Lcom/google/common/base/n;)Lcom/google/common/collect/q;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/common/collect/q;->i()Lcom/google/common/collect/x;

    move-result-object p1

    return-object p1
.end method

.method private synthetic g(Ljava/lang/String;Ljava/util/List;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;Ljava/lang/Boolean;)Li/c/b0/b/a0;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    xor-int/lit8 v5, p4, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/manager/c2;->b(Ljava/lang/String;Ljava/util/List;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;Lcom/hiya/stingray/t/y0;Z)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private synthetic i(Ljava/util/Set;Ljava/lang/String;Lretrofit2/Response;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/manager/c2;->d:Lcom/hiya/stingray/t/i1/a;

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/t/i1/a;->a(Ljava/lang/String;)Lg/g/a/a/i/c;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/manager/c2;->b:Lcom/hiya/stingray/q/a/i;

    invoke-interface {p1, p2, p3}, Lcom/hiya/stingray/q/a/i;->i(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method static synthetic k(Lcom/hiya/stingray/q/c/e;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/e;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcom/hiya/stingray/q/c/i/a;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/i/a;->Q0()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic m(Lcom/hiya/stingray/q/c/i/a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/i/a;->P0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic n(Ljava/lang/String;)Lg/g/a/a/i/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/c2;->d:Lcom/hiya/stingray/t/i1/a;

    sget-object v1, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;->FULL_NUMBER:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    invoke-virtual {v0, p1, v1}, Lcom/hiya/stingray/t/i1/a;->c(Ljava/lang/String;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)Lg/g/a/a/i/d;

    move-result-object p1

    return-object p1
.end method

.method private synthetic p(Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/n0;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/n0;-><init>(Lcom/hiya/stingray/manager/c2;)V

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/collect/a0;->h(Ljava/lang/Iterable;Lcom/google/common/base/g;)Ljava/lang/Iterable;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private synthetic r(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/c2;->b:Lcom/hiya/stingray/q/a/i;

    invoke-interface {v0, p1, p2}, Lcom/hiya/stingray/q/a/i;->j(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private synthetic t(Ljava/lang/String;Lretrofit2/Response;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/hiya/stingray/manager/c2;->b:Lcom/hiya/stingray/q/a/i;

    iget-object v0, p0, Lcom/hiya/stingray/manager/c2;->g:Lcom/hiya/stingray/manager/h4;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/h4;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/manager/c2;->i:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/o2;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2, p1, v0}, Lcom/hiya/stingray/q/a/i;->k(Ljava/lang/String;Z)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method static synthetic v(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/q;->g(Ljava/lang/Iterable;)Lcom/google/common/collect/q;

    move-result-object p0

    sget-object v0, Lcom/hiya/stingray/manager/k0;->a:Lcom/hiya/stingray/manager/k0;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/collect/q;->d(Lcom/google/common/base/n;)Lcom/google/common/collect/q;

    move-result-object p0

    sget-object v0, Lcom/hiya/stingray/manager/h0;->f:Lcom/hiya/stingray/manager/h0;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/collect/q;->k(Lcom/google/common/base/g;)Lcom/google/common/collect/q;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private synthetic w(Ljava/util/Set;Lcom/hiya/stingray/t/d0;Ljava/util/List;)Li/c/b0/b/v;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/t0;->c()Ljava/util/HashSet;

    move-result-object v0

    .line 2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/y0;->d()Lcom/hiya/stingray/t/z0;

    move-result-object p1

    .line 7
    sget-object p3, Lcom/hiya/stingray/t/z0;->FRAUD:Lcom/hiya/stingray/t/z0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p3, :cond_3

    iget-object p3, p0, Lcom/hiya/stingray/manager/c2;->i:Lcom/hiya/stingray/manager/o2;

    iget-object v3, p0, Lcom/hiya/stingray/manager/c2;->a:Landroid/content/Context;

    invoke-virtual {p3, v3}, Lcom/hiya/stingray/manager/o2;->u(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    .line 8
    :goto_1
    sget-object v3, Lcom/hiya/stingray/t/z0;->SPAM:Lcom/hiya/stingray/t/z0;

    if-ne p1, v3, :cond_4

    iget-object p1, p0, Lcom/hiya/stingray/manager/c2;->i:Lcom/hiya/stingray/manager/o2;

    iget-object v3, p0, Lcom/hiya/stingray/manager/c2;->a:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lcom/hiya/stingray/manager/o2;->B(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-nez p3, :cond_5

    if-eqz v1, :cond_6

    .line 9
    :cond_5
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_6
    invoke-static {v0}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private synthetic y(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1
    :goto_0
    invoke-static {v4}, Lcom/google/common/base/m;->d(Z)V

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 2
    :goto_1
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hiya/stingray/q/c/i/a;

    .line 5
    invoke-virtual {v5}, Lcom/hiya/stingray/q/c/i/a;->P0()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/hiya/stingray/q/c/i/a;->P0()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, v1}, Lcom/hiya/stingray/manager/c2;->e(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    goto :goto_3

    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :goto_3
    sget-object v7, Lcom/hiya/stingray/manager/j0;->f:Lcom/hiya/stingray/manager/j0;

    .line 7
    invoke-static {v6, v7}, Lcom/google/common/collect/a0;->h(Ljava/lang/Iterable;Lcom/google/common/base/g;)Ljava/lang/Iterable;

    move-result-object v7

    .line 8
    invoke-static {v7}, Lcom/google/common/collect/t0;->d(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v7

    .line 9
    iget-object v8, v0, Lcom/hiya/stingray/manager/c2;->f:Lcom/hiya/stingray/q/b/p;

    invoke-virtual {v5}, Lcom/hiya/stingray/q/c/i/a;->P0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/hiya/stingray/q/b/p;->b(Ljava/lang/String;)Lcom/google/common/base/j;

    move-result-object v8

    .line 10
    invoke-virtual {v8}, Lcom/google/common/base/j;->d()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hiya/stingray/q/c/i/c;

    move-object v12, v8

    goto :goto_4

    :cond_3
    move-object v12, v10

    .line 11
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hiya/stingray/q/c/e;

    move-object v14, v6

    goto :goto_5

    :cond_4
    move-object v14, v10

    :goto_5
    if-eqz v12, :cond_5

    .line 12
    invoke-virtual {v12}, Lcom/hiya/stingray/q/c/i/c;->Q0()Ljava/lang/String;

    move-result-object v10

    :cond_5
    move-object v15, v10

    .line 13
    iget-object v11, v0, Lcom/hiya/stingray/manager/c2;->c:Lcom/hiya/stingray/t/i1/o;

    invoke-virtual {v5}, Lcom/hiya/stingray/q/c/i/a;->P0()Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v11 .. v17}, Lcom/hiya/stingray/t/i1/o;->c(Lcom/hiya/stingray/q/c/i/c;Ljava/lang/String;Lcom/hiya/stingray/q/c/e;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/hiya/stingray/t/j0;

    move-result-object v6

    .line 14
    iget-object v8, v0, Lcom/hiya/stingray/manager/c2;->d:Lcom/hiya/stingray/t/i1/a;

    invoke-virtual {v8, v6, v7, v5}, Lcom/hiya/stingray/t/i1/a;->d(Lcom/hiya/stingray/t/j0;Ljava/util/Set;Lcom/hiya/stingray/q/c/i/a;)Lcom/hiya/stingray/t/c0;

    move-result-object v5

    .line 15
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_6
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v2
.end method


# virtual methods
.method A(Ljava/lang/String;Ljava/util/List;Lcom/hiya/stingray/t/y0;Z)Li/c/b0/b/v;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hiya/stingray/t/y0;",
            "Z)",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lcom/hiya/stingray/manager/c2;->h:Lcom/hiya/stingray/manager/r3;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2, p3}, Lcom/hiya/stingray/manager/r3;->c(ZLjava/lang/String;Lcom/hiya/stingray/t/y0;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/hiya/stingray/manager/c2;->h:Lcom/hiya/stingray/manager/r3;

    sget-object v4, Lcom/hiya/stingray/q/c/h/b;->REMOVE_BLACKLIST:Lcom/hiya/stingray/q/c/h/b;

    invoke-virtual {v3, v2, v4, p4}, Lcom/hiya/stingray/manager/r3;->b(Ljava/lang/String;Lcom/hiya/stingray/q/c/h/b;Z)Li/c/b0/b/e;

    move-result-object v3

    invoke-virtual {v0, v3}, Li/c/b0/b/e;->d(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object v0

    .line 6
    :cond_0
    iget-object v3, p0, Lcom/hiya/stingray/manager/c2;->d:Lcom/hiya/stingray/t/i1/a;

    invoke-virtual {v3, v2}, Lcom/hiya/stingray/t/i1/a;->a(Ljava/lang/String;)Lg/g/a/a/i/c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/hiya/stingray/manager/c2;->b:Lcom/hiya/stingray/q/a/i;

    invoke-interface {p2, p1, v1}, Lcom/hiya/stingray/q/a/i;->h(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/b0/b/e;->f(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public B(Ljava/lang/String;Lcom/hiya/stingray/t/c0;)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/c0;",
            ")",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/hiya/stingray/t/c0;->j()Lcom/hiya/stingray/t/j0;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/hiya/stingray/manager/c2;->h:Lcom/hiya/stingray/manager/r3;

    sget-object v3, Lcom/hiya/stingray/util/k;->FULL_NUMBER_TYPE:Lcom/hiya/stingray/util/k;

    .line 4
    invoke-virtual {v3}, Lcom/hiya/stingray/util/k;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/hiya/stingray/t/c0;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 5
    invoke-virtual {p2}, Lcom/hiya/stingray/t/c0;->k()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v1}, Lcom/hiya/stingray/t/j0;->h()Lcom/hiya/stingray/t/y0;

    move-result-object v5

    .line 7
    invoke-virtual {v2, v3, v4, v5}, Lcom/hiya/stingray/manager/r3;->c(ZLjava/lang/String;Lcom/hiya/stingray/t/y0;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iget-object v0, p0, Lcom/hiya/stingray/manager/c2;->h:Lcom/hiya/stingray/manager/r3;

    invoke-virtual {p2}, Lcom/hiya/stingray/t/c0;->k()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/hiya/stingray/q/c/h/b;->REMOVE_BLACKLIST:Lcom/hiya/stingray/q/c/h/b;

    .line 9
    invoke-virtual {v1}, Lcom/hiya/stingray/t/j0;->i()Z

    move-result v1

    .line 10
    invoke-virtual {v0, v2, v3, v1}, Lcom/hiya/stingray/manager/r3;->b(Ljava/lang/String;Lcom/hiya/stingray/q/c/h/b;Z)Li/c/b0/b/e;

    move-result-object v0

    .line 11
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v2, p0, Lcom/hiya/stingray/manager/c2;->d:Lcom/hiya/stingray/t/i1/a;

    invoke-virtual {v2, p2}, Lcom/hiya/stingray/t/i1/a;->b(Lcom/hiya/stingray/t/c0;)Lg/g/a/a/i/c;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p2, p0, Lcom/hiya/stingray/manager/c2;->b:Lcom/hiya/stingray/q/a/i;

    invoke-interface {p2, p1, v1}, Lcom/hiya/stingray/q/a/i;->h(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/b0/b/e;->f(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public C(Ljava/lang/String;Lcom/hiya/stingray/t/d0;)Li/c/b0/b/v;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/d0;",
            ")",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/t0;->c()Ljava/util/HashSet;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hiya/stingray/t/n0;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hiya/stingray/t/n0;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5
    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v2

    .line 6
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/stingray/t/n0;->e()Lcom/hiya/stingray/t/o0;

    move-result-object v3

    sget-object v4, Lcom/hiya/stingray/t/o0;->CONTACT:Lcom/hiya/stingray/t/o0;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 7
    :goto_1
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/hiya/stingray/manager/c2;->A(Ljava/lang/String;Ljava/util/List;Lcom/hiya/stingray/t/y0;Z)Li/c/b0/b/v;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/manager/g0;

    invoke-direct {v2, p0, p1}, Lcom/hiya/stingray/manager/g0;-><init>(Lcom/hiya/stingray/manager/c2;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v2}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v1

    sget-object v2, Lcom/hiya/stingray/manager/d0;->f:Lcom/hiya/stingray/manager/d0;

    .line 9
    invoke-virtual {v1, v2}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/manager/l0;

    invoke-direct {v2, p0, v0, p2}, Lcom/hiya/stingray/manager/l0;-><init>(Lcom/hiya/stingray/manager/c2;Ljava/util/Set;Lcom/hiya/stingray/t/d0;)V

    .line 10
    invoke-virtual {v1, v2}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p2

    new-instance v0, Lcom/hiya/stingray/manager/f0;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/f0;-><init>(Lcom/hiya/stingray/manager/c2;)V

    .line 11
    invoke-virtual {p2, v0}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p2

    new-instance v0, Lcom/hiya/stingray/manager/i0;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/manager/i0;-><init>(Lcom/hiya/stingray/manager/c2;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2, v0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;",
            ")",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 2
    :goto_1
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 3
    :goto_2
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/manager/c2;->e:Lcom/hiya/stingray/q/b/u;

    invoke-virtual {v0, p2}, Lcom/hiya/stingray/q/b/u;->e(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/manager/a;->f:Lcom/hiya/stingray/manager/a;

    .line 5
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/manager/m0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hiya/stingray/manager/m0;-><init>(Lcom/hiya/stingray/manager/c2;Ljava/lang/String;Ljava/util/List;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)V

    .line 6
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Lcom/hiya/stingray/t/d0;)Li/c/b0/b/v;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/d0;",
            ")",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 2
    :goto_1
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 3
    invoke-static {}, Lcom/google/common/collect/t0;->c()Ljava/util/HashSet;

    move-result-object v2

    .line 4
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/stingray/t/n0;->i()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/stingray/t/n0;->i()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 7
    :goto_2
    invoke-static {v2}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v6

    sget-object v7, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;->FULL_NUMBER:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    .line 8
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v8

    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hiya/stingray/t/n0;->e()Lcom/hiya/stingray/t/o0;

    move-result-object p2

    sget-object v3, Lcom/hiya/stingray/t/o0;->CONTACT:Lcom/hiya/stingray/t/o0;

    if-ne p2, v3, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    move-object v4, p0

    move-object v5, p1

    .line 9
    invoke-direct/range {v4 .. v9}, Lcom/hiya/stingray/manager/c2;->b(Ljava/lang/String;Ljava/util/List;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;Lcom/hiya/stingray/t/y0;Z)Li/c/b0/b/v;

    move-result-object p2

    new-instance v0, Lcom/hiya/stingray/manager/c0;

    invoke-direct {v0, p0, v2, p1}, Lcom/hiya/stingray/manager/c0;-><init>(Lcom/hiya/stingray/manager/c2;Ljava/util/Set;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2, v0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/i/a;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/manager/c2;->b:Lcom/hiya/stingray/q/a/i;

    iget-object v3, p0, Lcom/hiya/stingray/manager/c2;->g:Lcom/hiya/stingray/manager/h4;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/h4;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/hiya/stingray/manager/c2;->i:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/o2;->n()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-interface {v2, p1, v0}, Lcom/hiya/stingray/q/a/i;->k(Ljava/lang/String;Z)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/manager/f4;

    iget-object v2, p0, Lcom/hiya/stingray/manager/c2;->g:Lcom/hiya/stingray/manager/h4;

    iget-object v3, p0, Lcom/hiya/stingray/manager/c2;->i:Lcom/hiya/stingray/manager/o2;

    invoke-direct {v0, v2, v1, v3}, Lcom/hiya/stingray/manager/f4;-><init>(Lcom/hiya/stingray/manager/h4;ZLcom/hiya/stingray/manager/o2;)V

    .line 3
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/c0;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/manager/c2;->b:Lcom/hiya/stingray/q/a/i;

    iget-object v3, p0, Lcom/hiya/stingray/manager/c2;->g:Lcom/hiya/stingray/manager/h4;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/h4;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/hiya/stingray/manager/c2;->i:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/o2;->n()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-interface {v2, p1, v0}, Lcom/hiya/stingray/q/a/i;->k(Ljava/lang/String;Z)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/manager/f4;

    iget-object v2, p0, Lcom/hiya/stingray/manager/c2;->g:Lcom/hiya/stingray/manager/h4;

    iget-object v3, p0, Lcom/hiya/stingray/manager/c2;->i:Lcom/hiya/stingray/manager/o2;

    invoke-direct {v0, v2, v1, v3}, Lcom/hiya/stingray/manager/f4;-><init>(Lcom/hiya/stingray/manager/h4;ZLcom/hiya/stingray/manager/o2;)V

    .line 3
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/manager/c2;->e:Lcom/hiya/stingray/q/b/u;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/u;->b()Li/c/b0/b/v;

    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/hiya/stingray/manager/c2;->D(Li/c/b0/b/v;Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public synthetic h(Ljava/lang/String;Ljava/util/List;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;Ljava/lang/Boolean;)Li/c/b0/b/a0;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hiya/stingray/manager/c2;->g(Ljava/lang/String;Ljava/util/List;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;Ljava/lang/Boolean;)Li/c/b0/b/a0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic j(Ljava/util/Set;Ljava/lang/String;Lretrofit2/Response;)Li/c/b0/b/v;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/manager/c2;->i(Ljava/util/Set;Ljava/lang/String;Lretrofit2/Response;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public synthetic o(Ljava/lang/String;)Lg/g/a/a/i/d;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/c2;->n(Ljava/lang/String;)Lg/g/a/a/i/d;

    move-result-object p1

    return-object p1
.end method

.method public synthetic q(Ljava/util/Set;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/c2;->p(Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic s(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/manager/c2;->r(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public synthetic u(Ljava/lang/String;Lretrofit2/Response;)Li/c/b0/b/v;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/manager/c2;->t(Ljava/lang/String;Lretrofit2/Response;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public synthetic x(Ljava/util/Set;Lcom/hiya/stingray/t/d0;Ljava/util/List;)Li/c/b0/b/v;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/manager/c2;->w(Ljava/util/Set;Lcom/hiya/stingray/t/d0;Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public synthetic z(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/manager/c2;->y(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
