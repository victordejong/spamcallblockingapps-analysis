.class public final Lu3/p0/g/j$a;
.super Lu3/p0/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/p0/g/j;-><init>(Lu3/p0/f/d;IJLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lu3/p0/g/j;


# direct methods
.method public constructor <init>(Lu3/p0/g/j;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lu3/p0/g/j$a;->e:Lu3/p0/g/j;

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p2, p1}, Lu3/p0/f/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 14

    .line 1
    iget-object v0, p0, Lu3/p0/g/j$a;->e:Lu3/p0/g/j;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 2
    iget-object v3, v0, Lu3/p0/g/j;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/high16 v5, -0x8000000000000000L

    const/4 v7, 0x0

    move-wide v8, v5

    move-object v6, v7

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lu3/p0/g/i;

    const-string v11, "connection"

    .line 3
    invoke-static {v10, v11}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v10

    .line 4
    :try_start_0
    invoke-virtual {v0, v10, v1, v2}, Lu3/p0/g/j;->b(Lu3/p0/g/i;J)I

    move-result v11

    if-lez v11, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 5
    iget-wide v11, v10, Lu3/p0/g/i;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v11, v1, v11

    cmp-long v13, v11, v8

    if-lez v13, :cond_1

    move-object v6, v10

    move-wide v8, v11

    .line 6
    :cond_1
    :goto_1
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    .line 7
    :cond_2
    iget-wide v10, v0, Lu3/p0/g/j;->a:J

    cmp-long v3, v8, v10

    if-gez v3, :cond_6

    iget v3, v0, Lu3/p0/g/j;->e:I

    if-le v4, v3, :cond_3

    goto :goto_2

    :cond_3
    if-lez v4, :cond_4

    sub-long/2addr v10, v8

    goto :goto_3

    :cond_4
    if-lez v5, :cond_5

    goto :goto_3

    :cond_5
    const-wide/16 v10, -0x1

    goto :goto_3

    :cond_6
    :goto_2
    if-eqz v6, :cond_a

    .line 8
    monitor-enter v6

    .line 9
    :try_start_1
    iget-object v3, v6, Lu3/p0/g/i;->o:Ljava/util/List;

    .line 10
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const-wide/16 v10, 0x0

    if-eqz v3, :cond_7

    monitor-exit v6

    goto :goto_3

    .line 11
    :cond_7
    :try_start_2
    iget-wide v12, v6, Lu3/p0/g/i;->p:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-long/2addr v12, v8

    cmp-long v1, v12, v1

    if-eqz v1, :cond_8

    .line 12
    monitor-exit v6

    goto :goto_3

    .line 13
    :cond_8
    :try_start_3
    iput-boolean v4, v6, Lu3/p0/g/i;->i:Z

    .line 14
    iget-object v1, v0, Lu3/p0/g/j;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 15
    monitor-exit v6

    .line 16
    invoke-virtual {v6}, Lu3/p0/g/i;->m()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lu3/p0/c;->e(Ljava/net/Socket;)V

    .line 17
    iget-object v1, v0, Lu3/p0/g/j;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, v0, Lu3/p0/g/j;->b:Lu3/p0/f/c;

    invoke-virtual {v0}, Lu3/p0/f/c;->a()V

    :cond_9
    :goto_3
    return-wide v10

    :catchall_1
    move-exception v0

    .line 18
    monitor-exit v6

    throw v0

    .line 19
    :cond_a
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v7
.end method
