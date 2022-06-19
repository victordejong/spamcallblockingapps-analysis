.class public final Li/c/b0/g/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
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
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:Z

.field h:Li/c/b0/c/c;

.field i:Z

.field j:Li/c/b0/e/k/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/k/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile k:Z


# direct methods
.method public constructor <init>(Li/c/b0/b/c0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Li/c/b0/g/f;-><init>(Li/c/b0/b/c0;Z)V

    return-void
.end method

.method public constructor <init>(Li/c/b0/b/c0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Li/c/b0/g/f;->f:Li/c/b0/b/c0;

    .line 4
    iput-boolean p2, p0, Li/c/b0/g/f;->g:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    :cond_0
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Li/c/b0/g/f;->j:Li/c/b0/e/k/a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Li/c/b0/g/f;->i:Z

    .line 4
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Li/c/b0/g/f;->j:Li/c/b0/e/k/a;

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Li/c/b0/g/f;->f:Li/c/b0/b/c0;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/a;->a(Li/c/b0/b/c0;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/g/f;->k:Z

    .line 2
    iget-object v0, p0, Li/c/b0/g/f;->h:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/g/f;->h:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Li/c/b0/g/f;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Li/c/b0/g/f;->k:Z

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    iget-boolean v0, p0, Li/c/b0/g/f;->i:Z

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Li/c/b0/g/f;->j:Li/c/b0/e/k/a;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Li/c/b0/e/k/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Li/c/b0/e/k/a;-><init>(I)V

    .line 8
    iput-object v0, p0, Li/c/b0/g/f;->j:Li/c/b0/e/k/a;

    .line 9
    :cond_2
    invoke-static {}, Li/c/b0/e/k/m;->complete()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/e/k/a;->c(Ljava/lang/Object;)V

    .line 10
    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Li/c/b0/g/f;->k:Z

    .line 12
    iput-boolean v0, p0, Li/c/b0/g/f;->i:Z

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v0, p0, Li/c/b0/g/f;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

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
    iget-boolean v0, p0, Li/c/b0/g/f;->k:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Li/c/b0/g/f;->k:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-boolean v0, p0, Li/c/b0/g/f;->i:Z

    if-eqz v0, :cond_4

    .line 6
    iput-boolean v1, p0, Li/c/b0/g/f;->k:Z

    .line 7
    iget-object v0, p0, Li/c/b0/g/f;->j:Li/c/b0/e/k/a;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Li/c/b0/e/k/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Li/c/b0/e/k/a;-><init>(I)V

    .line 9
    iput-object v0, p0, Li/c/b0/g/f;->j:Li/c/b0/e/k/a;

    .line 10
    :cond_2
    invoke-static {p1}, Li/c/b0/e/k/m;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    iget-boolean v1, p0, Li/c/b0/g/f;->g:Z

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v0, p1}, Li/c/b0/e/k/a;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {v0, p1}, Li/c/b0/e/k/a;->e(Ljava/lang/Object;)V

    .line 14
    :goto_0
    monitor-exit p0

    return-void

    .line 15
    :cond_4
    iput-boolean v1, p0, Li/c/b0/g/f;->k:Z

    .line 16
    iput-boolean v1, p0, Li/c/b0/g/f;->i:Z

    const/4 v1, 0x0

    .line 17
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    .line 18
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    return-void

    .line 19
    :cond_5
    iget-object v0, p0, Li/c/b0/g/f;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 20
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
    iget-boolean v0, p0, Li/c/b0/g/f;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Li/c/b0/g/f;->h:Li/c/b0/c/c;

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    const-string p1, "onNext called with a null value."

    .line 3
    invoke-static {p1}, Li/c/b0/e/k/j;->b(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/c/b0/g/f;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_1
    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v0, p0, Li/c/b0/g/f;->k:Z

    if-eqz v0, :cond_2

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_2
    iget-boolean v0, p0, Li/c/b0/g/f;->i:Z

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Li/c/b0/g/f;->j:Li/c/b0/e/k/a;

    if-nez v0, :cond_3

    .line 9
    new-instance v0, Li/c/b0/e/k/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Li/c/b0/e/k/a;-><init>(I)V

    .line 10
    iput-object v0, p0, Li/c/b0/g/f;->j:Li/c/b0/e/k/a;

    .line 11
    :cond_3
    invoke-static {p1}, Li/c/b0/e/k/m;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/b0/e/k/a;->c(Ljava/lang/Object;)V

    .line 12
    monitor-exit p0

    return-void

    :cond_4
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Li/c/b0/g/f;->i:Z

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v0, p0, Li/c/b0/g/f;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0}, Li/c/b0/g/f;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/g/f;->h:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/g/f;->h:Li/c/b0/c/c;

    .line 3
    iget-object p1, p0, Li/c/b0/g/f;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    :cond_0
    return-void
.end method
