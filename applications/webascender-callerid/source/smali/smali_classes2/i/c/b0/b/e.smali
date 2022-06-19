.class public abstract Li/c/b0/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private J(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Li/c/b0/b/i;)Li/c/b0/b/e;
    .locals 8

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li/c/b0/e/f/a/t;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Li/c/b0/e/f/a/t;-><init>(Li/c/b0/b/i;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Li/c/b0/b/i;)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method private static L(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method public static O(Li/c/b0/b/i;)Li/c/b0/b/e;
    .locals 1

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Li/c/b0/b/e;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Li/c/b0/b/e;

    invoke-static {p0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Li/c/b0/e/f/a/l;

    invoke-direct {v0, p0}, Li/c/b0/e/f/a/l;-><init>(Li/c/b0/b/i;)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p0

    return-object p0
.end method

.method public static varargs b([Li/c/b0/b/i;)Li/c/b0/b/e;
    .locals 2
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    invoke-static {p0}, Li/c/b0/b/e;->O(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Li/c/b0/e/f/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Li/c/b0/e/f/a/a;-><init>([Li/c/b0/b/i;Ljava/lang/Iterable;)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p0

    return-object p0
.end method

.method public static i()Li/c/b0/b/e;
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/e/f/a/e;->f:Li/c/b0/b/e;

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object v0

    return-object v0
.end method

.method public static k(Li/c/b0/b/h;)Li/c/b0/b/e;
    .locals 1

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/a/c;

    invoke-direct {v0, p0}, Li/c/b0/e/f/a/c;-><init>(Li/c/b0/b/h;)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p0

    return-object p0
.end method

.method private p(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;Li/c/b0/d/a;Li/c/b0/d/a;Li/c/b0/d/a;)Li/c/b0/b/e;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-",
            "Li/c/b0/c/c;",
            ">;",
            "Li/c/b0/d/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Li/c/b0/d/a;",
            "Li/c/b0/d/a;",
            "Li/c/b0/d/a;",
            "Li/c/b0/d/a;",
            ")",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onTerminate is null"

    .line 4
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    .line 5
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onDispose is null"

    .line 6
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    new-instance v0, Li/c/b0/e/f/a/q;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Li/c/b0/e/f/a/q;-><init>(Li/c/b0/b/i;Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;Li/c/b0/d/a;Li/c/b0/d/a;Li/c/b0/d/a;)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public static r(Ljava/lang/Throwable;)Li/c/b0/b/e;
    .locals 1

    const-string v0, "throwable is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/a/f;

    invoke-direct {v0, p0}, Li/c/b0/e/f/a/f;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p0

    return-object p0
.end method

.method public static s(Li/c/b0/d/a;)Li/c/b0/b/e;
    .locals 1

    const-string v0, "action is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/a/g;

    invoke-direct {v0, p0}, Li/c/b0/e/f/a/g;-><init>(Li/c/b0/d/a;)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/util/concurrent/Callable;)Li/c/b0/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const-string v0, "callable is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/a/h;

    invoke-direct {v0, p0}, Li/c/b0/e/f/a/h;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p0

    return-object p0
.end method

.method public static u(Li/c/b0/b/a0;)Li/c/b0/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TT;>;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const-string v0, "observable is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/a/i;

    invoke-direct {v0, p0}, Li/c/b0/e/f/a/i;-><init>(Li/c/b0/b/a0;)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p0

    return-object p0
.end method

.method public static v(Lo/a/a;)Li/c/b0/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/a/a<",
            "TT;>;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const-string v0, "publisher is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/a/j;

    invoke-direct {v0, p0}, Li/c/b0/e/f/a/j;-><init>(Lo/a/a;)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/lang/Iterable;)Li/c/b0/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/i;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/a/n;

    invoke-direct {v0, p0}, Li/c/b0/e/f/a/n;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p0

    return-object p0
.end method

.method public static varargs x([Li/c/b0/b/i;)Li/c/b0/b/e;
    .locals 2
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    invoke-static {p0}, Li/c/b0/b/e;->O(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Li/c/b0/e/f/a/m;

    invoke-direct {v0, p0}, Li/c/b0/e/f/a/m;-><init>([Li/c/b0/b/i;)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(Li/c/b0/d/p;)Li/c/b0/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/p<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/a/p;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/a/p;-><init>(Li/c/b0/b/i;Li/c/b0/d/p;)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final B(Li/c/b0/d/o;)Li/c/b0/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Li/c/b0/b/i;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const-string v0, "fallbackSupplier is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/a/r;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/a/r;-><init>(Li/c/b0/b/i;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final C(J)Li/c/b0/b/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/c/b0/b/e;->K()Li/c/b0/b/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Li/c/b0/b/l;->n(J)Li/c/b0/b/l;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/e;->v(Lo/a/a;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final D()Li/c/b0/c/c;
    .locals 1

    .line 1
    new-instance v0, Li/c/b0/e/e/m;

    invoke-direct {v0}, Li/c/b0/e/e/m;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Li/c/b0/b/e;->a(Li/c/b0/b/g;)V

    return-object v0
.end method

.method public final E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/a;",
            "Li/c/b0/d/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Li/c/b0/c/c;"
        }
    .end annotation

    const-string v0, "onError is null"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li/c/b0/e/e/i;

    invoke-direct {v0, p2, p1}, Li/c/b0/e/e/i;-><init>(Li/c/b0/d/g;Li/c/b0/d/a;)V

    .line 4
    invoke-virtual {p0, v0}, Li/c/b0/b/e;->a(Li/c/b0/b/g;)V

    return-object v0
.end method

.method protected abstract F(Li/c/b0/b/g;)V
.end method

.method public final G(Li/c/b0/b/d0;)Li/c/b0/b/e;
    .locals 1

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/a/s;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/a/s;-><init>(Li/c/b0/b/i;Li/c/b0/b/d0;)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final H(Li/c/b0/b/g;)Li/c/b0/b/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Li/c/b0/b/g;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Li/c/b0/b/e;->a(Li/c/b0/b/g;)V

    return-object p1
.end method

.method public final I(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/e;
    .locals 6

    .line 1
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Li/c/b0/b/e;->J(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final K()Li/c/b0/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Li/c/b0/b/l<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Li/c/b0/e/c/c;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Li/c/b0/e/c/c;

    invoke-interface {v0}, Li/c/b0/e/c/c;->b()Li/c/b0/b/l;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Li/c/b0/e/f/a/u;

    invoke-direct {v0, p0}, Li/c/b0/e/f/a/u;-><init>(Li/c/b0/b/i;)V

    invoke-static {v0}, Li/c/b0/h/a;->m(Li/c/b0/b/l;)Li/c/b0/b/l;

    move-result-object v0

    return-object v0
.end method

.method public final M()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Li/c/b0/e/c/e;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Li/c/b0/e/c/e;

    invoke-interface {v0}, Li/c/b0/e/c/e;->c()Li/c/b0/b/v;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Li/c/b0/e/f/a/v;

    invoke-direct {v0, p0}, Li/c/b0/e/f/a/v;-><init>(Li/c/b0/b/i;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final N(Ljava/lang/Object;)Li/c/b0/b/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Li/c/b0/b/e0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "completionValue is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/a/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Li/c/b0/e/f/a/w;-><init>(Li/c/b0/b/i;Li/c/b0/d/q;Ljava/lang/Object;)V

    invoke-static {v0}, Li/c/b0/h/a;->p(Li/c/b0/b/e0;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Li/c/b0/b/g;)V
    .locals 1

    const-string v0, "observer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Li/c/b0/h/a;->w(Li/c/b0/b/e;Li/c/b0/b/g;)Li/c/b0/b/g;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1}, Li/c/b0/b/e;->F(Li/c/b0/b/g;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {p1}, Li/c/b0/b/e;->L(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p1

    .line 8
    throw p1
.end method

.method public final d(Li/c/b0/b/i;)Li/c/b0/b/e;
    .locals 1

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/a/b;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/a/b;-><init>(Li/c/b0/b/i;Li/c/b0/b/i;)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final e(Li/c/b0/b/t;)Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/t<",
            "TT;>;)",
            "Li/c/b0/b/p<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/c/d;

    invoke-direct {v0, p1, p0}, Li/c/b0/e/f/c/d;-><init>(Li/c/b0/b/t;Li/c/b0/b/i;)V

    invoke-static {v0}, Li/c/b0/h/a;->n(Li/c/b0/b/p;)Li/c/b0/b/p;

    move-result-object p1

    return-object p1
.end method

.method public final f(Li/c/b0/b/a0;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/d/a;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/d/a;-><init>(Li/c/b0/b/i;Li/c/b0/b/a0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final g(Li/c/b0/b/i0;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/i0<",
            "TT;>;)",
            "Li/c/b0/b/e0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/f/b;

    invoke-direct {v0, p1, p0}, Li/c/b0/e/f/f/b;-><init>(Li/c/b0/b/i0;Li/c/b0/b/i;)V

    invoke-static {v0}, Li/c/b0/h/a;->p(Li/c/b0/b/e0;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final h()V
    .locals 1

    .line 1
    new-instance v0, Li/c/b0/e/e/g;

    invoke-direct {v0}, Li/c/b0/e/e/g;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Li/c/b0/b/e;->a(Li/c/b0/b/g;)V

    .line 3
    invoke-virtual {v0}, Li/c/b0/e/e/g;->a()Ljava/lang/Object;

    return-void
.end method

.method public final j(Li/c/b0/b/j;)Li/c/b0/b/e;
    .locals 1

    const-string v0, "transformer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Li/c/b0/b/j;

    invoke-interface {p1, p0}, Li/c/b0/b/j;->c(Li/c/b0/b/e;)Li/c/b0/b/i;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/e;->O(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final l(Li/c/b0/d/a;)Li/c/b0/b/e;
    .locals 7

    .line 1
    invoke-static {}, Li/c/b0/e/b/a;->g()Li/c/b0/d/g;

    move-result-object v1

    .line 2
    invoke-static {}, Li/c/b0/e/b/a;->g()Li/c/b0/d/g;

    move-result-object v2

    sget-object v6, Li/c/b0/e/b/a;->c:Li/c/b0/d/a;

    move-object v0, p0

    move-object v3, v6

    move-object v4, v6

    move-object v5, p1

    .line 3
    invoke-direct/range {v0 .. v6}, Li/c/b0/b/e;->p(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;Li/c/b0/d/a;Li/c/b0/d/a;Li/c/b0/d/a;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final m(Li/c/b0/d/a;)Li/c/b0/b/e;
    .locals 1

    const-string v0, "onFinally is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/a/d;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/a/d;-><init>(Li/c/b0/b/i;Li/c/b0/d/a;)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final n(Li/c/b0/d/a;)Li/c/b0/b/e;
    .locals 7

    .line 1
    invoke-static {}, Li/c/b0/e/b/a;->g()Li/c/b0/d/g;

    move-result-object v1

    invoke-static {}, Li/c/b0/e/b/a;->g()Li/c/b0/d/g;

    move-result-object v2

    sget-object v6, Li/c/b0/e/b/a;->c:Li/c/b0/d/a;

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Li/c/b0/b/e;->p(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;Li/c/b0/d/a;Li/c/b0/d/a;Li/c/b0/d/a;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final o(Li/c/b0/d/g;)Li/c/b0/b/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/e/b/a;->g()Li/c/b0/d/g;

    move-result-object v1

    sget-object v6, Li/c/b0/e/b/a;->c:Li/c/b0/d/a;

    move-object v0, p0

    move-object v2, p1

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Li/c/b0/b/e;->p(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;Li/c/b0/d/a;Li/c/b0/d/a;Li/c/b0/d/a;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final q(Li/c/b0/d/g;)Li/c/b0/b/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-",
            "Li/c/b0/c/c;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/e/b/a;->g()Li/c/b0/d/g;

    move-result-object v2

    sget-object v6, Li/c/b0/e/b/a;->c:Li/c/b0/d/a;

    move-object v0, p0

    move-object v1, p1

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Li/c/b0/b/e;->p(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;Li/c/b0/d/a;Li/c/b0/d/a;Li/c/b0/d/a;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final y(Li/c/b0/b/d0;)Li/c/b0/b/e;
    .locals 1

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/a/o;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/a/o;-><init>(Li/c/b0/b/i;Li/c/b0/b/d0;)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final z()Li/c/b0/b/e;
    .locals 1

    .line 1
    invoke-static {}, Li/c/b0/e/b/a;->c()Li/c/b0/d/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/c/b0/b/e;->A(Li/c/b0/d/p;)Li/c/b0/b/e;

    move-result-object v0

    return-object v0
.end method
