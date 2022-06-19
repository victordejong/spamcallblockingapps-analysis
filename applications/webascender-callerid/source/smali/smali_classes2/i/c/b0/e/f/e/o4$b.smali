.class final Li/c/b0/e/f/e/o4$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/o4;
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
            "-TR;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation
.end field

.field final h:[Li/c/b0/e/f/e/o4$c;

.field final i:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/b0/c/c;",
            ">;"
        }
    .end annotation
.end field

.field final k:Li/c/b0/e/k/c;

.field volatile l:Z


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/d/o;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TR;>;",
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/o4$b;->f:Li/c/b0/b/c0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/o4$b;->g:Li/c/b0/d/o;

    .line 4
    new-array p1, p3, [Li/c/b0/e/f/e/o4$c;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 5
    new-instance v0, Li/c/b0/e/f/e/o4$c;

    invoke-direct {v0, p0, p2}, Li/c/b0/e/f/e/o4$c;-><init>(Li/c/b0/e/f/e/o4$b;I)V

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Li/c/b0/e/f/e/o4$b;->h:[Li/c/b0/e/f/e/o4$c;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Li/c/b0/e/f/e/o4$b;->i:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/o4$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    new-instance p1, Li/c/b0/e/k/c;

    invoke-direct {p1}, Li/c/b0/e/k/c;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/o4$b;->k:Li/c/b0/e/k/c;

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/o4$b;->h:[Li/c/b0/e/f/e/o4$c;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    if-eq v1, p1, :cond_0

    .line 3
    aget-object v2, v0, v1

    invoke-virtual {v2}, Li/c/b0/e/f/e/o4$c;->a()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method b(IZ)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 1
    iput-boolean p2, p0, Li/c/b0/e/f/e/o4$b;->l:Z

    .line 2
    invoke-virtual {p0, p1}, Li/c/b0/e/f/e/o4$b;->a(I)V

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/e/o4$b;->f:Li/c/b0/b/c0;

    iget-object p2, p0, Li/c/b0/e/f/e/o4$b;->k:Li/c/b0/e/k/c;

    invoke-static {p1, p0, p2}, Li/c/b0/e/k/k;->a(Li/c/b0/b/c0;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)V

    :cond_0
    return-void
.end method

.method c(ILjava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/o4$b;->l:Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/o4$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    invoke-virtual {p0, p1}, Li/c/b0/e/f/e/o4$b;->a(I)V

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/e/o4$b;->f:Li/c/b0/b/c0;

    iget-object v0, p0, Li/c/b0/e/f/e/o4$b;->k:Li/c/b0/e/k/c;

    invoke-static {p1, p2, p0, v0}, Li/c/b0/e/k/k;->c(Li/c/b0/b/c0;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)V

    return-void
.end method

.method d(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/o4$b;->i:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public dispose()V
    .locals 4

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/o4$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/o4$b;->h:[Li/c/b0/e/f/e/o4$c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Li/c/b0/e/f/e/o4$c;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method e([Li/c/b0/b/a0;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Li/c/b0/b/a0<",
            "*>;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/o4$b;->h:[Li/c/b0/e/f/e/o4$c;

    .line 2
    iget-object v1, p0, Li/c/b0/e/f/e/o4$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li/c/b0/c/c;

    invoke-static {v3}, Li/c/b0/e/a/c;->isDisposed(Li/c/b0/c/c;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Li/c/b0/e/f/e/o4$b;->l:Z

    if-eqz v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    aget-object v3, p1, v2

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/o4$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

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
    iget-boolean v0, p0, Li/c/b0/e/f/e/o4$b;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/f/e/o4$b;->l:Z

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0}, Li/c/b0/e/f/e/o4$b;->a(I)V

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/e/o4$b;->f:Li/c/b0/b/c0;

    iget-object v1, p0, Li/c/b0/e/f/e/o4$b;->k:Li/c/b0/e/k/c;

    invoke-static {v0, p0, v1}, Li/c/b0/e/k/k;->a(Li/c/b0/b/c0;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/o4$b;->l:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Li/c/b0/e/f/e/o4$b;->l:Z

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p0, v0}, Li/c/b0/e/f/e/o4$b;->a(I)V

    .line 5
    iget-object v0, p0, Li/c/b0/e/f/e/o4$b;->f:Li/c/b0/b/c0;

    iget-object v1, p0, Li/c/b0/e/f/e/o4$b;->k:Li/c/b0/e/k/c;

    invoke-static {v0, p1, p0, v1}, Li/c/b0/e/k/k;->c(Li/c/b0/b/c0;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/o4$b;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/o4$b;->i:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 4
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 5
    aput-object p1, v2, v3

    :goto_0
    if-ge v3, v1, :cond_2

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 7
    aput-object p1, v2, v3

    goto :goto_0

    .line 8
    :cond_2
    :try_start_0
    iget-object p1, p0, Li/c/b0/e/f/e/o4$b;->g:Li/c/b0/d/o;

    invoke-interface {p1, v2}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "combiner returned a null value"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Li/c/b0/e/f/e/o4$b;->f:Li/c/b0/b/c0;

    iget-object v1, p0, Li/c/b0/e/f/e/o4$b;->k:Li/c/b0/e/k/c;

    invoke-static {v0, p1, p0, v1}, Li/c/b0/e/k/k;->e(Li/c/b0/b/c0;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 11
    invoke-virtual {p0}, Li/c/b0/e/f/e/o4$b;->dispose()V

    .line 12
    invoke-virtual {p0, p1}, Li/c/b0/e/f/e/o4$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/o4$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    return-void
.end method
