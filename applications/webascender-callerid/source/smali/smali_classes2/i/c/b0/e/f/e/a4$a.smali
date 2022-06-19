.class final Li/c/b0/e/f/e/a4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/a4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
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
            "-",
            "Li/c/b0/j/b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/TimeUnit;

.field final h:Li/c/b0/b/d0;

.field i:J

.field j:Li/c/b0/c/c;


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Ljava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-",
            "Li/c/b0/j/b<",
            "TT;>;>;",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/a4$a;->f:Li/c/b0/b/c0;

    .line 3
    iput-object p3, p0, Li/c/b0/e/f/e/a4$a;->h:Li/c/b0/b/d0;

    .line 4
    iput-object p2, p0, Li/c/b0/e/f/e/a4$a;->g:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/a4$a;->j:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/a4$a;->j:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/a4$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/a4$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Li/c/b0/e/f/e/a4$a;->h:Li/c/b0/b/d0;

    iget-object v1, p0, Li/c/b0/e/f/e/a4$a;->g:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Li/c/b0/b/d0;->c(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Li/c/b0/e/f/e/a4$a;->i:J

    .line 3
    iput-wide v0, p0, Li/c/b0/e/f/e/a4$a;->i:J

    sub-long/2addr v0, v2

    .line 4
    iget-object v2, p0, Li/c/b0/e/f/e/a4$a;->f:Li/c/b0/b/c0;

    new-instance v3, Li/c/b0/j/b;

    iget-object v4, p0, Li/c/b0/e/f/e/a4$a;->g:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v3, p1, v0, v1, v4}, Li/c/b0/j/b;-><init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    invoke-interface {v2, v3}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/a4$a;->j:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/a4$a;->j:Li/c/b0/c/c;

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/e/a4$a;->h:Li/c/b0/b/d0;

    iget-object v0, p0, Li/c/b0/e/f/e/a4$a;->g:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Li/c/b0/b/d0;->c(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Li/c/b0/e/f/e/a4$a;->i:J

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/e/a4$a;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    :cond_0
    return-void
.end method
