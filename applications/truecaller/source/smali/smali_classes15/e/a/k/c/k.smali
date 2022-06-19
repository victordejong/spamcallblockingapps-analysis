.class public final Le/a/k/c/k;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/k;->b:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/k/c/k;->b:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 2
    iget-object v1, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->g:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->i:Ljava/util/concurrent/Semaphore;

    .line 4
    new-instance v2, Le/a/k/c/j;

    invoke-direct {v2, p0, v1}, Le/a/k/c/j;-><init>(Le/a/k/c/k;Landroid/media/MediaRecorder;)V

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    const-wide/16 v3, 0xbb8

    .line 6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 7
    :try_start_0
    invoke-virtual {v2}, Le/a/k/c/j;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 9
    :cond_0
    throw v2

    .line 10
    :cond_1
    :goto_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
