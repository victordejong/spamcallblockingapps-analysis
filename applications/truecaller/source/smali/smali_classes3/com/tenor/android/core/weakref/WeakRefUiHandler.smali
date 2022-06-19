.class public Lcom/tenor/android/core/weakref/WeakRefUiHandler;
.super Lcom/tenor/android/core/weakref/WeakRefHandler;
.source "SourceFile"

# interfaces
.implements Lcom/tenor/android/core/weakref/IWeakRefObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CTX:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tenor/android/core/weakref/WeakRefHandler<",
        "TCTX;>;",
        "Lcom/tenor/android/core/weakref/IWeakRefObject<",
        "TCTX;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tenor/android/core/weakref/WeakRefHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/os/Handler$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;",
            "Landroid/os/Handler$Callback;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/tenor/android/core/weakref/WeakRefHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "TCTX;>;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tenor/android/core/weakref/WeakRefHandler;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/os/Handler$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "TCTX;>;",
            "Landroid/os/Handler$Callback;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/tenor/android/core/weakref/WeakRefHandler;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method
