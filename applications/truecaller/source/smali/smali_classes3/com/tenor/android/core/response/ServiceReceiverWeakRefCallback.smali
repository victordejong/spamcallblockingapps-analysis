.class public abstract Lcom/tenor/android/core/response/ServiceReceiverWeakRefCallback;
.super Lcom/tenor/android/core/response/WeakRefCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CTX:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tenor/android/core/response/WeakRefCallback<",
        "TCTX;TT;>;"
    }
.end annotation


# instance fields
.field private final mWeakRefReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/ResultReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/ResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;",
            "Landroid/os/ResultReceiver;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/tenor/android/core/response/WeakRefCallback;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tenor/android/core/response/ServiceReceiverWeakRefCallback;->mWeakRefReceiver:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public abstract failure(Landroid/os/ResultReceiver;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ResultReceiver;",
            "TCTX;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public final failure(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/response/ServiceReceiverWeakRefCallback;->mWeakRefReceiver:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/tenor/android/core/util/AbstractWeakReferenceUtils;->isAlive(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tenor/android/core/response/ServiceReceiverWeakRefCallback;->mWeakRefReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    invoke-virtual {p0, v0, p1, p2}, Lcom/tenor/android/core/response/ServiceReceiverWeakRefCallback;->failure(Landroid/os/ResultReceiver;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public abstract success(Landroid/os/ResultReceiver;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ResultReceiver;",
            "TCTX;TT;)V"
        }
    .end annotation
.end method

.method public final success(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/response/ServiceReceiverWeakRefCallback;->mWeakRefReceiver:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/tenor/android/core/util/AbstractWeakReferenceUtils;->isAlive(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tenor/android/core/response/ServiceReceiverWeakRefCallback;->mWeakRefReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    invoke-virtual {p0, v0, p1, p2}, Lcom/tenor/android/core/response/ServiceReceiverWeakRefCallback;->success(Landroid/os/ResultReceiver;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
