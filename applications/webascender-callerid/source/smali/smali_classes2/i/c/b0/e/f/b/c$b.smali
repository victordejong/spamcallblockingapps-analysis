.class abstract Li/c/b0/e/f/b/c$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/m;
.implements Lo/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Li/c/b0/b/m<",
        "TT;>;",
        "Lo/a/c;"
    }
.end annotation


# instance fields
.field final f:Lo/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/a/b<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/e/a/f;


# direct methods
.method constructor <init>(Lo/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/b/c$b;->f:Lo/a/b;

    .line 3
    new-instance p1, Li/c/b0/e/a/f;

    invoke-direct {p1}, Li/c/b0/e/a/f;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/b/c$b;->g:Li/c/b0/e/a/f;

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/d/f;)V
    .locals 1

    .line 1
    new-instance v0, Li/c/b0/e/a/b;

    invoke-direct {v0, p1}, Li/c/b0/e/a/b;-><init>(Li/c/b0/d/f;)V

    invoke-virtual {p0, v0}, Li/c/b0/e/f/b/c$b;->g(Li/c/b0/c/c;)V

    return-void
.end method

.method protected b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Li/c/b0/e/f/b/c$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/b/c$b;->f:Lo/a/b;

    invoke-interface {v0}, Lo/a/b;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/b/c$b;->g:Li/c/b0/e/a/f;

    invoke-virtual {v0}, Li/c/b0/e/a/f;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Li/c/b0/e/f/b/c$b;->g:Li/c/b0/e/a/f;

    invoke-virtual {v1}, Li/c/b0/e/a/f;->dispose()V

    .line 4
    throw v0
.end method

.method protected c(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/c/b0/e/f/b/c$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/b/c$b;->f:Lo/a/b;

    invoke-interface {v0, p1}, Lo/a/b;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/b/c$b;->g:Li/c/b0/e/a/f;

    invoke-virtual {p1}, Li/c/b0/e/a/f;->dispose()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Li/c/b0/e/f/b/c$b;->g:Li/c/b0/e/a/f;

    invoke-virtual {v0}, Li/c/b0/e/a/f;->dispose()V

    .line 4
    throw p1
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/c$b;->g:Li/c/b0/e/a/f;

    invoke-virtual {v0}, Li/c/b0/e/a/f;->dispose()V

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/b/c$b;->f()V

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/c$b;->g:Li/c/b0/e/a/f;

    invoke-virtual {v0}, Li/c/b0/e/a/f;->isDisposed()Z

    move-result v0

    return v0
.end method

.method e()V
    .locals 0

    return-void
.end method

.method f()V
    .locals 0

    return-void
.end method

.method public final g(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/c$b;->g:Li/c/b0/e/a/f;

    invoke-virtual {v0, p1}, Li/c/b0/e/a/f;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public h(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li/c/b0/e/f/b/c$b;->c(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "onError called with a null Throwable."

    .line 1
    invoke-static {p1}, Li/c/b0/e/k/j;->b(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Li/c/b0/e/f/b/c$b;->h(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Li/c/b0/e/j/f;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1, p2}, Li/c/b0/e/k/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/f/b/c$b;->e()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicLong;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s{%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
