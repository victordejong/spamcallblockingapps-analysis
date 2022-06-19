.class public final Lu3/p0/f/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Lu3/p0/f/a;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu3/p0/f/a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public final e:Lu3/p0/f/d;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lu3/p0/f/d;Ljava/lang/String;)V
    .locals 1

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/p0/f/c;->e:Lu3/p0/f/d;

    iput-object p2, p0, Lu3/p0/f/c;->f:Ljava/lang/String;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lu3/p0/f/c;->c:Ljava/util/List;

    return-void
.end method

.method public static synthetic d(Lu3/p0/f/c;Lu3/p0/f/a;JI)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lu3/p0/f/c;->c(Lu3/p0/f/a;J)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget-object v0, Lu3/p0/c;->a:[B

    .line 2
    iget-object v0, p0, Lu3/p0/f/c;->e:Lu3/p0/f/d;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lu3/p0/f/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lu3/p0/f/c;->e:Lu3/p0/f/d;

    invoke-virtual {v1, p0}, Lu3/p0/f/d;->e(Lu3/p0/f/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final b()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lu3/p0/f/c;->b:Lu3/p0/f/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Lu3/p0/f/a;->d:Z

    if-eqz v0, :cond_1

    .line 3
    iput-boolean v1, p0, Lu3/p0/f/c;->d:Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 5
    iget-object v2, p0, Lu3/p0/f/c;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1
    if-ltz v2, :cond_4

    .line 6
    iget-object v3, p0, Lu3/p0/f/c;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu3/p0/f/a;

    .line 7
    iget-boolean v3, v3, Lu3/p0/f/a;->d:Z

    if-eqz v3, :cond_3

    .line 8
    iget-object v0, p0, Lu3/p0/f/c;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/p0/f/a;

    .line 9
    sget-object v3, Lu3/p0/f/d;->j:Lu3/p0/f/d$b;

    .line 10
    sget-object v3, Lu3/p0/f/d;->i:Ljava/util/logging/Logger;

    .line 11
    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "canceled"

    .line 12
    invoke-static {v0, p0, v3}, Ls1/a/a/a/v0/f/d;->q(Lu3/p0/f/a;Lu3/p0/f/c;Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object v0, p0, Lu3/p0/f/c;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    return v0
.end method

.method public final c(Lu3/p0/f/a;J)V
    .locals 2

    const-string v0, "task"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lu3/p0/f/c;->e:Lu3/p0/f/d;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lu3/p0/f/c;->a:Z

    if-eqz v1, :cond_3

    .line 3
    iget-boolean p2, p1, Lu3/p0/f/a;->d:Z

    if-eqz p2, :cond_1

    .line 4
    sget-object p2, Lu3/p0/f/d;->j:Lu3/p0/f/d$b;

    .line 5
    sget-object p2, Lu3/p0/f/d;->i:Ljava/util/logging/Logger;

    .line 6
    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "schedule canceled (queue is shutdown)"

    .line 7
    invoke-static {p1, p0, p2}, Ls1/a/a/a/v0/f/d;->q(Lu3/p0/f/a;Lu3/p0/f/c;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    .line 9
    :cond_1
    :try_start_1
    sget-object p2, Lu3/p0/f/d;->j:Lu3/p0/f/d$b;

    .line 10
    sget-object p2, Lu3/p0/f/d;->i:Ljava/util/logging/Logger;

    .line 11
    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "schedule failed (queue is shutdown)"

    .line 12
    invoke-static {p1, p0, p2}, Ls1/a/a/a/v0/f/d;->q(Lu3/p0/f/a;Lu3/p0/f/c;Ljava/lang/String;)V

    .line 13
    :cond_2
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw p1

    :cond_3
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, p1, p2, p3, v1}, Lu3/p0/f/c;->e(Lu3/p0/f/a;JZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    iget-object p1, p0, Lu3/p0/f/c;->e:Lu3/p0/f/d;

    invoke-virtual {p1, p0}, Lu3/p0/f/d;->e(Lu3/p0/f/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final e(Lu3/p0/f/a;JZ)Z
    .locals 10

    const-string v0, "task"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queue"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lu3/p0/f/a;->a:Lu3/p0/f/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p0, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_c

    .line 3
    iput-object p0, p1, Lu3/p0/f/a;->a:Lu3/p0/f/c;

    .line 4
    :goto_1
    iget-object v0, p0, Lu3/p0/f/c;->e:Lu3/p0/f/d;

    .line 5
    iget-object v0, v0, Lu3/p0/f/d;->g:Lu3/p0/f/d$a;

    .line 6
    invoke-interface {v0}, Lu3/p0/f/d$a;->b()J

    move-result-wide v3

    add-long v5, v3, p2

    .line 7
    iget-object v0, p0, Lu3/p0/f/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_4

    .line 8
    iget-wide v8, p1, Lu3/p0/f/a;->b:J

    cmp-long v8, v8, v5

    if-gtz v8, :cond_3

    .line 9
    sget-object p2, Lu3/p0/f/d;->j:Lu3/p0/f/d$b;

    .line 10
    sget-object p2, Lu3/p0/f/d;->i:Ljava/util/logging/Logger;

    .line 11
    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "already scheduled"

    .line 12
    invoke-static {p1, p0, p2}, Ls1/a/a/a/v0/f/d;->q(Lu3/p0/f/a;Lu3/p0/f/c;Ljava/lang/String;)V

    :cond_2
    return v2

    .line 13
    :cond_3
    iget-object v8, p0, Lu3/p0/f/c;->c:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 14
    :cond_4
    iput-wide v5, p1, Lu3/p0/f/a;->b:J

    .line 15
    sget-object v0, Lu3/p0/f/d;->j:Lu3/p0/f/d$b;

    .line 16
    sget-object v0, Lu3/p0/f/d;->i:Ljava/util/logging/Logger;

    .line 17
    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p4, :cond_5

    const-string p4, "run again after "

    .line 18
    invoke-static {p4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ls1/a/a/a/v0/f/d;->a1(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    :cond_5
    const-string p4, "scheduled after "

    .line 19
    invoke-static {p4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ls1/a/a/a/v0/f/d;->a1(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_2
    invoke-static {p1, p0, p4}, Ls1/a/a/a/v0/f/d;->q(Lu3/p0/f/a;Lu3/p0/f/c;Ljava/lang/String;)V

    .line 20
    :cond_6
    iget-object p4, p0, Lu3/p0/f/c;->c:Ljava/util/List;

    .line 21
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    move v0, v2

    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 22
    check-cast v5, Lu3/p0/f/a;

    .line 23
    iget-wide v5, v5, Lu3/p0/f/a;->b:J

    sub-long/2addr v5, v3

    cmp-long v5, v5, p2

    if-lez v5, :cond_7

    move v5, v1

    goto :goto_4

    :cond_7
    move v5, v2

    :goto_4
    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v0, v7

    :goto_5
    if-ne v0, v7, :cond_a

    .line 24
    iget-object p2, p0, Lu3/p0/f/c;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 25
    :cond_a
    iget-object p2, p0, Lu3/p0/f/c;->c:Ljava/util/List;

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    move v1, v2

    :goto_6
    return v1

    .line 26
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "task is in multiple queues"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f()V
    .locals 2

    .line 1
    sget-object v0, Lu3/p0/c;->a:[B

    .line 2
    iget-object v0, p0, Lu3/p0/f/c;->e:Lu3/p0/f/d;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lu3/p0/f/c;->a:Z

    .line 4
    invoke-virtual {p0}, Lu3/p0/f/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lu3/p0/f/c;->e:Lu3/p0/f/d;

    invoke-virtual {v1, p0}, Lu3/p0/f/d;->e(Lu3/p0/f/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/p0/f/c;->f:Ljava/lang/String;

    return-object v0
.end method
