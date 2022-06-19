.class final Li/c/b0/e/f/e/d0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/d0;
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
        "Ljava/lang/Object;",
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

.field final g:J

.field final h:Ljava/util/concurrent/TimeUnit;

.field final i:Li/c/b0/b/d0$c;

.field j:Li/c/b0/c/c;

.field k:Li/c/b0/c/c;

.field volatile l:J

.field m:Z


# direct methods
.method constructor <init>(Li/c/b0/b/c0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0$c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/d0$b;->f:Li/c/b0/b/c0;

    .line 3
    iput-wide p2, p0, Li/c/b0/e/f/e/d0$b;->g:J

    .line 4
    iput-object p4, p0, Li/c/b0/e/f/e/d0$b;->h:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Li/c/b0/e/f/e/d0$b;->i:Li/c/b0/b/d0$c;

    return-void
.end method


# virtual methods
.method a(JLjava/lang/Object;Li/c/b0/e/f/e/d0$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;",
            "Li/c/b0/e/f/e/d0$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Li/c/b0/e/f/e/d0$b;->l:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/e/d0$b;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p3}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p4}, Li/c/b0/e/f/e/d0$a;->dispose()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/d0$b;->j:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/d0$b;->i:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/d0$b;->i:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/d0$b;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/f/e/d0$b;->m:Z

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/d0$b;->k:Li/c/b0/c/c;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 5
    :cond_1
    check-cast v0, Li/c/b0/e/f/e/d0$a;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Li/c/b0/e/f/e/d0$a;->run()V

    .line 7
    :cond_2
    iget-object v0, p0, Li/c/b0/e/f/e/d0$b;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    .line 8
    iget-object v0, p0, Li/c/b0/e/f/e/d0$b;->i:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/d0$b;->m:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/d0$b;->k:Li/c/b0/c/c;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Li/c/b0/e/f/e/d0$b;->m:Z

    .line 6
    iget-object v0, p0, Li/c/b0/e/f/e/d0$b;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    .line 7
    iget-object p1, p0, Li/c/b0/e/f/e/d0$b;->i:Li/c/b0/b/d0$c;

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

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
    iget-boolean v0, p0, Li/c/b0/e/f/e/d0$b;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Li/c/b0/e/f/e/d0$b;->l:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 3
    iput-wide v0, p0, Li/c/b0/e/f/e/d0$b;->l:J

    .line 4
    iget-object v2, p0, Li/c/b0/e/f/e/d0$b;->k:Li/c/b0/c/c;

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v2}, Li/c/b0/c/c;->dispose()V

    .line 6
    :cond_1
    new-instance v2, Li/c/b0/e/f/e/d0$a;

    invoke-direct {v2, p1, v0, v1, p0}, Li/c/b0/e/f/e/d0$a;-><init>(Ljava/lang/Object;JLi/c/b0/e/f/e/d0$b;)V

    .line 7
    iput-object v2, p0, Li/c/b0/e/f/e/d0$b;->k:Li/c/b0/c/c;

    .line 8
    iget-object p1, p0, Li/c/b0/e/f/e/d0$b;->i:Li/c/b0/b/d0$c;

    iget-wide v0, p0, Li/c/b0/e/f/e/d0$b;->g:J

    iget-object v3, p0, Li/c/b0/e/f/e/d0$b;->h:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v0, v1, v3}, Li/c/b0/b/d0$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    move-result-object p1

    .line 9
    invoke-virtual {v2, p1}, Li/c/b0/e/f/e/d0$a;->a(Li/c/b0/c/c;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/d0$b;->j:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/d0$b;->j:Li/c/b0/c/c;

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/e/d0$b;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    :cond_0
    return-void
.end method
