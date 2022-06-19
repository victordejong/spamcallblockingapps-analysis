.class final Li/c/b0/e/f/e/o$b;
.super Li/c/b0/e/e/s;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Li/c/b0/e/e/s<",
        "TT;TU;TU;>;",
        "Ljava/lang/Runnable;",
        "Li/c/b0/c/c;"
    }
.end annotation


# instance fields
.field final l:Li/c/b0/d/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/q<",
            "TU;>;"
        }
    .end annotation
.end field

.field final m:J

.field final n:Ljava/util/concurrent/TimeUnit;

.field final o:Li/c/b0/b/d0;

.field p:Li/c/b0/c/c;

.field q:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field final r:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/b0/c/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/d/q;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TU;>;",
            "Li/c/b0/d/q<",
            "TU;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/g/a;

    invoke-direct {v0}, Li/c/b0/e/g/a;-><init>()V

    invoke-direct {p0, p1, v0}, Li/c/b0/e/e/s;-><init>(Li/c/b0/b/c0;Li/c/b0/e/c/j;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/o$b;->r:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/o$b;->l:Li/c/b0/d/q;

    .line 4
    iput-wide p3, p0, Li/c/b0/e/f/e/o$b;->m:J

    .line 5
    iput-object p5, p0, Li/c/b0/e/f/e/o$b;->n:Ljava/util/concurrent/TimeUnit;

    .line 6
    iput-object p6, p0, Li/c/b0/e/f/e/o$b;->o:Li/c/b0/b/d0;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Li/c/b0/b/c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Li/c/b0/e/f/e/o$b;->h(Li/c/b0/b/c0;Ljava/util/Collection;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/o$b;->r:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/o$b;->p:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void
.end method

.method public h(Li/c/b0/b/c0;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TU;>;TU;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    invoke-interface {p1, p2}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/o$b;->r:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/o$b;->q:Ljava/util/Collection;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Li/c/b0/e/f/e/o$b;->q:Ljava/util/Collection;

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    iget-object v2, p0, Li/c/b0/e/e/s;->h:Li/c/b0/e/c/j;

    invoke-interface {v2, v0}, Li/c/b0/e/c/k;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Li/c/b0/e/e/s;->j:Z

    .line 7
    invoke-virtual {p0}, Li/c/b0/e/e/s;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Li/c/b0/e/e/s;->h:Li/c/b0/e/c/j;

    iget-object v2, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p0}, Li/c/b0/e/k/q;->c(Li/c/b0/e/c/j;Li/c/b0/b/c0;ZLi/c/b0/c/c;Li/c/b0/e/k/n;)V

    .line 9
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/o$b;->r:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Li/c/b0/e/f/e/o$b;->q:Ljava/util/Collection;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Li/c/b0/e/f/e/o$b;->r:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/o$b;->q:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 7

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/o$b;->p:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/o$b;->p:Li/c/b0/c/c;

    .line 3
    :try_start_0
    iget-object p1, p0, Li/c/b0/e/f/e/o$b;->l:Li/c/b0/d/q;

    invoke-interface {p1}, Li/c/b0/d/q;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The buffer supplied is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-object p1, p0, Li/c/b0/e/f/e/o$b;->q:Ljava/util/Collection;

    .line 5
    iget-object p1, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 6
    iget-object p1, p0, Li/c/b0/e/f/e/o$b;->r:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/c/b0/c/c;

    invoke-static {p1}, Li/c/b0/e/a/c;->isDisposed(Li/c/b0/c/c;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object v0, p0, Li/c/b0/e/f/e/o$b;->o:Li/c/b0/b/d0;

    iget-wide v4, p0, Li/c/b0/e/f/e/o$b;->m:J

    iget-object v6, p0, Li/c/b0/e/f/e/o$b;->n:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, Li/c/b0/b/d0;->f(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    move-result-object p1

    .line 8
    iget-object v0, p0, Li/c/b0/e/f/e/o$b;->r:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->set(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10
    invoke-virtual {p0}, Li/c/b0/e/f/e/o$b;->dispose()V

    .line 11
    iget-object v0, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    invoke-static {p1, v0}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/o$b;->l:Li/c/b0/d/q;

    invoke-interface {v0}, Li/c/b0/d/q;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The bufferSupplier returned a null buffer"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_1
    iget-object v1, p0, Li/c/b0/e/f/e/o$b;->q:Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 4
    iput-object v0, p0, Li/c/b0/e/f/e/o$b;->q:Ljava/util/Collection;

    .line 5
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 6
    iget-object v0, p0, Li/c/b0/e/f/e/o$b;->r:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v1, v0, p0}, Li/c/b0/e/e/s;->f(Ljava/lang/Object;ZLi/c/b0/c/c;)V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 9
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10
    iget-object v1, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    invoke-interface {v1, v0}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    .line 11
    invoke-virtual {p0}, Li/c/b0/e/f/e/o$b;->dispose()V

    return-void
.end method
