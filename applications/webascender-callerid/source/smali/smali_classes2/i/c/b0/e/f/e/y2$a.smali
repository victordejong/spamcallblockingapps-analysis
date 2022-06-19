.class final Li/c/b0/e/f/e/y2$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/y2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/y2$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field final h:Li/c/b0/e/k/c;

.field final i:Li/c/b0/k/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/d<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final j:Li/c/b0/e/f/e/y2$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/y2$a<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/b0/c/c;",
            ">;"
        }
    .end annotation
.end field

.field final l:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile m:Z


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/k/d;Li/c/b0/b/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;",
            "Li/c/b0/k/d<",
            "Ljava/lang/Throwable;",
            ">;",
            "Li/c/b0/b/a0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/y2$a;->f:Li/c/b0/b/c0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/y2$a;->i:Li/c/b0/k/d;

    .line 4
    iput-object p3, p0, Li/c/b0/e/f/e/y2$a;->l:Li/c/b0/b/a0;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/y2$a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance p1, Li/c/b0/e/k/c;

    invoke-direct {p1}, Li/c/b0/e/k/c;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/y2$a;->h:Li/c/b0/e/k/c;

    .line 7
    new-instance p1, Li/c/b0/e/f/e/y2$a$a;

    invoke-direct {p1, p0}, Li/c/b0/e/f/e/y2$a$a;-><init>(Li/c/b0/e/f/e/y2$a;)V

    iput-object p1, p0, Li/c/b0/e/f/e/y2$a;->j:Li/c/b0/e/f/e/y2$a$a;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/y2$a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/y2$a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/y2$a;->f:Li/c/b0/b/c0;

    iget-object v1, p0, Li/c/b0/e/f/e/y2$a;->h:Li/c/b0/e/k/c;

    invoke-static {v0, p0, v1}, Li/c/b0/e/k/k;->a(Li/c/b0/b/c0;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)V

    return-void
.end method

.method b(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/y2$a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/y2$a;->f:Li/c/b0/b/c0;

    iget-object v1, p0, Li/c/b0/e/f/e/y2$a;->h:Li/c/b0/e/k/c;

    invoke-static {v0, p1, p0, v1}, Li/c/b0/e/k/k;->c(Li/c/b0/b/c0;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)V

    return-void
.end method

.method c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Li/c/b0/e/f/e/y2$a;->d()V

    return-void
.end method

.method d()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/y2$a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_3

    .line 2
    :cond_0
    invoke-virtual {p0}, Li/c/b0/e/f/e/y2$a;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Li/c/b0/e/f/e/y2$a;->m:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Li/c/b0/e/f/e/y2$a;->m:Z

    .line 5
    iget-object v0, p0, Li/c/b0/e/f/e/y2$a;->l:Li/c/b0/b/a0;

    invoke-interface {v0, p0}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    .line 6
    :cond_2
    iget-object v0, p0, Li/c/b0/e/f/e/y2$a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/y2$a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/y2$a;->j:Li/c/b0/e/f/e/y2$a$a;

    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/y2$a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/c/c;

    invoke-static {v0}, Li/c/b0/e/a/c;->isDisposed(Li/c/b0/c/c;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/y2$a;->j:Li/c/b0/e/f/e/y2$a$a;

    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/y2$a;->f:Li/c/b0/b/c0;

    iget-object v1, p0, Li/c/b0/e/f/e/y2$a;->h:Li/c/b0/e/k/c;

    invoke-static {v0, p0, v1}, Li/c/b0/e/k/k;->a(Li/c/b0/b/c0;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/y2$a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Li/c/b0/e/a/c;->replace(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/f/e/y2$a;->m:Z

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/y2$a;->i:Li/c/b0/k/d;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

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
    iget-object v0, p0, Li/c/b0/e/f/e/y2$a;->f:Li/c/b0/b/c0;

    iget-object v1, p0, Li/c/b0/e/f/e/y2$a;->h:Li/c/b0/e/k/c;

    invoke-static {v0, p1, p0, v1}, Li/c/b0/e/k/k;->e(Li/c/b0/b/c0;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/y2$a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->replace(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    return-void
.end method
