.class public abstract Landroidx/room/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/j$b;,
        Landroidx/room/j$d;,
        Landroidx/room/j$a;,
        Landroidx/room/j$c;
    }
.end annotation


# instance fields
.field protected volatile a:Lf/t/a/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private b:Ljava/util/concurrent/Executor;

.field private c:Lf/t/a/c;

.field private final d:Landroidx/room/g;

.field private e:Z

.field f:Z

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/j$b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroidx/room/j;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/j;->i:Ljava/lang/ThreadLocal;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroidx/room/j;->e()Landroidx/room/g;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/j;->d:Landroidx/room/g;

    return-void
.end method

.method private static n()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/room/j;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroidx/room/j;->n()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/room/j;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/room/j;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/room/j;->a()V

    .line 2
    iget-object v0, p0, Landroidx/room/j;->c:Lf/t/a/c;

    invoke-interface {v0}, Lf/t/a/c;->o0()Lf/t/a/b;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/room/j;->d:Landroidx/room/g;

    invoke-virtual {v1, v0}, Landroidx/room/g;->m(Lf/t/a/b;)V

    .line 4
    invoke-interface {v0}, Lf/t/a/b;->beginTransaction()V

    return-void
.end method

.method public d(Ljava/lang/String;)Lf/t/a/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/room/j;->a()V

    .line 2
    invoke-virtual {p0}, Landroidx/room/j;->b()V

    .line 3
    iget-object v0, p0, Landroidx/room/j;->c:Lf/t/a/c;

    invoke-interface {v0}, Lf/t/a/c;->o0()Lf/t/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lf/t/a/b;->G(Ljava/lang/String;)Lf/t/a/f;

    move-result-object p1

    return-object p1
.end method

.method protected abstract e()Landroidx/room/g;
.end method

.method protected abstract f(Landroidx/room/a;)Lf/t/a/c;
.end method

.method public g()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/j;->c:Lf/t/a/c;

    invoke-interface {v0}, Lf/t/a/c;->o0()Lf/t/a/b;

    move-result-object v0

    invoke-interface {v0}, Lf/t/a/b;->z0()V

    .line 2
    invoke-virtual {p0}, Landroidx/room/j;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/room/j;->d:Landroidx/room/g;

    invoke-virtual {v0}, Landroidx/room/g;->f()V

    :cond_0
    return-void
.end method

.method h()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/j;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    return-object v0
.end method

.method public i()Lf/t/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/j;->c:Lf/t/a/c;

    return-object v0
.end method

.method public j()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/j;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/j;->c:Lf/t/a/c;

    invoke-interface {v0}, Lf/t/a/c;->o0()Lf/t/a/b;

    move-result-object v0

    invoke-interface {v0}, Lf/t/a/b;->R0()Z

    move-result v0

    return v0
.end method

.method public l(Landroidx/room/a;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/j;->f(Landroidx/room/a;)Lf/t/a/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/j;->c:Lf/t/a/c;

    .line 2
    instance-of v1, v0, Landroidx/room/n;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroidx/room/n;

    .line 4
    invoke-virtual {v0, p1}, Landroidx/room/n;->b(Landroidx/room/a;)V

    .line 5
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    .line 6
    iget-object v0, p1, Landroidx/room/a;->g:Landroidx/room/j$c;

    sget-object v1, Landroidx/room/j$c;->WRITE_AHEAD_LOGGING:Landroidx/room/j$c;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    const/4 v2, 0x1

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/room/j;->c:Lf/t/a/c;

    invoke-interface {v0, v2}, Lf/t/a/c;->setWriteAheadLoggingEnabled(Z)V

    .line 8
    :cond_2
    iget-object v0, p1, Landroidx/room/a;->e:Ljava/util/List;

    iput-object v0, p0, Landroidx/room/j;->g:Ljava/util/List;

    .line 9
    iget-object v0, p1, Landroidx/room/a;->h:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/room/j;->b:Ljava/util/concurrent/Executor;

    .line 10
    new-instance v0, Landroidx/room/q;

    iget-object v1, p1, Landroidx/room/a;->i:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Landroidx/room/q;-><init>(Ljava/util/concurrent/Executor;)V

    .line 11
    iget-boolean v0, p1, Landroidx/room/a;->f:Z

    iput-boolean v0, p0, Landroidx/room/j;->e:Z

    .line 12
    iput-boolean v2, p0, Landroidx/room/j;->f:Z

    .line 13
    iget-boolean v0, p1, Landroidx/room/a;->j:Z

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Landroidx/room/j;->d:Landroidx/room/g;

    iget-object v1, p1, Landroidx/room/a;->b:Landroid/content/Context;

    iget-object p1, p1, Landroidx/room/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/room/g;->i(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected m(Lf/t/a/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/j;->d:Landroidx/room/g;

    invoke-virtual {v0, p1}, Landroidx/room/g;->d(Lf/t/a/b;)V

    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/j;->a:Lf/t/a/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lf/t/a/b;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p(Lf/t/a/e;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/room/j;->q(Lf/t/a/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public q(Lf/t/a/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/room/j;->a()V

    .line 2
    invoke-virtual {p0}, Landroidx/room/j;->b()V

    if-eqz p2, :cond_0

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/room/j;->c:Lf/t/a/c;

    invoke-interface {v0}, Lf/t/a/c;->o0()Lf/t/a/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lf/t/a/b;->W(Lf/t/a/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object p2, p0, Landroidx/room/j;->c:Lf/t/a/c;

    invoke-interface {p2}, Lf/t/a/c;->o0()Lf/t/a/b;

    move-result-object p2

    invoke-interface {p2, p1}, Lf/t/a/b;->L0(Lf/t/a/e;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public r()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/j;->c:Lf/t/a/c;

    invoke-interface {v0}, Lf/t/a/c;->o0()Lf/t/a/b;

    move-result-object v0

    invoke-interface {v0}, Lf/t/a/b;->h0()V

    return-void
.end method
