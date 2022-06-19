.class public abstract Li/c/b0/e/e/s;
.super Li/c/b0/e/e/u;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/e/k/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/e/u;",
        "Li/c/b0/b/c0<",
        "TT;>;",
        "Li/c/b0/e/k/n<",
        "TU;TV;>;"
    }
.end annotation


# instance fields
.field protected final g:Li/c/b0/b/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/c0<",
            "-TV;>;"
        }
    .end annotation
.end field

.field protected final h:Li/c/b0/e/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/c/j<",
            "TU;>;"
        }
    .end annotation
.end field

.field protected volatile i:Z

.field protected volatile j:Z

.field protected k:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Li/c/b0/b/c0;Li/c/b0/e/c/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TV;>;",
            "Li/c/b0/e/c/j<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/e/e/u;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/e/s;->h:Li/c/b0/e/c/j;

    return-void
.end method


# virtual methods
.method public abstract a(Li/c/b0/b/c0;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TV;>;TU;)V"
        }
    .end annotation
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/e/s;->i:Z

    return v0
.end method

.method public final c()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/e/s;->k:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final d(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/e/v;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    return p1
.end method

.method public final done()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/e/s;->j:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/e/v;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final f(Ljava/lang/Object;ZLi/c/b0/c/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "Li/c/b0/c/c;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    .line 2
    iget-object v1, p0, Li/c/b0/e/e/s;->h:Li/c/b0/e/c/j;

    .line 3
    iget-object v2, p0, Li/c/b0/e/e/v;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Li/c/b0/e/e/v;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, v0, p1}, Li/c/b0/e/e/s;->a(Li/c/b0/b/c0;Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 5
    invoke-virtual {p0, p1}, Li/c/b0/e/e/s;->d(I)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 6
    :cond_0
    invoke-interface {v1, p1}, Li/c/b0/e/c/k;->offer(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, Li/c/b0/e/e/s;->e()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-static {v1, v0, p2, p3, p0}, Li/c/b0/e/k/q;->c(Li/c/b0/e/c/j;Li/c/b0/b/c0;ZLi/c/b0/c/c;Li/c/b0/e/k/n;)V

    return-void
.end method

.method protected final g(Ljava/lang/Object;ZLi/c/b0/c/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "Li/c/b0/c/c;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/e/s;->g:Li/c/b0/b/c0;

    .line 2
    iget-object v1, p0, Li/c/b0/e/e/s;->h:Li/c/b0/e/c/j;

    .line 3
    iget-object v2, p0, Li/c/b0/e/e/v;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Li/c/b0/e/e/v;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Li/c/b0/e/c/k;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0, v0, p1}, Li/c/b0/e/e/s;->a(Li/c/b0/b/c0;Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 6
    invoke-virtual {p0, p1}, Li/c/b0/e/e/s;->d(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 7
    :cond_0
    invoke-interface {v1, p1}, Li/c/b0/e/c/k;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v1, p1}, Li/c/b0/e/c/k;->offer(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0}, Li/c/b0/e/e/s;->e()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 10
    :cond_2
    :goto_0
    invoke-static {v1, v0, p2, p3, p0}, Li/c/b0/e/k/q;->c(Li/c/b0/e/c/j;Li/c/b0/b/c0;ZLi/c/b0/c/c;Li/c/b0/e/k/n;)V

    return-void
.end method
