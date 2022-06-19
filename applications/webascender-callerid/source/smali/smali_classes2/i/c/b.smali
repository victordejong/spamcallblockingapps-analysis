.class public abstract Li/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Li/c/b;
    .locals 1

    .line 1
    sget-object v0, Li/c/z/e/a/b;->a:Li/c/b;

    invoke-static {v0}, Li/c/a0/a;->j(Li/c/b;)Li/c/b;

    move-result-object v0

    return-object v0
.end method

.method private f(Li/c/y/c;Li/c/y/c;Li/c/y/a;Li/c/y/a;Li/c/y/a;Li/c/y/a;)Li/c/b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/c<",
            "-",
            "Li/c/w/b;",
            ">;",
            "Li/c/y/c<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Li/c/y/a;",
            "Li/c/y/a;",
            "Li/c/y/a;",
            "Li/c/y/a;",
            ")",
            "Li/c/b;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onTerminate is null"

    .line 4
    invoke-static {p4, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    .line 5
    invoke-static {p5, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onDispose is null"

    .line 6
    invoke-static {p6, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    new-instance v0, Li/c/z/e/a/f;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Li/c/z/e/a/f;-><init>(Li/c/d;Li/c/y/c;Li/c/y/c;Li/c/y/a;Li/c/y/a;Li/c/y/a;Li/c/y/a;)V

    invoke-static {v0}, Li/c/a0/a;->j(Li/c/b;)Li/c/b;

    move-result-object p1

    return-object p1
.end method

.method public static g(Li/c/y/a;)Li/c/b;
    .locals 1

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/a/c;

    invoke-direct {v0, p0}, Li/c/z/e/a/c;-><init>(Li/c/y/a;)V

    invoke-static {v0}, Li/c/a0/a;->j(Li/c/b;)Li/c/b;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/util/concurrent/Callable;)Li/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)",
            "Li/c/b;"
        }
    .end annotation

    const-string v0, "callable is null"

    .line 1
    invoke-static {p0, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/a/d;

    invoke-direct {v0, p0}, Li/c/z/e/a/d;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Li/c/a0/a;->j(Li/c/b;)Li/c/b;

    move-result-object p0

    return-object p0
.end method

.method private static o(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method


# virtual methods
.method public final a(Li/c/c;)V
    .locals 1

    const-string v0, "s is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Li/c/a0/a;->t(Li/c/b;Li/c/c;)Li/c/c;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 3
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1}, Li/c/b;->m(Li/c/c;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {p1}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {p1}, Li/c/b;->o(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p1

    .line 8
    throw p1
.end method

.method public final b(Li/c/d;)Li/c/b;
    .locals 1

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/a/a;

    invoke-direct {v0, p0, p1}, Li/c/z/e/a/a;-><init>(Li/c/d;Li/c/d;)V

    invoke-static {v0}, Li/c/a0/a;->j(Li/c/b;)Li/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final d(Li/c/y/a;)Li/c/b;
    .locals 7

    .line 1
    invoke-static {}, Li/c/z/b/a;->b()Li/c/y/c;

    move-result-object v1

    invoke-static {}, Li/c/z/b/a;->b()Li/c/y/c;

    move-result-object v2

    sget-object v6, Li/c/z/b/a;->c:Li/c/y/a;

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Li/c/b;->f(Li/c/y/c;Li/c/y/c;Li/c/y/a;Li/c/y/a;Li/c/y/a;Li/c/y/a;)Li/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final e(Li/c/y/c;)Li/c/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/c<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Li/c/b;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/z/b/a;->b()Li/c/y/c;

    move-result-object v1

    sget-object v6, Li/c/z/b/a;->c:Li/c/y/a;

    move-object v0, p0

    move-object v2, p1

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Li/c/b;->f(Li/c/y/c;Li/c/y/c;Li/c/y/a;Li/c/y/a;Li/c/y/a;Li/c/y/a;)Li/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final i()Li/c/b;
    .locals 1

    .line 1
    invoke-static {}, Li/c/z/b/a;->a()Li/c/y/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/c/b;->j(Li/c/y/e;)Li/c/b;

    move-result-object v0

    return-object v0
.end method

.method public final j(Li/c/y/e;)Li/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/e<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Li/c/b;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/a/e;

    invoke-direct {v0, p0, p1}, Li/c/z/e/a/e;-><init>(Li/c/d;Li/c/y/e;)V

    invoke-static {v0}, Li/c/a0/a;->j(Li/c/b;)Li/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final k(Li/c/y/d;)Li/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/d<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Li/c/d;",
            ">;)",
            "Li/c/b;"
        }
    .end annotation

    const-string v0, "errorMapper is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/a/g;

    invoke-direct {v0, p0, p1}, Li/c/z/e/a/g;-><init>(Li/c/d;Li/c/y/d;)V

    invoke-static {v0}, Li/c/a0/a;->j(Li/c/b;)Li/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final l()Li/c/w/b;
    .locals 1

    .line 1
    new-instance v0, Li/c/z/d/c;

    invoke-direct {v0}, Li/c/z/d/c;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Li/c/b;->a(Li/c/c;)V

    return-object v0
.end method

.method protected abstract m(Li/c/c;)V
.end method

.method public final n()Li/c/j;
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
    instance-of v0, p0, Li/c/z/c/c;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Li/c/z/c/c;

    invoke-interface {v0}, Li/c/z/c/c;->a()Li/c/j;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Li/c/z/e/c/j;

    invoke-direct {v0, p0}, Li/c/z/e/c/j;-><init>(Li/c/d;)V

    invoke-static {v0}, Li/c/a0/a;->l(Li/c/j;)Li/c/j;

    move-result-object v0

    return-object v0
.end method
