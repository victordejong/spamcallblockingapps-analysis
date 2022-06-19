.class final Li/c/b0/e/f/e/n$b;
.super Li/c/b0/e/e/s;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/n;
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
        "-TT;>;B:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/e/s<",
        "TT;TU;TU;>;",
        "Li/c/b0/b/c0<",
        "TT;>;",
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

.field final m:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "TB;>;"
        }
    .end annotation
.end field

.field n:Li/c/b0/c/c;

.field o:Li/c/b0/c/c;

.field p:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/d/q;Li/c/b0/b/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TU;>;",
            "Li/c/b0/d/q<",
            "TU;>;",
            "Li/c/b0/b/a0<",
            "TB;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/g/a;

    invoke-direct {v0}, Li/c/b0/e/g/a;-><init>()V

    invoke-direct {p0, p1, v0}, Li/c/b0/e/e/s;-><init>(Li/c/b0/b/c0;Li/c/b0/e/c/j;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/n$b;->l:Li/c/b0/d/q;

    .line 3
    iput-object p3, p0, Li/c/b0/e/f/e/n$b;->m:Li/c/b0/b/a0;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Li/c/b0/b/c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Li/c/b0/e/f/e/n$b;->h(Li/c/b0/b/c0;Ljava/util/Collection;)V

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
    iget-object v0, p0, Li/c/b0/e/f/e/n$b;->o:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/e/n$b;->n:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 5
    invoke-virtual {p0}, Li/c/b0/e/e/s;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Li/c/b0/e/e/s;->h:Li/c/b0/e/c/j;

    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

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
    iget-object p1, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    invoke-interface {p1, p2}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method i()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/n$b;->l:Li/c/b0/d/q;

    invoke-interface {v0}, Li/c/b0/d/q;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_1
    iget-object v1, p0, Li/c/b0/e/f/e/n$b;->p:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    iput-object v0, p0, Li/c/b0/e/f/e/n$b;->p:Ljava/util/Collection;

    .line 6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
    invoke-virtual {p0}, Li/c/b0/e/f/e/n$b;->dispose()V

    .line 11
    iget-object v1, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    invoke-interface {v1, v0}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

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
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/n$b;->p:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Li/c/b0/e/f/e/n$b;->p:Ljava/util/Collection;

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Li/c/b0/e/e/s;->h:Li/c/b0/e/c/j;

    invoke-interface {v1, v0}, Li/c/b0/e/c/k;->offer(Ljava/lang/Object;)Z

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

    invoke-static {v0, v1, v2, p0, p0}, Li/c/b0/e/k/q;->c(Li/c/b0/e/c/j;Li/c/b0/b/c0;ZLi/c/b0/c/c;Li/c/b0/e/k/n;)V

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

    .line 1
    invoke-virtual {p0}, Li/c/b0/e/f/e/n$b;->dispose()V

    .line 2
    iget-object v0, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    return-void
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
    iget-object v0, p0, Li/c/b0/e/f/e/n$b;->p:Ljava/util/Collection;

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
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/n$b;->n:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/n$b;->n:Li/c/b0/c/c;

    .line 3
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/n$b;->l:Li/c/b0/d/q;

    invoke-interface {v0}, Li/c/b0/d/q;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-object v0, p0, Li/c/b0/e/f/e/n$b;->p:Ljava/util/Collection;

    .line 5
    new-instance p1, Li/c/b0/e/f/e/n$a;

    invoke-direct {p1, p0}, Li/c/b0/e/f/e/n$a;-><init>(Li/c/b0/e/f/e/n$b;)V

    .line 6
    iput-object p1, p0, Li/c/b0/e/f/e/n$b;->o:Li/c/b0/c/c;

    .line 7
    iget-object v0, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    invoke-interface {v0, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 8
    iget-boolean v0, p0, Li/c/b0/e/e/s;->i:Z

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Li/c/b0/e/f/e/n$b;->m:Li/c/b0/b/a0;

    invoke-interface {v0, p1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Li/c/b0/e/e/s;->i:Z

    .line 12
    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    .line 13
    iget-object p1, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    invoke-static {v0, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V

    :cond_0
    :goto_0
    return-void
.end method
