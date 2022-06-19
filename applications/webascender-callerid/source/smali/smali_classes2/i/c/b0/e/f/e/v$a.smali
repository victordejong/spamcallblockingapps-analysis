.class final Li/c/b0/e/f/e/v$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/v$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Li/c/b0/b/c0<",
        "TT;>;",
        "Li/c/b0/c/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/c0<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final h:I

.field final i:Li/c/b0/e/k/c;

.field final j:Li/c/b0/e/f/e/v$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/v$a$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field final k:Z

.field final l:Li/c/b0/b/d0$c;

.field m:Li/c/b0/e/c/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/c/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field n:Li/c/b0/c/c;

.field volatile o:Z

.field volatile p:Z

.field volatile q:Z

.field r:I


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/d/o;IZLi/c/b0/b/d0$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TR;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;IZ",
            "Li/c/b0/b/d0$c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/v$a;->f:Li/c/b0/b/c0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/v$a;->g:Li/c/b0/d/o;

    .line 4
    iput p3, p0, Li/c/b0/e/f/e/v$a;->h:I

    .line 5
    iput-boolean p4, p0, Li/c/b0/e/f/e/v$a;->k:Z

    .line 6
    new-instance p2, Li/c/b0/e/k/c;

    invoke-direct {p2}, Li/c/b0/e/k/c;-><init>()V

    iput-object p2, p0, Li/c/b0/e/f/e/v$a;->i:Li/c/b0/e/k/c;

    .line 7
    new-instance p2, Li/c/b0/e/f/e/v$a$a;

    invoke-direct {p2, p1, p0}, Li/c/b0/e/f/e/v$a$a;-><init>(Li/c/b0/b/c0;Li/c/b0/e/f/e/v$a;)V

    iput-object p2, p0, Li/c/b0/e/f/e/v$a;->j:Li/c/b0/e/f/e/v$a$a;

    .line 8
    iput-object p5, p0, Li/c/b0/e/f/e/v$a;->l:Li/c/b0/b/d0$c;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/v$a;->l:Li/c/b0/b/d0$c;

    invoke-virtual {v0, p0}, Li/c/b0/b/d0$c;->b(Ljava/lang/Runnable;)Li/c/b0/c/c;

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/v$a;->q:Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/v$a;->n:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/v$a;->j:Li/c/b0/e/f/e/v$a$a;

    invoke-virtual {v0}, Li/c/b0/e/f/e/v$a$a;->a()V

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/e/v$a;->l:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 5
    iget-object v0, p0, Li/c/b0/e/f/e/v$a;->i:Li/c/b0/e/k/c;

    invoke-virtual {v0}, Li/c/b0/e/k/c;->d()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/v$a;->q:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/v$a;->p:Z

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/v$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/v$a;->i:Li/c/b0/e/k/c;

    invoke-virtual {v0, p1}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Li/c/b0/e/f/e/v$a;->p:Z

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/f/e/v$a;->a()V

    :cond_0
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
    iget v0, p0, Li/c/b0/e/f/e/v$a;->r:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/v$a;->m:Li/c/b0/e/c/k;

    invoke-interface {v0, p1}, Li/c/b0/e/c/k;->offer(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Li/c/b0/e/f/e/v$a;->a()V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/v$a;->n:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/v$a;->n:Li/c/b0/c/c;

    .line 3
    instance-of v0, p1, Li/c/b0/e/c/f;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Li/c/b0/e/c/f;

    const/4 v0, 0x3

    .line 5
    invoke-interface {p1, v0}, Li/c/b0/e/c/g;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    iput v0, p0, Li/c/b0/e/f/e/v$a;->r:I

    .line 7
    iput-object p1, p0, Li/c/b0/e/f/e/v$a;->m:Li/c/b0/e/c/k;

    .line 8
    iput-boolean v1, p0, Li/c/b0/e/f/e/v$a;->p:Z

    .line 9
    iget-object p1, p0, Li/c/b0/e/f/e/v$a;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 10
    invoke-virtual {p0}, Li/c/b0/e/f/e/v$a;->a()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 11
    iput v0, p0, Li/c/b0/e/f/e/v$a;->r:I

    .line 12
    iput-object p1, p0, Li/c/b0/e/f/e/v$a;->m:Li/c/b0/e/c/k;

    .line 13
    iget-object p1, p0, Li/c/b0/e/f/e/v$a;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    return-void

    .line 14
    :cond_1
    new-instance p1, Li/c/b0/e/g/c;

    iget v0, p0, Li/c/b0/e/f/e/v$a;->h:I

    invoke-direct {p1, v0}, Li/c/b0/e/g/c;-><init>(I)V

    iput-object p1, p0, Li/c/b0/e/f/e/v$a;->m:Li/c/b0/e/c/k;

    .line 15
    iget-object p1, p0, Li/c/b0/e/f/e/v$a;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    :cond_2
    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/v$a;->f:Li/c/b0/b/c0;

    .line 2
    iget-object v1, p0, Li/c/b0/e/f/e/v$a;->m:Li/c/b0/e/c/k;

    .line 3
    iget-object v2, p0, Li/c/b0/e/f/e/v$a;->i:Li/c/b0/e/k/c;

    .line 4
    :cond_0
    :goto_0
    iget-boolean v3, p0, Li/c/b0/e/f/e/v$a;->o:Z

    if-nez v3, :cond_6

    .line 5
    iget-boolean v3, p0, Li/c/b0/e/f/e/v$a;->q:Z

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v1}, Li/c/b0/e/c/k;->clear()V

    return-void

    .line 7
    :cond_1
    iget-boolean v3, p0, Li/c/b0/e/f/e/v$a;->k:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 8
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 9
    invoke-interface {v1}, Li/c/b0/e/c/k;->clear()V

    .line 10
    iput-boolean v4, p0, Li/c/b0/e/f/e/v$a;->q:Z

    .line 11
    invoke-virtual {v2, v0}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    .line 12
    iget-object v0, p0, Li/c/b0/e/f/e/v$a;->l:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void

    .line 13
    :cond_2
    iget-boolean v3, p0, Li/c/b0/e/f/e/v$a;->p:Z

    .line 14
    :try_start_0
    invoke-interface {v1}, Li/c/b0/e/c/k;->poll()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v5, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-eqz v3, :cond_4

    if-eqz v6, :cond_4

    .line 15
    iput-boolean v4, p0, Li/c/b0/e/f/e/v$a;->q:Z

    .line 16
    invoke-virtual {v2, v0}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    .line 17
    iget-object v0, p0, Li/c/b0/e/f/e/v$a;->l:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void

    :cond_4
    if-nez v6, :cond_6

    .line 18
    :try_start_1
    iget-object v3, p0, Li/c/b0/e/f/e/v$a;->g:Li/c/b0/d/o;

    invoke-interface {v3, v5}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "The mapper returned a null ObservableSource"

    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Li/c/b0/b/a0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    instance-of v5, v3, Li/c/b0/d/q;

    if-eqz v5, :cond_5

    .line 20
    :try_start_2
    check-cast v3, Li/c/b0/d/q;

    invoke-interface {v3}, Li/c/b0/d/q;->get()Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    .line 21
    iget-boolean v4, p0, Li/c/b0/e/f/e/v$a;->q:Z

    if-nez v4, :cond_0

    .line 22
    invoke-interface {v0, v3}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 23
    invoke-static {v3}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 24
    invoke-virtual {v2, v3}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 25
    :cond_5
    iput-boolean v4, p0, Li/c/b0/e/f/e/v$a;->o:Z

    .line 26
    iget-object v4, p0, Li/c/b0/e/f/e/v$a;->j:Li/c/b0/e/f/e/v$a$a;

    invoke-interface {v3, v4}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    goto :goto_2

    :catchall_1
    move-exception v3

    .line 27
    invoke-static {v3}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 28
    iput-boolean v4, p0, Li/c/b0/e/f/e/v$a;->q:Z

    .line 29
    iget-object v4, p0, Li/c/b0/e/f/e/v$a;->n:Li/c/b0/c/c;

    invoke-interface {v4}, Li/c/b0/c/c;->dispose()V

    .line 30
    invoke-interface {v1}, Li/c/b0/e/c/k;->clear()V

    .line 31
    invoke-virtual {v2, v3}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    .line 32
    invoke-virtual {v2, v0}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    .line 33
    iget-object v0, p0, Li/c/b0/e/f/e/v$a;->l:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void

    :catchall_2
    move-exception v1

    .line 34
    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 35
    iput-boolean v4, p0, Li/c/b0/e/f/e/v$a;->q:Z

    .line 36
    iget-object v3, p0, Li/c/b0/e/f/e/v$a;->n:Li/c/b0/c/c;

    invoke-interface {v3}, Li/c/b0/c/c;->dispose()V

    .line 37
    invoke-virtual {v2, v1}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    .line 38
    invoke-virtual {v2, v0}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    .line 39
    iget-object v0, p0, Li/c/b0/e/f/e/v$a;->l:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void

    .line 40
    :cond_6
    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_0

    return-void
.end method
