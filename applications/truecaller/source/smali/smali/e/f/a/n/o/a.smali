.class public final Le/f/a/n/o/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/n/o/a$b;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/f/a/n/f;",
            "Le/f/a/n/o/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Le/f/a/n/o/q<",
            "*>;>;"
        }
    .end annotation
.end field

.field public e:Le/f/a/n/o/q$a;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 1
    new-instance v0, Le/f/a/n/o/a$a;

    invoke-direct {v0}, Le/f/a/n/o/a$a;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Le/f/a/n/o/a;->c:Ljava/util/Map;

    .line 5
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Le/f/a/n/o/a;->d:Ljava/lang/ref/ReferenceQueue;

    .line 6
    iput-boolean p1, p0, Le/f/a/n/o/a;->a:Z

    .line 7
    iput-object v0, p0, Le/f/a/n/o/a;->b:Ljava/util/concurrent/Executor;

    .line 8
    new-instance p1, Le/f/a/n/o/b;

    invoke-direct {p1, p0}, Le/f/a/n/o/b;-><init>(Le/f/a/n/o/a;)V

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Le/f/a/n/f;Le/f/a/n/o/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/f;",
            "Le/f/a/n/o/q<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Le/f/a/n/o/a$b;

    iget-object v1, p0, Le/f/a/n/o/a;->d:Ljava/lang/ref/ReferenceQueue;

    iget-boolean v2, p0, Le/f/a/n/o/a;->a:Z

    invoke-direct {v0, p1, p2, v1, v2}, Le/f/a/n/o/a$b;-><init>(Le/f/a/n/f;Le/f/a/n/o/q;Ljava/lang/ref/ReferenceQueue;Z)V

    .line 2
    iget-object p2, p0, Le/f/a/n/o/a;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/f/a/n/o/a$b;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 3
    iput-object p2, p1, Le/f/a/n/o/a$b;->c:Le/f/a/n/o/w;

    .line 4
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Le/f/a/n/o/a$b;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Le/f/a/n/o/a;->c:Ljava/util/Map;

    iget-object v1, p1, Le/f/a/n/o/a$b;->a:Le/f/a/n/f;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v0, p1, Le/f/a/n/o/a$b;->b:Z

    if-eqz v0, :cond_1

    iget-object v2, p1, Le/f/a/n/o/a$b;->c:Le/f/a/n/o/w;

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance v0, Le/f/a/n/o/q;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p1, Le/f/a/n/o/a$b;->a:Le/f/a/n/f;

    iget-object v6, p0, Le/f/a/n/o/a;->e:Le/f/a/n/o/q$a;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Le/f/a/n/o/q;-><init>(Le/f/a/n/o/w;ZZLe/f/a/n/f;Le/f/a/n/o/q$a;)V

    .line 6
    iget-object v1, p0, Le/f/a/n/o/a;->e:Le/f/a/n/o/q$a;

    iget-object p1, p1, Le/f/a/n/o/a$b;->a:Le/f/a/n/f;

    invoke-interface {v1, p1, v0}, Le/f/a/n/o/q$a;->a(Le/f/a/n/f;Le/f/a/n/o/q;)V

    return-void

    .line 7
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
