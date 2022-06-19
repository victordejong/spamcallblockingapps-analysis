.class public abstract Le/a/r2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/l;


# instance fields
.field public final a:Le/a/r2/a0;

.field public final b:Le/a/r2/n;

.field public volatile c:Le/a/r2/j;


# direct methods
.method public constructor <init>(Le/a/r2/a0;Le/a/r2/n;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/r2/m;->c:Le/a/r2/j;

    .line 3
    iput-object p1, p0, Le/a/r2/m;->a:Le/a/r2/a0;

    .line 4
    iput-object p2, p0, Le/a/r2/m;->b:Le/a/r2/n;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Class;I)Le/a/r2/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Le/a/r2/i;",
            ">;I)",
            "Le/a/r2/j;"
        }
    .end annotation

    .line 1
    new-instance v6, Le/a/r2/g0;

    iget-object v2, p0, Le/a/r2/m;->a:Le/a/r2/a0;

    iget-object v3, p0, Le/a/r2/m;->b:Le/a/r2/n;

    move-object v0, v6

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Le/a/r2/g0;-><init>(Landroid/content/Context;Le/a/r2/a0;Le/a/r2/n;Ljava/lang/Class;I)V

    return-object v6
.end method

.method public b(Ljava/util/concurrent/Executor;)Le/a/r2/j;
    .locals 3

    .line 1
    new-instance v0, Le/a/r2/q;

    iget-object v1, p0, Le/a/r2/m;->a:Le/a/r2/a0;

    iget-object v2, p0, Le/a/r2/m;->b:Le/a/r2/n;

    invoke-direct {v0, p1, v1, v2}, Le/a/r2/q;-><init>(Ljava/util/concurrent/Executor;Le/a/r2/a0;Le/a/r2/n;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;I)Le/a/r2/j;
    .locals 9

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Le/a/r2/k;

    invoke-direct {v7, p1}, Le/a/r2/k;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-wide/16 v3, 0x5

    move-object v0, v8

    move v2, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 2
    new-instance p1, Le/a/r2/q;

    iget-object p2, p0, Le/a/r2/m;->a:Le/a/r2/a0;

    iget-object v0, p0, Le/a/r2/m;->b:Le/a/r2/n;

    invoke-direct {p1, v8, p2, v0}, Le/a/r2/q;-><init>(Ljava/util/concurrent/Executor;Le/a/r2/a0;Le/a/r2/n;)V

    return-object p1
.end method

.method public d()Le/a/r2/j;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/r2/m;->c:Le/a/r2/j;

    if-nez v0, :cond_1

    .line 2
    iget-object v1, p0, Le/a/r2/m;->a:Le/a/r2/a0;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/r2/m;->c:Le/a/r2/j;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 5
    new-instance v2, Le/a/r2/t;

    iget-object v3, p0, Le/a/r2/m;->a:Le/a/r2/a0;

    iget-object v4, p0, Le/a/r2/m;->b:Le/a/r2/n;

    invoke-direct {v2, v3, v4, v0}, Le/a/r2/t;-><init>(Le/a/r2/a0;Le/a/r2/n;Landroid/os/Looper;)V

    .line 6
    iput-object v2, p0, Le/a/r2/m;->c:Le/a/r2/j;

    move-object v0, v2

    .line 7
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public e(Ljava/lang/String;)Le/a/r2/j;
    .locals 3

    .line 1
    new-instance v0, Le/a/r2/o;

    iget-object v1, p0, Le/a/r2/m;->a:Le/a/r2/a0;

    iget-object v2, p0, Le/a/r2/m;->b:Le/a/r2/n;

    invoke-direct {v0, v1, v2, p1}, Le/a/r2/o;-><init>(Le/a/r2/a0;Le/a/r2/n;Ljava/lang/String;)V

    return-object v0
.end method

.method public f(Ljava/lang/String;J)Le/a/r2/j;
    .locals 7

    .line 1
    new-instance v6, Le/a/r2/o;

    iget-object v1, p0, Le/a/r2/m;->a:Le/a/r2/a0;

    iget-object v2, p0, Le/a/r2/m;->b:Le/a/r2/n;

    move-object v0, v6

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Le/a/r2/o;-><init>(Le/a/r2/a0;Le/a/r2/n;Ljava/lang/String;J)V

    return-object v6
.end method

.method public g(Landroid/os/Looper;)Le/a/r2/j;
    .locals 3

    .line 1
    new-instance v0, Le/a/r2/t;

    iget-object v1, p0, Le/a/r2/m;->a:Le/a/r2/a0;

    iget-object v2, p0, Le/a/r2/m;->b:Le/a/r2/n;

    invoke-direct {v0, v1, v2, p1}, Le/a/r2/t;-><init>(Le/a/r2/a0;Le/a/r2/n;Landroid/os/Looper;)V

    return-object v0
.end method
