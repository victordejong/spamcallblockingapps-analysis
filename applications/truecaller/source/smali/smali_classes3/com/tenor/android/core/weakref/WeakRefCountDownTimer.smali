.class public abstract Lcom/tenor/android/core/weakref/WeakRefCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "SourceFile"

# interfaces
.implements Lcom/tenor/android/core/weakref/IWeakRefObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CTX:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/CountDownTimer;",
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
.method public constructor <init>(Ljava/lang/Object;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;JJ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 2
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/tenor/android/core/weakref/WeakRefCountDownTimer;->mWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "TCTX;>;JJ)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 4
    iput-object p1, p0, Lcom/tenor/android/core/weakref/WeakRefCountDownTimer;->mWeakRef:Ljava/lang/ref/WeakReference;

    return-void
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
    iget-object v0, p0, Lcom/tenor/android/core/weakref/WeakRefCountDownTimer;->mWeakRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public hasRef()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/weakref/WeakRefCountDownTimer;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/tenor/android/core/util/AbstractWeakReferenceUtils;->isAlive(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    return v0
.end method

.method public final onFinish()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefCountDownTimer;->hasRef()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefCountDownTimer;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tenor/android/core/weakref/WeakRefCountDownTimer;->onFinish(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract onFinish(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;)V"
        }
    .end annotation
.end method

.method public final onTick(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefCountDownTimer;->hasRef()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefCountDownTimer;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/tenor/android/core/weakref/WeakRefCountDownTimer;->onTick(Ljava/lang/Object;J)V

    return-void
.end method

.method public abstract onTick(Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;J)V"
        }
    .end annotation
.end method
