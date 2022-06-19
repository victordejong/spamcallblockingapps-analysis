.class public final Li/c/b0/e/f/e/p;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/p$b;,
        Li/c/b0/e/f/e/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/a<",
        "TT;TT;>;",
        "Li/c/b0/b/c0<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final p:[Li/c/b0/e/f/e/p$a;

.field static final q:[Li/c/b0/e/f/e/p$a;


# instance fields
.field final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final h:I

.field final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Li/c/b0/e/f/e/p$a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field volatile j:J

.field final k:Li/c/b0/e/f/e/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/p$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field l:Li/c/b0/e/f/e/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/p$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field m:I

.field n:Ljava/lang/Throwable;

.field volatile o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Li/c/b0/e/f/e/p$a;

    .line 1
    sput-object v1, Li/c/b0/e/f/e/p;->p:[Li/c/b0/e/f/e/p$a;

    new-array v0, v0, [Li/c/b0/e/f/e/p$a;

    .line 2
    sput-object v0, Li/c/b0/e/f/e/p;->q:[Li/c/b0/e/f/e/p$a;

    return-void
.end method

.method public constructor <init>(Li/c/b0/b/v;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput p2, p0, Li/c/b0/e/f/e/p;->h:I

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/p;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance p1, Li/c/b0/e/f/e/p$b;

    invoke-direct {p1, p2}, Li/c/b0/e/f/e/p$b;-><init>(I)V

    .line 5
    iput-object p1, p0, Li/c/b0/e/f/e/p;->k:Li/c/b0/e/f/e/p$b;

    .line 6
    iput-object p1, p0, Li/c/b0/e/f/e/p;->l:Li/c/b0/e/f/e/p$b;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Li/c/b0/e/f/e/p;->p:[Li/c/b0/e/f/e/p$a;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Li/c/b0/e/f/e/p;->i:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method a(Li/c/b0/e/f/e/p$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/p$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/p;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/b0/e/f/e/p$a;

    .line 2
    sget-object v1, Li/c/b0/e/f/e/p;->q:[Li/c/b0/e/f/e/p$a;

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    .line 4
    new-array v2, v2, [Li/c/b0/e/f/e/p$a;

    const/4 v3, 0x0

    .line 5
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    aput-object p1, v2, v1

    .line 7
    iget-object v1, p0, Li/c/b0/e/f/e/p;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method b(Li/c/b0/e/f/e/p$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/p$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/p;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/b0/e/f/e/p$a;

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

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 4
    sget-object v1, Li/c/b0/e/f/e/p;->p:[Li/c/b0/e/f/e/p$a;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 5
    new-array v5, v5, [Li/c/b0/e/f/e/p$a;

    .line 6
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 7
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 8
    :goto_2
    iget-object v2, p0, Li/c/b0/e/f/e/p;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method c(Li/c/b0/e/f/e/p$a;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/p$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p1, Li/c/b0/e/f/e/p$a;->j:J

    .line 3
    iget v2, p1, Li/c/b0/e/f/e/p$a;->i:I

    .line 4
    iget-object v3, p1, Li/c/b0/e/f/e/p$a;->h:Li/c/b0/e/f/e/p$b;

    .line 5
    iget-object v4, p1, Li/c/b0/e/f/e/p$a;->f:Li/c/b0/b/c0;

    .line 6
    iget v5, p0, Li/c/b0/e/f/e/p;->h:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 7
    :cond_1
    :goto_0
    iget-boolean v8, p1, Li/c/b0/e/f/e/p$a;->k:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    .line 8
    iput-object v9, p1, Li/c/b0/e/f/e/p$a;->h:Li/c/b0/e/f/e/p$b;

    return-void

    .line 9
    :cond_2
    iget-boolean v8, p0, Li/c/b0/e/f/e/p;->o:Z

    .line 10
    iget-wide v10, p0, Li/c/b0/e/f/e/p;->j:J

    const/4 v12, 0x0

    cmp-long v13, v10, v0

    if-nez v13, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    if-eqz v8, :cond_5

    if-eqz v10, :cond_5

    .line 11
    iput-object v9, p1, Li/c/b0/e/f/e/p$a;->h:Li/c/b0/e/f/e/p$b;

    .line 12
    iget-object p1, p0, Li/c/b0/e/f/e/p;->n:Ljava/lang/Throwable;

    if-eqz p1, :cond_4

    .line 13
    invoke-interface {v4, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 14
    :cond_4
    invoke-interface {v4}, Li/c/b0/b/c0;->onComplete()V

    :goto_2
    return-void

    :cond_5
    if-nez v10, :cond_7

    if-ne v2, v5, :cond_6

    .line 15
    iget-object v2, v3, Li/c/b0/e/f/e/p$b;->b:Li/c/b0/e/f/e/p$b;

    move-object v3, v2

    const/4 v2, 0x0

    .line 16
    :cond_6
    iget-object v8, v3, Li/c/b0/e/f/e/p$b;->a:[Ljava/lang/Object;

    aget-object v8, v8, v2

    invoke-interface {v4, v8}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    add-int/2addr v2, v6

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    goto :goto_0

    .line 17
    :cond_7
    iput-wide v0, p1, Li/c/b0/e/f/e/p$a;->j:J

    .line 18
    iput v2, p1, Li/c/b0/e/f/e/p$a;->i:I

    .line 19
    iput-object v3, p1, Li/c/b0/e/f/e/p$a;->h:Li/c/b0/e/f/e/p$b;

    neg-int v7, v7

    .line 20
    invoke-virtual {p1, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_1

    return-void
.end method

.method public onComplete()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/p;->o:Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/p;->i:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Li/c/b0/e/f/e/p;->q:[Li/c/b0/e/f/e/p$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/b0/e/f/e/p$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {p0, v3}, Li/c/b0/e/f/e/p;->c(Li/c/b0/e/f/e/p$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iput-object p1, p0, Li/c/b0/e/f/e/p;->n:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Li/c/b0/e/f/e/p;->o:Z

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/e/p;->i:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Li/c/b0/e/f/e/p;->q:[Li/c/b0/e/f/e/p$a;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Li/c/b0/e/f/e/p$a;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 4
    invoke-virtual {p0, v2}, Li/c/b0/e/f/e/p;->c(Li/c/b0/e/f/e/p$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Li/c/b0/e/f/e/p;->m:I

    .line 2
    iget v1, p0, Li/c/b0/e/f/e/p;->h:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v1, Li/c/b0/e/f/e/p$b;

    invoke-direct {v1, v0}, Li/c/b0/e/f/e/p$b;-><init>(I)V

    .line 4
    iget-object v0, v1, Li/c/b0/e/f/e/p$b;->a:[Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 5
    iput v3, p0, Li/c/b0/e/f/e/p;->m:I

    .line 6
    iget-object p1, p0, Li/c/b0/e/f/e/p;->l:Li/c/b0/e/f/e/p$b;

    iput-object v1, p1, Li/c/b0/e/f/e/p$b;->b:Li/c/b0/e/f/e/p$b;

    .line 7
    iput-object v1, p0, Li/c/b0/e/f/e/p;->l:Li/c/b0/e/f/e/p$b;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Li/c/b0/e/f/e/p;->l:Li/c/b0/e/f/e/p$b;

    iget-object v1, v1, Li/c/b0/e/f/e/p$b;->a:[Ljava/lang/Object;

    aput-object p1, v1, v0

    add-int/2addr v0, v3

    .line 9
    iput v0, p0, Li/c/b0/e/f/e/p;->m:I

    .line 10
    :goto_0
    iget-wide v0, p0, Li/c/b0/e/f/e/p;->j:J

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p0, Li/c/b0/e/f/e/p;->j:J

    .line 11
    iget-object p1, p0, Li/c/b0/e/f/e/p;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Li/c/b0/e/f/e/p$a;

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v1, p1, v2

    .line 12
    invoke-virtual {p0, v1}, Li/c/b0/e/f/e/p;->c(Li/c/b0/e/f/e/p$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 0

    return-void
.end method

.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/p$a;

    invoke-direct {v0, p1, p0}, Li/c/b0/e/f/e/p$a;-><init>(Li/c/b0/b/c0;Li/c/b0/e/f/e/p;)V

    .line 2
    invoke-interface {p1, v0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    invoke-virtual {p0, v0}, Li/c/b0/e/f/e/p;->a(Li/c/b0/e/f/e/p$a;)V

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/e/p;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Li/c/b0/e/f/e/p;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    invoke-interface {p1, p0}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v0}, Li/c/b0/e/f/e/p;->c(Li/c/b0/e/f/e/p$a;)V

    :goto_0
    return-void
.end method
