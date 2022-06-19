.class public Le/b/a/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static e:Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/b/a/m<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/b/a/m<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Landroid/os/Handler;

.field public volatile d:Le/b/a/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/p<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Le/b/a/r;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Le/b/a/p<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Le/b/a/r;->a:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Le/b/a/r;->b:Ljava/util/Set;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Le/b/a/r;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Le/b/a/r;->d:Le/b/a/p;

    .line 6
    sget-object v0, Le/b/a/r;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Le/b/a/r$a;

    invoke-direct {v1, p0, p1}, Le/b/a/r$a;-><init>(Le/b/a/r;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Le/b/a/m;)Le/b/a/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/m<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Le/b/a/r<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/b/a/r;->d:Le/b/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/b/a/r;->d:Le/b/a/p;

    .line 2
    iget-object v0, v0, Le/b/a/p;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/b/a/r;->d:Le/b/a/p;

    .line 4
    iget-object v0, v0, Le/b/a/p;->b:Ljava/lang/Throwable;

    .line 5
    invoke-interface {p1, v0}, Le/b/a/m;->onResult(Ljava/lang/Object;)V

    .line 6
    :cond_0
    iget-object v0, p0, Le/b/a/r;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Le/b/a/m;)Le/b/a/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/m<",
            "TT;>;)",
            "Le/b/a/r<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/b/a/r;->d:Le/b/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/b/a/r;->d:Le/b/a/p;

    .line 2
    iget-object v0, v0, Le/b/a/p;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/b/a/r;->d:Le/b/a/p;

    .line 4
    iget-object v0, v0, Le/b/a/p;->a:Ljava/lang/Object;

    .line 5
    invoke-interface {p1, v0}, Le/b/a/m;->onResult(Ljava/lang/Object;)V

    .line 6
    :cond_0
    iget-object v0, p0, Le/b/a/r;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Le/b/a/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/p<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/b/a/r;->d:Le/b/a/p;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Le/b/a/r;->d:Le/b/a/p;

    .line 3
    iget-object p1, p0, Le/b/a/r;->c:Landroid/os/Handler;

    new-instance v0, Le/b/a/q;

    invoke-direct {v0, p0}, Le/b/a/q;-><init>(Le/b/a/r;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A task may only be set once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
