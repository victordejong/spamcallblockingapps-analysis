.class final Li/c/b0/e/f/e/m1$c;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/b0/c/c;
.implements Li/c/b0/b/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Li/c/b0/c/c;",
        "Li/c/b0/b/a0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/e/g/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/g/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/e/f/e/m1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/m1$a<",
            "*TK;TT;>;"
        }
    .end annotation
.end field

.field final i:Z

.field volatile j:Z

.field k:Ljava/lang/Throwable;

.field final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final m:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/b0/b/c0<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field final n:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(ILi/c/b0/e/f/e/m1$a;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Li/c/b0/e/f/e/m1$a<",
            "*TK;TT;>;TK;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Li/c/b0/e/f/e/m1$c;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Li/c/b0/e/f/e/m1$c;->m:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Li/c/b0/e/f/e/m1$c;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance v0, Li/c/b0/e/g/c;

    invoke-direct {v0, p1}, Li/c/b0/e/g/c;-><init>(I)V

    iput-object v0, p0, Li/c/b0/e/f/e/m1$c;->g:Li/c/b0/e/g/c;

    .line 6
    iput-object p2, p0, Li/c/b0/e/f/e/m1$c;->h:Li/c/b0/e/f/e/m1$a;

    .line 7
    iput-object p3, p0, Li/c/b0/e/f/e/m1$c;->f:Ljava/lang/Object;

    .line 8
    iput-boolean p4, p0, Li/c/b0/e/f/e/m1$c;->i:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m1$c;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/m1$c;->h:Li/c/b0/e/f/e/m1$a;

    iget-object v1, p0, Li/c/b0/e/f/e/m1$c;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Li/c/b0/e/f/e/m1$a;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method b(ZZLi/c/b0/b/c0;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Li/c/b0/b/c0<",
            "-TT;>;Z)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m1$c;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/e/m1$c;->g:Li/c/b0/e/g/c;

    invoke-virtual {p1}, Li/c/b0/e/g/c;->clear()V

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/e/m1$c;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Li/c/b0/e/f/e/m1$c;->a()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p4, :cond_2

    if-eqz p2, :cond_4

    .line 5
    iget-object p1, p0, Li/c/b0/e/f/e/m1$c;->k:Ljava/lang/Throwable;

    .line 6
    iget-object p2, p0, Li/c/b0/e/f/e/m1$c;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p3, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p3}, Li/c/b0/b/c0;->onComplete()V

    :goto_0
    return v1

    .line 9
    :cond_2
    iget-object p1, p0, Li/c/b0/e/f/e/m1$c;->k:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 10
    iget-object p2, p0, Li/c/b0/e/f/e/m1$c;->g:Li/c/b0/e/g/c;

    invoke-virtual {p2}, Li/c/b0/e/g/c;->clear()V

    .line 11
    iget-object p2, p0, Li/c/b0/e/f/e/m1$c;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 12
    invoke-interface {p3, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 13
    iget-object p1, p0, Li/c/b0/e/f/e/m1$c;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 14
    invoke-interface {p3}, Li/c/b0/b/c0;->onComplete()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method c()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/m1$c;->g:Li/c/b0/e/g/c;

    .line 3
    iget-boolean v1, p0, Li/c/b0/e/f/e/m1$c;->i:Z

    .line 4
    iget-object v2, p0, Li/c/b0/e/f/e/m1$c;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li/c/b0/b/c0;

    const/4 v3, 0x1

    const/4 v4, 0x1

    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    .line 5
    :goto_1
    iget-boolean v5, p0, Li/c/b0/e/f/e/m1$c;->j:Z

    .line 6
    invoke-virtual {v0}, Li/c/b0/e/g/c;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 7
    :goto_2
    invoke-virtual {p0, v5, v7, v2, v1}, Li/c/b0/e/f/e/m1$c;->b(ZZLi/c/b0/b/c0;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    return-void

    :cond_3
    if-eqz v7, :cond_4

    goto :goto_3

    .line 8
    :cond_4
    invoke-interface {v2, v6}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    :goto_3
    neg-int v4, v4

    .line 9
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_6

    return-void

    :cond_6
    if-nez v2, :cond_1

    .line 10
    iget-object v2, p0, Li/c/b0/e/f/e/m1$c;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li/c/b0/b/c0;

    goto :goto_0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/m1$c;->j:Z

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/m1$c;->c()V

    return-void
.end method

.method public dispose()V
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m1$c;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/m1$c;->m:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Li/c/b0/e/f/e/m1$c;->a()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/c/b0/e/f/e/m1$c;->k:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Li/c/b0/e/f/e/m1$c;->j:Z

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/f/e/m1$c;->c()V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m1$c;->g:Li/c/b0/e/g/c;

    invoke-virtual {v0, p1}, Li/c/b0/e/g/c;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/m1$c;->c()V

    return-void
.end method

.method g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m1$c;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Li/c/b0/e/f/e/m1$c;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m1$c;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public subscribe(Li/c/b0/b/c0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/m1$c;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one Observer allowed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V

    return-void

    :cond_1
    or-int/lit8 v1, v0, 0x1

    .line 3
    iget-object v2, p0, Li/c/b0/e/f/e/m1$c;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 5
    iget-object v0, p0, Li/c/b0/e/f/e/m1$c;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Li/c/b0/e/f/e/m1$c;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Li/c/b0/e/f/e/m1$c;->m:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Li/c/b0/e/f/e/m1$c;->c()V

    :goto_0
    return-void
.end method
