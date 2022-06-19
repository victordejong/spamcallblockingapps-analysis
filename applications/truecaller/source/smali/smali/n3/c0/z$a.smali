.class public Ln3/c0/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/c0/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/c0/z;


# direct methods
.method public constructor <init>(Ln3/c0/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/c0/z$a;->a:Ln3/c0/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/c0/z$a;->a:Ln3/c0/z;

    iget-object v0, v0, Ln3/c0/z;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/c0/z$a;->a:Ln3/c0/z;

    iget-object v0, v0, Ln3/c0/z;->l:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->getInvalidationTracker()Ln3/c0/o;

    move-result-object v0

    iget-object v3, p0, Ln3/c0/z$a;->a:Ln3/c0/z;

    iget-object v3, v3, Ln3/c0/z;->p:Ln3/c0/o$c;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v4, Ln3/c0/o$e;

    invoke-direct {v4, v0, v3}, Ln3/c0/o$e;-><init>(Ln3/c0/o;Ln3/c0/o$c;)V

    invoke-virtual {v0, v4}, Ln3/c0/o;->a(Ln3/c0/o$c;)V

    .line 5
    :cond_0
    iget-object v0, p0, Ln3/c0/z$a;->a:Ln3/c0/z;

    iget-object v0, v0, Ln3/c0/z;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v3, v1

    .line 6
    :goto_0
    :try_start_0
    iget-object v4, p0, Ln3/c0/z$a;->a:Ln3/c0/z;

    iget-object v4, v4, Ln3/c0/z;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 7
    :try_start_1
    iget-object v0, p0, Ln3/c0/z$a;->a:Ln3/c0/z;

    iget-object v0, v0, Ln3/c0/z;->n:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception while computing database live data."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    if-eqz v3, :cond_2

    .line 9
    iget-object v4, p0, Ln3/c0/z$a;->a:Ln3/c0/z;

    .line 10
    invoke-virtual {v4, v0}, Landroidx/lifecycle/LiveData;->j(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :cond_2
    iget-object v0, p0, Ln3/c0/z$a;->a:Ln3/c0/z;

    iget-object v0, v0, Ln3/c0/z;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v2, p0, Ln3/c0/z$a;->a:Ln3/c0/z;

    iget-object v2, v2, Ln3/c0/z;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    throw v0

    :cond_3
    move v3, v1

    :goto_1
    if-eqz v3, :cond_4

    .line 13
    iget-object v0, p0, Ln3/c0/z$a;->a:Ln3/c0/z;

    iget-object v0, v0, Ln3/c0/z;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    return-void
.end method
