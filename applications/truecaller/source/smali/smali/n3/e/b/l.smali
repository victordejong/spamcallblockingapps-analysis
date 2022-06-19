.class public final synthetic Ln3/e/b/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/h/a/d;


# instance fields
.field public final synthetic a:Ln3/e/b/p0;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/p0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/l;->a:Ln3/e/b/p0;

    return-void
.end method


# virtual methods
.method public final a(Ln3/h/a/b;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ln3/e/b/l;->a:Ln3/e/b/p0;

    .line 1
    sget-object v1, Ln3/e/b/p0;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-object v2, Ln3/e/b/p0;->p:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v3, Ln3/e/b/k;

    invoke-direct {v3, v0, p1}, Ln3/e/b/k;-><init>(Ln3/e/b/p0;Ln3/h/a/b;)V

    .line 3
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 4
    invoke-interface {v2, v3, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "CameraX shutdown"

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
