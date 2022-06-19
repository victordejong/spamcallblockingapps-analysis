.class final Li/c/b0/i/b;
.super Li/c/b0/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/i/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/i/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/i/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field h:Z

.field i:Li/c/b0/e/k/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/k/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile j:Z


# direct methods
.method constructor <init>(Li/c/b0/i/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/i/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/i/a;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/i/b;->g:Li/c/b0/i/a;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Li/c/b0/i/b;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Li/c/b0/i/b;->j:Z

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Li/c/b0/i/b;->j:Z

    .line 6
    iget-boolean v1, p0, Li/c/b0/i/b;->h:Z

    if-eqz v1, :cond_3

    .line 7
    iget-object v0, p0, Li/c/b0/i/b;->i:Li/c/b0/e/k/a;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Li/c/b0/e/k/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Li/c/b0/e/k/a;-><init>(I)V

    .line 9
    iput-object v0, p0, Li/c/b0/i/b;->i:Li/c/b0/e/k/a;

    .line 10
    :cond_2
    invoke-static {}, Li/c/b0/e/k/m;->complete()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/e/k/a;->c(Ljava/lang/Object;)V

    .line 11
    monitor-exit p0

    return-void

    .line 12
    :cond_3
    iput-boolean v0, p0, Li/c/b0/i/b;->h:Z

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v0, p0, Li/c/b0/i/b;->g:Li/c/b0/i/a;

    invoke-interface {v0}, Lo/a/b;->onComplete()V

    return-void

    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Li/c/b0/i/b;->j:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Li/c/b0/i/b;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iput-boolean v1, p0, Li/c/b0/i/b;->j:Z

    .line 6
    iget-boolean v0, p0, Li/c/b0/i/b;->h:Z

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Li/c/b0/i/b;->i:Li/c/b0/e/k/a;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Li/c/b0/e/k/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Li/c/b0/e/k/a;-><init>(I)V

    .line 9
    iput-object v0, p0, Li/c/b0/i/b;->i:Li/c/b0/e/k/a;

    .line 10
    :cond_2
    invoke-static {p1}, Li/c/b0/e/k/m;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/b0/e/k/a;->e(Ljava/lang/Object;)V

    .line 11
    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 12
    iput-boolean v1, p0, Li/c/b0/i/b;->h:Z

    const/4 v1, 0x0

    .line 13
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 14
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    return-void

    .line 15
    :cond_4
    iget-object v0, p0, Li/c/b0/i/b;->g:Li/c/b0/i/a;

    invoke-interface {v0, p1}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Li/c/b0/i/b;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Li/c/b0/i/b;->j:Z

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    iget-boolean v0, p0, Li/c/b0/i/b;->h:Z

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Li/c/b0/i/b;->i:Li/c/b0/e/k/a;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Li/c/b0/e/k/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Li/c/b0/e/k/a;-><init>(I)V

    .line 8
    iput-object v0, p0, Li/c/b0/i/b;->i:Li/c/b0/e/k/a;

    .line 9
    :cond_2
    invoke-static {p1}, Li/c/b0/e/k/m;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/b0/e/k/a;->c(Ljava/lang/Object;)V

    .line 10
    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Li/c/b0/i/b;->h:Z

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v0, p0, Li/c/b0/i/b;->g:Li/c/b0/i/a;

    invoke-interface {v0, p1}, Lo/a/b;->onNext(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Li/c/b0/i/b;->y()V

    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSubscribe(Lo/a/c;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Li/c/b0/i/b;->j:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Li/c/b0/i/b;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Li/c/b0/i/b;->h:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Li/c/b0/i/b;->i:Li/c/b0/e/k/a;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Li/c/b0/e/k/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Li/c/b0/e/k/a;-><init>(I)V

    .line 7
    iput-object v0, p0, Li/c/b0/i/b;->i:Li/c/b0/e/k/a;

    .line 8
    :cond_1
    invoke-static {p1}, Li/c/b0/e/k/m;->subscription(Lo/a/c;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/b0/e/k/a;->c(Ljava/lang/Object;)V

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_2
    iput-boolean v1, p0, Li/c/b0/i/b;->h:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 11
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 12
    invoke-interface {p1}, Lo/a/c;->cancel()V

    goto :goto_2

    .line 13
    :cond_4
    iget-object v0, p0, Li/c/b0/i/b;->g:Li/c/b0/i/a;

    invoke-interface {v0, p1}, Li/c/b0/b/o;->onSubscribe(Lo/a/c;)V

    .line 14
    invoke-virtual {p0}, Li/c/b0/i/b;->y()V

    :goto_2
    return-void
.end method

.method protected u(Lo/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/i/b;->g:Li/c/b0/i/a;

    invoke-virtual {v0, p1}, Li/c/b0/b/l;->a(Lo/a/b;)V

    return-void
.end method

.method y()V
    .locals 2

    .line 1
    :goto_0
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Li/c/b0/i/b;->i:Li/c/b0/e/k/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Li/c/b0/i/b;->h:Z

    .line 4
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Li/c/b0/i/b;->i:Li/c/b0/e/k/a;

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Li/c/b0/i/b;->g:Li/c/b0/i/a;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/a;->b(Lo/a/b;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
