.class final Li/c/b0/e/f/e/g2$a;
.super Li/c/b0/e/e/b;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/g2;
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
        "Li/c/b0/e/e/b<",
        "TT;>;",
        "Li/c/b0/b/c0<",
        "TT;>;",
        "Ljava/lang/Runnable;"
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

.field final g:Li/c/b0/b/d0$c;

.field final h:Z

.field final i:I

.field j:Li/c/b0/e/c/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/c/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field k:Li/c/b0/c/c;

.field l:Ljava/lang/Throwable;

.field volatile m:Z

.field volatile n:Z

.field o:I

.field p:Z


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/b/d0$c;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;",
            "Li/c/b0/b/d0$c;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/e/e/b;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/g2$a;->f:Li/c/b0/b/c0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/g2$a;->g:Li/c/b0/b/d0$c;

    .line 4
    iput-boolean p3, p0, Li/c/b0/e/f/e/g2$a;->h:Z

    .line 5
    iput p4, p0, Li/c/b0/e/f/e/g2$a;->i:I

    return-void
.end method


# virtual methods
.method a(ZZLi/c/b0/b/c0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Li/c/b0/b/c0<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/g2$a;->n:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/e/g2$a;->j:Li/c/b0/e/c/k;

    invoke-interface {p1}, Li/c/b0/e/c/k;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/e/g2$a;->l:Ljava/lang/Throwable;

    .line 4
    iget-boolean v0, p0, Li/c/b0/e/f/e/g2$a;->h:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_4

    .line 5
    iput-boolean v1, p0, Li/c/b0/e/f/e/g2$a;->n:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p3, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p3}, Li/c/b0/b/c0;->onComplete()V

    .line 8
    :goto_0
    iget-object p1, p0, Li/c/b0/e/f/e/g2$a;->g:Li/c/b0/b/d0$c;

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 9
    iput-boolean v1, p0, Li/c/b0/e/f/e/g2$a;->n:Z

    .line 10
    iget-object p2, p0, Li/c/b0/e/f/e/g2$a;->j:Li/c/b0/e/c/k;

    invoke-interface {p2}, Li/c/b0/e/c/k;->clear()V

    .line 11
    invoke-interface {p3, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    .line 12
    iget-object p1, p0, Li/c/b0/e/f/e/g2$a;->g:Li/c/b0/b/d0$c;

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 13
    iput-boolean v1, p0, Li/c/b0/e/f/e/g2$a;->n:Z

    .line 14
    invoke-interface {p3}, Li/c/b0/b/c0;->onComplete()V

    .line 15
    iget-object p1, p0, Li/c/b0/e/f/e/g2$a;->g:Li/c/b0/b/d0$c;

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method b()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 1
    :cond_0
    iget-boolean v2, p0, Li/c/b0/e/f/e/g2$a;->n:Z

    if-eqz v2, :cond_1

    return-void

    .line 2
    :cond_1
    iget-boolean v2, p0, Li/c/b0/e/f/e/g2$a;->m:Z

    .line 3
    iget-object v3, p0, Li/c/b0/e/f/e/g2$a;->l:Ljava/lang/Throwable;

    .line 4
    iget-boolean v4, p0, Li/c/b0/e/f/e/g2$a;->h:Z

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 5
    iput-boolean v0, p0, Li/c/b0/e/f/e/g2$a;->n:Z

    .line 6
    iget-object v0, p0, Li/c/b0/e/f/e/g2$a;->f:Li/c/b0/b/c0;

    iget-object v1, p0, Li/c/b0/e/f/e/g2$a;->l:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    .line 7
    iget-object v0, p0, Li/c/b0/e/f/e/g2$a;->g:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void

    .line 8
    :cond_2
    iget-object v3, p0, Li/c/b0/e/f/e/g2$a;->f:Li/c/b0/b/c0;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    .line 9
    iput-boolean v0, p0, Li/c/b0/e/f/e/g2$a;->n:Z

    .line 10
    iget-object v0, p0, Li/c/b0/e/f/e/g2$a;->l:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 11
    iget-object v1, p0, Li/c/b0/e/f/e/g2$a;->f:Li/c/b0/b/c0;

    invoke-interface {v1, v0}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Li/c/b0/e/f/e/g2$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    .line 13
    :goto_0
    iget-object v0, p0, Li/c/b0/e/f/e/g2$a;->g:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void

    :cond_4
    neg-int v1, v1

    .line 14
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void
.end method

.method c()V
    .locals 7

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/g2$a;->j:Li/c/b0/e/c/k;

    .line 2
    iget-object v1, p0, Li/c/b0/e/f/e/g2$a;->f:Li/c/b0/b/c0;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 3
    :cond_0
    iget-boolean v4, p0, Li/c/b0/e/f/e/g2$a;->m:Z

    invoke-interface {v0}, Li/c/b0/e/c/k;->isEmpty()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v1}, Li/c/b0/e/f/e/g2$a;->a(ZZLi/c/b0/b/c0;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 4
    :cond_1
    :goto_0
    iget-boolean v4, p0, Li/c/b0/e/f/e/g2$a;->m:Z

    .line 5
    :try_start_0
    invoke-interface {v0}, Li/c/b0/e/c/k;->poll()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 6
    :goto_1
    invoke-virtual {p0, v4, v6, v1}, Li/c/b0/e/f/e/g2$a;->a(ZZLi/c/b0/b/c0;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    if-eqz v6, :cond_4

    neg-int v3, v3

    .line 7
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 8
    :cond_4
    invoke-interface {v1, v5}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 9
    invoke-static {v3}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10
    iput-boolean v2, p0, Li/c/b0/e/f/e/g2$a;->n:Z

    .line 11
    iget-object v2, p0, Li/c/b0/e/f/e/g2$a;->k:Li/c/b0/c/c;

    invoke-interface {v2}, Li/c/b0/c/c;->dispose()V

    .line 12
    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    .line 13
    invoke-interface {v1, v3}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    .line 14
    iget-object v0, p0, Li/c/b0/e/f/e/g2$a;->g:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/g2$a;->j:Li/c/b0/e/c/k;

    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    return-void
.end method

.method d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/g2$a;->g:Li/c/b0/b/d0$c;

    invoke-virtual {v0, p0}, Li/c/b0/b/d0$c;->b(Ljava/lang/Runnable;)Li/c/b0/c/c;

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/g2$a;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/f/e/g2$a;->n:Z

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/g2$a;->k:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/e/g2$a;->g:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 5
    iget-boolean v0, p0, Li/c/b0/e/f/e/g2$a;->p:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Li/c/b0/e/f/e/g2$a;->j:Li/c/b0/e/c/k;

    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/g2$a;->n:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/g2$a;->j:Li/c/b0/e/c/k;

    invoke-interface {v0}, Li/c/b0/e/c/k;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/g2$a;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/f/e/g2$a;->m:Z

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/f/e/g2$a;->d()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/g2$a;->m:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Li/c/b0/e/f/e/g2$a;->l:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Li/c/b0/e/f/e/g2$a;->m:Z

    .line 5
    invoke-virtual {p0}, Li/c/b0/e/f/e/g2$a;->d()V

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
    iget-boolean v0, p0, Li/c/b0/e/f/e/g2$a;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Li/c/b0/e/f/e/g2$a;->o:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/g2$a;->j:Li/c/b0/e/c/k;

    invoke-interface {v0, p1}, Li/c/b0/e/c/k;->offer(Ljava/lang/Object;)Z

    .line 4
    :cond_1
    invoke-virtual {p0}, Li/c/b0/e/f/e/g2$a;->d()V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/g2$a;->k:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/g2$a;->k:Li/c/b0/c/c;

    .line 3
    instance-of v0, p1, Li/c/b0/e/c/f;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Li/c/b0/e/c/f;

    const/4 v0, 0x7

    .line 5
    invoke-interface {p1, v0}, Li/c/b0/e/c/g;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    iput v0, p0, Li/c/b0/e/f/e/g2$a;->o:I

    .line 7
    iput-object p1, p0, Li/c/b0/e/f/e/g2$a;->j:Li/c/b0/e/c/k;

    .line 8
    iput-boolean v1, p0, Li/c/b0/e/f/e/g2$a;->m:Z

    .line 9
    iget-object p1, p0, Li/c/b0/e/f/e/g2$a;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 10
    invoke-virtual {p0}, Li/c/b0/e/f/e/g2$a;->d()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 11
    iput v0, p0, Li/c/b0/e/f/e/g2$a;->o:I

    .line 12
    iput-object p1, p0, Li/c/b0/e/f/e/g2$a;->j:Li/c/b0/e/c/k;

    .line 13
    iget-object p1, p0, Li/c/b0/e/f/e/g2$a;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    return-void

    .line 14
    :cond_1
    new-instance p1, Li/c/b0/e/g/c;

    iget v0, p0, Li/c/b0/e/f/e/g2$a;->i:I

    invoke-direct {p1, v0}, Li/c/b0/e/g/c;-><init>(I)V

    iput-object p1, p0, Li/c/b0/e/f/e/g2$a;->j:Li/c/b0/e/c/k;

    .line 15
    iget-object p1, p0, Li/c/b0/e/f/e/g2$a;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    :cond_2
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/g2$a;->j:Li/c/b0/e/c/k;

    invoke-interface {v0}, Li/c/b0/e/c/k;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public requestFusion(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Li/c/b0/e/f/e/g2$a;->p:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/g2$a;->p:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/g2$a;->b()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Li/c/b0/e/f/e/g2$a;->c()V

    :goto_0
    return-void
.end method
