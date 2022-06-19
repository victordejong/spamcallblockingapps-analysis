.class public final Li/a/d/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Li/a/d/c/e;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/a/d/c/e;

    invoke-direct {v0}, Li/a/d/c/e;-><init>()V

    invoke-virtual {v0}, Li/a/d/c/e;->h()Li/a/d/c/e;

    sput-object v0, Li/a/d/c/e;->d:Li/a/d/c/e;

    .line 2
    new-instance v0, Li/a/d/c/e;

    invoke-direct {v0}, Li/a/d/c/e;-><init>()V

    invoke-virtual {v0}, Li/a/d/c/e;->a()Li/a/d/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Li/a/d/c/e;->a:Ljava/lang/Boolean;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/a/d/c/e;->b:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Li/a/d/c/e;->c:Ljava/lang/Object;

    return-void
.end method

.method static synthetic e(Li/a/d/c/e;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Li/a/d/c/e;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Li/a/d/c/e;->c()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 2
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p3}, Li/a/d/c/e;->a()Li/a/d/c/e;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p3}, Li/a/d/c/e;->h()Li/a/d/c/e;

    :cond_2
    :goto_0
    return-void
.end method

.method public static f(Ljava/util/Collection;)Li/a/d/c/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Li/a/d/c/e;",
            ">;)",
            "Li/a/d/c/e;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Li/a/d/c/e;->g()Li/a/d/c/e;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Li/a/d/c/e;

    invoke-direct {v0}, Li/a/d/c/e;-><init>()V

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li/a/d/c/e;

    .line 7
    new-instance v4, Li/a/d/c/a;

    invoke-direct {v4, v3, v2, v1, v0}, Li/a/d/c/a;-><init>(Li/a/d/c/e;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Li/a/d/c/e;)V

    invoke-virtual {v3, v4}, Li/a/d/c/e;->i(Ljava/lang/Runnable;)Li/a/d/c/e;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static g()Li/a/d/c/e;
    .locals 1

    .line 1
    sget-object v0, Li/a/d/c/e;->d:Li/a/d/c/e;

    return-object v0
.end method


# virtual methods
.method public a()Li/a/d/c/e;
    .locals 3

    .line 1
    iget-object v0, p0, Li/a/d/c/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Li/a/d/c/e;->a:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Li/a/d/c/e;->a:Ljava/lang/Boolean;

    .line 4
    iget-object v1, p0, Li/a/d/c/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 5
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Li/a/d/c/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Li/a/d/c/e;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Li/a/d/c/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Li/a/d/c/e;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(JLjava/util/concurrent/TimeUnit;)Li/a/d/c/e;
    .locals 2

    .line 1
    invoke-virtual {p0}, Li/a/d/c/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3
    new-instance v1, Li/a/d/c/b;

    invoke-direct {v1, v0}, Li/a/d/c/b;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v1}, Li/a/d/c/e;->i(Ljava/lang/Runnable;)Li/a/d/c/e;

    .line 4
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return-object p0

    .line 5
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-object p0
.end method

.method public h()Li/a/d/c/e;
    .locals 3

    .line 1
    iget-object v0, p0, Li/a/d/c/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Li/a/d/c/e;->a:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Li/a/d/c/e;->a:Ljava/lang/Boolean;

    .line 4
    iget-object v1, p0, Li/a/d/c/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 5
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i(Ljava/lang/Runnable;)Li/a/d/c/e;
    .locals 2

    .line 1
    iget-object v0, p0, Li/a/d/c/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Li/a/d/c/e;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Li/a/d/c/e;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
