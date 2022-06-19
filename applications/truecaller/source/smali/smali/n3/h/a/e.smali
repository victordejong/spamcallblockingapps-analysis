.class public final Ln3/h/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ln3/h/a/b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final b:Ln3/h/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h/a/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/h/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/h/a/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/h/a/e$a;

    invoke-direct {v0, p0}, Ln3/h/a/e$a;-><init>(Ln3/h/a/e;)V

    iput-object v0, p0, Ln3/h/a/e;->b:Ln3/h/a/a;

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ln3/h/a/e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h/a/e;->b:Ln3/h/a/a;

    invoke-virtual {v0, p1, p2}, Ln3/h/a/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public cancel(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/h/a/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/h/a/b;

    .line 2
    iget-object v1, p0, Ln3/h/a/e;->b:Ln3/h/a/a;

    invoke-virtual {v1, p1}, Ln3/h/a/a;->cancel(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Ln3/h/a/b;->a:Ljava/lang/Object;

    .line 4
    iput-object v1, v0, Ln3/h/a/b;->b:Ln3/h/a/e;

    .line 5
    iget-object v0, v0, Ln3/h/a/b;->c:Ln3/h/a/f;

    invoke-virtual {v0, v1}, Ln3/h/a/f;->h(Ljava/lang/Object;)Z

    :cond_0
    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/h/a/e;->b:Ln3/h/a/a;

    invoke-virtual {v0}, Ln3/h/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Ln3/h/a/e;->b:Ln3/h/a/a;

    invoke-virtual {v0, p1, p2, p3}, Ln3/h/a/a;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h/a/e;->b:Ln3/h/a/a;

    .line 2
    iget-object v0, v0, Ln3/h/a/a;->a:Ljava/lang/Object;

    .line 3
    instance-of v0, v0, Ln3/h/a/a$c;

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h/a/e;->b:Ln3/h/a/a;

    invoke-virtual {v0}, Ln3/h/a/a;->isDone()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h/a/e;->b:Ln3/h/a/a;

    invoke-virtual {v0}, Ln3/h/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
