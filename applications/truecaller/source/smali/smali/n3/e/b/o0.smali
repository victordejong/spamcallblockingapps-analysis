.class public Ln3/e/b/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/t1/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/e/b/j1/t1/c/d<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/h/a/b;

.field public final synthetic b:Ln3/e/b/p0;


# direct methods
.method public constructor <init>(Ln3/h/a/b;Ln3/e/b/p0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/b/o0;->a:Ln3/h/a/b;

    iput-object p2, p0, Ln3/e/b/o0;->b:Ln3/e/b/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "CameraX"

    const-string v1, "CameraX initialize() failed"

    .line 1
    invoke-static {v0, v1, p1}, Ln3/e/b/y0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    sget-object v0, Ln3/e/b/p0;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Ln3/e/b/p0;->n:Ln3/e/b/p0;

    iget-object v2, p0, Ln3/e/b/o0;->b:Ln3/e/b/p0;

    if-ne v1, v2, :cond_0

    .line 4
    invoke-static {}, Ln3/e/b/p0;->f()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Ln3/e/b/o0;->a:Ln3/h/a/b;

    invoke-virtual {v0, p1}, Ln3/h/a/b;->c(Ljava/lang/Throwable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Ln3/e/b/o0;->a:Ln3/h/a/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    return-void
.end method
