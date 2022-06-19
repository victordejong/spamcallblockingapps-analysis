.class final Li/c/b0/e/f/a/m$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/g;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final f:Li/c/b0/b/g;

.field final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final h:Li/c/b0/c/a;


# direct methods
.method constructor <init>(Li/c/b0/b/g;Ljava/util/concurrent/atomic/AtomicBoolean;Li/c/b0/c/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/a/m$a;->f:Li/c/b0/b/g;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/a/m$a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    iput-object p3, p0, Li/c/b0/e/f/a/m$a;->h:Li/c/b0/c/a;

    .line 5
    invoke-virtual {p0, p4}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/m$a;->h:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->dispose()V

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/a/m$a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/m$a;->h:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/a/m$a;->f:Li/c/b0/b/g;

    invoke-interface {v0}, Li/c/b0/b/g;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/m$a;->h:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->dispose()V

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/a/m$a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/a/m$a;->f:Li/c/b0/b/g;

    invoke-interface {v0, p1}, Li/c/b0/b/g;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/m$a;->h:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method
