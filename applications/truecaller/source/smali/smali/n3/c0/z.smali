.class public Ln3/c0/z;
.super Landroidx/lifecycle/LiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final l:Ln3/c0/q;

.field public final m:Z

.field public final n:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final o:Ln3/c0/n;

.field public final p:Ln3/c0/o$c;

.field public final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final t:Ljava/lang/Runnable;

.field public final u:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ln3/c0/q;Ln3/c0/n;ZLjava/util/concurrent/Callable;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/c0/q;",
            "Ln3/c0/n;",
            "Z",
            "Ljava/util/concurrent/Callable<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ln3/c0/z;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ln3/c0/z;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ln3/c0/z;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ln3/c0/z$a;

    invoke-direct {v0, p0}, Ln3/c0/z$a;-><init>(Ln3/c0/z;)V

    iput-object v0, p0, Ln3/c0/z;->t:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Ln3/c0/z$b;

    invoke-direct {v0, p0}, Ln3/c0/z$b;-><init>(Ln3/c0/z;)V

    iput-object v0, p0, Ln3/c0/z;->u:Ljava/lang/Runnable;

    .line 7
    iput-object p1, p0, Ln3/c0/z;->l:Ln3/c0/q;

    .line 8
    iput-boolean p3, p0, Ln3/c0/z;->m:Z

    .line 9
    iput-object p4, p0, Ln3/c0/z;->n:Ljava/util/concurrent/Callable;

    .line 10
    iput-object p2, p0, Ln3/c0/z;->o:Ln3/c0/n;

    .line 11
    new-instance p1, Ln3/c0/z$c;

    invoke-direct {p1, p0, p5}, Ln3/c0/z$c;-><init>(Ln3/c0/z;[Ljava/lang/String;)V

    iput-object p1, p0, Ln3/c0/z;->p:Ln3/c0/o$c;

    return-void
.end method


# virtual methods
.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/c0/z;->o:Ln3/c0/n;

    .line 2
    iget-object v0, v0, Ln3/c0/n;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    iget-boolean v0, p0, Ln3/c0/z;->m:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Ln3/c0/z;->l:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->getTransactionExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Ln3/c0/z;->l:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 6
    :goto_0
    iget-object v1, p0, Ln3/c0/z;->t:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/c0/z;->o:Ln3/c0/n;

    .line 2
    iget-object v0, v0, Ln3/c0/n;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
