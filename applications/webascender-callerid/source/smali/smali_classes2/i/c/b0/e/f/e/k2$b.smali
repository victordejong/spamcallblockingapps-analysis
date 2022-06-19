.class final Li/c/b0/e/f/e/k2$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/k2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "[",
        "Li/c/b0/e/f/e/k2$a<",
        "TT;>;>;",
        "Li/c/b0/b/c0<",
        "TT;>;",
        "Li/c/b0/c/c;"
    }
.end annotation


# static fields
.field static final j:[Li/c/b0/e/f/e/k2$a;

.field static final k:[Li/c/b0/e/f/e/k2$a;


# instance fields
.field final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/b0/e/f/e/k2$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/b0/c/c;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Li/c/b0/e/f/e/k2$a;

    .line 1
    sput-object v1, Li/c/b0/e/f/e/k2$b;->j:[Li/c/b0/e/f/e/k2$a;

    new-array v0, v0, [Li/c/b0/e/f/e/k2$a;

    .line 2
    sput-object v0, Li/c/b0/e/f/e/k2$b;->k:[Li/c/b0/e/f/e/k2$a;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/b0/e/f/e/k2$b<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Li/c/b0/e/f/e/k2$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Li/c/b0/e/f/e/k2$b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/k2$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    sget-object p1, Li/c/b0/e/f/e/k2$b;->j:[Li/c/b0/e/f/e/k2$a;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Li/c/b0/e/f/e/k2$a;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/k2$a<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/b0/e/f/e/k2$a;

    .line 2
    sget-object v1, Li/c/b0/e/f/e/k2$b;->k:[Li/c/b0/e/f/e/k2$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 3
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 4
    new-array v3, v3, [Li/c/b0/e/f/e/k2$a;

    .line 5
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    aput-object p1, v3, v1

    .line 7
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public b(Li/c/b0/e/f/e/k2$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/k2$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/b0/e/f/e/k2$a;

    .line 2
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 3
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    return-void

    .line 4
    :cond_4
    sget-object v4, Li/c/b0/e/f/e/k2$b;->j:[Li/c/b0/e/f/e/k2$a;

    const/4 v5, 0x1

    if-eq v1, v5, :cond_5

    add-int/lit8 v4, v1, -0x1

    .line 5
    new-array v4, v4, [Li/c/b0/e/f/e/k2$a;

    .line 6
    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v5

    .line 7
    invoke-static {v0, v3, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    :cond_5
    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 1
    sget-object v0, Li/c/b0/e/f/e/k2$b;->k:[Li/c/b0/e/f/e/k2$a;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/k2$b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/k2$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Li/c/b0/e/f/e/k2$b;->k:[Li/c/b0/e/f/e/k2$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 4

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/k2$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Li/c/b0/e/f/e/k2$b;->k:[Li/c/b0/e/f/e/k2$a;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/b0/e/f/e/k2$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    iget-object v3, v3, Li/c/b0/e/f/e/k2$a;->f:Li/c/b0/b/c0;

    invoke-interface {v3}, Li/c/b0/b/c0;->onComplete()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/k2$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    if-eq v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/k2$b;->i:Ljava/lang/Throwable;

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/k2$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 4
    sget-object v0, Li/c/b0/e/f/e/k2$b;->k:[Li/c/b0/e/f/e/k2$a;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/b0/e/f/e/k2$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 5
    iget-object v3, v3, Li/c/b0/e/f/e/k2$a;->f:Li/c/b0/b/c0;

    invoke-interface {v3, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    :cond_1
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
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/b0/e/f/e/k2$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    iget-object v3, v3, Li/c/b0/e/f/e/k2$a;->f:Li/c/b0/b/c0;

    invoke-interface {v3, p1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/k2$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    return-void
.end method
