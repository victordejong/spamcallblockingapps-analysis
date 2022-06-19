.class final Li/c/b0/e/f/e/u$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;
.implements Li/c/b0/e/e/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
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
        "Li/c/b0/e/e/q<",
        "TR;>;"
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

.field final i:I

.field final j:Li/c/b0/e/k/i;

.field final k:Li/c/b0/e/k/c;

.field final l:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Li/c/b0/e/e/p<",
            "TR;>;>;"
        }
    .end annotation
.end field

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

.field p:I

.field volatile q:Z

.field r:Li/c/b0/e/e/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/e/p<",
            "TR;>;"
        }
    .end annotation
.end field

.field s:I


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/d/o;IILi/c/b0/e/k/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TR;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;II",
            "Li/c/b0/e/k/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/u$a;->f:Li/c/b0/b/c0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/u$a;->g:Li/c/b0/d/o;

    .line 4
    iput p3, p0, Li/c/b0/e/f/e/u$a;->h:I

    .line 5
    iput p4, p0, Li/c/b0/e/f/e/u$a;->i:I

    .line 6
    iput-object p5, p0, Li/c/b0/e/f/e/u$a;->j:Li/c/b0/e/k/i;

    .line 7
    new-instance p1, Li/c/b0/e/k/c;

    invoke-direct {p1}, Li/c/b0/e/k/c;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/u$a;->k:Li/c/b0/e/k/c;

    .line 8
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/u$a;->l:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public a(Li/c/b0/e/e/p;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/e/p<",
            "TR;>;TR;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Li/c/b0/e/e/p;->b()Li/c/b0/e/c/k;

    move-result-object p1

    invoke-interface {p1, p2}, Li/c/b0/e/c/k;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/u$a;->d()V

    return-void
.end method

.method public b(Li/c/b0/e/e/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/e/p<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Li/c/b0/e/e/p;->c()V

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/u$a;->d()V

    return-void
.end method

.method public c(Li/c/b0/e/e/p;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/e/p<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/u$a;->k:Li/c/b0/e/k/c;

    invoke-virtual {v0, p2}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Li/c/b0/e/f/e/u$a;->j:Li/c/b0/e/k/i;

    sget-object v0, Li/c/b0/e/k/i;->IMMEDIATE:Li/c/b0/e/k/i;

    if-ne p2, v0, :cond_0

    .line 3
    iget-object p2, p0, Li/c/b0/e/f/e/u$a;->n:Li/c/b0/c/c;

    invoke-interface {p2}, Li/c/b0/c/c;->dispose()V

    .line 4
    :cond_0
    invoke-virtual {p1}, Li/c/b0/e/e/p;->c()V

    .line 5
    invoke-virtual {p0}, Li/c/b0/e/f/e/u$a;->d()V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/u$a;->m:Li/c/b0/e/c/k;

    .line 3
    iget-object v1, p0, Li/c/b0/e/f/e/u$a;->l:Ljava/util/ArrayDeque;

    .line 4
    iget-object v2, p0, Li/c/b0/e/f/e/u$a;->f:Li/c/b0/b/c0;

    .line 5
    iget-object v3, p0, Li/c/b0/e/f/e/u$a;->j:Li/c/b0/e/k/i;

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 6
    :cond_1
    :goto_0
    iget v6, p0, Li/c/b0/e/f/e/u$a;->s:I

    .line 7
    :goto_1
    iget v7, p0, Li/c/b0/e/f/e/u$a;->h:I

    if-eq v6, v7, :cond_5

    .line 8
    iget-boolean v7, p0, Li/c/b0/e/f/e/u$a;->q:Z

    if-eqz v7, :cond_2

    .line 9
    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    .line 10
    invoke-virtual {p0}, Li/c/b0/e/f/e/u$a;->e()V

    return-void

    .line 11
    :cond_2
    sget-object v7, Li/c/b0/e/k/i;->IMMEDIATE:Li/c/b0/e/k/i;

    if-ne v3, v7, :cond_3

    .line 12
    iget-object v7, p0, Li/c/b0/e/f/e/u$a;->k:Li/c/b0/e/k/c;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    if-eqz v7, :cond_3

    .line 13
    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    .line 14
    invoke-virtual {p0}, Li/c/b0/e/f/e/u$a;->e()V

    .line 15
    iget-object v0, p0, Li/c/b0/e/f/e/u$a;->k:Li/c/b0/e/k/c;

    iget-object v1, p0, Li/c/b0/e/f/e/u$a;->f:Li/c/b0/b/c0;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    return-void

    .line 16
    :cond_3
    :try_start_0
    invoke-interface {v0}, Li/c/b0/e/c/k;->poll()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_2

    .line 17
    :cond_4
    iget-object v8, p0, Li/c/b0/e/f/e/u$a;->g:Li/c/b0/d/o;

    invoke-interface {v8, v7}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The mapper returned a null ObservableSource"

    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v7, Li/c/b0/b/a0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    new-instance v8, Li/c/b0/e/e/p;

    iget v9, p0, Li/c/b0/e/f/e/u$a;->i:I

    invoke-direct {v8, p0, v9}, Li/c/b0/e/e/p;-><init>(Li/c/b0/e/e/q;I)V

    .line 19
    invoke-virtual {v1, v8}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 20
    invoke-interface {v7, v8}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 21
    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 22
    iget-object v2, p0, Li/c/b0/e/f/e/u$a;->n:Li/c/b0/c/c;

    invoke-interface {v2}, Li/c/b0/c/c;->dispose()V

    .line 23
    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    .line 24
    invoke-virtual {p0}, Li/c/b0/e/f/e/u$a;->e()V

    .line 25
    iget-object v0, p0, Li/c/b0/e/f/e/u$a;->k:Li/c/b0/e/k/c;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    .line 26
    iget-object v0, p0, Li/c/b0/e/f/e/u$a;->k:Li/c/b0/e/k/c;

    iget-object v1, p0, Li/c/b0/e/f/e/u$a;->f:Li/c/b0/b/c0;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    return-void

    .line 27
    :cond_5
    :goto_2
    iput v6, p0, Li/c/b0/e/f/e/u$a;->s:I

    .line 28
    iget-boolean v6, p0, Li/c/b0/e/f/e/u$a;->q:Z

    if-eqz v6, :cond_6

    .line 29
    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    .line 30
    invoke-virtual {p0}, Li/c/b0/e/f/e/u$a;->e()V

    return-void

    .line 31
    :cond_6
    sget-object v6, Li/c/b0/e/k/i;->IMMEDIATE:Li/c/b0/e/k/i;

    if-ne v3, v6, :cond_7

    .line 32
    iget-object v6, p0, Li/c/b0/e/f/e/u$a;->k:Li/c/b0/e/k/c;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_7

    .line 33
    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    .line 34
    invoke-virtual {p0}, Li/c/b0/e/f/e/u$a;->e()V

    .line 35
    iget-object v0, p0, Li/c/b0/e/f/e/u$a;->k:Li/c/b0/e/k/c;

    iget-object v1, p0, Li/c/b0/e/f/e/u$a;->f:Li/c/b0/b/c0;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    return-void

    .line 36
    :cond_7
    iget-object v6, p0, Li/c/b0/e/f/e/u$a;->r:Li/c/b0/e/e/p;

    const/4 v7, 0x0

    if-nez v6, :cond_d

    .line 37
    sget-object v6, Li/c/b0/e/k/i;->BOUNDARY:Li/c/b0/e/k/i;

    if-ne v3, v6, :cond_8

    .line 38
    iget-object v6, p0, Li/c/b0/e/f/e/u$a;->k:Li/c/b0/e/k/c;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_8

    .line 39
    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    .line 40
    invoke-virtual {p0}, Li/c/b0/e/f/e/u$a;->e()V

    .line 41
    iget-object v0, p0, Li/c/b0/e/f/e/u$a;->k:Li/c/b0/e/k/c;

    invoke-virtual {v0, v2}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    return-void

    .line 42
    :cond_8
    iget-boolean v6, p0, Li/c/b0/e/f/e/u$a;->o:Z

    .line 43
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Li/c/b0/e/e/p;

    if-nez v8, :cond_9

    const/4 v9, 0x1

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    :goto_3
    if-eqz v6, :cond_b

    if-eqz v9, :cond_b

    .line 44
    iget-object v1, p0, Li/c/b0/e/f/e/u$a;->k:Li/c/b0/e/k/c;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_a

    .line 45
    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    .line 46
    invoke-virtual {p0}, Li/c/b0/e/f/e/u$a;->e()V

    .line 47
    iget-object v0, p0, Li/c/b0/e/f/e/u$a;->k:Li/c/b0/e/k/c;

    invoke-virtual {v0, v2}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    goto :goto_4

    .line 48
    :cond_a
    invoke-interface {v2}, Li/c/b0/b/c0;->onComplete()V

    :goto_4
    return-void

    :cond_b
    if-nez v9, :cond_c

    .line 49
    iput-object v8, p0, Li/c/b0/e/f/e/u$a;->r:Li/c/b0/e/e/p;

    :cond_c
    move-object v6, v8

    :cond_d
    if-eqz v6, :cond_13

    .line 50
    invoke-virtual {v6}, Li/c/b0/e/e/p;->b()Li/c/b0/e/c/k;

    move-result-object v8

    .line 51
    :goto_5
    iget-boolean v9, p0, Li/c/b0/e/f/e/u$a;->q:Z

    if-eqz v9, :cond_e

    .line 52
    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    .line 53
    invoke-virtual {p0}, Li/c/b0/e/f/e/u$a;->e()V

    return-void

    .line 54
    :cond_e
    invoke-virtual {v6}, Li/c/b0/e/e/p;->a()Z

    move-result v9

    .line 55
    sget-object v10, Li/c/b0/e/k/i;->IMMEDIATE:Li/c/b0/e/k/i;

    if-ne v3, v10, :cond_f

    .line 56
    iget-object v10, p0, Li/c/b0/e/f/e/u$a;->k:Li/c/b0/e/k/c;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Throwable;

    if-eqz v10, :cond_f

    .line 57
    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    .line 58
    invoke-virtual {p0}, Li/c/b0/e/f/e/u$a;->e()V

    .line 59
    iget-object v0, p0, Li/c/b0/e/f/e/u$a;->k:Li/c/b0/e/k/c;

    invoke-virtual {v0, v2}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    return-void

    :cond_f
    const/4 v10, 0x0

    .line 60
    :try_start_1
    invoke-interface {v8}, Li/c/b0/e/c/k;->poll()Ljava/lang/Object;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v11, :cond_10

    const/4 v12, 0x1

    goto :goto_6

    :cond_10
    const/4 v12, 0x0

    :goto_6
    if-eqz v9, :cond_11

    if-eqz v12, :cond_11

    .line 61
    iput-object v10, p0, Li/c/b0/e/f/e/u$a;->r:Li/c/b0/e/e/p;

    .line 62
    iget v6, p0, Li/c/b0/e/f/e/u$a;->s:I

    sub-int/2addr v6, v4

    iput v6, p0, Li/c/b0/e/f/e/u$a;->s:I

    goto/16 :goto_0

    :cond_11
    if-eqz v12, :cond_12

    goto :goto_7

    .line 63
    :cond_12
    invoke-interface {v2, v11}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    goto :goto_5

    :catchall_1
    move-exception v6

    .line 64
    invoke-static {v6}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 65
    iget-object v7, p0, Li/c/b0/e/f/e/u$a;->k:Li/c/b0/e/k/c;

    invoke-virtual {v7, v6}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    .line 66
    iput-object v10, p0, Li/c/b0/e/f/e/u$a;->r:Li/c/b0/e/e/p;

    .line 67
    iget v6, p0, Li/c/b0/e/f/e/u$a;->s:I

    sub-int/2addr v6, v4

    iput v6, p0, Li/c/b0/e/f/e/u$a;->s:I

    goto/16 :goto_0

    :cond_13
    :goto_7
    neg-int v5, v5

    .line 68
    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_1

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/u$a;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/f/e/u$a;->q:Z

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/u$a;->n:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/e/u$a;->k:Li/c/b0/e/k/c;

    invoke-virtual {v0}, Li/c/b0/e/k/c;->d()V

    .line 5
    invoke-virtual {p0}, Li/c/b0/e/f/e/u$a;->f()V

    return-void
.end method

.method e()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/u$a;->r:Li/c/b0/e/e/p;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Li/c/b0/e/e/p;->dispose()V

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Li/c/b0/e/f/e/u$a;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/e/e/p;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Li/c/b0/e/e/p;->dispose()V

    goto :goto_0
.end method

.method f()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/u$a;->m:Li/c/b0/e/c/k;

    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/f/e/u$a;->e()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/u$a;->q:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/u$a;->o:Z

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/u$a;->d()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/u$a;->k:Li/c/b0/e/k/c;

    invoke-virtual {v0, p1}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Li/c/b0/e/f/e/u$a;->o:Z

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/f/e/u$a;->d()V

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
    iget v0, p0, Li/c/b0/e/f/e/u$a;->p:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/u$a;->m:Li/c/b0/e/c/k;

    invoke-interface {v0, p1}, Li/c/b0/e/c/k;->offer(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Li/c/b0/e/f/e/u$a;->d()V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/u$a;->n:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/u$a;->n:Li/c/b0/c/c;

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
    iput v0, p0, Li/c/b0/e/f/e/u$a;->p:I

    .line 7
    iput-object p1, p0, Li/c/b0/e/f/e/u$a;->m:Li/c/b0/e/c/k;

    .line 8
    iput-boolean v1, p0, Li/c/b0/e/f/e/u$a;->o:Z

    .line 9
    iget-object p1, p0, Li/c/b0/e/f/e/u$a;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 10
    invoke-virtual {p0}, Li/c/b0/e/f/e/u$a;->d()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 11
    iput v0, p0, Li/c/b0/e/f/e/u$a;->p:I

    .line 12
    iput-object p1, p0, Li/c/b0/e/f/e/u$a;->m:Li/c/b0/e/c/k;

    .line 13
    iget-object p1, p0, Li/c/b0/e/f/e/u$a;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    return-void

    .line 14
    :cond_1
    new-instance p1, Li/c/b0/e/g/c;

    iget v0, p0, Li/c/b0/e/f/e/u$a;->i:I

    invoke-direct {p1, v0}, Li/c/b0/e/g/c;-><init>(I)V

    iput-object p1, p0, Li/c/b0/e/f/e/u$a;->m:Li/c/b0/e/c/k;

    .line 15
    iget-object p1, p0, Li/c/b0/e/f/e/u$a;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    :cond_2
    return-void
.end method
