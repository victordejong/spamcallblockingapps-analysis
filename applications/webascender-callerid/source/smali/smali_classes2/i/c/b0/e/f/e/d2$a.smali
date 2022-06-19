.class final Li/c/b0/e/f/e/d2$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/d2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/d2$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/b0/c/c;",
            ">;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/e/f/e/d2$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/d2$a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final i:Li/c/b0/e/k/c;

.field volatile j:Li/c/b0/e/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/c/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field k:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field volatile l:Z

.field volatile m:Z

.field volatile n:I


# direct methods
.method constructor <init>(Li/c/b0/b/c0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/d2$a;->f:Li/c/b0/b/c0;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/d2$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance p1, Li/c/b0/e/f/e/d2$a$a;

    invoke-direct {p1, p0}, Li/c/b0/e/f/e/d2$a$a;-><init>(Li/c/b0/e/f/e/d2$a;)V

    iput-object p1, p0, Li/c/b0/e/f/e/d2$a;->h:Li/c/b0/e/f/e/d2$a$a;

    .line 5
    new-instance p1, Li/c/b0/e/k/c;

    invoke-direct {p1}, Li/c/b0/e/k/c;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/d2$a;->i:Li/c/b0/e/k/c;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/d2$a;->b()V

    :cond_0
    return-void
.end method

.method b()V
    .locals 9

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/d2$a;->f:Li/c/b0/b/c0;

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 2
    :cond_0
    :goto_0
    iget-boolean v3, p0, Li/c/b0/e/f/e/d2$a;->l:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 3
    iput-object v4, p0, Li/c/b0/e/f/e/d2$a;->k:Ljava/lang/Object;

    .line 4
    iput-object v4, p0, Li/c/b0/e/f/e/d2$a;->j:Li/c/b0/e/c/j;

    return-void

    .line 5
    :cond_1
    iget-object v3, p0, Li/c/b0/e/f/e/d2$a;->i:Li/c/b0/e/k/c;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6
    iput-object v4, p0, Li/c/b0/e/f/e/d2$a;->k:Ljava/lang/Object;

    .line 7
    iput-object v4, p0, Li/c/b0/e/f/e/d2$a;->j:Li/c/b0/e/c/j;

    .line 8
    iget-object v1, p0, Li/c/b0/e/f/e/d2$a;->i:Li/c/b0/e/k/c;

    invoke-virtual {v1, v0}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    return-void

    .line 9
    :cond_2
    iget v3, p0, Li/c/b0/e/f/e/d2$a;->n:I

    const/4 v5, 0x2

    if-ne v3, v1, :cond_3

    .line 10
    iget-object v3, p0, Li/c/b0/e/f/e/d2$a;->k:Ljava/lang/Object;

    .line 11
    iput-object v4, p0, Li/c/b0/e/f/e/d2$a;->k:Ljava/lang/Object;

    .line 12
    iput v5, p0, Li/c/b0/e/f/e/d2$a;->n:I

    .line 13
    invoke-interface {v0, v3}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    const/4 v3, 0x2

    .line 14
    :cond_3
    iget-boolean v6, p0, Li/c/b0/e/f/e/d2$a;->m:Z

    .line 15
    iget-object v7, p0, Li/c/b0/e/f/e/d2$a;->j:Li/c/b0/e/c/j;

    if-eqz v7, :cond_4

    .line 16
    invoke-interface {v7}, Li/c/b0/e/c/j;->poll()Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    :cond_4
    move-object v7, v4

    :goto_1
    if-nez v7, :cond_5

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-eqz v6, :cond_6

    if-eqz v8, :cond_6

    if-ne v3, v5, :cond_6

    .line 17
    iput-object v4, p0, Li/c/b0/e/f/e/d2$a;->j:Li/c/b0/e/c/j;

    .line 18
    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    return-void

    :cond_6
    if-eqz v8, :cond_7

    neg-int v2, v2

    .line 19
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 20
    :cond_7
    invoke-interface {v0, v7}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method c()Li/c/b0/e/c/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/e/c/j<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/d2$a;->j:Li/c/b0/e/c/j;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Li/c/b0/e/g/c;

    invoke-static {}, Li/c/b0/b/v;->bufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Li/c/b0/e/g/c;-><init>(I)V

    .line 3
    iput-object v0, p0, Li/c/b0/e/f/e/d2$a;->j:Li/c/b0/e/c/j;

    :cond_0
    return-object v0
.end method

.method d()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Li/c/b0/e/f/e/d2$a;->n:I

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/d2$a;->a()V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/d2$a;->l:Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/d2$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/d2$a;->h:Li/c/b0/e/f/e/d2$a$a;

    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/e/d2$a;->i:Li/c/b0/e/k/c;

    invoke-virtual {v0}, Li/c/b0/e/k/c;->d()V

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Li/c/b0/e/f/e/d2$a;->j:Li/c/b0/e/c/j;

    .line 7
    iput-object v0, p0, Li/c/b0/e/f/e/d2$a;->k:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method e(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/d2$a;->i:Li/c/b0/e/k/c;

    invoke-virtual {v0, p1}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/e/d2$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/f/e/d2$a;->a()V

    :cond_0
    return-void
.end method

.method f(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/d2$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Li/c/b0/e/f/e/d2$a;->n:I

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Li/c/b0/e/f/e/d2$a;->k:Ljava/lang/Object;

    .line 5
    iput v1, p0, Li/c/b0/e/f/e/d2$a;->n:I

    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p0}, Li/c/b0/e/f/e/d2$a;->b()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/d2$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/c/c;

    invoke-static {v0}, Li/c/b0/e/a/c;->isDisposed(Li/c/b0/c/c;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/d2$a;->m:Z

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/d2$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/d2$a;->i:Li/c/b0/e/k/c;

    invoke-virtual {v0, p1}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/e/d2$a;->h:Li/c/b0/e/f/e/d2$a$a;

    invoke-static {p1}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/f/e/d2$a;->a()V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/d2$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Li/c/b0/e/f/e/d2$a;->c()Li/c/b0/e/c/j;

    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Li/c/b0/e/c/k;->offer(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Li/c/b0/e/f/e/d2$a;->b()V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/d2$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    return-void
.end method
