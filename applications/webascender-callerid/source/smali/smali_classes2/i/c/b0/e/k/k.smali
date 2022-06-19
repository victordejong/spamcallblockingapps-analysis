.class public final Li/c/b0/e/k/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Li/c/b0/b/c0;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "*>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Li/c/b0/e/k/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p2, p0}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    :cond_0
    return-void
.end method

.method public static b(Lo/a/b;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "*>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Li/c/b0/e/k/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p2, p0}, Li/c/b0/e/k/c;->g(Lo/a/b;)V

    :cond_0
    return-void
.end method

.method public static c(Li/c/b0/b/c0;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Li/c/b0/e/k/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p1}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p3, p0}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    :cond_0
    return-void
.end method

.method public static d(Lo/a/b;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Li/c/b0/e/k/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p1}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p3, p0}, Li/c/b0/e/k/c;->g(Lo/a/b;)V

    :cond_0
    return-void
.end method

.method public static e(Li/c/b0/b/c0;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/c0<",
            "-TT;>;TT;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Li/c/b0/e/k/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p3, p0}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    :cond_0
    return-void
.end method

.method public static f(Lo/a/b;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/a/b<",
            "-TT;>;TT;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Li/c/b0/e/k/c;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    invoke-interface {p0, p1}, Lo/a/b;->onNext(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p3, p0}, Li/c/b0/e/k/c;->g(Lo/a/b;)V

    :cond_1
    return v1
.end method
