.class public final synthetic Ln3/e/b/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/b/d1;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/d1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/r;->a:Ln3/e/b/d1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ln3/e/b/r;->a:Ln3/e/b/d1;

    .line 1
    iget-object v1, v0, Ln3/e/b/d1;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-boolean v2, v0, Ln3/e/b/d1;->k:Z

    if-eqz v2, :cond_0

    .line 3
    monitor-exit v1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, v0, Ln3/e/b/d1;->m:Ln3/e/b/z0;

    invoke-virtual {v2}, Ln3/e/b/z0;->close()V

    .line 5
    iget-object v2, v0, Ln3/e/b/d1;->n:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 6
    iget-object v2, v0, Ln3/e/b/d1;->s:Ln3/e/b/j1/k0;

    invoke-virtual {v2}, Ln3/e/b/j1/k0;->a()V

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v0, Ln3/e/b/d1;->k:Z

    .line 8
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
