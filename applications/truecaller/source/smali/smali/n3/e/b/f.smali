.class public final synthetic Ln3/e/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/h/a/d;


# instance fields
.field public final synthetic a:Ln3/e/b/p0;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/p0;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/f;->a:Ln3/e/b/p0;

    iput-object p2, p0, Ln3/e/b/f;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ln3/h/a/b;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Ln3/e/b/f;->a:Ln3/e/b/p0;

    iget-object v1, p0, Ln3/e/b/f;->b:Landroid/content/Context;

    .line 1
    sget-object v2, Ln3/e/b/p0;->m:Ljava/lang/Object;

    monitor-enter v2

    .line 2
    :try_start_0
    sget-object v3, Ln3/e/b/p0;->q:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v3}, Ln3/e/b/j1/t1/c/e;->a(Lcom/google/common/util/concurrent/ListenableFuture;)Ln3/e/b/j1/t1/c/e;

    move-result-object v3

    new-instance v4, Ln3/e/b/h;

    invoke-direct {v4, v0, v1}, Ln3/e/b/h;-><init>(Ln3/e/b/p0;Landroid/content/Context;)V

    .line 3
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 4
    invoke-virtual {v3, v4, v1}, Ln3/e/b/j1/t1/c/e;->c(Ln3/e/b/j1/t1/c/b;Ljava/util/concurrent/Executor;)Ln3/e/b/j1/t1/c/e;

    move-result-object v1

    .line 5
    new-instance v3, Ln3/e/b/o0;

    invoke-direct {v3, p1, v0}, Ln3/e/b/o0;-><init>(Ln3/h/a/b;Ln3/e/b/p0;)V

    .line 6
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 7
    new-instance v0, Ln3/e/b/j1/t1/c/g$d;

    invoke-direct {v0, v1, v3}, Ln3/e/b/j1/t1/c/g$d;-><init>(Ljava/util/concurrent/Future;Ln3/e/b/j1/t1/c/d;)V

    invoke-virtual {v1, v0, p1}, Ln3/e/b/j1/t1/c/e;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 8
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "CameraX-initialize"

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
