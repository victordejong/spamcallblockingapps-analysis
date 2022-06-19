.class final Li/c/z/e/e/d$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/w/b;
.implements Li/c/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/e/d$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Li/c/w/b;",
        "Li/c/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/c;

.field final g:Li/c/z/j/c;

.field final h:Li/c/y/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/d<",
            "-TT;+",
            "Li/c/d;",
            ">;"
        }
    .end annotation
.end field

.field final i:Z

.field final j:Li/c/w/a;

.field k:Li/c/w/b;

.field volatile l:Z


# direct methods
.method constructor <init>(Li/c/c;Li/c/y/d;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/c;",
            "Li/c/y/d<",
            "-TT;+",
            "Li/c/d;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/e/d$a;->f:Li/c/c;

    .line 3
    iput-object p2, p0, Li/c/z/e/e/d$a;->h:Li/c/y/d;

    .line 4
    iput-boolean p3, p0, Li/c/z/e/e/d$a;->i:Z

    .line 5
    new-instance p1, Li/c/z/j/c;

    invoke-direct {p1}, Li/c/z/j/c;-><init>()V

    iput-object p1, p0, Li/c/z/e/e/d$a;->g:Li/c/z/j/c;

    .line 6
    new-instance p1, Li/c/w/a;

    invoke-direct {p1}, Li/c/w/a;-><init>()V

    iput-object p1, p0, Li/c/z/e/e/d$a;->j:Li/c/w/a;

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public a(Li/c/w/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/e/d$a;->k:Li/c/w/b;

    invoke-static {v0, p1}, Li/c/z/a/b;->validate(Li/c/w/b;Li/c/w/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/z/e/e/d$a;->k:Li/c/w/b;

    .line 3
    iget-object p1, p0, Li/c/z/e/e/d$a;->f:Li/c/c;

    invoke-interface {p1, p0}, Li/c/c;->a(Li/c/w/b;)V

    :cond_0
    return-void
.end method

.method b(Li/c/z/e/e/d$a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/z/e/e/d$a<",
            "TT;>.a;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/e/d$a;->j:Li/c/w/a;

    invoke-virtual {v0, p1}, Li/c/w/a;->c(Li/c/w/b;)Z

    .line 2
    invoke-virtual {p0}, Li/c/z/e/e/d$a;->onComplete()V

    return-void
.end method

.method c(Li/c/z/e/e/d$a$a;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/z/e/e/d$a<",
            "TT;>.a;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/e/d$a;->j:Li/c/w/a;

    invoke-virtual {v0, p1}, Li/c/w/a;->c(Li/c/w/b;)Z

    .line 2
    invoke-virtual {p0, p2}, Li/c/z/e/e/d$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/z/e/e/d$a;->l:Z

    .line 2
    iget-object v0, p0, Li/c/z/e/e/d$a;->k:Li/c/w/b;

    invoke-interface {v0}, Li/c/w/b;->dispose()V

    .line 3
    iget-object v0, p0, Li/c/z/e/e/d$a;->j:Li/c/w/a;

    invoke-virtual {v0}, Li/c/w/a;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/e/d$a;->k:Li/c/w/b;

    invoke-interface {v0}, Li/c/w/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Li/c/z/e/e/d$a;->g:Li/c/z/j/c;

    invoke-virtual {v0}, Li/c/z/j/c;->b()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Li/c/z/e/e/d$a;->f:Li/c/c;

    invoke-interface {v1, v0}, Li/c/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Li/c/z/e/e/d$a;->f:Li/c/c;

    invoke-interface {v0}, Li/c/c;->onComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/e/d$a;->g:Li/c/z/j/c;

    invoke-virtual {v0, p1}, Li/c/z/j/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean p1, p0, Li/c/z/e/e/d$a;->i:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Li/c/z/e/e/d$a;->g:Li/c/z/j/c;

    invoke-virtual {p1}, Li/c/z/j/c;->b()Ljava/lang/Throwable;

    move-result-object p1

    .line 5
    iget-object v0, p0, Li/c/z/e/e/d$a;->f:Li/c/c;

    invoke-interface {v0, p1}, Li/c/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Li/c/z/e/e/d$a;->dispose()V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    if-lez p1, :cond_2

    .line 8
    iget-object p1, p0, Li/c/z/e/e/d$a;->g:Li/c/z/j/c;

    invoke-virtual {p1}, Li/c/z/j/c;->b()Ljava/lang/Throwable;

    move-result-object p1

    .line 9
    iget-object v0, p0, Li/c/z/e/e/d$a;->f:Li/c/c;

    invoke-interface {v0, p1}, Li/c/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {p1}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    :cond_2
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
    iget-object v0, p0, Li/c/z/e/e/d$a;->h:Li/c/y/d;

    invoke-interface {v0, p1}, Li/c/y/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Li/c/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 3
    new-instance v0, Li/c/z/e/e/d$a$a;

    invoke-direct {v0, p0}, Li/c/z/e/e/d$a$a;-><init>(Li/c/z/e/e/d$a;)V

    .line 4
    iget-boolean v1, p0, Li/c/z/e/e/d$a;->l:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Li/c/z/e/e/d$a;->j:Li/c/w/a;

    invoke-virtual {v1, v0}, Li/c/w/a;->b(Li/c/w/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p1, v0}, Li/c/d;->a(Li/c/c;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    iget-object v0, p0, Li/c/z/e/e/d$a;->k:Li/c/w/b;

    invoke-interface {v0}, Li/c/w/b;->dispose()V

    .line 8
    invoke-virtual {p0, p1}, Li/c/z/e/e/d$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
