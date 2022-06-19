.class public Ln3/e/b/j1/t1/c/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/e/b/j1/t1/c/c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic b:Ln3/e/b/j1/t1/c/c;


# direct methods
.method public constructor <init>(Ln3/e/b/j1/t1/c/c;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/b/j1/t1/c/c$a;->b:Ln3/e/b/j1/t1/c/c;

    iput-object p2, p0, Ln3/e/b/j1/t1/c/c$a;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Ln3/e/b/j1/t1/c/c$a;->b:Ln3/e/b/j1/t1/c/c;

    iget-object v2, p0, Ln3/e/b/j1/t1/c/c$a;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v2}, Ln3/e/b/j1/t1/c/g;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    iget-object v1, v1, Ln3/e/b/j1/t1/c/e;->b:Ln3/h/a/b;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v2}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    :goto_0
    iget-object v1, p0, Ln3/e/b/j1/t1/c/c$a;->b:Ln3/e/b/j1/t1/c/c;

    iput-object v0, v1, Ln3/e/b/j1/t1/c/c;->g:Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 5
    :try_start_1
    iget-object v2, p0, Ln3/e/b/j1/t1/c/c$a;->b:Ln3/e/b/j1/t1/c/c;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v2, v1}, Ln3/e/b/j1/t1/c/e;->b(Ljava/lang/Throwable;)Z

    goto :goto_0

    :goto_1
    return-void

    .line 6
    :catch_1
    iget-object v1, p0, Ln3/e/b/j1/t1/c/c$a;->b:Ln3/e/b/j1/t1/c/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ln3/e/b/j1/t1/c/c;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    iget-object v1, p0, Ln3/e/b/j1/t1/c/c$a;->b:Ln3/e/b/j1/t1/c/c;

    iput-object v0, v1, Ln3/e/b/j1/t1/c/c;->g:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void

    :goto_2
    iget-object v2, p0, Ln3/e/b/j1/t1/c/c$a;->b:Ln3/e/b/j1/t1/c/c;

    iput-object v0, v2, Ln3/e/b/j1/t1/c/c;->g:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 8
    throw v1
.end method
