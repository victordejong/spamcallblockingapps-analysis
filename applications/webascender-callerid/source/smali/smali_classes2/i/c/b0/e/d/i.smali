.class public final Li/c/b0/e/d/i;
.super Li/c/b0/e/d/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/d/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final h:Z

.field final i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/e/d/j;-><init>()V

    .line 2
    iput-boolean p1, p0, Li/c/b0/e/d/i;->h:Z

    .line 3
    iput-object p2, p0, Li/c/b0/e/d/i;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Li/c/b0/e/d/j;->g:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/d/j;->a()V

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Li/c/b0/e/d/j;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p0, Li/c/b0/e/d/i;->h:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Li/c/b0/e/d/i;->i:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Li/c/b0/e/d/j;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-virtual {p0, v0}, Li/c/b0/e/d/j;->completeExceptionally(Ljava/lang/Throwable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/d/j;->g:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Li/c/b0/e/d/j;->g:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sequence contains more than one element!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Li/c/b0/e/d/j;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Li/c/b0/e/d/j;->g:Ljava/lang/Object;

    :goto_0
    return-void
.end method
