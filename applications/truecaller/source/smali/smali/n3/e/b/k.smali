.class public final synthetic Ln3/e/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/b/p0;

.field public final synthetic b:Ln3/h/a/b;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/p0;Ln3/h/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/k;->a:Ln3/e/b/p0;

    iput-object p2, p0, Ln3/e/b/k;->b:Ln3/h/a/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Ln3/e/b/k;->a:Ln3/e/b/p0;

    iget-object v1, p0, Ln3/e/b/k;->b:Ln3/h/a/b;

    .line 1
    sget-object v2, Ln3/e/b/p0$a;->d:Ln3/e/b/p0$a;

    iget-object v3, v0, Ln3/e/b/p0;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 2
    :try_start_0
    iget-object v4, v0, Ln3/e/b/p0;->e:Landroid/os/Handler;

    const-string v5, "retry_token"

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v4, v0, Ln3/e/b/p0;->k:Ln3/e/b/p0$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-object v2, v0, Ln3/e/b/p0;->k:Ln3/e/b/p0$a;

    .line 5
    new-instance v2, Ln3/e/b/m;

    invoke-direct {v2, v0}, Ln3/e/b/m;-><init>(Ln3/e/b/p0;)V

    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    iput-object v2, v0, Ln3/e/b/p0;->l:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 6
    :goto_0
    iget-object v0, v0, Ln3/e/b/p0;->l:Lcom/google/common/util/concurrent/ListenableFuture;

    monitor-exit v3

    goto :goto_1

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraX could not be shutdown when it is initializing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    iput-object v2, v0, Ln3/e/b/p0;->k:Ln3/e/b/p0$a;

    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Ln3/e/b/j1/t1/c/g;->c(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_1
    invoke-static {v0, v1}, Ln3/e/b/j1/t1/c/g;->e(Lcom/google/common/util/concurrent/ListenableFuture;Ln3/h/a/b;)V

    return-void

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
