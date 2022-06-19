.class final Li/c/b0/e/f/e/w0$a;
.super Li/c/b0/e/e/b;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/w0$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/e/b<",
        "TT;>;",
        "Li/c/b0/b/c0<",
        "TT;>;"
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

.field final g:Li/c/b0/e/k/c;

.field final h:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i;",
            ">;"
        }
    .end annotation
.end field

.field final i:Z

.field final j:Li/c/b0/c/a;

.field k:Li/c/b0/c/c;

.field volatile l:Z


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/d/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/e/e/b;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/w0$a;->f:Li/c/b0/b/c0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/w0$a;->h:Li/c/b0/d/o;

    .line 4
    iput-boolean p3, p0, Li/c/b0/e/f/e/w0$a;->i:Z

    .line 5
    new-instance p1, Li/c/b0/e/k/c;

    invoke-direct {p1}, Li/c/b0/e/k/c;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/w0$a;->g:Li/c/b0/e/k/c;

    .line 6
    new-instance p1, Li/c/b0/c/a;

    invoke-direct {p1}, Li/c/b0/c/a;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/w0$a;->j:Li/c/b0/c/a;

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method a(Li/c/b0/e/f/e/w0$a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/w0$a<",
            "TT;>.a;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/w0$a;->j:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->c(Li/c/b0/c/c;)Z

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/w0$a;->onComplete()V

    return-void
.end method

.method b(Li/c/b0/e/f/e/w0$a$a;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/w0$a<",
            "TT;>.a;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/w0$a;->j:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->c(Li/c/b0/c/c;)Z

    .line 2
    invoke-virtual {p0, p2}, Li/c/b0/e/f/e/w0$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/w0$a;->l:Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/w0$a;->k:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/w0$a;->j:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->dispose()V

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/e/w0$a;->g:Li/c/b0/e/k/c;

    invoke-virtual {v0}, Li/c/b0/e/k/c;->d()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/w0$a;->k:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/w0$a;->g:Li/c/b0/e/k/c;

    iget-object v1, p0, Li/c/b0/e/f/e/w0$a;->f:Li/c/b0/b/c0;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/w0$a;->g:Li/c/b0/e/k/c;

    invoke-virtual {v0, p1}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Li/c/b0/e/f/e/w0$a;->i:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/e/w0$a;->g:Li/c/b0/e/k/c;

    iget-object v0, p0, Li/c/b0/e/f/e/w0$a;->f:Li/c/b0/b/c0;

    invoke-virtual {p1, v0}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Li/c/b0/e/f/e/w0$a;->l:Z

    .line 6
    iget-object p1, p0, Li/c/b0/e/f/e/w0$a;->k:Li/c/b0/c/c;

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    .line 7
    iget-object p1, p0, Li/c/b0/e/f/e/w0$a;->j:Li/c/b0/c/a;

    invoke-virtual {p1}, Li/c/b0/c/a;->dispose()V

    .line 8
    iget-object p1, p0, Li/c/b0/e/f/e/w0$a;->g:Li/c/b0/e/k/c;

    iget-object v0, p0, Li/c/b0/e/f/e/w0$a;->f:Li/c/b0/b/c0;

    invoke-virtual {p1, v0}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    :cond_1
    :goto_0
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
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/w0$a;->h:Li/c/b0/d/o;

    invoke-interface {v0, p1}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Li/c/b0/b/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 3
    new-instance v0, Li/c/b0/e/f/e/w0$a$a;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/w0$a$a;-><init>(Li/c/b0/e/f/e/w0$a;)V

    .line 4
    iget-boolean v1, p0, Li/c/b0/e/f/e/w0$a;->l:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Li/c/b0/e/f/e/w0$a;->j:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p1, v0}, Li/c/b0/b/i;->a(Li/c/b0/b/g;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    iget-object v0, p0, Li/c/b0/e/f/e/w0$a;->k:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 8
    invoke-virtual {p0, p1}, Li/c/b0/e/f/e/w0$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/w0$a;->k:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/w0$a;->k:Li/c/b0/c/c;

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/e/w0$a;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    :cond_0
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public requestFusion(I)I
    .locals 0

    and-int/lit8 p1, p1, 0x2

    return p1
.end method
