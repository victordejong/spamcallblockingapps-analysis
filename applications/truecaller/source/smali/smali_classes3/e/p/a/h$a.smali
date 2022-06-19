.class public Le/p/a/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/p/a/h;


# direct methods
.method public constructor <init>(Le/p/a/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/p/a/h$a;->a:Le/p/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Le/p/a/h$a;->a:Le/p/a/h;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v3, v0, Le/p/a/h;->e:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/high16 v6, -0x8000000000000000L

    move-wide v7, v6

    move-object v6, v5

    move v5, v4

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/p/a/y/l/a;

    .line 5
    invoke-virtual {v0, v9, v1, v2}, Le/p/a/h;->a(Le/p/a/y/l/a;J)I

    move-result v10

    if-lez v10, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 6
    iget-wide v10, v9, Le/p/a/y/l/a;->l:J

    sub-long v10, v1, v10

    cmp-long v12, v10, v7

    if-lez v12, :cond_1

    move-object v6, v9

    move-wide v7, v10

    goto :goto_1

    .line 7
    :cond_3
    iget-wide v1, v0, Le/p/a/h;->c:J

    cmp-long v3, v7, v1

    const-wide/16 v9, -0x1

    const-wide/16 v11, 0x0

    if-gez v3, :cond_7

    iget v3, v0, Le/p/a/h;->b:I

    if-le v4, v3, :cond_4

    goto :goto_2

    :cond_4
    if-lez v4, :cond_5

    sub-long/2addr v1, v7

    .line 8
    monitor-exit v0

    goto :goto_3

    :cond_5
    if-lez v5, :cond_6

    .line 9
    monitor-exit v0

    goto :goto_3

    .line 10
    :cond_6
    monitor-exit v0

    move-wide v1, v9

    goto :goto_3

    .line 11
    :cond_7
    :goto_2
    iget-object v1, v0, Le/p/a/h;->e:Ljava/util/Deque;

    invoke-interface {v1, v6}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    iget-object v0, v6, Le/p/a/y/l/a;->c:Ljava/net/Socket;

    .line 14
    invoke-static {v0}, Le/p/a/y/i;->d(Ljava/net/Socket;)V

    move-wide v1, v11

    :goto_3
    cmp-long v0, v1, v9

    if-nez v0, :cond_8

    return-void

    :cond_8
    cmp-long v0, v1, v11

    if-lez v0, :cond_0

    const-wide/32 v3, 0xf4240

    .line 15
    div-long v5, v1, v3

    mul-long/2addr v3, v5

    sub-long/2addr v1, v3

    .line 16
    iget-object v0, p0, Le/p/a/h$a;->a:Le/p/a/h;

    monitor-enter v0

    .line 17
    :try_start_1
    iget-object v3, p0, Le/p/a/h$a;->a:Le/p/a/h;

    long-to-int v1, v1

    invoke-virtual {v3, v5, v6, v1}, Ljava/lang/Object;->wait(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_5

    .line 18
    :catch_0
    :goto_4
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    .line 19
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
