.class public Ln3/m0/c0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/m0/c0/b;
.implements Ln3/m0/c0/r/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/m0/c0/d$a;
    }
.end annotation


# static fields
.field public static final l:Ljava/lang/String;


# instance fields
.field public a:Landroid/os/PowerManager$WakeLock;

.field public b:Landroid/content/Context;

.field public c:Ln3/m0/c;

.field public d:Ln3/m0/c0/t/x/a;

.field public e:Landroidx/work/impl/WorkDatabase;

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ln3/m0/c0/o;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ln3/m0/c0/o;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/m0/c0/e;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/m0/c0/b;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Processor"

    .line 1
    invoke-static {v0}, Ln3/m0/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln3/m0/c0/d;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ln3/m0/c;Ln3/m0/c0/t/x/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ln3/m0/c;",
            "Ln3/m0/c0/t/x/a;",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Ln3/m0/c0/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/m0/c0/d;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Ln3/m0/c0/d;->c:Ln3/m0/c;

    .line 4
    iput-object p3, p0, Ln3/m0/c0/d;->d:Ln3/m0/c0/t/x/a;

    .line 5
    iput-object p4, p0, Ln3/m0/c0/d;->e:Landroidx/work/impl/WorkDatabase;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ln3/m0/c0/d;->g:Ljava/util/Map;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ln3/m0/c0/d;->f:Ljava/util/Map;

    .line 8
    iput-object p5, p0, Ln3/m0/c0/d;->h:Ljava/util/List;

    .line 9
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ln3/m0/c0/d;->i:Ljava/util/Set;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln3/m0/c0/d;->j:Ljava/util/List;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Ln3/m0/c0/d;->a:Landroid/os/PowerManager$WakeLock;

    .line 12
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/m0/c0/d;->k:Ljava/lang/Object;

    return-void
.end method

.method public static c(Ljava/lang/String;Ln3/m0/c0/o;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    iput-boolean v0, p1, Ln3/m0/c0/o;->s:Z

    .line 2
    invoke-virtual {p1}, Ln3/m0/c0/o;->i()Z

    .line 3
    iget-object v2, p1, Ln3/m0/c0/o;->r:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    .line 5
    iget-object v3, p1, Ln3/m0/c0/o;->r:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v3, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_0
    move v2, v1

    .line 6
    :goto_0
    iget-object v3, p1, Ln3/m0/c0/o;->f:Landroidx/work/ListenableWorker;

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {v3}, Landroidx/work/ListenableWorker;->stop()V

    goto :goto_1

    :cond_1
    new-array v2, v0, [Ljava/lang/Object;

    .line 8
    iget-object p1, p1, Ln3/m0/c0/o;->e:Ln3/m0/c0/s/p;

    aput-object p1, v2, v1

    const-string p1, "WorkSpec %s is already done. Not interrupting."

    .line 9
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v2

    sget-object v3, Ln3/m0/c0/o;->t:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, p1, v4}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 11
    :goto_1
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object p1

    sget-object v2, Ln3/m0/c0/d;->l:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p0, v3, v1

    const-string p0, "WorkerWrapper interrupted for %s"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {p1, v2, p0, v1}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v0

    .line 12
    :cond_2
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object p1

    sget-object v2, Ln3/m0/c0/d;->l:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "WorkerWrapper could not be found for %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Throwable;

    invoke-virtual {p1, v2, p0, v0}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v1
.end method


# virtual methods
.method public a(Ln3/m0/c0/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/m0/c0/d;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/m0/c0/d;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/m0/c0/d;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/m0/c0/d;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v1

    sget-object v2, Ln3/m0/c0/d;->l:Ljava/lang/String;

    const-string v3, "%s %s executed; reschedule = %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v5

    .line 5
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 6
    iget-object v1, p0, Ln3/m0/c0/d;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/m0/c0/b;

    .line 7
    invoke-interface {v2, p1, p2}, Ln3/m0/c0/b;->b(Ljava/lang/String;Z)V

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/m0/c0/d;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/m0/c0/d;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ln3/m0/c0/d;->f:Ljava/util/Map;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Ln3/m0/c0/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/m0/c0/d;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/m0/c0/d;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(Ljava/lang/String;Ln3/m0/i;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/m0/c0/d;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v1

    sget-object v2, Ln3/m0/c0/d;->l:Ljava/lang/String;

    const-string v3, "Moving WorkSpec (%s) to the foreground"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Ln3/m0/p;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object v1, p0, Ln3/m0/c0/d;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/m0/c0/o;

    if-eqz v1, :cond_1

    .line 4
    iget-object v2, p0, Ln3/m0/c0/d;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, Ln3/m0/c0/d;->b:Landroid/content/Context;

    const-string v3, "ProcessorForegroundLck"

    invoke-static {v2, v3}, Ln3/m0/c0/t/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Ln3/m0/c0/d;->a:Landroid/os/PowerManager$WakeLock;

    .line 6
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 7
    :cond_0
    iget-object v2, p0, Ln3/m0/c0/d;->f:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Ln3/m0/c0/d;->b:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Ln3/m0/c0/r/c;->d(Landroid/content/Context;Ljava/lang/String;Ln3/m0/i;)Landroid/content/Intent;

    move-result-object p1

    .line 9
    iget-object p2, p0, Ln3/m0/c0/d;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Ln3/k/b/a;->f(Landroid/content/Context;Landroid/content/Intent;)V

    .line 10
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Ln3/m0/c0/d;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Ln3/m0/c0/d;->d(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object p2

    sget-object v1, Ln3/m0/c0/d;->l:Ljava/lang/String;

    const-string v4, "Work %s is already enqueued for processing"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 4
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Throwable;

    .line 5
    invoke-virtual {p2, v1, p1, v2}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 6
    monitor-exit v0

    return v3

    .line 7
    :cond_0
    new-instance v1, Ln3/m0/c0/o$a;

    iget-object v5, p0, Ln3/m0/c0/d;->b:Landroid/content/Context;

    iget-object v6, p0, Ln3/m0/c0/d;->c:Ln3/m0/c;

    iget-object v7, p0, Ln3/m0/c0/d;->d:Ln3/m0/c0/t/x/a;

    iget-object v9, p0, Ln3/m0/c0/d;->e:Landroidx/work/impl/WorkDatabase;

    move-object v4, v1

    move-object v8, p0

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Ln3/m0/c0/o$a;-><init>(Landroid/content/Context;Ln3/m0/c;Ln3/m0/c0/t/x/a;Ln3/m0/c0/r/a;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    iget-object v4, p0, Ln3/m0/c0/d;->h:Ljava/util/List;

    .line 8
    iput-object v4, v1, Ln3/m0/c0/o$a;->g:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 9
    iput-object p2, v1, Ln3/m0/c0/o$a;->h:Landroidx/work/WorkerParameters$a;

    .line 10
    :cond_1
    new-instance p2, Ln3/m0/c0/o;

    invoke-direct {p2, v1}, Ln3/m0/c0/o;-><init>(Ln3/m0/c0/o$a;)V

    .line 11
    iget-object v1, p2, Ln3/m0/c0/o;->q:Ln3/m0/c0/t/w/c;

    .line 12
    new-instance v4, Ln3/m0/c0/d$a;

    invoke-direct {v4, p0, p1, v1}, Ln3/m0/c0/d$a;-><init>(Ln3/m0/c0/b;Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;)V

    iget-object v5, p0, Ln3/m0/c0/d;->d:Ln3/m0/c0/t/x/a;

    .line 13
    check-cast v5, Ln3/m0/c0/t/x/b;

    .line 14
    iget-object v5, v5, Ln3/m0/c0/t/x/b;->c:Ljava/util/concurrent/Executor;

    .line 15
    invoke-virtual {v1, v4, v5}, Ln3/m0/c0/t/w/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 16
    iget-object v1, p0, Ln3/m0/c0/d;->g:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object v0, p0, Ln3/m0/c0/d;->d:Ln3/m0/c0/t/x/a;

    check-cast v0, Ln3/m0/c0/t/x/b;

    .line 19
    iget-object v0, v0, Ln3/m0/c0/t/x/b;->a:Ln3/m0/c0/t/k;

    .line 20
    invoke-virtual {v0, p2}, Ln3/m0/c0/t/k;->execute(Ljava/lang/Runnable;)V

    .line 21
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object p2

    sget-object v0, Ln3/m0/c0/d;->l:Ljava/lang/String;

    const-string v1, "%s: processing %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-class v5, Ln3/m0/c0/d;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object p1, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Throwable;

    invoke-virtual {p2, v0, p1, v1}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v2

    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final h()V
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/m0/c0/d;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/m0/c0/d;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Ln3/m0/c0/d;->b:Landroid/content/Context;

    .line 4
    sget-object v3, Ln3/m0/c0/r/c;->k:Ljava/lang/String;

    .line 5
    new-instance v3, Landroid/content/Intent;

    const-class v4, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_STOP_FOREGROUND"

    .line 6
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v1, p0, Ln3/m0/c0/d;->b:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_2
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v3

    sget-object v4, Ln3/m0/c0/d;->l:Ljava/lang/String;

    const-string v5, "Unable to stop foreground service"

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v1, v2, v6

    invoke-virtual {v3, v4, v5, v2}, Ln3/m0/p;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 9
    :goto_0
    iget-object v1, p0, Ln3/m0/c0/d;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Ln3/m0/c0/d;->a:Landroid/os/PowerManager$WakeLock;

    .line 12
    :cond_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public i(Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/m0/c0/d;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v1

    sget-object v2, Ln3/m0/c0/d;->l:Ljava/lang/String;

    const-string v3, "Processor stopping foreground work %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object v1, p0, Ln3/m0/c0/d;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/m0/c0/o;

    .line 4
    invoke-static {p1, v1}, Ln3/m0/c0/d;->c(Ljava/lang/String;Ln3/m0/c0/o;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public j(Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/m0/c0/d;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v1

    sget-object v2, Ln3/m0/c0/d;->l:Ljava/lang/String;

    const-string v3, "Processor stopping background work %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object v1, p0, Ln3/m0/c0/d;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/m0/c0/o;

    .line 4
    invoke-static {p1, v1}, Ln3/m0/c0/d;->c(Ljava/lang/String;Ln3/m0/c0/o;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
