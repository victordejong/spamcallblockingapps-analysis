.class public final Li/c/b0/e/k/c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Throwable;
    .locals 1

    .line 1
    invoke-static {p0}, Li/c/b0/e/k/j;->e(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/c/b0/e/k/j;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Li/c/b0/e/k/c;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Li/c/b0/e/k/c;->a()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Li/c/b0/e/k/j;->a:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-static {v0}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public e(Li/c/b0/b/g;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Li/c/b0/e/k/c;->a()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Li/c/b0/b/g;->onComplete()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Li/c/b0/e/k/j;->a:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_1

    .line 4
    invoke-interface {p1, v0}, Li/c/b0/b/g;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Li/c/b0/b/c0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li/c/b0/e/k/c;->a()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Li/c/b0/b/c0;->onComplete()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Li/c/b0/e/k/j;->a:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_1

    .line 4
    invoke-interface {p1, v0}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g(Lo/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li/c/b0/e/k/c;->a()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Lo/a/b;->onComplete()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Li/c/b0/e/k/j;->a:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_1

    .line 4
    invoke-interface {p1, v0}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
