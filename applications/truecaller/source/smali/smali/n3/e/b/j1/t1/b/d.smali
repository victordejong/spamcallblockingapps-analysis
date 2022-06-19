.class public final Ln3/e/b/j1/t1/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/b/j1/t1/b/d$b;,
        Ln3/e/b/j1/t1/b/d$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ln3/e/b/j1/t1/b/d$b;

.field public d:Ln3/e/b/j1/t1/b/d$c;

.field public e:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ln3/e/b/j1/t1/b/d;->a:Ljava/util/Deque;

    .line 3
    new-instance v0, Ln3/e/b/j1/t1/b/d$b;

    invoke-direct {v0, p0}, Ln3/e/b/j1/t1/b/d$b;-><init>(Ln3/e/b/j1/t1/b/d;)V

    iput-object v0, p0, Ln3/e/b/j1/t1/b/d;->c:Ln3/e/b/j1/t1/b/d$b;

    .line 4
    sget-object v0, Ln3/e/b/j1/t1/b/d$c;->a:Ln3/e/b/j1/t1/b/d$c;

    iput-object v0, p0, Ln3/e/b/j1/t1/b/d;->d:Ln3/e/b/j1/t1/b/d$c;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Ln3/e/b/j1/t1/b/d;->e:J

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Ln3/e/b/j1/t1/b/d;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 8

    .line 1
    sget-object v0, Ln3/e/b/j1/t1/b/d$c;->b:Ln3/e/b/j1/t1/b/d$c;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Ln3/e/b/j1/t1/b/d;->a:Ljava/util/Deque;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Ln3/e/b/j1/t1/b/d;->d:Ln3/e/b/j1/t1/b/d$c;

    sget-object v3, Ln3/e/b/j1/t1/b/d$c;->d:Ln3/e/b/j1/t1/b/d$c;

    if-eq v2, v3, :cond_7

    sget-object v3, Ln3/e/b/j1/t1/b/d$c;->c:Ln3/e/b/j1/t1/b/d$c;

    if-ne v2, v3, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    iget-wide v4, p0, Ln3/e/b/j1/t1/b/d;->e:J

    .line 5
    new-instance v2, Ln3/e/b/j1/t1/b/d$a;

    invoke-direct {v2, p0, p1}, Ln3/e/b/j1/t1/b/d$a;-><init>(Ln3/e/b/j1/t1/b/d;Ljava/lang/Runnable;)V

    .line 6
    iget-object p1, p0, Ln3/e/b/j1/t1/b/d;->a:Ljava/util/Deque;

    invoke-interface {p1, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 7
    iput-object v0, p0, Ln3/e/b/j1/t1/b/d;->d:Ln3/e/b/j1/t1/b/d$c;

    .line 8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 p1, 0x1

    const/4 v1, 0x0

    .line 9
    :try_start_1
    iget-object v6, p0, Ln3/e/b/j1/t1/b/d;->b:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Ln3/e/b/j1/t1/b/d;->c:Ln3/e/b/j1/t1/b/d$b;

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    .line 10
    iget-object v2, p0, Ln3/e/b/j1/t1/b/d;->d:Ln3/e/b/j1/t1/b/d$c;

    if-eq v2, v0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    return-void

    .line 11
    :cond_2
    iget-object v6, p0, Ln3/e/b/j1/t1/b/d;->a:Ljava/util/Deque;

    monitor-enter v6

    .line 12
    :try_start_2
    iget-wide v1, p0, Ln3/e/b/j1/t1/b/d;->e:J

    cmp-long p1, v1, v4

    if-nez p1, :cond_3

    iget-object p1, p0, Ln3/e/b/j1/t1/b/d;->d:Ln3/e/b/j1/t1/b/d$c;

    if-ne p1, v0, :cond_3

    .line 13
    iput-object v3, p0, Ln3/e/b/j1/t1/b/d;->d:Ln3/e/b/j1/t1/b/d$c;

    .line 14
    :cond_3
    monitor-exit v6

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    .line 15
    :goto_1
    iget-object v4, p0, Ln3/e/b/j1/t1/b/d;->a:Ljava/util/Deque;

    monitor-enter v4

    .line 16
    :try_start_3
    iget-object v5, p0, Ln3/e/b/j1/t1/b/d;->d:Ln3/e/b/j1/t1/b/d$c;

    sget-object v6, Ln3/e/b/j1/t1/b/d$c;->a:Ln3/e/b/j1/t1/b/d$c;

    if-eq v5, v6, :cond_4

    if-ne v5, v0, :cond_5

    :cond_4
    iget-object v0, p0, Ln3/e/b/j1/t1/b/d;->a:Ljava/util/Deque;

    .line 17
    invoke-interface {v0, v2}, Ljava/util/Deque;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move p1, v1

    .line 18
    :goto_2
    instance-of v0, v3, Ljava/util/concurrent/RejectedExecutionException;

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    .line 19
    monitor-exit v4

    return-void

    .line 20
    :cond_6
    throw v3

    :catchall_1
    move-exception p1

    .line 21
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 22
    :cond_7
    :goto_3
    :try_start_4
    iget-object v0, p0, Ln3/e/b/j1/t1/b/d;->a:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 23
    monitor-exit v1

    return-void

    :catchall_2
    move-exception p1

    .line 24
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method
