.class final Li/c/b0/e/f/e/v$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/v$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
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
            "-TU;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/e/f/e/v$b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/v$b$a<",
            "TU;>;"
        }
    .end annotation
.end field

.field final i:I

.field final j:Li/c/b0/b/d0$c;

.field k:Li/c/b0/e/c/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/c/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field l:Li/c/b0/c/c;

.field volatile m:Z

.field volatile n:Z

.field volatile o:Z

.field p:I


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/d/o;ILi/c/b0/b/d0$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TU;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TU;>;>;I",
            "Li/c/b0/b/d0$c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/v$b;->f:Li/c/b0/b/c0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/v$b;->g:Li/c/b0/d/o;

    .line 4
    iput p3, p0, Li/c/b0/e/f/e/v$b;->i:I

    .line 5
    new-instance p2, Li/c/b0/e/f/e/v$b$a;

    invoke-direct {p2, p1, p0}, Li/c/b0/e/f/e/v$b$a;-><init>(Li/c/b0/b/c0;Li/c/b0/e/f/e/v$b;)V

    iput-object p2, p0, Li/c/b0/e/f/e/v$b;->h:Li/c/b0/e/f/e/v$b$a;

    .line 6
    iput-object p4, p0, Li/c/b0/e/f/e/v$b;->j:Li/c/b0/b/d0$c;

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
    iget-object v0, p0, Li/c/b0/e/f/e/v$b;->j:Li/c/b0/b/d0$c;

    invoke-virtual {v0, p0}, Li/c/b0/b/d0$c;->b(Ljava/lang/Runnable;)Li/c/b0/c/c;

    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/v$b;->m:Z

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/v$b;->a()V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/v$b;->n:Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/v$b;->h:Li/c/b0/e/f/e/v$b$a;

    invoke-virtual {v0}, Li/c/b0/e/f/e/v$b$a;->a()V

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/v$b;->l:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/e/v$b;->j:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Li/c/b0/e/f/e/v$b;->k:Li/c/b0/e/c/k;

    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/v$b;->n:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/v$b;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/f/e/v$b;->o:Z

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/f/e/v$b;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/v$b;->o:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Li/c/b0/e/f/e/v$b;->o:Z

    .line 4
    invoke-virtual {p0}, Li/c/b0/e/f/e/v$b;->dispose()V

    .line 5
    iget-object v0, p0, Li/c/b0/e/f/e/v$b;->f:Li/c/b0/b/c0;

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
    iget-boolean v0, p0, Li/c/b0/e/f/e/v$b;->o:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Li/c/b0/e/f/e/v$b;->p:I

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/v$b;->k:Li/c/b0/e/c/k;

    invoke-interface {v0, p1}, Li/c/b0/e/c/k;->offer(Ljava/lang/Object;)Z

    .line 4
    :cond_1
    invoke-virtual {p0}, Li/c/b0/e/f/e/v$b;->a()V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/v$b;->l:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/v$b;->l:Li/c/b0/c/c;

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
    iput v0, p0, Li/c/b0/e/f/e/v$b;->p:I

    .line 7
    iput-object p1, p0, Li/c/b0/e/f/e/v$b;->k:Li/c/b0/e/c/k;

    .line 8
    iput-boolean v1, p0, Li/c/b0/e/f/e/v$b;->o:Z

    .line 9
    iget-object p1, p0, Li/c/b0/e/f/e/v$b;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 10
    invoke-virtual {p0}, Li/c/b0/e/f/e/v$b;->a()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 11
    iput v0, p0, Li/c/b0/e/f/e/v$b;->p:I

    .line 12
    iput-object p1, p0, Li/c/b0/e/f/e/v$b;->k:Li/c/b0/e/c/k;

    .line 13
    iget-object p1, p0, Li/c/b0/e/f/e/v$b;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    return-void

    .line 14
    :cond_1
    new-instance p1, Li/c/b0/e/g/c;

    iget v0, p0, Li/c/b0/e/f/e/v$b;->i:I

    invoke-direct {p1, v0}, Li/c/b0/e/g/c;-><init>(I)V

    iput-object p1, p0, Li/c/b0/e/f/e/v$b;->k:Li/c/b0/e/c/k;

    .line 15
    iget-object p1, p0, Li/c/b0/e/f/e/v$b;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    :cond_2
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    :cond_0
    iget-boolean v0, p0, Li/c/b0/e/f/e/v$b;->n:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/v$b;->k:Li/c/b0/e/c/k;

    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Li/c/b0/e/f/e/v$b;->m:Z

    if-nez v0, :cond_4

    .line 4
    iget-boolean v0, p0, Li/c/b0/e/f/e/v$b;->o:Z

    .line 5
    :try_start_0
    iget-object v1, p0, Li/c/b0/e/f/e/v$b;->k:Li/c/b0/e/c/k;

    invoke-interface {v1}, Li/c/b0/e/c/k;->poll()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 6
    iput-boolean v2, p0, Li/c/b0/e/f/e/v$b;->n:Z

    .line 7
    iget-object v0, p0, Li/c/b0/e/f/e/v$b;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    .line 8
    iget-object v0, p0, Li/c/b0/e/f/e/v$b;->j:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void

    :cond_3
    if-nez v3, :cond_4

    .line 9
    :try_start_1
    iget-object v0, p0, Li/c/b0/e/f/e/v$b;->g:Li/c/b0/d/o;

    invoke-interface {v0, v1}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null ObservableSource"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Li/c/b0/b/a0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    iput-boolean v2, p0, Li/c/b0/e/f/e/v$b;->m:Z

    .line 11
    iget-object v1, p0, Li/c/b0/e/f/e/v$b;->h:Li/c/b0/e/f/e/v$b$a;

    invoke-interface {v0, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 13
    invoke-virtual {p0}, Li/c/b0/e/f/e/v$b;->dispose()V

    .line 14
    iget-object v1, p0, Li/c/b0/e/f/e/v$b;->k:Li/c/b0/e/c/k;

    invoke-interface {v1}, Li/c/b0/e/c/k;->clear()V

    .line 15
    iget-object v1, p0, Li/c/b0/e/f/e/v$b;->f:Li/c/b0/b/c0;

    invoke-interface {v1, v0}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    .line 16
    iget-object v0, p0, Li/c/b0/e/f/e/v$b;->j:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void

    :catchall_1
    move-exception v0

    .line 17
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 18
    invoke-virtual {p0}, Li/c/b0/e/f/e/v$b;->dispose()V

    .line 19
    iget-object v1, p0, Li/c/b0/e/f/e/v$b;->k:Li/c/b0/e/c/k;

    invoke-interface {v1}, Li/c/b0/e/c/k;->clear()V

    .line 20
    iget-object v1, p0, Li/c/b0/e/f/e/v$b;->f:Li/c/b0/b/c0;

    invoke-interface {v1, v0}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    .line 21
    iget-object v0, p0, Li/c/b0/e/f/e/v$b;->j:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void

    .line 22
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method
