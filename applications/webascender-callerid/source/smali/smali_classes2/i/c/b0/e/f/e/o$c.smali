.class final Li/c/b0/e/f/e/o$c;
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
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/o$c$b;,
        Li/c/b0/e/f/e/o$c$a;
    }
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

.field final n:J

.field final o:Ljava/util/concurrent/TimeUnit;

.field final p:Li/c/b0/b/d0$c;

.field final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TU;>;"
        }
    .end annotation
.end field

.field r:Li/c/b0/c/c;


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/d/q;JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TU;>;",
            "Li/c/b0/d/q<",
            "TU;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0$c;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/g/a;

    invoke-direct {v0}, Li/c/b0/e/g/a;-><init>()V

    invoke-direct {p0, p1, v0}, Li/c/b0/e/e/s;-><init>(Li/c/b0/b/c0;Li/c/b0/e/c/j;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/o$c;->l:Li/c/b0/d/q;

    .line 3
    iput-wide p3, p0, Li/c/b0/e/f/e/o$c;->m:J

    .line 4
    iput-wide p5, p0, Li/c/b0/e/f/e/o$c;->n:J

    .line 5
    iput-object p7, p0, Li/c/b0/e/f/e/o$c;->o:Ljava/util/concurrent/TimeUnit;

    .line 6
    iput-object p8, p0, Li/c/b0/e/f/e/o$c;->p:Li/c/b0/b/d0$c;

    .line 7
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/o$c;->q:Ljava/util/List;

    return-void
.end method

.method static synthetic i(Li/c/b0/e/f/e/o$c;Ljava/lang/Object;ZLi/c/b0/c/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Li/c/b0/e/e/s;->g(Ljava/lang/Object;ZLi/c/b0/c/c;)V

    return-void
.end method

.method static synthetic j(Li/c/b0/e/f/e/o$c;Ljava/lang/Object;ZLi/c/b0/c/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Li/c/b0/e/e/s;->g(Ljava/lang/Object;ZLi/c/b0/c/c;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Li/c/b0/b/c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Li/c/b0/e/f/e/o$c;->h(Li/c/b0/b/c0;Ljava/util/Collection;)V

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
    invoke-virtual {p0}, Li/c/b0/e/f/e/o$c;->k()V

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/e/o$c;->r:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 5
    iget-object v0, p0, Li/c/b0/e/f/e/o$c;->p:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    :cond_0
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

.method k()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/o$c;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onComplete()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Li/c/b0/e/f/e/o$c;->q:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    iget-object v1, p0, Li/c/b0/e/f/e/o$c;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 6
    iget-object v2, p0, Li/c/b0/e/e/s;->h:Li/c/b0/e/c/j;

    invoke-interface {v2, v1}, Li/c/b0/e/c/k;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Li/c/b0/e/e/s;->j:Z

    .line 8
    invoke-virtual {p0}, Li/c/b0/e/e/s;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Li/c/b0/e/e/s;->h:Li/c/b0/e/c/j;

    iget-object v1, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    const/4 v2, 0x0

    iget-object v3, p0, Li/c/b0/e/f/e/o$c;->p:Li/c/b0/b/d0$c;

    invoke-static {v0, v1, v2, v3, p0}, Li/c/b0/e/k/q;->c(Li/c/b0/e/c/j;Li/c/b0/b/c0;ZLi/c/b0/c/c;Li/c/b0/e/k/n;)V

    :cond_1
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

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/e/s;->j:Z

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/o$c;->k()V

    .line 3
    iget-object v0, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/e/o$c;->p:Li/c/b0/b/d0$c;

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

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
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/o$c;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
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
    .locals 8

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/o$c;->r:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/o$c;->r:Li/c/b0/c/c;

    .line 3
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/o$c;->l:Li/c/b0/d/q;

    invoke-interface {v0}, Li/c/b0/d/q;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/e/o$c;->q:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 6
    iget-object v1, p0, Li/c/b0/e/f/e/o$c;->p:Li/c/b0/b/d0$c;

    iget-wide v5, p0, Li/c/b0/e/f/e/o$c;->n:J

    iget-object v7, p0, Li/c/b0/e/f/e/o$c;->o:Ljava/util/concurrent/TimeUnit;

    move-object v2, p0

    move-wide v3, v5

    invoke-virtual/range {v1 .. v7}, Li/c/b0/b/d0$c;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    .line 7
    iget-object p1, p0, Li/c/b0/e/f/e/o$c;->p:Li/c/b0/b/d0$c;

    new-instance v1, Li/c/b0/e/f/e/o$c$b;

    invoke-direct {v1, p0, v0}, Li/c/b0/e/f/e/o$c$b;-><init>(Li/c/b0/e/f/e/o$c;Ljava/util/Collection;)V

    iget-wide v2, p0, Li/c/b0/e/f/e/o$c;->m:J

    iget-object v0, p0, Li/c/b0/e/f/e/o$c;->o:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3, v0}, Li/c/b0/b/d0$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 9
    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    .line 10
    iget-object p1, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    invoke-static {v0, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V

    .line 11
    iget-object p1, p0, Li/c/b0/e/f/e/o$c;->p:Li/c/b0/b/d0$c;

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/e/s;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/o$c;->l:Li/c/b0/d/q;

    invoke-interface {v0}, Li/c/b0/d/q;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The bufferSupplier returned a null buffer"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_1
    iget-boolean v1, p0, Li/c/b0/e/e/s;->i:Z

    if-eqz v1, :cond_1

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Li/c/b0/e/f/e/o$c;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    iget-object v1, p0, Li/c/b0/e/f/e/o$c;->p:Li/c/b0/b/d0$c;

    new-instance v2, Li/c/b0/e/f/e/o$c$a;

    invoke-direct {v2, p0, v0}, Li/c/b0/e/f/e/o$c$a;-><init>(Li/c/b0/e/f/e/o$c;Ljava/util/Collection;)V

    iget-wide v3, p0, Li/c/b0/e/f/e/o$c;->m:J

    iget-object v0, p0, Li/c/b0/e/f/e/o$c;->o:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, v0}, Li/c/b0/b/d0$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 10
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 11
    iget-object v1, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    invoke-interface {v1, v0}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {p0}, Li/c/b0/e/f/e/o$c;->dispose()V

    return-void
.end method
