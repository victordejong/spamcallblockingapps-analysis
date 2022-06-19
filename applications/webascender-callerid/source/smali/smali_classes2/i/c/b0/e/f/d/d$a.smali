.class final Li/c/b0/e/f/d/d$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/d/d$a$a;
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
        "Li/c/b0/c/c;"
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
            "Li/c/b0/b/i0<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/e/k/c;

.field final i:Li/c/b0/e/f/d/d$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/d/d$a$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field final j:Li/c/b0/e/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/c/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field final k:Li/c/b0/e/k/i;

.field l:Li/c/b0/c/c;

.field volatile m:Z

.field volatile n:Z

.field o:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field volatile p:I


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/d/o;ILi/c/b0/e/k/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TR;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i0<",
            "+TR;>;>;I",
            "Li/c/b0/e/k/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/d/d$a;->f:Li/c/b0/b/c0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/d/d$a;->g:Li/c/b0/d/o;

    .line 4
    iput-object p4, p0, Li/c/b0/e/f/d/d$a;->k:Li/c/b0/e/k/i;

    .line 5
    new-instance p1, Li/c/b0/e/k/c;

    invoke-direct {p1}, Li/c/b0/e/k/c;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/d/d$a;->h:Li/c/b0/e/k/c;

    .line 6
    new-instance p1, Li/c/b0/e/f/d/d$a$a;

    invoke-direct {p1, p0}, Li/c/b0/e/f/d/d$a$a;-><init>(Li/c/b0/e/f/d/d$a;)V

    iput-object p1, p0, Li/c/b0/e/f/d/d$a;->i:Li/c/b0/e/f/d/d$a$a;

    .line 7
    new-instance p1, Li/c/b0/e/g/c;

    invoke-direct {p1, p3}, Li/c/b0/e/g/c;-><init>(I)V

    iput-object p1, p0, Li/c/b0/e/f/d/d$a;->j:Li/c/b0/e/c/j;

    return-void
.end method


# virtual methods
.method a()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/d/d$a;->f:Li/c/b0/b/c0;

    .line 3
    iget-object v1, p0, Li/c/b0/e/f/d/d$a;->k:Li/c/b0/e/k/i;

    .line 4
    iget-object v2, p0, Li/c/b0/e/f/d/d$a;->j:Li/c/b0/e/c/j;

    .line 5
    iget-object v3, p0, Li/c/b0/e/f/d/d$a;->h:Li/c/b0/e/k/c;

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 6
    :cond_1
    :goto_0
    iget-boolean v6, p0, Li/c/b0/e/f/d/d$a;->n:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 7
    invoke-interface {v2}, Li/c/b0/e/c/k;->clear()V

    .line 8
    iput-object v7, p0, Li/c/b0/e/f/d/d$a;->o:Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_2
    iget v6, p0, Li/c/b0/e/f/d/d$a;->p:I

    .line 10
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 11
    sget-object v8, Li/c/b0/e/k/i;->IMMEDIATE:Li/c/b0/e/k/i;

    if-eq v1, v8, :cond_3

    sget-object v8, Li/c/b0/e/k/i;->BOUNDARY:Li/c/b0/e/k/i;

    if-ne v1, v8, :cond_4

    if-nez v6, :cond_4

    .line 12
    :cond_3
    invoke-interface {v2}, Li/c/b0/e/c/k;->clear()V

    .line 13
    iput-object v7, p0, Li/c/b0/e/f/d/d$a;->o:Ljava/lang/Object;

    .line 14
    invoke-virtual {v3, v0}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    return-void

    :cond_4
    const/4 v8, 0x0

    if-nez v6, :cond_8

    .line 15
    iget-boolean v6, p0, Li/c/b0/e/f/d/d$a;->m:Z

    .line 16
    invoke-interface {v2}, Li/c/b0/e/c/j;->poll()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    const/4 v8, 0x1

    :cond_5
    if-eqz v6, :cond_6

    if-eqz v8, :cond_6

    .line 17
    invoke-virtual {v3, v0}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    return-void

    :cond_6
    if-eqz v8, :cond_7

    goto :goto_1

    .line 18
    :cond_7
    :try_start_0
    iget-object v6, p0, Li/c/b0/e/f/d/d$a;->g:Li/c/b0/d/o;

    invoke-interface {v6, v7}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "The mapper returned a null SingleSource"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Li/c/b0/b/i0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iput v4, p0, Li/c/b0/e/f/d/d$a;->p:I

    .line 20
    iget-object v7, p0, Li/c/b0/e/f/d/d$a;->i:Li/c/b0/e/f/d/d$a$a;

    invoke-interface {v6, v7}, Li/c/b0/b/i0;->a(Li/c/b0/b/g0;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 21
    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 22
    iget-object v4, p0, Li/c/b0/e/f/d/d$a;->l:Li/c/b0/c/c;

    invoke-interface {v4}, Li/c/b0/c/c;->dispose()V

    .line 23
    invoke-interface {v2}, Li/c/b0/e/c/k;->clear()V

    .line 24
    invoke-virtual {v3, v1}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    .line 25
    invoke-virtual {v3, v0}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    return-void

    :cond_8
    const/4 v9, 0x2

    if-ne v6, v9, :cond_9

    .line 26
    iget-object v6, p0, Li/c/b0/e/f/d/d$a;->o:Ljava/lang/Object;

    .line 27
    iput-object v7, p0, Li/c/b0/e/f/d/d$a;->o:Ljava/lang/Object;

    .line 28
    invoke-interface {v0, v6}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    .line 29
    iput v8, p0, Li/c/b0/e/f/d/d$a;->p:I

    goto :goto_0

    :cond_9
    :goto_1
    neg-int v5, v5

    .line 30
    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_1

    return-void
.end method

.method b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/d/d$a;->h:Li/c/b0/e/k/c;

    invoke-virtual {v0, p1}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/d/d$a;->k:Li/c/b0/e/k/i;

    sget-object v0, Li/c/b0/e/k/i;->END:Li/c/b0/e/k/i;

    if-eq p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/d/d$a;->l:Li/c/b0/c/c;

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Li/c/b0/e/f/d/d$a;->p:I

    .line 5
    invoke-virtual {p0}, Li/c/b0/e/f/d/d$a;->a()V

    :cond_1
    return-void
.end method

.method c(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Li/c/b0/e/f/d/d$a;->o:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Li/c/b0/e/f/d/d$a;->p:I

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/f/d/d$a;->a()V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/d/d$a;->n:Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/d/d$a;->l:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/d/d$a;->i:Li/c/b0/e/f/d/d$a$a;

    invoke-virtual {v0}, Li/c/b0/e/f/d/d$a$a;->a()V

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/d/d$a;->h:Li/c/b0/e/k/c;

    invoke-virtual {v0}, Li/c/b0/e/k/c;->d()V

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Li/c/b0/e/f/d/d$a;->j:Li/c/b0/e/c/j;

    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Li/c/b0/e/f/d/d$a;->o:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/d/d$a;->n:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/d/d$a;->m:Z

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/d/d$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/d/d$a;->h:Li/c/b0/e/k/c;

    invoke-virtual {v0, p1}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/d/d$a;->k:Li/c/b0/e/k/i;

    sget-object v0, Li/c/b0/e/k/i;->IMMEDIATE:Li/c/b0/e/k/i;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/d/d$a;->i:Li/c/b0/e/f/d/d$a$a;

    invoke-virtual {p1}, Li/c/b0/e/f/d/d$a$a;->a()V

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Li/c/b0/e/f/d/d$a;->m:Z

    .line 5
    invoke-virtual {p0}, Li/c/b0/e/f/d/d$a;->a()V

    :cond_1
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
    iget-object v0, p0, Li/c/b0/e/f/d/d$a;->j:Li/c/b0/e/c/j;

    invoke-interface {v0, p1}, Li/c/b0/e/c/k;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/d/d$a;->a()V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/d/d$a;->l:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/d/d$a;->l:Li/c/b0/c/c;

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/d/d$a;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    :cond_0
    return-void
.end method
