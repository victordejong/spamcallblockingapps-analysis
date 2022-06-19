.class public Le/p/a/y/j/d$e;
.super Le/p/a/y/d;
.source "SourceFile"

# interfaces
.implements Le/p/a/y/j/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/y/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final b:Le/p/a/y/j/b;

.field public final synthetic c:Le/p/a/y/j/d;


# direct methods
.method public constructor <init>(Le/p/a/y/j/d;Le/p/a/y/j/b;Le/p/a/y/j/d$a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Le/p/a/y/j/d;->e:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const-string p1, "OkHttp %s"

    .line 3
    invoke-direct {p0, p1, p3}, Le/p/a/y/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iput-object p2, p0, Le/p/a/y/j/d$e;->b:Le/p/a/y/j/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    sget-object v0, Le/p/a/y/j/a;->j:Le/p/a/y/j/a;

    .line 2
    :try_start_0
    iget-object v1, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    iget-boolean v1, v1, Le/p/a/y/j/d;->b:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Le/p/a/y/j/d$e;->b:Le/p/a/y/j/b;

    invoke-interface {v1}, Le/p/a/y/j/b;->V()V

    .line 4
    :cond_0
    :goto_0
    iget-object v1, p0, Le/p/a/y/j/d$e;->b:Le/p/a/y/j/b;

    invoke-interface {v1, p0}, Le/p/a/y/j/b;->O(Le/p/a/y/j/b$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v1, Le/p/a/y/j/a;->d:Le/p/a/y/j/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    sget-object v0, Le/p/a/y/j/a;->o:Le/p/a/y/j/a;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    iget-object v2, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 8
    invoke-virtual {v2, v1, v0}, Le/p/a/y/j/d;->d(Le/p/a/y/j/a;Le/p/a/y/j/a;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-object v1, v0

    .line 9
    :catch_1
    :try_start_3
    sget-object v0, Le/p/a/y/j/a;->e:Le/p/a/y/j/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 10
    :try_start_4
    iget-object v1, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 11
    invoke-virtual {v1, v0, v0}, Le/p/a/y/j/d;->d(Le/p/a/y/j/a;Le/p/a/y/j/a;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 12
    :catch_2
    :goto_1
    iget-object v0, p0, Le/p/a/y/j/d$e;->b:Le/p/a/y/j/b;

    invoke-static {v0}, Le/p/a/y/i;->c(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    .line 13
    :goto_2
    :try_start_5
    iget-object v3, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 14
    invoke-virtual {v3, v2, v0}, Le/p/a/y/j/d;->d(Le/p/a/y/j/a;Le/p/a/y/j/a;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 15
    :catch_3
    iget-object v0, p0, Le/p/a/y/j/d$e;->b:Le/p/a/y/j/b;

    invoke-static {v0}, Le/p/a/y/i;->c(Ljava/io/Closeable;)V

    throw v1
.end method

.method public b(ZILv3/h;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p3

    move/from16 v8, p4

    .line 1
    iget-object v3, v1, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    invoke-static {v3, v0}, Le/p/a/y/j/d;->b(Le/p/a/y/j/d;I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 2
    iget-object v3, v1, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 3
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v7, Lv3/f;

    invoke-direct {v7}, Lv3/f;-><init>()V

    int-to-long v9, v8

    .line 5
    invoke-interface {v2, v9, v10}, Lv3/h;->y1(J)V

    .line 6
    invoke-interface {v2, v7, v9, v10}, Lv3/b0;->d2(Lv3/f;J)J

    .line 7
    iget-wide v11, v7, Lv3/f;->b:J

    cmp-long v2, v11, v9

    if-nez v2, :cond_0

    .line 8
    iget-object v10, v3, Le/p/a/y/j/d;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v11, Le/p/a/y/j/h;

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v2, v3, Le/p/a/y/j/d;->e:Ljava/lang/String;

    aput-object v2, v6, v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v4

    const-string v4, "OkHttp %s Push Data[%s]"

    move-object v2, v11

    move-object v5, v6

    move/from16 v6, p2

    move/from16 v8, p4

    move/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Le/p/a/y/j/h;-><init>(Le/p/a/y/j/d;Ljava/lang/String;[Ljava/lang/Object;ILv3/f;IZ)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    iget-wide v3, v7, Lv3/f;->b:J

    .line 11
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_1
    iget-object v3, v1, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    invoke-virtual {v3, v0}, Le/p/a/y/j/d;->j(I)Le/p/a/y/j/k;

    move-result-object v3

    if-nez v3, :cond_2

    .line 13
    iget-object v3, v1, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    sget-object v4, Le/p/a/y/j/a;->f:Le/p/a/y/j/a;

    invoke-virtual {v3, v0, v4}, Le/p/a/y/j/d;->E(ILe/p/a/y/j/a;)V

    int-to-long v3, v8

    .line 14
    invoke-interface {v2, v3, v4}, Lv3/h;->skip(J)V

    return-void

    .line 15
    :cond_2
    iget-object v0, v3, Le/p/a/y/j/k;->g:Le/p/a/y/j/k$c;

    int-to-long v6, v8

    .line 16
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_9

    .line 17
    iget-object v10, v0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    monitor-enter v10

    .line 18
    :try_start_0
    iget-boolean v11, v0, Le/p/a/y/j/k$c;->e:Z

    .line 19
    iget-object v12, v0, Le/p/a/y/j/k$c;->b:Lv3/f;

    .line 20
    iget-wide v12, v12, Lv3/f;->b:J

    add-long/2addr v12, v6

    .line 21
    iget-wide v14, v0, Le/p/a/y/j/k$c;->c:J

    cmp-long v12, v12, v14

    if-lez v12, :cond_3

    move v12, v4

    goto :goto_1

    :cond_3
    move v12, v5

    .line 22
    :goto_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v12, :cond_4

    .line 23
    invoke-interface {v2, v6, v7}, Lv3/h;->skip(J)V

    .line 24
    iget-object v0, v0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    sget-object v2, Le/p/a/y/j/a;->k:Le/p/a/y/j/a;

    invoke-virtual {v0, v2}, Le/p/a/y/j/k;->e(Le/p/a/y/j/a;)V

    goto :goto_3

    :cond_4
    if-eqz v11, :cond_5

    .line 25
    invoke-interface {v2, v6, v7}, Lv3/h;->skip(J)V

    goto :goto_3

    .line 26
    :cond_5
    iget-object v10, v0, Le/p/a/y/j/k$c;->a:Lv3/f;

    invoke-interface {v2, v10, v6, v7}, Lv3/b0;->d2(Lv3/f;J)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v12, v10, v12

    if-eqz v12, :cond_8

    sub-long/2addr v6, v10

    .line 27
    iget-object v10, v0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    monitor-enter v10

    .line 28
    :try_start_1
    iget-object v11, v0, Le/p/a/y/j/k$c;->b:Lv3/f;

    .line 29
    iget-wide v12, v11, Lv3/f;->b:J

    cmp-long v8, v12, v8

    if-nez v8, :cond_6

    move v8, v4

    goto :goto_2

    :cond_6
    move v8, v5

    .line 30
    :goto_2
    iget-object v9, v0, Le/p/a/y/j/k$c;->a:Lv3/f;

    invoke-virtual {v11, v9}, Lv3/f;->k1(Lv3/b0;)J

    if-eqz v8, :cond_7

    .line 31
    iget-object v8, v0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 32
    :cond_7
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 33
    :cond_8
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    .line 34
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_9
    :goto_3
    if-eqz p1, :cond_a

    .line 35
    invoke-virtual {v3}, Le/p/a/y/j/k;->j()V

    :cond_a
    return-void
.end method

.method public c(ILe/p/a/y/j/a;Lv3/i;)V
    .locals 4

    .line 1
    invoke-virtual {p3}, Lv3/i;->f()I

    .line 2
    iget-object p2, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    monitor-enter p2

    .line 3
    :try_start_0
    iget-object p3, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 4
    iget-object p3, p3, Le/p/a/y/j/d;->d:Ljava/util/Map;

    .line 5
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    iget-object v0, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 6
    iget-object v0, v0, Le/p/a/y/j/d;->d:Ljava/util/Map;

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Le/p/a/y/j/k;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Le/p/a/y/j/k;

    .line 8
    iget-object v0, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Le/p/a/y/j/d;->h:Z

    .line 10
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p3, v0

    .line 12
    iget v2, v1, Le/p/a/y/j/k;->c:I

    if-le v2, p1, :cond_1

    .line 13
    invoke-virtual {v1}, Le/p/a/y/j/k;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    sget-object v2, Le/p/a/y/j/a;->n:Le/p/a/y/j/a;

    .line 15
    monitor-enter v1

    .line 16
    :try_start_1
    iget-object v3, v1, Le/p/a/y/j/k;->k:Le/p/a/y/j/a;

    if-nez v3, :cond_0

    .line 17
    iput-object v2, v1, Le/p/a/y/j/k;->k:Le/p/a/y/j/a;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :cond_0
    monitor-exit v1

    .line 20
    iget-object v2, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 21
    iget v1, v1, Le/p/a/y/j/k;->c:I

    .line 22
    invoke-virtual {v2, v1}, Le/p/a/y/j/d;->k(I)Le/p/a/y/j/k;

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v1

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_1
    move-exception p1

    .line 24
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public d(ZZIILjava/util/List;Le/p/a/y/j/m;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Le/p/a/y/j/l;",
            ">;",
            "Le/p/a/y/j/m;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    move/from16 v0, p3

    move-object/from16 v7, p5

    move-object/from16 v2, p6

    .line 1
    sget-object v3, Le/p/a/y/j/a;->e:Le/p/a/y/j/a;

    sget-object v4, Le/p/a/y/j/m;->c:Le/p/a/y/j/m;

    sget-object v5, Le/p/a/y/j/m;->b:Le/p/a/y/j/m;

    iget-object v6, v1, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    invoke-static {v6, v0}, Le/p/a/y/j/d;->b(Le/p/a/y/j/d;I)Z

    move-result v6

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v6, :cond_0

    .line 2
    iget-object v3, v1, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 3
    iget-object v11, v3, Le/p/a/y/j/d;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v12, Le/p/a/y/j/g;

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v2, v3, Le/p/a/y/j/d;->e:Ljava/lang/String;

    aput-object v2, v5, v10

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v9

    const-string v4, "OkHttp %s Push Headers[%s]"

    move-object v2, v12

    move/from16 v6, p3

    move-object/from16 v7, p5

    move v8, p2

    invoke-direct/range {v2 .. v8}, Le/p/a/y/j/g;-><init>(Le/p/a/y/j/d;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 4
    :cond_0
    iget-object v11, v1, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    monitor-enter v11

    .line 5
    :try_start_0
    iget-object v6, v1, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 6
    iget-boolean v12, v6, Le/p/a/y/j/d;->h:Z

    if-eqz v12, :cond_1

    .line 7
    monitor-exit v11

    return-void

    .line 8
    :cond_1
    invoke-virtual {v6, v0}, Le/p/a/y/j/d;->j(I)Le/p/a/y/j/k;

    move-result-object v6

    if-nez v6, :cond_7

    if-eq v2, v5, :cond_3

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    move v2, v10

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v9

    :goto_1
    if-eqz v2, :cond_4

    .line 9
    iget-object v2, v1, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    sget-object v3, Le/p/a/y/j/a;->f:Le/p/a/y/j/a;

    invoke-virtual {v2, v0, v3}, Le/p/a/y/j/d;->E(ILe/p/a/y/j/a;)V

    .line 10
    monitor-exit v11

    return-void

    .line 11
    :cond_4
    iget-object v4, v1, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 12
    iget v2, v4, Le/p/a/y/j/d;->f:I

    if-gt v0, v2, :cond_5

    .line 13
    monitor-exit v11

    return-void

    .line 14
    :cond_5
    rem-int/lit8 v2, v0, 0x2

    .line 15
    iget v3, v4, Le/p/a/y/j/d;->g:I

    .line 16
    rem-int/2addr v3, v8

    if-ne v2, v3, :cond_6

    monitor-exit v11

    return-void

    .line 17
    :cond_6
    new-instance v12, Le/p/a/y/j/k;

    move-object v2, v12

    move/from16 v3, p3

    move v5, p1

    move v6, p2

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Le/p/a/y/j/k;-><init>(ILe/p/a/y/j/d;ZZLjava/util/List;)V

    .line 18
    iget-object v2, v1, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 19
    iput v0, v2, Le/p/a/y/j/d;->f:I

    .line 20
    iget-object v2, v2, Le/p/a/y/j/d;->d:Ljava/util/Map;

    .line 21
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v2, Le/p/a/y/j/d;->u:Ljava/util/concurrent/ExecutorService;

    .line 23
    new-instance v3, Le/p/a/y/j/d$e$a;

    const-string v4, "OkHttp %s stream %d"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v1, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 24
    iget-object v6, v6, Le/p/a/y/j/d;->e:Ljava/lang/String;

    aput-object v6, v5, v10

    .line 25
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-direct {v3, p0, v4, v5, v12}, Le/p/a/y/j/d$e$a;-><init>(Le/p/a/y/j/d$e;Ljava/lang/String;[Ljava/lang/Object;Le/p/a/y/j/k;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 26
    monitor-exit v11

    return-void

    .line 27
    :cond_7
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    sget-object v8, Le/p/a/y/j/m;->a:Le/p/a/y/j/m;

    if-ne v2, v8, :cond_8

    move v8, v9

    goto :goto_2

    :cond_8
    move v8, v10

    :goto_2
    if-eqz v8, :cond_9

    .line 29
    invoke-virtual {v6, v3}, Le/p/a/y/j/k;->e(Le/p/a/y/j/a;)V

    .line 30
    iget-object v2, v1, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    invoke-virtual {v2, v0}, Le/p/a/y/j/d;->k(I)Le/p/a/y/j/k;

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 31
    monitor-enter v6

    .line 32
    :try_start_1
    iget-object v8, v6, Le/p/a/y/j/k;->f:Ljava/util/List;

    if-nez v8, :cond_c

    if-ne v2, v4, :cond_a

    move v10, v9

    :cond_a
    if-eqz v10, :cond_b

    goto :goto_4

    .line 33
    :cond_b
    iput-object v7, v6, Le/p/a/y/j/k;->f:Ljava/util/List;

    .line 34
    invoke-virtual {v6}, Le/p/a/y/j/k;->i()Z

    move-result v2

    .line 35
    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    move v9, v2

    goto :goto_3

    :cond_c
    if-ne v2, v5, :cond_d

    move v10, v9

    :cond_d
    if-eqz v10, :cond_e

    .line 36
    sget-object v3, Le/p/a/y/j/a;->h:Le/p/a/y/j/a;

    goto :goto_4

    .line 37
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object v3, v6, Le/p/a/y/j/k;->f:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 40
    iput-object v2, v6, Le/p/a/y/j/k;->f:Ljava/util/List;

    :goto_3
    move-object v3, v0

    .line 41
    :goto_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_f

    .line 42
    invoke-virtual {v6, v3}, Le/p/a/y/j/k;->e(Le/p/a/y/j/a;)V

    goto :goto_5

    :cond_f
    if-nez v9, :cond_10

    .line 43
    iget-object v0, v6, Le/p/a/y/j/k;->d:Le/p/a/y/j/d;

    iget v2, v6, Le/p/a/y/j/k;->c:I

    invoke-virtual {v0, v2}, Le/p/a/y/j/d;->k(I)Le/p/a/y/j/k;

    :cond_10
    :goto_5
    if-eqz p2, :cond_11

    .line 44
    invoke-virtual {v6}, Le/p/a/y/j/k;->j()V

    :cond_11
    return-void

    :catchall_0
    move-exception v0

    .line 45
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 46
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public e(ZII)V
    .locals 9

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 2
    monitor-enter p1

    .line 3
    monitor-exit p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 5
    sget-object p1, Le/p/a/y/j/d;->u:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Le/p/a/y/j/e;

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, v1, Le/p/a/y/j/d;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v3, v2

    const-string v2, "OkHttp %s ping %08x%08x"

    move-object v0, v8

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Le/p/a/y/j/e;-><init>(Le/p/a/y/j/d;Ljava/lang/String;[Ljava/lang/Object;ZIILe/p/a/y/j/r;)V

    invoke-interface {p1, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public f(ILe/p/a/y/j/a;)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    invoke-static {v0, p1}, Le/p/a/y/j/d;->b(Le/p/a/y/j/d;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 3
    iget-object v0, v2, Le/p/a/y/j/d;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Le/p/a/y/j/i;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, v2, Le/p/a/y/j/d;->e:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v4, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v4, v3

    const-string v3, "OkHttp %s Push Reset[%s]"

    move-object v1, v7

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Le/p/a/y/j/i;-><init>(Le/p/a/y/j/d;Ljava/lang/String;[Ljava/lang/Object;ILe/p/a/y/j/a;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    invoke-virtual {v0, p1}, Le/p/a/y/j/d;->k(I)Le/p/a/y/j/k;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p1, Le/p/a/y/j/k;->k:Le/p/a/y/j/a;

    if-nez v0, :cond_1

    .line 7
    iput-object p2, p1, Le/p/a/y/j/k;->k:Le/p/a/y/j/a;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_2
    :goto_0
    return-void
.end method

.method public g(ZLe/p/a/y/j/t;)V
    .locals 10

    .line 1
    iget-object v0, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    iget-object v1, v1, Le/p/a/y/j/d;->n:Le/p/a/y/j/t;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Le/p/a/y/j/t;->b(I)I

    move-result v1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    iget-object p1, p1, Le/p/a/y/j/d;->n:Le/p/a/y/j/t;

    .line 4
    iput v3, p1, Le/p/a/y/j/t;->c:I

    iput v3, p1, Le/p/a/y/j/t;->b:I

    iput v3, p1, Le/p/a/y/j/t;->a:I

    .line 5
    iget-object p1, p1, Le/p/a/y/j/t;->d:[I

    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([II)V

    .line 6
    :cond_0
    iget-object p1, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    iget-object p1, p1, Le/p/a/y/j/d;->n:Le/p/a/y/j/t;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v3

    :goto_0
    const/16 v5, 0xa

    if-ge v4, v5, :cond_2

    .line 8
    invoke-virtual {p2, v4}, Le/p/a/y/j/t;->c(I)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p2, v4}, Le/p/a/y/j/t;->a(I)I

    move-result v5

    .line 10
    iget-object v6, p2, Le/p/a/y/j/t;->d:[I

    aget v6, v6, v4

    .line 11
    invoke-virtual {p1, v4, v5, v6}, Le/p/a/y/j/t;->d(III)Le/p/a/y/j/t;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 13
    iget-object v4, p1, Le/p/a/y/j/d;->a:Le/p/a/r;

    .line 14
    sget-object v5, Le/p/a/r;->e:Le/p/a/r;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_3

    .line 15
    sget-object v4, Le/p/a/y/j/d;->u:Ljava/util/concurrent/ExecutorService;

    .line 16
    new-instance v5, Le/p/a/y/j/j;

    new-array v7, v6, [Ljava/lang/Object;

    .line 17
    iget-object p1, p1, Le/p/a/y/j/d;->e:Ljava/lang/String;

    aput-object p1, v7, v3

    const-string p1, "OkHttp %s ACK Settings"

    .line 18
    invoke-direct {v5, p0, p1, v7, p2}, Le/p/a/y/j/j;-><init>(Le/p/a/y/j/d$e;Ljava/lang/String;[Ljava/lang/Object;Le/p/a/y/j/t;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 19
    :cond_3
    iget-object p1, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    iget-object p1, p1, Le/p/a/y/j/d;->n:Le/p/a/y/j/t;

    invoke-virtual {p1, v2}, Le/p/a/y/j/t;->b(I)I

    move-result p1

    const/4 p2, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    if-eq p1, p2, :cond_6

    if-eq p1, v1, :cond_6

    sub-int/2addr p1, v1

    int-to-long p1, p1

    .line 20
    iget-object v1, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 21
    iget-boolean v7, v1, Le/p/a/y/j/d;->o:Z

    if-nez v7, :cond_5

    .line 22
    iget-wide v7, v1, Le/p/a/y/j/d;->l:J

    add-long/2addr v7, p1

    iput-wide v7, v1, Le/p/a/y/j/d;->l:J

    cmp-long v7, p1, v4

    if-lez v7, :cond_4

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 24
    :cond_4
    iget-object v1, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 25
    iput-boolean v6, v1, Le/p/a/y/j/d;->o:Z

    .line 26
    :cond_5
    iget-object v1, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 27
    iget-object v1, v1, Le/p/a/y/j/d;->d:Ljava/util/Map;

    .line 28
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 29
    iget-object v1, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 30
    iget-object v1, v1, Le/p/a/y/j/d;->d:Ljava/util/Map;

    .line 31
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 32
    iget-object v2, v2, Le/p/a/y/j/d;->d:Ljava/util/Map;

    .line 33
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Le/p/a/y/j/k;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [Le/p/a/y/j/k;

    goto :goto_2

    :cond_6
    move-wide p1, v4

    .line 34
    :cond_7
    :goto_2
    sget-object v1, Le/p/a/y/j/d;->u:Ljava/util/concurrent/ExecutorService;

    .line 35
    new-instance v7, Le/p/a/y/j/d$e$b;

    const-string v8, "OkHttp %s settings"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v9, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 36
    iget-object v9, v9, Le/p/a/y/j/d;->e:Ljava/lang/String;

    aput-object v9, v6, v3

    .line 37
    invoke-direct {v7, p0, v8, v6}, Le/p/a/y/j/d$e$b;-><init>(Le/p/a/y/j/d$e;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_9

    cmp-long v0, p1, v4

    if-eqz v0, :cond_9

    .line 39
    array-length v1, v2

    :goto_3
    if-ge v3, v1, :cond_9

    aget-object v4, v2, v3

    .line 40
    monitor-enter v4

    .line 41
    :try_start_1
    iget-wide v5, v4, Le/p/a/y/j/k;->b:J

    add-long/2addr v5, p1

    iput-wide v5, v4, Le/p/a/y/j/k;->b:J

    if-lez v0, :cond_8

    .line 42
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 43
    :cond_8
    monitor-exit v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_9
    return-void

    :catchall_1
    move-exception p1

    .line 44
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public h(IJ)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p1, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    iget-wide v1, p1, Le/p/a/y/j/d;->l:J

    add-long/2addr v1, p2

    iput-wide v1, p1, Le/p/a/y/j/d;->l:J

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5
    :cond_0
    iget-object v0, p0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    invoke-virtual {v0, p1}, Le/p/a/y/j/d;->j(I)Le/p/a/y/j/k;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    monitor-enter p1

    .line 7
    :try_start_1
    iget-wide v0, p1, Le/p/a/y/j/k;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p1, Le/p/a/y/j/k;->b:J

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-lez p2, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 9
    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_2
    :goto_0
    return-void
.end method
