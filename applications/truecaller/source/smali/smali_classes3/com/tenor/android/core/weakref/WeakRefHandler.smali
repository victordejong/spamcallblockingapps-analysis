.class public Lcom/tenor/android/core/weakref/WeakRefHandler;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Lcom/tenor/android/core/weakref/IWeakRefObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CTX:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Handler;",
        "Lcom/tenor/android/core/weakref/IWeakRefObject<",
        "TCTX;>;"
    }
.end annotation


# instance fields
.field private final mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TCTX;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/Looper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Lcom/tenor/android/core/weakref/WeakRefHandler;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;",
            "Landroid/os/Looper;",
            "Landroid/os/Handler$Callback;",
            ")V"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/tenor/android/core/weakref/WeakRefHandler;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "TCTX;>;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/tenor/android/core/weakref/WeakRefHandler;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "TCTX;>;",
            "Landroid/os/Looper;",
            "Landroid/os/Handler$Callback;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 5
    iput-object p1, p0, Lcom/tenor/android/core/weakref/WeakRefHandler;->mWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Can\'t create handler inside thread that has not called Looper.prepare()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/tenor/android/core/weakref/WeakRefHandler;->mWeakRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public hasRef()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/weakref/WeakRefHandler;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/tenor/android/core/util/AbstractWeakReferenceUtils;->isAlive(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    return v0
.end method
