.class final Li/c/b0/e/f/e/o$a;
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
    name = "a"
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

.field final o:I

.field final p:Z

.field final q:Li/c/b0/b/d0$c;

.field r:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field s:Li/c/b0/c/c;

.field t:Li/c/b0/c/c;

.field u:J

.field v:J


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/d/q;JLjava/util/concurrent/TimeUnit;IZLi/c/b0/b/d0$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TU;>;",
            "Li/c/b0/d/q<",
            "TU;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "IZ",
            "Li/c/b0/b/d0$c;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/g/a;

    invoke-direct {v0}, Li/c/b0/e/g/a;-><init>()V

    invoke-direct {p0, p1, v0}, Li/c/b0/e/e/s;-><init>(Li/c/b0/b/c0;Li/c/b0/e/c/j;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/o$a;->l:Li/c/b0/d/q;

    .line 3
    iput-wide p3, p0, Li/c/b0/e/f/e/o$a;->m:J

    .line 4
    iput-object p5, p0, Li/c/b0/e/f/e/o$a;->n:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput p6, p0, Li/c/b0/e/f/e/o$a;->o:I

    .line 6
    iput-boolean p7, p0, Li/c/b0/e/f/e/o$a;->p:Z

    .line 7
    iput-object p8, p0, Li/c/b0/e/f/e/o$a;->q:Li/c/b0/b/d0$c;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Li/c/b0/b/c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Li/c/b0/e/f/e/o$a;->h(Li/c/b0/b/c0;Ljava/util/Collection;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/e/s;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/e/s;->i:Z

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/o$a;->t:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/e/o$a;->q:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 5
    monitor-enter p0

    const/4 v0, 0x0

    .line 6
    :try_start_0
    iput-object v0, p0, Li/c/b0/e/f/e/o$a;->r:Ljava/util/Collection;

    .line 7
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
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
    invoke-interface {p1, p2}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/e/s;->i:Z

    return v0
.end method

.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/o$a;->q:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/o$a;->r:Ljava/util/Collection;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Li/c/b0/e/f/e/o$a;->r:Ljava/util/Collection;

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Li/c/b0/e/e/s;->h:Li/c/b0/e/c/j;

    invoke-interface {v1, v0}, Li/c/b0/e/c/k;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Li/c/b0/e/e/s;->j:Z

    .line 8
    invoke-virtual {p0}, Li/c/b0/e/e/s;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Li/c/b0/e/e/s;->h:Li/c/b0/e/c/j;

    iget-object v1, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p0}, Li/c/b0/e/k/q;->c(Li/c/b0/e/c/j;Li/c/b0/b/c0;ZLi/c/b0/c/c;Li/c/b0/e/k/n;)V

    :cond_0
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
    iput-object v0, p0, Li/c/b0/e/f/e/o$a;->r:Ljava/util/Collection;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Li/c/b0/e/f/e/o$a;->q:Li/c/b0/b/d0$c;

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/o$a;->r:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    iget v1, p0, Li/c/b0/e/f/e/o$a;->o:I

    if-ge p1, v1, :cond_1

    .line 6
    monitor-exit p0

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Li/c/b0/e/f/e/o$a;->r:Ljava/util/Collection;

    .line 8
    iget-wide v1, p0, Li/c/b0/e/f/e/o$a;->u:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Li/c/b0/e/f/e/o$a;->u:J

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    iget-boolean p1, p0, Li/c/b0/e/f/e/o$a;->p:Z

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Li/c/b0/e/f/e/o$a;->s:Li/c/b0/c/c;

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    :cond_2
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, v0, p1, p0}, Li/c/b0/e/e/s;->g(Ljava/lang/Object;ZLi/c/b0/c/c;)V

    .line 13
    :try_start_1
    iget-object p1, p0, Li/c/b0/e/f/e/o$a;->l:Li/c/b0/d/q;

    invoke-interface {p1}, Li/c/b0/d/q;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The buffer supplied is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    monitor-enter p0

    .line 15
    :try_start_2
    iput-object p1, p0, Li/c/b0/e/f/e/o$a;->r:Ljava/util/Collection;

    .line 16
    iget-wide v0, p0, Li/c/b0/e/f/e/o$a;->v:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Li/c/b0/e/f/e/o$a;->v:J

    .line 17
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    iget-boolean p1, p0, Li/c/b0/e/f/e/o$a;->p:Z

    if-eqz p1, :cond_3

    .line 19
    iget-object v0, p0, Li/c/b0/e/f/e/o$a;->q:Li/c/b0/b/d0$c;

    iget-wide v4, p0, Li/c/b0/e/f/e/o$a;->m:J

    iget-object v6, p0, Li/c/b0/e/f/e/o$a;->n:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, Li/c/b0/b/d0$c;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    move-result-object p1

    iput-object p1, p0, Li/c/b0/e/f/e/o$a;->s:Li/c/b0/c/c;

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 20
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 21
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 22
    iget-object v0, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    .line 23
    invoke-virtual {p0}, Li/c/b0/e/f/e/o$a;->dispose()V

    return-void

    :catchall_2
    move-exception p1

    .line 24
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 7

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/o$a;->t:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/o$a;->t:Li/c/b0/c/c;

    .line 3
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/o$a;->l:Li/c/b0/d/q;

    invoke-interface {v0}, Li/c/b0/d/q;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-object v0, p0, Li/c/b0/e/f/e/o$a;->r:Ljava/util/Collection;

    .line 5
    iget-object p1, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 6
    iget-object v0, p0, Li/c/b0/e/f/e/o$a;->q:Li/c/b0/b/d0$c;

    iget-wide v4, p0, Li/c/b0/e/f/e/o$a;->m:J

    iget-object v6, p0, Li/c/b0/e/f/e/o$a;->n:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, Li/c/b0/b/d0$c;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    move-result-object p1

    iput-object p1, p0, Li/c/b0/e/f/e/o$a;->s:Li/c/b0/c/c;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    .line 9
    iget-object p1, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    invoke-static {v0, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V

    .line 10
    iget-object p1, p0, Li/c/b0/e/f/e/o$a;->q:Li/c/b0/b/d0$c;

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/o$a;->l:Li/c/b0/d/q;

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
    iget-object v1, p0, Li/c/b0/e/f/e/o$a;->r:Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 4
    iget-wide v2, p0, Li/c/b0/e/f/e/o$a;->u:J

    iget-wide v4, p0, Li/c/b0/e/f/e/o$a;->v:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iput-object v0, p0, Li/c/b0/e/f/e/o$a;->r:Ljava/util/Collection;

    .line 6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v1, v0, p0}, Li/c/b0/e/e/s;->g(Ljava/lang/Object;ZLi/c/b0/c/c;)V

    return-void

    .line 8
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 10
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 11
    invoke-virtual {p0}, Li/c/b0/e/f/e/o$a;->dispose()V

    .line 12
    iget-object v1, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    invoke-interface {v1, v0}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
