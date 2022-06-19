.class public abstract Lcom/tenor/android/core/weakref/WeakRefUiRunnable;
.super Lcom/tenor/android/core/weakref/WeakRefRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tenor/android/core/weakref/WeakRefRunnable<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static sUiThread:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/tenor/android/core/weakref/WeakRefRunnable;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/tenor/android/core/weakref/WeakRefRunnable;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method private static getUiThread()Landroid/os/Handler;
    .locals 2

    .line 1
    sget-object v0, Lcom/tenor/android/core/weakref/WeakRefUiRunnable;->sUiThread:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tenor/android/core/weakref/WeakRefUiRunnable;->sUiThread:Landroid/os/Handler;

    .line 3
    :cond_0
    sget-object v0, Lcom/tenor/android/core/weakref/WeakRefUiRunnable;->sUiThread:Landroid/os/Handler;

    return-object v0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tenor/android/core/weakref/WeakRefUiRunnable;->getUiThread()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
