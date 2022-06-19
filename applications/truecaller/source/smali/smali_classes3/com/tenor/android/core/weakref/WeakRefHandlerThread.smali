.class public abstract Lcom/tenor/android/core/weakref/WeakRefHandlerThread;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Lcom/tenor/android/core/weakref/IWeakRefObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CTX:",
        "Ljava/lang/Object;",
        "H:",
        "Landroid/os/Handler;",
        ">",
        "Landroid/os/HandlerThread;",
        "Lcom/tenor/android/core/weakref/IWeakRefObject<",
        "TCTX;>;"
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TH;"
        }
    .end annotation
.end field

.field private mHandlerPrepared:Z

.field private final mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TCTX;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/tenor/android/core/weakref/WeakRefHandlerThread;->mWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TH;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :catch_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tenor/android/core/weakref/WeakRefHandlerThread;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 4
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/tenor/android/core/weakref/WeakRefHandlerThread;->mHandler:Landroid/os/Handler;

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getWeakRef()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "TCTX;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/weakref/WeakRefHandlerThread;->mWeakRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public hasRef()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/weakref/WeakRefHandlerThread;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/tenor/android/core/util/AbstractWeakReferenceUtils;->isAlive(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    return v0
.end method

.method public abstract initHandler(Landroid/os/Looper;Ljava/lang/ref/WeakReference;)Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Ljava/lang/ref/WeakReference<",
            "TCTX;>;)TH;"
        }
    .end annotation
.end method

.method public isHandlerPrepared()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tenor/android/core/weakref/WeakRefHandlerThread;->mHandlerPrepared:Z

    return v0
.end method

.method public onHandlerPrepared()V
    .locals 0

    return-void
.end method

.method public onLooperPrepared()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 2
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefHandlerThread;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tenor/android/core/weakref/WeakRefHandlerThread;->initHandler(Landroid/os/Looper;Ljava/lang/ref/WeakReference;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/tenor/android/core/weakref/WeakRefHandlerThread;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/tenor/android/core/weakref/WeakRefHandlerThread;->mHandlerPrepared:Z

    .line 4
    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefHandlerThread;->onHandlerPrepared()V

    return-void
.end method
