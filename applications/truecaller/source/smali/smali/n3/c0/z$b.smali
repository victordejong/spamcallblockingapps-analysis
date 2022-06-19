.class public Ln3/c0/z$b;
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
    iput-object p1, p0, Ln3/c0/z$b;->a:Ln3/c0/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/c0/z$b;->a:Ln3/c0/z;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Z

    move-result v0

    .line 2
    iget-object v1, p0, Ln3/c0/z$b;->a:Ln3/c0/z;

    iget-object v1, v1, Ln3/c0/z;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Ln3/c0/z$b;->a:Ln3/c0/z;

    .line 4
    iget-boolean v1, v0, Ln3/c0/z;->m:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, v0, Ln3/c0/z;->l:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->getTransactionExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Ln3/c0/z;->l:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 7
    :goto_0
    iget-object v1, p0, Ln3/c0/z$b;->a:Ln3/c0/z;

    iget-object v1, v1, Ln3/c0/z;->t:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
