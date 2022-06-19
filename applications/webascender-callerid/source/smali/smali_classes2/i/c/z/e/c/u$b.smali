.class final Li/c/z/e/c/u$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/w/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/c/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Li/c/w/b;"
    }
.end annotation


# instance fields
.field final f:Li/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/l<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final g:Li/c/y/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/d<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final h:[Li/c/z/e/c/u$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Li/c/z/e/c/u$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final i:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Li/c/l;ILi/c/y/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/l<",
            "-TR;>;I",
            "Li/c/y/d<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2
    iput-object p1, p0, Li/c/z/e/c/u$b;->f:Li/c/l;

    .line 3
    iput-object p3, p0, Li/c/z/e/c/u$b;->g:Li/c/y/d;

    .line 4
    new-array p1, p2, [Li/c/z/e/c/u$c;

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 5
    new-instance v0, Li/c/z/e/c/u$c;

    invoke-direct {v0, p0, p3}, Li/c/z/e/c/u$c;-><init>(Li/c/z/e/c/u$b;I)V

    aput-object v0, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Li/c/z/e/c/u$b;->h:[Li/c/z/e/c/u$c;

    .line 7
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Li/c/z/e/c/u$b;->i:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Li/c/z/e/c/u$b;->h:[Li/c/z/e/c/u$c;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 3
    aget-object v3, v0, v2

    invoke-virtual {v3}, Li/c/z/e/c/u$c;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v1, :cond_1

    .line 4
    aget-object v2, v0, p1

    invoke-virtual {v2}, Li/c/z/e/c/u$c;->b()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method b(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Li/c/z/e/c/u$b;->a(I)V

    .line 3
    iget-object p1, p0, Li/c/z/e/c/u$b;->f:Li/c/l;

    invoke-interface {p1}, Li/c/l;->onComplete()V

    :cond_0
    return-void
.end method

.method c(Ljava/lang/Throwable;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Li/c/z/e/c/u$b;->a(I)V

    .line 3
    iget-object p2, p0, Li/c/z/e/c/u$b;->f:Li/c/l;

    invoke-interface {p2, p1}, Li/c/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method d(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/c/u$b;->i:[Ljava/lang/Object;

    aput-object p1, v0, p2

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    :try_start_0
    iget-object p1, p0, Li/c/z/e/c/u$b;->g:Li/c/y/d;

    iget-object p2, p0, Li/c/z/e/c/u$b;->i:[Ljava/lang/Object;

    invoke-interface {p1, p2}, Li/c/y/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "The zipper returned a null value"

    invoke-static {p1, p2}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p2, p0, Li/c/z/e/c/u$b;->f:Li/c/l;

    invoke-interface {p2, p1}, Li/c/l;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    iget-object p2, p0, Li/c/z/e/c/u$b;->f:Li/c/l;

    invoke-interface {p2, p1}, Li/c/l;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 2
    iget-object v1, p0, Li/c/z/e/c/u$b;->h:[Li/c/z/e/c/u$c;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 3
    invoke-virtual {v3}, Li/c/z/e/c/u$c;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
