.class final Li/c/b0/e/f/e/m0$a;
.super Li/c/b0/e/e/b;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/m0;
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

.field final g:Li/c/b0/d/a;

.field h:Li/c/b0/c/c;

.field i:Li/c/b0/e/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/c/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field j:Z


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/d/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;",
            "Li/c/b0/d/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/e/e/b;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/m0$a;->f:Li/c/b0/b/c0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/m0$a;->g:Li/c/b0/d/a;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/m0$a;->g:Li/c/b0/d/a;

    invoke-interface {v0}, Li/c/b0/d/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {v0}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m0$a;->i:Li/c/b0/e/c/f;

    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m0$a;->h:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/m0$a;->a()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m0$a;->h:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m0$a;->i:Li/c/b0/e/c/f;

    invoke-interface {v0}, Li/c/b0/e/c/k;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m0$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/m0$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m0$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/m0$a;->a()V

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
    iget-object v0, p0, Li/c/b0/e/f/e/m0$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m0$a;->h:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/m0$a;->h:Li/c/b0/c/c;

    .line 3
    instance-of v0, p1, Li/c/b0/e/c/f;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Li/c/b0/e/c/f;

    iput-object p1, p0, Li/c/b0/e/f/e/m0$a;->i:Li/c/b0/e/c/f;

    .line 5
    :cond_0
    iget-object p1, p0, Li/c/b0/e/f/e/m0$a;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    :cond_1
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
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
    iget-object v0, p0, Li/c/b0/e/f/e/m0$a;->i:Li/c/b0/e/c/f;

    invoke-interface {v0}, Li/c/b0/e/c/k;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-boolean v1, p0, Li/c/b0/e/f/e/m0$a;->j:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/f/e/m0$a;->a()V

    :cond_0
    return-object v0
.end method

.method public requestFusion(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m0$a;->i:Li/c/b0/e/c/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    and-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_2

    .line 2
    invoke-interface {v0, p1}, Li/c/b0/e/c/g;->requestFusion(I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    .line 3
    :cond_0
    iput-boolean v1, p0, Li/c/b0/e/f/e/m0$a;->j:Z

    :cond_1
    return p1

    :cond_2
    return v1
.end method
