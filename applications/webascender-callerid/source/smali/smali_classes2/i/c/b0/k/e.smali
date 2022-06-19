.class public final Li/c/b0/k/e;
.super Li/c/b0/k/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/k/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/k/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/e/g/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/g/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/b0/b/c0<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final i:Z

.field volatile j:Z

.field volatile k:Z

.field l:Ljava/lang/Throwable;

.field final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final n:Li/c/b0/e/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/e/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field o:Z


# direct methods
.method constructor <init>(ILjava/lang/Runnable;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Li/c/b0/k/d;-><init>()V

    .line 2
    new-instance v0, Li/c/b0/e/g/c;

    invoke-direct {v0, p1}, Li/c/b0/e/g/c;-><init>(I)V

    iput-object v0, p0, Li/c/b0/k/e;->f:Li/c/b0/e/g/c;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Li/c/b0/k/e;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    iput-boolean p3, p0, Li/c/b0/k/e;->i:Z

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Li/c/b0/k/e;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Li/c/b0/k/e;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance p1, Li/c/b0/k/e$a;

    invoke-direct {p1, p0}, Li/c/b0/k/e$a;-><init>(Li/c/b0/k/e;)V

    iput-object p1, p0, Li/c/b0/k/e;->n:Li/c/b0/e/e/b;

    return-void
.end method

.method public static b()Li/c/b0/k/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Li/c/b0/k/e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/k/e;

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Li/c/b0/k/e;-><init>(ILjava/lang/Runnable;Z)V

    return-object v0
.end method

.method public static c(ILjava/lang/Runnable;)Li/c/b0/k/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Runnable;",
            ")",
            "Li/c/b0/k/e<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "capacityHint"

    .line 1
    invoke-static {p0, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    const-string v0, "onTerminate"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li/c/b0/k/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Li/c/b0/k/e;-><init>(ILjava/lang/Runnable;Z)V

    return-object v0
.end method


# virtual methods
.method d()V
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/b0/k/e;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Li/c/b0/k/e;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method e()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/k/e;->n:Li/c/b0/e/e/b;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/b0/k/e;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/b/c0;

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-boolean v1, p0, Li/c/b0/k/e;->o:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Li/c/b0/k/e;->f(Li/c/b0/b/c0;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Li/c/b0/k/e;->g(Li/c/b0/b/c0;)V

    :goto_1
    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Li/c/b0/k/e;->n:Li/c/b0/e/e/b;

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 7
    :cond_3
    iget-object v0, p0, Li/c/b0/k/e;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/b/c0;

    goto :goto_0
.end method

.method f(Li/c/b0/b/c0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/k/e;->f:Li/c/b0/e/g/c;

    .line 2
    iget-boolean v1, p0, Li/c/b0/k/e;->i:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 3
    :cond_0
    iget-boolean v3, p0, Li/c/b0/k/e;->j:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 4
    iget-object p1, p0, Li/c/b0/k/e;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    iget-boolean v3, p0, Li/c/b0/k/e;->k:Z

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {p0, v0, p1}, Li/c/b0/k/e;->i(Li/c/b0/e/c/k;Li/c/b0/b/c0;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-interface {p1, v4}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {p0, p1}, Li/c/b0/k/e;->h(Li/c/b0/b/c0;)V

    return-void

    .line 9
    :cond_3
    iget-object v3, p0, Li/c/b0/k/e;->n:Li/c/b0/e/e/b;

    neg-int v2, v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void
.end method

.method g(Li/c/b0/b/c0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/k/e;->f:Li/c/b0/e/g/c;

    .line 2
    iget-boolean v1, p0, Li/c/b0/k/e;->i:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 3
    :cond_0
    :goto_0
    iget-boolean v5, p0, Li/c/b0/k/e;->j:Z

    if-eqz v5, :cond_1

    .line 4
    iget-object p1, p0, Li/c/b0/k/e;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    return-void

    .line 6
    :cond_1
    iget-boolean v5, p0, Li/c/b0/k/e;->k:Z

    .line 7
    iget-object v6, p0, Li/c/b0/k/e;->f:Li/c/b0/e/g/c;

    invoke-virtual {v6}, Li/c/b0/e/g/c;->poll()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-eqz v5, :cond_5

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 8
    invoke-virtual {p0, v0, p1}, Li/c/b0/k/e;->i(Li/c/b0/e/c/k;Li/c/b0/b/c0;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    const/4 v3, 0x0

    :cond_4
    if-eqz v8, :cond_5

    .line 9
    invoke-virtual {p0, p1}, Li/c/b0/k/e;->h(Li/c/b0/b/c0;)V

    return-void

    :cond_5
    if-eqz v8, :cond_6

    .line 10
    iget-object v5, p0, Li/c/b0/k/e;->n:Li/c/b0/e/e/b;

    neg-int v4, v4

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 11
    :cond_6
    invoke-interface {p1, v6}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method h(Li/c/b0/b/c0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/k/e;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Li/c/b0/k/e;->l:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, v0}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Li/c/b0/b/c0;->onComplete()V

    :goto_0
    return-void
.end method

.method i(Li/c/b0/e/c/k;Li/c/b0/b/c0;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/c/k<",
            "TT;>;",
            "Li/c/b0/b/c0<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/k/e;->l:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Li/c/b0/k/e;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 3
    invoke-interface {p1}, Li/c/b0/e/c/k;->clear()V

    .line 4
    invoke-interface {p2, v0}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/k/e;->k:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Li/c/b0/k/e;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/k/e;->k:Z

    .line 3
    invoke-virtual {p0}, Li/c/b0/k/e;->d()V

    .line 4
    invoke-virtual {p0}, Li/c/b0/k/e;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "onError called with a null Throwable."

    .line 1
    invoke-static {p1, v0}, Li/c/b0/e/k/j;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Li/c/b0/k/e;->k:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Li/c/b0/k/e;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Li/c/b0/k/e;->l:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Li/c/b0/k/e;->k:Z

    .line 5
    invoke-virtual {p0}, Li/c/b0/k/e;->d()V

    .line 6
    invoke-virtual {p0}, Li/c/b0/k/e;->e()V

    return-void

    .line 7
    :cond_1
    :goto_0
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "onNext called with a null value."

    .line 1
    invoke-static {p1, v0}, Li/c/b0/e/k/j;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Li/c/b0/k/e;->k:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Li/c/b0/k/e;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Li/c/b0/k/e;->f:Li/c/b0/e/g/c;

    invoke-virtual {v0, p1}, Li/c/b0/e/g/c;->offer(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Li/c/b0/k/e;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/k/e;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Li/c/b0/k/e;->j:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    :cond_1
    return-void
.end method

.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/k/e;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Li/c/b0/k/e;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Li/c/b0/k/e;->n:Li/c/b0/e/e/b;

    invoke-interface {p1, v0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    iget-object v0, p0, Li/c/b0/k/e;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 4
    iget-boolean p1, p0, Li/c/b0/k/e;->j:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Li/c/b0/k/e;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Li/c/b0/k/e;->e()V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only a single observer allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V

    :goto_0
    return-void
.end method
