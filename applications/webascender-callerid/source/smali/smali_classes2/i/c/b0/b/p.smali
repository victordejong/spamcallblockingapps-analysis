.class public abstract Li/c/b0/b/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/b/t<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Li/c/b0/b/t;Li/c/b0/b/t;Li/c/b0/d/c;)Li/c/b0/b/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/t<",
            "+TT1;>;",
            "Li/c/b0/b/t<",
            "+TT2;>;",
            "Li/c/b0/d/c<",
            "-TT1;-TT2;+TR;>;)",
            "Li/c/b0/b/p<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Li/c/b0/e/b/a;->u(Li/c/b0/d/c;)Li/c/b0/d/o;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Li/c/b0/b/t;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, v0}, Li/c/b0/b/p;->B(Li/c/b0/d/o;[Li/c/b0/b/t;)Li/c/b0/b/p;

    move-result-object p0

    return-object p0
.end method

.method public static varargs B(Li/c/b0/d/o;[Li/c/b0/b/t;)Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;[",
            "Li/c/b0/b/t<",
            "+TT;>;)",
            "Li/c/b0/b/p<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Li/c/b0/b/p;->g()Li/c/b0/b/p;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "zipper is null"

    .line 4
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Li/c/b0/e/f/c/t;

    invoke-direct {v0, p1, p0}, Li/c/b0/e/f/c/t;-><init>([Li/c/b0/b/t;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->n(Li/c/b0/b/p;)Li/c/b0/b/p;

    move-result-object p0

    return-object p0
.end method

.method public static e(Li/c/b0/b/s;)Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/s<",
            "TT;>;)",
            "Li/c/b0/b/p<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/c/c;

    invoke-direct {v0, p0}, Li/c/b0/e/f/c/c;-><init>(Li/c/b0/b/s;)V

    invoke-static {v0}, Li/c/b0/h/a;->n(Li/c/b0/b/p;)Li/c/b0/b/p;

    move-result-object p0

    return-object p0
.end method

.method public static g()Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Li/c/b0/b/p<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/e/f/c/e;->f:Li/c/b0/e/f/c/e;

    invoke-static {v0}, Li/c/b0/h/a;->n(Li/c/b0/b/p;)Li/c/b0/b/p;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/lang/Object;)Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Li/c/b0/b/p<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/c/j;

    invoke-direct {v0, p0}, Li/c/b0/e/f/c/j;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Li/c/b0/h/a;->n(Li/c/b0/b/p;)Li/c/b0/b/p;

    move-result-object p0

    return-object p0
.end method

.method public static u(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/p<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Li/c/b0/b/p;->v(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/p;

    move-result-object p0

    return-object p0
.end method

.method public static v(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/p<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li/c/b0/e/f/c/o;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1, p2, p3}, Li/c/b0/e/f/c/o;-><init>(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V

    invoke-static {v0}, Li/c/b0/h/a;->n(Li/c/b0/b/p;)Li/c/b0/b/p;

    move-result-object p0

    return-object p0
.end method

.method public static z(Li/c/b0/b/t;)Li/c/b0/b/p;
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

    .line 1
    instance-of v0, p0, Li/c/b0/b/p;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Li/c/b0/b/p;

    invoke-static {p0}, Li/c/b0/h/a;->n(Li/c/b0/b/p;)Li/c/b0/b/p;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "source is null"

    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Li/c/b0/e/f/c/s;

    invoke-direct {v0, p0}, Li/c/b0/e/f/c/s;-><init>(Li/c/b0/b/t;)V

    invoke-static {v0}, Li/c/b0/h/a;->n(Li/c/b0/b/p;)Li/c/b0/b/p;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Li/c/b0/b/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/r<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1}, Li/c/b0/h/a;->x(Li/c/b0/b/p;Li/c/b0/b/r;)Li/c/b0/b/r;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null MaybeObserver. Please check the handler provided to RxJavaPlugins.setOnMaybeSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Li/c/b0/b/p;->r(Li/c/b0/b/r;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "subscribeActual failed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8
    throw v0

    :catch_0
    move-exception p1

    .line 9
    throw p1
.end method

.method public final d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/e/g;

    invoke-direct {v0}, Li/c/b0/e/e/g;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Li/c/b0/b/p;->a(Li/c/b0/b/r;)V

    .line 3
    invoke-virtual {v0}, Li/c/b0/e/e/g;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Li/c/b0/b/e0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/c/r;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/c/r;-><init>(Li/c/b0/b/t;Ljava/lang/Object;)V

    invoke-static {v0}, Li/c/b0/h/a;->p(Li/c/b0/b/e0;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public final h(Li/c/b0/d/o;)Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/t<",
            "+TR;>;>;)",
            "Li/c/b0/b/p<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/c/h;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/c/h;-><init>(Li/c/b0/b/t;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->n(Li/c/b0/b/p;)Li/c/b0/b/p;

    move-result-object p1

    return-object p1
.end method

.method public final i(Li/c/b0/d/o;)Li/c/b0/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/c/g;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/c/g;-><init>(Li/c/b0/b/t;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->l(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final k(Li/c/b0/d/o;)Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+TR;>;)",
            "Li/c/b0/b/p<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/c/k;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/c/k;-><init>(Li/c/b0/b/t;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->n(Li/c/b0/b/p;)Li/c/b0/b/p;

    move-result-object p1

    return-object p1
.end method

.method public final l(Li/c/b0/b/d0;)Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/p<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/c/l;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/c/l;-><init>(Li/c/b0/b/t;Li/c/b0/b/d0;)V

    invoke-static {v0}, Li/c/b0/h/a;->n(Li/c/b0/b/p;)Li/c/b0/b/p;

    move-result-object p1

    return-object p1
.end method

.method public final m()Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/p<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/e/b/a;->c()Li/c/b0/d/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/c/b0/b/p;->n(Li/c/b0/d/p;)Li/c/b0/b/p;

    move-result-object v0

    return-object v0
.end method

.method public final n(Li/c/b0/d/p;)Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/p<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Li/c/b0/b/p<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/c/m;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/c/m;-><init>(Li/c/b0/b/t;Li/c/b0/d/p;)V

    invoke-static {v0}, Li/c/b0/h/a;->n(Li/c/b0/b/p;)Li/c/b0/b/p;

    move-result-object p1

    return-object p1
.end method

.method public final o(Li/c/b0/d/o;)Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/o<",
            "-",
            "Li/c/b0/b/l<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lo/a/a<",
            "*>;>;)",
            "Li/c/b0/b/p<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li/c/b0/b/p;->w()Li/c/b0/b/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/c/b0/b/l;->p(Li/c/b0/d/o;)Li/c/b0/b/l;

    move-result-object p1

    invoke-virtual {p1}, Li/c/b0/b/l;->q()Li/c/b0/b/p;

    move-result-object p1

    return-object p1
.end method

.method public final p(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-TT;>;",
            "Li/c/b0/d/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Li/c/b0/c/c;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/e/b/a;->c:Li/c/b0/d/a;

    invoke-virtual {p0, p1, p2, v0}, Li/c/b0/b/p;->q(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;)Li/c/b0/c/c;

    move-result-object p1

    return-object p1
.end method

.method public final q(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;)Li/c/b0/c/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-TT;>;",
            "Li/c/b0/d/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Li/c/b0/d/a;",
            ")",
            "Li/c/b0/c/c;"
        }
    .end annotation

    const-string v0, "onSuccess is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Li/c/b0/e/f/c/b;

    invoke-direct {v0, p1, p2, p3}, Li/c/b0/e/f/c/b;-><init>(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;)V

    invoke-virtual {p0, v0}, Li/c/b0/b/p;->t(Li/c/b0/b/r;)Li/c/b0/b/r;

    check-cast v0, Li/c/b0/c/c;

    return-object v0
.end method

.method protected abstract r(Li/c/b0/b/r;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/r<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final s(Li/c/b0/b/d0;)Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/p<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/c/n;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/c/n;-><init>(Li/c/b0/b/t;Li/c/b0/b/d0;)V

    invoke-static {v0}, Li/c/b0/h/a;->n(Li/c/b0/b/p;)Li/c/b0/b/p;

    move-result-object p1

    return-object p1
.end method

.method public final t(Li/c/b0/b/r;)Li/c/b0/b/r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Li/c/b0/b/r<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Li/c/b0/b/p;->a(Li/c/b0/b/r;)V

    return-object p1
.end method

.method public final w()Li/c/b0/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    new-instance v0, Li/c/b0/e/f/c/p;

    invoke-direct {v0, p0}, Li/c/b0/e/f/c/p;-><init>(Li/c/b0/b/t;)V

    invoke-static {v0}, Li/c/b0/h/a;->m(Li/c/b0/b/l;)Li/c/b0/b/l;

    move-result-object v0

    return-object v0
.end method

.method public final x()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    new-instance v0, Li/c/b0/e/f/c/q;

    invoke-direct {v0, p0}, Li/c/b0/e/f/c/q;-><init>(Li/c/b0/b/t;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final y()Li/c/b0/b/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/e0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/c/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Li/c/b0/e/f/c/r;-><init>(Li/c/b0/b/t;Ljava/lang/Object;)V

    invoke-static {v0}, Li/c/b0/h/a;->p(Li/c/b0/b/e0;)Li/c/b0/b/e0;

    move-result-object v0

    return-object v0
.end method
