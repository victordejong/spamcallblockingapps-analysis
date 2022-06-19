.class final Li/c/b0/e/f/e/b$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Ljava/util/Iterator;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Li/c/b0/c/c;",
        ">;",
        "Li/c/b0/b/c0<",
        "TT;>;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Li/c/b0/c/c;"
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

.field final g:Ljava/util/concurrent/locks/Lock;

.field final h:Ljava/util/concurrent/locks/Condition;

.field volatile i:Z

.field volatile j:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    new-instance v0, Li/c/b0/e/g/c;

    invoke-direct {v0, p1}, Li/c/b0/e/g/c;-><init>(I)V

    iput-object v0, p0, Li/c/b0/e/f/e/b$a;->f:Li/c/b0/e/g/c;

    .line 3
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/b$a;->g:Ljava/util/concurrent/locks/Lock;

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Li/c/b0/e/f/e/b$a;->h:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/b$a;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/b$a;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/b$a;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Li/c/b0/e/f/e/b$a;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4
    throw v0
.end method

.method public dispose()V
    .locals 0

    .line 1
    invoke-static {p0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/b$a;->a()V

    return-void
.end method

.method public hasNext()Z
    .locals 3

    .line 1
    :goto_0
    invoke-virtual {p0}, Li/c/b0/e/f/e/b$a;->isDisposed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/b$a;->j:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {v0}, Li/c/b0/e/k/j;->g(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 4
    :cond_1
    iget-boolean v0, p0, Li/c/b0/e/f/e/b$a;->i:Z

    .line 5
    iget-object v2, p0, Li/c/b0/e/f/e/b$a;->f:Li/c/b0/e/g/c;

    invoke-virtual {v2}, Li/c/b0/e/g/c;->isEmpty()Z

    move-result v2

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Li/c/b0/e/f/e/b$a;->j:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    if-eqz v2, :cond_3

    return v1

    .line 7
    :cond_2
    invoke-static {v0}, Li/c/b0/e/k/j;->g(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3
    if-eqz v2, :cond_5

    .line 8
    :try_start_0
    invoke-static {}, Li/c/b0/e/k/e;->b()V

    .line 9
    iget-object v0, p0, Li/c/b0/e/f/e/b$a;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Li/c/b0/e/f/e/b$a;->i:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Li/c/b0/e/f/e/b$a;->f:Li/c/b0/e/g/c;

    invoke-virtual {v0}, Li/c/b0/e/g/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Li/c/b0/e/f/e/b$a;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    iget-object v0, p0, Li/c/b0/e/f/e/b$a;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 12
    :cond_4
    :try_start_2
    iget-object v0, p0, Li/c/b0/e/f/e/b$a;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Li/c/b0/e/f/e/b$a;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 13
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 14
    invoke-static {p0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 15
    invoke-virtual {p0}, Li/c/b0/e/f/e/b$a;->a()V

    .line 16
    invoke-static {v0}, Li/c/b0/e/k/j;->g(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/c/c;

    invoke-static {v0}, Li/c/b0/e/a/c;->isDisposed(Li/c/b0/c/c;)Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li/c/b0/e/f/e/b$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/b$a;->f:Li/c/b0/e/g/c;

    invoke-virtual {v0}, Li/c/b0/e/g/c;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/b$a;->i:Z

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/b$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/c/b0/e/f/e/b$a;->j:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Li/c/b0/e/f/e/b$a;->i:Z

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/f/e/b$a;->a()V

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
    iget-object v0, p0, Li/c/b0/e/f/e/b$a;->f:Li/c/b0/e/g/c;

    invoke-virtual {v0, p1}, Li/c/b0/e/g/c;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/b$a;->a()V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/c/b0/e/a/c;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    return-void
.end method

.method public remove()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
