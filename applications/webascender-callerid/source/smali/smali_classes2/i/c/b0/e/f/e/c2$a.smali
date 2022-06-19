.class final Li/c/b0/e/f/e/c2$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/c2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/c2$a$a;
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

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/b0/c/c;",
            ">;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/e/f/e/c2$a$a;

.field final i:Li/c/b0/e/k/c;

.field volatile j:Z

.field volatile k:Z


# direct methods
.method constructor <init>(Li/c/b0/b/c0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/c2$a;->f:Li/c/b0/b/c0;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/c2$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance p1, Li/c/b0/e/f/e/c2$a$a;

    invoke-direct {p1, p0}, Li/c/b0/e/f/e/c2$a$a;-><init>(Li/c/b0/e/f/e/c2$a;)V

    iput-object p1, p0, Li/c/b0/e/f/e/c2$a;->h:Li/c/b0/e/f/e/c2$a$a;

    .line 5
    new-instance p1, Li/c/b0/e/k/c;

    invoke-direct {p1}, Li/c/b0/e/k/c;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/c2$a;->i:Li/c/b0/e/k/c;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/c2$a;->k:Z

    .line 2
    iget-boolean v0, p0, Li/c/b0/e/f/e/c2$a;->j:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/c2$a;->f:Li/c/b0/b/c0;

    iget-object v1, p0, Li/c/b0/e/f/e/c2$a;->i:Li/c/b0/e/k/c;

    invoke-static {v0, p0, v1}, Li/c/b0/e/k/k;->a(Li/c/b0/b/c0;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)V

    :cond_0
    return-void
.end method

.method b(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/c2$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/c2$a;->f:Li/c/b0/b/c0;

    iget-object v1, p0, Li/c/b0/e/f/e/c2$a;->i:Li/c/b0/e/k/c;

    invoke-static {v0, p1, p0, v1}, Li/c/b0/e/k/k;->c(Li/c/b0/b/c0;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/c2$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/c2$a;->h:Li/c/b0/e/f/e/c2$a$a;

    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/c2$a;->i:Li/c/b0/e/k/c;

    invoke-virtual {v0}, Li/c/b0/e/k/c;->d()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/c2$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/c/c;

    invoke-static {v0}, Li/c/b0/e/a/c;->isDisposed(Li/c/b0/c/c;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/c2$a;->j:Z

    .line 2
    iget-boolean v0, p0, Li/c/b0/e/f/e/c2$a;->k:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/c2$a;->f:Li/c/b0/b/c0;

    iget-object v1, p0, Li/c/b0/e/f/e/c2$a;->i:Li/c/b0/e/k/c;

    invoke-static {v0, p0, v1}, Li/c/b0/e/k/k;->a(Li/c/b0/b/c0;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/c2$a;->h:Li/c/b0/e/f/e/c2$a$a;

    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/c2$a;->f:Li/c/b0/b/c0;

    iget-object v1, p0, Li/c/b0/e/f/e/c2$a;->i:Li/c/b0/e/k/c;

    invoke-static {v0, p1, p0, v1}, Li/c/b0/e/k/k;->c(Li/c/b0/b/c0;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)V

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
    iget-object v0, p0, Li/c/b0/e/f/e/c2$a;->f:Li/c/b0/b/c0;

    iget-object v1, p0, Li/c/b0/e/f/e/c2$a;->i:Li/c/b0/e/k/c;

    invoke-static {v0, p1, p0, v1}, Li/c/b0/e/k/k;->e(Li/c/b0/b/c0;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/c2$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    return-void
.end method
