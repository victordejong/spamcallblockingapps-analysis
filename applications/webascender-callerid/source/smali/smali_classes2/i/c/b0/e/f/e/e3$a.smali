.class final Li/c/b0/e/f/e/e3$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/e3;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Li/c/b0/c/c;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/c0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/e/a/a;

.field final i:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final j:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final k:[Li/c/b0/e/f/e/e3$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Li/c/b0/e/f/e/e3$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile l:Z

.field m:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field n:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/b0/b/c0;ILi/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;I",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/d/d<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/e3$a;->f:Li/c/b0/b/c0;

    .line 3
    iput-object p3, p0, Li/c/b0/e/f/e/e3$a;->i:Li/c/b0/b/a0;

    .line 4
    iput-object p4, p0, Li/c/b0/e/f/e/e3$a;->j:Li/c/b0/b/a0;

    .line 5
    iput-object p5, p0, Li/c/b0/e/f/e/e3$a;->g:Li/c/b0/d/d;

    const/4 p1, 0x2

    new-array p3, p1, [Li/c/b0/e/f/e/e3$b;

    .line 6
    iput-object p3, p0, Li/c/b0/e/f/e/e3$a;->k:[Li/c/b0/e/f/e/e3$b;

    .line 7
    new-instance p4, Li/c/b0/e/f/e/e3$b;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5, p2}, Li/c/b0/e/f/e/e3$b;-><init>(Li/c/b0/e/f/e/e3$a;II)V

    aput-object p4, p3, p5

    .line 8
    new-instance p4, Li/c/b0/e/f/e/e3$b;

    const/4 p5, 0x1

    invoke-direct {p4, p0, p5, p2}, Li/c/b0/e/f/e/e3$b;-><init>(Li/c/b0/e/f/e/e3$a;II)V

    aput-object p4, p3, p5

    .line 9
    new-instance p2, Li/c/b0/e/a/a;

    invoke-direct {p2, p1}, Li/c/b0/e/a/a;-><init>(I)V

    iput-object p2, p0, Li/c/b0/e/f/e/e3$a;->h:Li/c/b0/e/a/a;

    return-void
.end method


# virtual methods
.method a(Li/c/b0/e/g/c;Li/c/b0/e/g/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/g/c<",
            "TT;>;",
            "Li/c/b0/e/g/c<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/e3$a;->l:Z

    .line 2
    invoke-virtual {p1}, Li/c/b0/e/g/c;->clear()V

    .line 3
    invoke-virtual {p2}, Li/c/b0/e/g/c;->clear()V

    return-void
.end method

.method b()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/e3$a;->k:[Li/c/b0/e/f/e/e3$b;

    const/4 v1, 0x0

    .line 3
    aget-object v2, v0, v1

    .line 4
    iget-object v3, v2, Li/c/b0/e/f/e/e3$b;->g:Li/c/b0/e/g/c;

    const/4 v4, 0x1

    .line 5
    aget-object v0, v0, v4

    .line 6
    iget-object v5, v0, Li/c/b0/e/f/e/e3$b;->g:Li/c/b0/e/g/c;

    const/4 v6, 0x1

    .line 7
    :cond_1
    iget-boolean v7, p0, Li/c/b0/e/f/e/e3$a;->l:Z

    if-eqz v7, :cond_2

    .line 8
    invoke-virtual {v3}, Li/c/b0/e/g/c;->clear()V

    .line 9
    invoke-virtual {v5}, Li/c/b0/e/g/c;->clear()V

    return-void

    .line 10
    :cond_2
    iget-boolean v7, v2, Li/c/b0/e/f/e/e3$b;->i:Z

    if-eqz v7, :cond_3

    .line 11
    iget-object v8, v2, Li/c/b0/e/f/e/e3$b;->j:Ljava/lang/Throwable;

    if-eqz v8, :cond_3

    .line 12
    invoke-virtual {p0, v3, v5}, Li/c/b0/e/f/e/e3$a;->a(Li/c/b0/e/g/c;Li/c/b0/e/g/c;)V

    .line 13
    iget-object v0, p0, Li/c/b0/e/f/e/e3$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0, v8}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 14
    :cond_3
    iget-boolean v8, v0, Li/c/b0/e/f/e/e3$b;->i:Z

    if-eqz v8, :cond_4

    .line 15
    iget-object v9, v0, Li/c/b0/e/f/e/e3$b;->j:Ljava/lang/Throwable;

    if-eqz v9, :cond_4

    .line 16
    invoke-virtual {p0, v3, v5}, Li/c/b0/e/f/e/e3$a;->a(Li/c/b0/e/g/c;Li/c/b0/e/g/c;)V

    .line 17
    iget-object v0, p0, Li/c/b0/e/f/e/e3$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0, v9}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 18
    :cond_4
    iget-object v9, p0, Li/c/b0/e/f/e/e3$a;->m:Ljava/lang/Object;

    if-nez v9, :cond_5

    .line 19
    invoke-virtual {v3}, Li/c/b0/e/g/c;->poll()Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Li/c/b0/e/f/e/e3$a;->m:Ljava/lang/Object;

    .line 20
    :cond_5
    iget-object v9, p0, Li/c/b0/e/f/e/e3$a;->m:Ljava/lang/Object;

    if-nez v9, :cond_6

    const/4 v9, 0x1

    goto :goto_0

    :cond_6
    const/4 v9, 0x0

    .line 21
    :goto_0
    iget-object v10, p0, Li/c/b0/e/f/e/e3$a;->n:Ljava/lang/Object;

    if-nez v10, :cond_7

    .line 22
    invoke-virtual {v5}, Li/c/b0/e/g/c;->poll()Ljava/lang/Object;

    move-result-object v10

    iput-object v10, p0, Li/c/b0/e/f/e/e3$a;->n:Ljava/lang/Object;

    .line 23
    :cond_7
    iget-object v10, p0, Li/c/b0/e/f/e/e3$a;->n:Ljava/lang/Object;

    if-nez v10, :cond_8

    const/4 v11, 0x1

    goto :goto_1

    :cond_8
    const/4 v11, 0x0

    :goto_1
    if-eqz v7, :cond_9

    if-eqz v8, :cond_9

    if-eqz v9, :cond_9

    if-eqz v11, :cond_9

    .line 24
    iget-object v0, p0, Li/c/b0/e/f/e/e3$a;->f:Li/c/b0/b/c0;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Li/c/b0/e/f/e/e3$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    return-void

    :cond_9
    if-eqz v7, :cond_a

    if-eqz v8, :cond_a

    if-eq v9, v11, :cond_a

    .line 26
    invoke-virtual {p0, v3, v5}, Li/c/b0/e/f/e/e3$a;->a(Li/c/b0/e/g/c;Li/c/b0/e/g/c;)V

    .line 27
    iget-object v0, p0, Li/c/b0/e/f/e/e3$a;->f:Li/c/b0/b/c0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Li/c/b0/e/f/e/e3$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    return-void

    :cond_a
    if-nez v9, :cond_c

    if-nez v11, :cond_c

    .line 29
    :try_start_0
    iget-object v7, p0, Li/c/b0/e/f/e/e3$a;->g:Li/c/b0/d/d;

    iget-object v8, p0, Li/c/b0/e/f/e/e3$a;->m:Ljava/lang/Object;

    invoke-interface {v7, v8, v10}, Li/c/b0/d/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_b

    .line 30
    invoke-virtual {p0, v3, v5}, Li/c/b0/e/f/e/e3$a;->a(Li/c/b0/e/g/c;Li/c/b0/e/g/c;)V

    .line 31
    iget-object v0, p0, Li/c/b0/e/f/e/e3$a;->f:Li/c/b0/b/c0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Li/c/b0/e/f/e/e3$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    return-void

    :cond_b
    const/4 v7, 0x0

    .line 33
    iput-object v7, p0, Li/c/b0/e/f/e/e3$a;->m:Ljava/lang/Object;

    .line 34
    iput-object v7, p0, Li/c/b0/e/f/e/e3$a;->n:Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 35
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 36
    invoke-virtual {p0, v3, v5}, Li/c/b0/e/f/e/e3$a;->a(Li/c/b0/e/g/c;Li/c/b0/e/g/c;)V

    .line 37
    iget-object v1, p0, Li/c/b0/e/f/e/e3$a;->f:Li/c/b0/b/c0;

    invoke-interface {v1, v0}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_c
    :goto_2
    if-nez v9, :cond_d

    if-eqz v11, :cond_1

    :cond_d
    neg-int v6, v6

    .line 38
    invoke-virtual {p0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void
.end method

.method c(Li/c/b0/c/c;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/e3$a;->h:Li/c/b0/e/a/a;

    invoke-virtual {v0, p2, p1}, Li/c/b0/e/a/a;->a(ILi/c/b0/c/c;)Z

    move-result p1

    return p1
.end method

.method d()V
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/e3$a;->k:[Li/c/b0/e/f/e/e3$b;

    .line 2
    iget-object v1, p0, Li/c/b0/e/f/e/e3$a;->i:Li/c/b0/b/a0;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    .line 3
    iget-object v1, p0, Li/c/b0/e/f/e/e3$a;->j:Li/c/b0/b/a0;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method

.method public dispose()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/e3$a;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/f/e/e3$a;->l:Z

    .line 3
    iget-object v1, p0, Li/c/b0/e/f/e/e3$a;->h:Li/c/b0/e/a/a;

    invoke-virtual {v1}, Li/c/b0/e/a/a;->dispose()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Li/c/b0/e/f/e/e3$a;->k:[Li/c/b0/e/f/e/e3$b;

    const/4 v2, 0x0

    .line 6
    aget-object v2, v1, v2

    iget-object v2, v2, Li/c/b0/e/f/e/e3$b;->g:Li/c/b0/e/g/c;

    invoke-virtual {v2}, Li/c/b0/e/g/c;->clear()V

    .line 7
    aget-object v0, v1, v0

    iget-object v0, v0, Li/c/b0/e/f/e/e3$b;->g:Li/c/b0/e/g/c;

    invoke-virtual {v0}, Li/c/b0/e/g/c;->clear()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/e3$a;->l:Z

    return v0
.end method
