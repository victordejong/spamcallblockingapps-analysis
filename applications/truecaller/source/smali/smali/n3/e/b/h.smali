.class public final synthetic Ln3/e/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/t1/c/b;


# instance fields
.field public final synthetic a:Ln3/e/b/p0;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/p0;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/h;->a:Ln3/e/b/p0;

    iput-object p2, p0, Ln3/e/b/h;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    iget-object v0, p0, Ln3/e/b/h;->a:Ln3/e/b/p0;

    iget-object v1, p0, Ln3/e/b/h;->b:Landroid/content/Context;

    check-cast p1, Ljava/lang/Void;

    .line 1
    iget-object p1, v0, Ln3/e/b/p0;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v2, v0, Ln3/e/b/p0;->k:Ln3/e/b/p0$a;

    sget-object v3, Ln3/e/b/p0$a;->a:Ln3/e/b/p0$a;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "CameraX.initInternal() should only be called once per instance"

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 3
    sget-object v2, Ln3/e/b/p0$a;->b:Ln3/e/b/p0$a;

    iput-object v2, v0, Ln3/e/b/p0;->k:Ln3/e/b/p0$a;

    .line 4
    new-instance v2, Ln3/e/b/d;

    invoke-direct {v2, v0, v1}, Ln3/e/b/d;-><init>(Ln3/e/b/p0;Landroid/content/Context;)V

    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    .line 5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
