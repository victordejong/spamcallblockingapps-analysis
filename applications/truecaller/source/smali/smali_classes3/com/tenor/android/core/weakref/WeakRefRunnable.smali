.class public abstract Lcom/tenor/android/core/weakref/WeakRefRunnable;
.super Lcom/tenor/android/core/weakref/WeakRefObject;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tenor/android/core/weakref/WeakRefObject<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private mConsumed:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/tenor/android/core/weakref/WeakRefRunnable;-><init>(Ljava/lang/ref/WeakReference;)V

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
    invoke-direct {p0, p1}, Lcom/tenor/android/core/weakref/WeakRefObject;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method


# virtual methods
.method public isConsumed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tenor/android/core/weakref/WeakRefRunnable;->mConsumed:Z

    return v0
.end method

.method public onRunCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tenor/android/core/weakref/WeakRefRunnable;->mConsumed:Z

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefObject;->hasRef()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefObject;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tenor/android/core/weakref/WeakRefRunnable;->run(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefRunnable;->onRunCompleted()V

    :cond_0
    return-void
.end method

.method public abstract run(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
