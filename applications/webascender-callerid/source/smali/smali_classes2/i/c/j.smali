.class public abstract Li/c/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/n<",
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

.method public static varargs A(Li/c/y/d;[Li/c/n;)Li/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/y/d<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;[",
            "Li/c/n<",
            "+TT;>;)",
            "Li/c/j<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Li/c/j;->g()Li/c/j;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "zipper is null"

    .line 4
    invoke-static {p0, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Li/c/z/e/c/u;

    invoke-direct {v0, p1, p0}, Li/c/z/e/c/u;-><init>([Li/c/n;Li/c/y/d;)V

    invoke-static {v0}, Li/c/a0/a;->l(Li/c/j;)Li/c/j;

    move-result-object p0

    return-object p0
.end method

.method public static c(Li/c/m;)Li/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/m<",
            "TT;>;)",
            "Li/c/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p0, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/c/c;

    invoke-direct {v0, p0}, Li/c/z/e/c/c;-><init>(Li/c/m;)V

    invoke-static {v0}, Li/c/a0/a;->l(Li/c/j;)Li/c/j;

    move-result-object p0

    return-object p0
.end method

.method public static g()Li/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Li/c/j<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/z/e/c/d;->f:Li/c/z/e/c/d;

    invoke-static {v0}, Li/c/a0/a;->l(Li/c/j;)Li/c/j;

    move-result-object v0

    return-object v0
.end method

.method public static l(Ljava/util/concurrent/Callable;)Li/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Li/c/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "callable is null"

    .line 1
    invoke-static {p0, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/c/i;

    invoke-direct {v0, p0}, Li/c/z/e/c/i;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Li/c/a0/a;->l(Li/c/j;)Li/c/j;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/Object;)Li/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Li/c/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p0, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/c/m;

    invoke-direct {v0, p0}, Li/c/z/e/c/m;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Li/c/a0/a;->l(Li/c/j;)Li/c/j;

    move-result-object p0

    return-object p0
.end method

.method public static z(Li/c/n;Li/c/n;Li/c/y/b;)Li/c/j;
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
            "Li/c/n<",
            "+TT1;>;",
            "Li/c/n<",
            "+TT2;>;",
            "Li/c/y/b<",
            "-TT1;-TT2;+TR;>;)",
            "Li/c/j<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Li/c/z/b/a;->g(Li/c/y/b;)Li/c/y/d;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Li/c/n;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, v0}, Li/c/j;->A(Li/c/y/d;[Li/c/n;)Li/c/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Li/c/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/l<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1}, Li/c/a0/a;->u(Li/c/j;Li/c/l;)Li/c/l;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null MaybeObserver. Please check the handler provided to RxJavaPlugins.setOnMaybeSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 3
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Li/c/j;->u(Li/c/l;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

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

.method public final d(Ljava/lang/Object;)Li/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Li/c/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Li/c/j;->n(Ljava/lang/Object;)Li/c/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/c/j;->x(Li/c/n;)Li/c/j;

    move-result-object p1

    return-object p1
.end method

.method public final e(Li/c/y/c;)Li/c/j;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/c<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Li/c/j<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Li/c/z/e/c/q;

    .line 2
    invoke-static {}, Li/c/z/b/a;->b()Li/c/y/c;

    move-result-object v2

    .line 3
    invoke-static {}, Li/c/z/b/a;->b()Li/c/y/c;

    move-result-object v3

    const-string v0, "onError is null"

    .line 4
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Li/c/y/c;

    sget-object v7, Li/c/z/b/a;->c:Li/c/y/a;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, Li/c/z/e/c/q;-><init>(Li/c/n;Li/c/y/c;Li/c/y/c;Li/c/y/c;Li/c/y/a;Li/c/y/a;Li/c/y/a;)V

    .line 5
    invoke-static {v8}, Li/c/a0/a;->l(Li/c/j;)Li/c/j;

    move-result-object p1

    return-object p1
.end method

.method public final f(Li/c/y/c;)Li/c/j;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/c<",
            "-TT;>;)",
            "Li/c/j<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Li/c/z/e/c/q;

    .line 2
    invoke-static {}, Li/c/z/b/a;->b()Li/c/y/c;

    move-result-object v2

    const-string v0, "onSubscribe is null"

    .line 3
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Li/c/y/c;

    .line 4
    invoke-static {}, Li/c/z/b/a;->b()Li/c/y/c;

    move-result-object v4

    sget-object v7, Li/c/z/b/a;->c:Li/c/y/a;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, Li/c/z/e/c/q;-><init>(Li/c/n;Li/c/y/c;Li/c/y/c;Li/c/y/c;Li/c/y/a;Li/c/y/a;Li/c/y/a;)V

    .line 5
    invoke-static {v8}, Li/c/a0/a;->l(Li/c/j;)Li/c/j;

    move-result-object p1

    return-object p1
.end method

.method public final h(Li/c/y/e;)Li/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/e<",
            "-TT;>;)",
            "Li/c/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/c/e;

    invoke-direct {v0, p0, p1}, Li/c/z/e/c/e;-><init>(Li/c/n;Li/c/y/e;)V

    invoke-static {v0}, Li/c/a0/a;->l(Li/c/j;)Li/c/j;

    move-result-object p1

    return-object p1
.end method

.method public final i(Li/c/y/d;)Li/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/y/d<",
            "-TT;+",
            "Li/c/n<",
            "+TR;>;>;)",
            "Li/c/j<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/c/h;

    invoke-direct {v0, p0, p1}, Li/c/z/e/c/h;-><init>(Li/c/n;Li/c/y/d;)V

    invoke-static {v0}, Li/c/a0/a;->l(Li/c/j;)Li/c/j;

    move-result-object p1

    return-object p1
.end method

.method public final j(Li/c/y/d;)Li/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/d<",
            "-TT;+",
            "Li/c/d;",
            ">;)",
            "Li/c/b;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/c/g;

    invoke-direct {v0, p0, p1}, Li/c/z/e/c/g;-><init>(Li/c/n;Li/c/y/d;)V

    invoke-static {v0}, Li/c/a0/a;->j(Li/c/b;)Li/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final k(Li/c/y/d;)Li/c/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/y/d<",
            "-TT;+",
            "Li/c/p<",
            "+TR;>;>;)",
            "Li/c/o<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/d/a;

    invoke-direct {v0, p0, p1}, Li/c/z/e/d/a;-><init>(Li/c/n;Li/c/y/d;)V

    invoke-static {v0}, Li/c/a0/a;->m(Li/c/o;)Li/c/o;

    move-result-object p1

    return-object p1
.end method

.method public final m()Li/c/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/s<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/z/e/c/l;

    invoke-direct {v0, p0}, Li/c/z/e/c/l;-><init>(Li/c/n;)V

    invoke-static {v0}, Li/c/a0/a;->n(Li/c/s;)Li/c/s;

    move-result-object v0

    return-object v0
.end method

.method public final o(Li/c/y/d;)Li/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/y/d<",
            "-TT;+TR;>;)",
            "Li/c/j<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/c/n;

    invoke-direct {v0, p0, p1}, Li/c/z/e/c/n;-><init>(Li/c/n;Li/c/y/d;)V

    invoke-static {v0}, Li/c/a0/a;->l(Li/c/j;)Li/c/j;

    move-result-object p1

    return-object p1
.end method

.method public final p(Li/c/r;)Li/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/r;",
            ")",
            "Li/c/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/c/o;

    invoke-direct {v0, p0, p1}, Li/c/z/e/c/o;-><init>(Li/c/n;Li/c/r;)V

    invoke-static {v0}, Li/c/a0/a;->l(Li/c/j;)Li/c/j;

    move-result-object p1

    return-object p1
.end method

.method public final q(Li/c/n;)Li/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/n<",
            "+TT;>;)",
            "Li/c/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Li/c/z/b/a;->e(Ljava/lang/Object;)Li/c/y/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/c/j;->r(Li/c/y/d;)Li/c/j;

    move-result-object p1

    return-object p1
.end method

.method public final r(Li/c/y/d;)Li/c/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/d<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Li/c/n<",
            "+TT;>;>;)",
            "Li/c/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeFunction is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/c/p;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Li/c/z/e/c/p;-><init>(Li/c/n;Li/c/y/d;Z)V

    invoke-static {v0}, Li/c/a0/a;->l(Li/c/j;)Li/c/j;

    move-result-object p1

    return-object p1
.end method

.method public final s()Li/c/w/b;
    .locals 3

    .line 1
    invoke-static {}, Li/c/z/b/a;->b()Li/c/y/c;

    move-result-object v0

    sget-object v1, Li/c/z/b/a;->e:Li/c/y/c;

    sget-object v2, Li/c/z/b/a;->c:Li/c/y/a;

    invoke-virtual {p0, v0, v1, v2}, Li/c/j;->t(Li/c/y/c;Li/c/y/c;Li/c/y/a;)Li/c/w/b;

    move-result-object v0

    return-object v0
.end method

.method public final t(Li/c/y/c;Li/c/y/c;Li/c/y/a;)Li/c/w/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/c<",
            "-TT;>;",
            "Li/c/y/c<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Li/c/y/a;",
            ")",
            "Li/c/w/b;"
        }
    .end annotation

    const-string v0, "onSuccess is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Li/c/z/e/c/b;

    invoke-direct {v0, p1, p2, p3}, Li/c/z/e/c/b;-><init>(Li/c/y/c;Li/c/y/c;Li/c/y/a;)V

    invoke-virtual {p0, v0}, Li/c/j;->w(Li/c/l;)Li/c/l;

    check-cast v0, Li/c/w/b;

    return-object v0
.end method

.method protected abstract u(Li/c/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/l<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final v(Li/c/r;)Li/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/r;",
            ")",
            "Li/c/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/c/r;

    invoke-direct {v0, p0, p1}, Li/c/z/e/c/r;-><init>(Li/c/n;Li/c/r;)V

    invoke-static {v0}, Li/c/a0/a;->l(Li/c/j;)Li/c/j;

    move-result-object p1

    return-object p1
.end method

.method public final w(Li/c/l;)Li/c/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Li/c/l<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Li/c/j;->a(Li/c/l;)V

    return-object p1
.end method

.method public final x(Li/c/n;)Li/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/n<",
            "+TT;>;)",
            "Li/c/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/c/s;

    invoke-direct {v0, p0, p1}, Li/c/z/e/c/s;-><init>(Li/c/n;Li/c/n;)V

    invoke-static {v0}, Li/c/a0/a;->l(Li/c/j;)Li/c/j;

    move-result-object p1

    return-object p1
.end method

.method public final y()Li/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Li/c/z/c/b;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Li/c/z/c/b;

    invoke-interface {v0}, Li/c/z/c/b;->b()Li/c/f;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Li/c/z/e/c/t;

    invoke-direct {v0, p0}, Li/c/z/e/c/t;-><init>(Li/c/n;)V

    invoke-static {v0}, Li/c/a0/a;->k(Li/c/f;)Li/c/f;

    move-result-object v0

    return-object v0
.end method
