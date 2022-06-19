.class public abstract Ln3/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCancellables:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ln3/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ln3/a/b;->mCancellables:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    iput-boolean p1, p0, Ln3/a/b;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public addCancellable(Ln3/a/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/a/b;->mCancellables:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract handleOnBackPressed()V
.end method

.method public final isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/a/b;->mEnabled:Z

    return v0
.end method

.method public final remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/a/b;->mCancellables:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/a/a;

    .line 2
    invoke-interface {v1}, Ln3/a/a;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeCancellable(Ln3/a/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/a/b;->mCancellables:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ln3/a/b;->mEnabled:Z

    return-void
.end method
