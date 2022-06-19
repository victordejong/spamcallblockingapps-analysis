.class final Li/c/b0/e/f/e/z0$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/z0$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Li/c/b0/b/c0<",
        "TT;>;",
        "Li/c/b0/c/c;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/c0<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final g:Z

.field final h:Li/c/b0/c/a;

.field final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field final j:Li/c/b0/e/k/c;

.field final k:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i0<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final l:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/b0/e/g/c<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field m:Li/c/b0/c/c;

.field volatile n:Z


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/d/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TR;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i0<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/z0$a;->f:Li/c/b0/b/c0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/z0$a;->k:Li/c/b0/d/o;

    .line 4
    iput-boolean p3, p0, Li/c/b0/e/f/e/z0$a;->g:Z

    .line 5
    new-instance p1, Li/c/b0/c/a;

    invoke-direct {p1}, Li/c/b0/c/a;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/z0$a;->h:Li/c/b0/c/a;

    .line 6
    new-instance p1, Li/c/b0/e/k/c;

    invoke-direct {p1}, Li/c/b0/e/k/c;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/z0$a;->j:Li/c/b0/e/k/c;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Li/c/b0/e/f/e/z0$a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/z0$a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/z0$a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/e/g/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Li/c/b0/e/g/c;->clear()V

    :cond_0
    return-void
.end method

.method b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/z0$a;->c()V

    :cond_0
    return-void
.end method

.method c()V
    .locals 8

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/z0$a;->f:Li/c/b0/b/c0;

    .line 2
    iget-object v1, p0, Li/c/b0/e/f/e/z0$a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    iget-object v2, p0, Li/c/b0/e/f/e/z0$a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 4
    :cond_0
    :goto_0
    iget-boolean v5, p0, Li/c/b0/e/f/e/z0$a;->n:Z

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {p0}, Li/c/b0/e/f/e/z0$a;->a()V

    return-void

    .line 6
    :cond_1
    iget-boolean v5, p0, Li/c/b0/e/f/e/z0$a;->g:Z

    if-nez v5, :cond_2

    .line 7
    iget-object v5, p0, Li/c/b0/e/f/e/z0$a;->j:Li/c/b0/e/k/c;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    .line 8
    invoke-virtual {p0}, Li/c/b0/e/f/e/z0$a;->a()V

    .line 9
    iget-object v1, p0, Li/c/b0/e/f/e/z0$a;->j:Li/c/b0/e/k/c;

    invoke-virtual {v1, v0}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    return-void

    .line 10
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 11
    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Li/c/b0/e/g/c;

    if-eqz v7, :cond_4

    .line 12
    invoke-virtual {v7}, Li/c/b0/e/g/c;->poll()Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_5

    const/4 v6, 0x1

    :cond_5
    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    .line 13
    iget-object v0, p0, Li/c/b0/e/f/e/z0$a;->j:Li/c/b0/e/k/c;

    iget-object v1, p0, Li/c/b0/e/f/e/z0$a;->f:Li/c/b0/b/c0;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    return-void

    :cond_6
    if-eqz v6, :cond_7

    neg-int v4, v4

    .line 14
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 15
    :cond_7
    invoke-interface {v0, v7}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method d()Li/c/b0/e/g/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/e/g/c<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/z0$a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/e/g/c;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Li/c/b0/e/g/c;

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Li/c/b0/e/g/c;-><init>(I)V

    .line 3
    iget-object v1, p0, Li/c/b0/e/f/e/z0$a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Li/c/b0/e/f/e/z0$a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/e/g/c;

    return-object v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/z0$a;->n:Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/z0$a;->m:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/z0$a;->h:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->dispose()V

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/e/z0$a;->j:Li/c/b0/e/k/c;

    invoke-virtual {v0}, Li/c/b0/e/k/c;->d()V

    return-void
.end method

.method e(Li/c/b0/e/f/e/z0$a$a;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/z0$a<",
            "TT;TR;>.a;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/z0$a;->h:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->c(Li/c/b0/c/c;)Z

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/e/z0$a;->j:Li/c/b0/e/k/c;

    invoke-virtual {p1, p2}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-boolean p1, p0, Li/c/b0/e/f/e/z0$a;->g:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/e/z0$a;->m:Li/c/b0/c/c;

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    .line 5
    iget-object p1, p0, Li/c/b0/e/f/e/z0$a;->h:Li/c/b0/c/a;

    invoke-virtual {p1}, Li/c/b0/c/a;->dispose()V

    .line 6
    :cond_0
    iget-object p1, p0, Li/c/b0/e/f/e/z0$a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 7
    invoke-virtual {p0}, Li/c/b0/e/f/e/z0$a;->b()V

    :cond_1
    return-void
.end method

.method f(Li/c/b0/e/f/e/z0$a$a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/z0$a<",
            "TT;TR;>.a;TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/z0$a;->h:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->c(Li/c/b0/c/c;)Z

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    iget-object v1, p0, Li/c/b0/e/f/e/z0$a;->f:Li/c/b0/b/c0;

    invoke-interface {v1, p2}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Li/c/b0/e/f/e/z0$a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x1

    .line 5
    :cond_0
    iget-object p2, p0, Li/c/b0/e/f/e/z0$a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li/c/b0/e/g/c;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Li/c/b0/e/g/c;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    :cond_1
    iget-object p1, p0, Li/c/b0/e/f/e/z0$a;->j:Li/c/b0/e/k/c;

    iget-object p2, p0, Li/c/b0/e/f/e/z0$a;->f:Li/c/b0/b/c0;

    invoke-virtual {p1, p2}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 9
    :cond_3
    invoke-virtual {p0}, Li/c/b0/e/f/e/z0$a;->d()Li/c/b0/e/g/c;

    move-result-object p1

    .line 10
    monitor-enter p1

    .line 11
    :try_start_0
    invoke-virtual {p1, p2}, Li/c/b0/e/g/c;->offer(Ljava/lang/Object;)Z

    .line 12
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object p1, p0, Li/c/b0/e/f/e/z0$a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 14
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 15
    :cond_4
    invoke-virtual {p0}, Li/c/b0/e/f/e/z0$a;->c()V

    return-void

    :catchall_0
    move-exception p2

    .line 16
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/z0$a;->n:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/z0$a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/z0$a;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/z0$a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/z0$a;->j:Li/c/b0/e/k/c;

    invoke-virtual {v0, p1}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-boolean p1, p0, Li/c/b0/e/f/e/z0$a;->g:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/e/z0$a;->h:Li/c/b0/c/a;

    invoke-virtual {p1}, Li/c/b0/c/a;->dispose()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Li/c/b0/e/f/e/z0$a;->b()V

    :cond_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/z0$a;->k:Li/c/b0/d/o;

    invoke-interface {v0, p1}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null SingleSource"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Li/c/b0/b/i0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/z0$a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 3
    new-instance v0, Li/c/b0/e/f/e/z0$a$a;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/z0$a$a;-><init>(Li/c/b0/e/f/e/z0$a;)V

    .line 4
    iget-boolean v1, p0, Li/c/b0/e/f/e/z0$a;->n:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Li/c/b0/e/f/e/z0$a;->h:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p1, v0}, Li/c/b0/b/i0;->a(Li/c/b0/b/g0;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    iget-object v0, p0, Li/c/b0/e/f/e/z0$a;->m:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 8
    invoke-virtual {p0, p1}, Li/c/b0/e/f/e/z0$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/z0$a;->m:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/z0$a;->m:Li/c/b0/c/c;

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/e/z0$a;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    :cond_0
    return-void
.end method
