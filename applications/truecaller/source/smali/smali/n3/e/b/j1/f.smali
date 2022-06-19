.class public final synthetic Ln3/e/b/j1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic b:Ln3/h/a/b;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Ln3/h/a/b;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/j1/f;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Ln3/e/b/j1/f;->b:Ln3/h/a/b;

    iput-wide p3, p0, Ln3/e/b/j1/f;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Ln3/e/b/j1/f;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Ln3/e/b/j1/f;->b:Ln3/h/a/b;

    iget-wide v2, p0, Ln3/e/b/j1/f;->c:J

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    const-string v5, "Cannot complete surfaceList within "

    invoke-static {v5, v2, v3}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ln3/h/a/b;->c(Ljava/lang/Throwable;)Z

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method
