.class public final Li/c/b0/e/f/e/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Li/c/b0/b/a0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/k/f;

    invoke-direct {v0}, Li/c/b0/e/k/f;-><init>()V

    .line 2
    new-instance v1, Li/c/b0/e/e/r;

    invoke-static {}, Li/c/b0/e/b/a;->g()Li/c/b0/d/g;

    move-result-object v2

    .line 3
    invoke-static {}, Li/c/b0/e/b/a;->g()Li/c/b0/d/g;

    move-result-object v3

    invoke-direct {v1, v2, v0, v0, v3}, Li/c/b0/e/e/r;-><init>(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;Li/c/b0/d/g;)V

    .line 4
    invoke-interface {p0, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    .line 5
    invoke-static {v0, v1}, Li/c/b0/e/k/e;->a(Ljava/util/concurrent/CountDownLatch;Li/c/b0/c/c;)V

    .line 6
    iget-object p0, v0, Li/c/b0/e/k/f;->f:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {p0}, Li/c/b0/e/k/j;->g(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static b(Li/c/b0/b/a0;Li/c/b0/b/c0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 2
    new-instance v1, Li/c/b0/e/e/h;

    invoke-direct {v1, v0}, Li/c/b0/e/e/h;-><init>(Ljava/util/Queue;)V

    .line 3
    invoke-interface {p1, v1}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 4
    invoke-interface {p0, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    .line 5
    :cond_0
    invoke-virtual {v1}, Li/c/b0/e/e/h;->isDisposed()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    .line 7
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {v1}, Li/c/b0/e/e/h;->dispose()V

    .line 9
    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {v1}, Li/c/b0/e/e/h;->isDisposed()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Li/c/b0/e/e/h;->g:Ljava/lang/Object;

    if-eq p0, v2, :cond_3

    .line 11
    invoke-static {p0, p1}, Li/c/b0/e/k/m;->acceptFull(Ljava/lang/Object;Li/c/b0/b/c0;)Z

    move-result p0

    if-eqz p0, :cond_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static c(Li/c/b0/b/a0;Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/d/g<",
            "-TT;>;",
            "Li/c/b0/d/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Li/c/b0/d/a;",
            ")V"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Li/c/b0/e/e/r;

    invoke-static {}, Li/c/b0/e/b/a;->g()Li/c/b0/d/g;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Li/c/b0/e/e/r;-><init>(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;Li/c/b0/d/g;)V

    invoke-static {p0, v0}, Li/c/b0/e/f/e/k;->b(Li/c/b0/b/a0;Li/c/b0/b/c0;)V

    return-void
.end method
