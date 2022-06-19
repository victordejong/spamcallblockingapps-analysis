.class public final Le/m/a/c/p1/h0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/p1/h0/m$b;,
        Le/m/a/c/p1/h0/m$a;
    }
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method public static a(Le/m/a/c/p1/n;Le/m/a/c/p1/h0/c;Le/m/a/c/p1/h0/k;Le/m/a/c/p1/h0/f;[BLe/m/a/c/q1/v;ILe/m/a/c/p1/h0/m$a;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v0, p7

    .line 1
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, v1, Le/m/a/c/p1/n;->h:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Le/m/a/c/p1/n;->a:Landroid/net/Uri;

    .line 3
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v12, v2

    const/4 v2, 0x0

    const-wide/16 v13, 0x0

    const-wide v15, 0x7fffffffffffffffL

    const-wide/16 v6, -0x1

    if-eqz v0, :cond_7

    .line 4
    new-instance v4, Le/m/a/c/p1/h0/m$b;

    invoke-direct {v4, v0}, Le/m/a/c/p1/h0/m$b;-><init>(Le/m/a/c/p1/h0/m$a;)V

    .line 5
    iget-object v0, v1, Le/m/a/c/p1/n;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v1, Le/m/a/c/p1/n;->a:Landroid/net/Uri;

    .line 6
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    :goto_1
    iget-wide v2, v1, Le/m/a/c/p1/n;->e:J

    .line 8
    invoke-static {v1, v8, v0}, Le/m/a/c/p1/h0/m;->b(Le/m/a/c/p1/n;Le/m/a/c/p1/h0/c;Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v19, v2

    move-wide/from16 v23, v13

    move-wide/from16 v21, v17

    :goto_2
    cmp-long v2, v21, v13

    if-eqz v2, :cond_6

    cmp-long v25, v21, v6

    if-eqz v25, :cond_2

    move-wide/from16 v26, v21

    goto :goto_3

    :cond_2
    move-wide/from16 v26, v15

    :goto_3
    move-object/from16 v2, p1

    move-object v3, v0

    move-object/from16 v28, v4

    move-wide/from16 v4, v19

    move-wide/from16 v6, v26

    .line 9
    invoke-interface/range {v2 .. v7}, Le/m/a/c/p1/h0/c;->f(Ljava/lang/String;JJ)J

    move-result-wide v2

    cmp-long v4, v2, v13

    if-lez v4, :cond_3

    add-long v23, v23, v2

    goto :goto_4

    :cond_3
    neg-long v2, v2

    cmp-long v4, v2, v15

    if-nez v4, :cond_4

    goto :goto_5

    :cond_4
    :goto_4
    add-long v19, v19, v2

    if-nez v25, :cond_5

    move-wide v2, v13

    :cond_5
    sub-long v21, v21, v2

    move-object/from16 v4, v28

    const-wide/16 v6, -0x1

    goto :goto_2

    :cond_6
    move-object/from16 v28, v4

    .line 10
    :goto_5
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 11
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v6, v28

    .line 12
    iput-wide v2, v6, Le/m/a/c/p1/h0/m$b;->b:J

    .line 13
    iput-wide v4, v6, Le/m/a/c/p1/h0/m$b;->c:J

    .line 14
    iget-object v7, v6, Le/m/a/c/p1/h0/m$b;->a:Le/m/a/c/p1/h0/m$a;

    move-object/from16 v17, v7

    check-cast v17, Le/m/a/c/j1/m$a;

    const-wide/16 v22, 0x0

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    invoke-virtual/range {v17 .. v23}, Le/m/a/c/j1/m$a;->a(JJJ)V

    .line 15
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_6

    .line 16
    :cond_7
    invoke-static {v1, v8, v12}, Le/m/a/c/p1/h0/m;->b(Le/m/a/c/p1/n;Le/m/a/c/p1/h0/c;Ljava/lang/String;)J

    move-result-wide v3

    move-object v6, v2

    move-wide v2, v3

    .line 17
    :goto_6
    iget-wide v4, v1, Le/m/a/c/p1/n;->e:J

    const-wide/16 v13, -0x1

    cmp-long v0, v2, v13

    const/16 v19, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_8

    move/from16 v20, v19

    goto :goto_7

    :cond_8
    move/from16 v20, v7

    :goto_7
    move-wide/from16 v17, v2

    move-wide/from16 v21, v4

    const-wide/16 v23, 0x0

    :goto_8
    cmp-long v0, v17, v23

    if-eqz v0, :cond_1b

    .line 18
    invoke-static/range {p8 .. p8}, Le/m/a/c/p1/h0/m;->e(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    if-eqz v20, :cond_9

    move-wide/from16 v25, v15

    goto :goto_9

    :cond_9
    move-wide/from16 v25, v17

    :goto_9
    move-object/from16 v2, p1

    move-object v3, v12

    move-wide/from16 v4, v21

    move-object/from16 v32, v6

    move-wide/from16 v6, v25

    .line 19
    invoke-interface/range {v2 .. v7}, Le/m/a/c/p1/h0/c;->f(Ljava/lang/String;JJ)J

    move-result-wide v2

    cmp-long v0, v2, v23

    if-lez v0, :cond_a

    move/from16 v15, p6

    move-object/from16 v16, v12

    move-wide/from16 v29, v13

    move-object/from16 v1, v32

    goto/16 :goto_1a

    :cond_a
    neg-long v6, v2

    cmp-long v0, v6, v15

    if-nez v0, :cond_b

    move-wide v2, v13

    goto :goto_a

    :cond_b
    move-wide v2, v6

    :goto_a
    cmp-long v0, v2, v17

    move-wide/from16 v25, v6

    if-nez v0, :cond_c

    move/from16 v4, v19

    goto :goto_b

    :cond_c
    const/4 v4, 0x0

    .line 20
    :goto_b
    iget-wide v5, v1, Le/m/a/c/p1/n;->e:J

    sub-long v5, v21, v5

    cmp-long v0, v2, v13

    if-eqz v0, :cond_d

    add-long/2addr v2, v5

    goto :goto_c

    :cond_d
    move-wide v2, v13

    :goto_c
    move-wide/from16 v33, v5

    :goto_d
    if-eqz v11, :cond_f

    .line 21
    iget-object v7, v11, Le/m/a/c/q1/v;->a:Ljava/lang/Object;

    monitor-enter v7

    .line 22
    :goto_e
    :try_start_0
    iget v0, v11, Le/m/a/c/q1/v;->c:I

    move/from16 v15, p6

    if-eq v0, v15, :cond_e

    .line 23
    iget-object v0, v11, Le/m/a/c/q1/v;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const-wide v15, 0x7fffffffffffffffL

    goto :goto_e

    .line 24
    :cond_e
    monitor-exit v7

    goto :goto_f

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_f
    move/from16 v15, p6

    .line 25
    :goto_f
    invoke-static/range {p8 .. p8}, Le/m/a/c/p1/h0/m;->e(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    cmp-long v7, v2, v13

    move-object/from16 v16, v12

    move-wide/from16 v13, v33

    if-eqz v7, :cond_11

    sub-long v11, v2, v13

    .line 26
    :try_start_1
    invoke-virtual {v1, v13, v14, v11, v12}, Le/m/a/c/p1/n;->c(JJ)Le/m/a/c/p1/n;

    move-result-object v0

    invoke-virtual {v9, v0}, Le/m/a/c/p1/h0/f;->b(Le/m/a/c/p1/n;)J

    move-result-wide v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v0, v19

    goto :goto_11

    :catchall_1
    move-exception v0

    goto/16 :goto_17

    :catch_0
    move-exception v0

    if-eqz v4, :cond_10

    .line 27
    :try_start_2
    invoke-static {v0}, Le/m/a/c/p1/h0/m;->c(Ljava/io/IOException;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 28
    sget v0, Le/m/a/c/q1/d0;->a:I
    :try_end_2
    .catch Le/m/a/c/q1/v$a; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 29
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Le/m/a/c/p1/h0/f;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_10

    .line 30
    :cond_10
    :try_start_4
    throw v0

    :catch_1
    :cond_11
    :goto_10
    const/4 v0, 0x0

    const-wide/16 v11, -0x1

    :goto_11
    if-nez v0, :cond_12

    const-wide/16 v11, -0x1

    .line 31
    invoke-virtual {v1, v13, v14, v11, v12}, Le/m/a/c/p1/n;->c(JJ)Le/m/a/c/p1/n;

    move-result-object v0

    invoke-virtual {v9, v0}, Le/m/a/c/p1/h0/f;->b(Le/m/a/c/p1/n;)J

    move-result-wide v11
    :try_end_4
    .catch Le/m/a/c/q1/v$a; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_12

    :catch_2
    move-wide/from16 v38, v2

    move-wide/from16 v33, v13

    move-object/from16 v1, v32

    const-wide/16 v29, -0x1

    goto/16 :goto_18

    :cond_12
    move-wide/from16 v33, v11

    :goto_12
    move-object/from16 v1, v32

    const-wide/16 v29, -0x1

    if-eqz v4, :cond_13

    if-eqz v1, :cond_13

    cmp-long v0, v11, v29

    if-eqz v0, :cond_13

    add-long/2addr v11, v13

    .line 32
    :try_start_5
    invoke-virtual {v1, v11, v12}, Le/m/a/c/p1/h0/m$b;->a(J)V

    :cond_13
    :goto_13
    cmp-long v0, v13, v2

    if-eqz v0, :cond_17

    .line 33
    invoke-static/range {p8 .. p8}, Le/m/a/c/p1/h0/m;->e(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    if-eqz v7, :cond_14

    .line 34
    array-length v0, v10

    int-to-long v11, v0

    move/from16 p2, v7

    sub-long v7, v2, v13

    .line 35
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v0, v7

    goto :goto_14

    :cond_14
    move/from16 p2, v7

    array-length v0, v10

    :goto_14
    const/4 v7, 0x0

    .line 36
    invoke-virtual {v9, v10, v7, v0}, Le/m/a/c/p1/h0/f;->read([BII)I

    move-result v0

    const/4 v8, -0x1

    if-ne v0, v8, :cond_15

    if-eqz v1, :cond_17

    .line 37
    invoke-virtual {v1, v13, v14}, Le/m/a/c/p1/h0/m$b;->a(J)V

    goto :goto_19

    :cond_15
    int-to-long v11, v0

    add-long/2addr v13, v11

    if-eqz v1, :cond_16

    .line 38
    iget-wide v7, v1, Le/m/a/c/p1/h0/m$b;->c:J

    add-long/2addr v7, v11

    iput-wide v7, v1, Le/m/a/c/p1/h0/m$b;->c:J

    .line 39
    iget-object v0, v1, Le/m/a/c/p1/h0/m$b;->a:Le/m/a/c/p1/h0/m$a;
    :try_end_5
    .catch Le/m/a/c/q1/v$a; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-wide/from16 v38, v2

    :try_start_6
    iget-wide v2, v1, Le/m/a/c/p1/h0/m$b;->b:J

    move-object/from16 v31, v0

    check-cast v31, Le/m/a/c/j1/m$a;

    move-wide/from16 v32, v2

    move-wide/from16 v34, v7

    move-wide/from16 v36, v11

    invoke-virtual/range {v31 .. v37}, Le/m/a/c/j1/m$a;->a(JJJ)V
    :try_end_6
    .catch Le/m/a/c/q1/v$a; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_15

    :cond_16
    move-wide/from16 v38, v2

    :goto_15
    move-object/from16 v8, p1

    move/from16 v7, p2

    move-wide/from16 v2, v38

    goto :goto_13

    :catch_3
    :goto_16
    move-wide/from16 v33, v13

    goto :goto_18

    .line 40
    :goto_17
    sget v1, Le/m/a/c/q1/d0;->a:I

    .line 41
    :try_start_7
    invoke-virtual/range {p3 .. p3}, Le/m/a/c/p1/h0/f;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 42
    :catch_4
    throw v0

    :catch_5
    move-wide/from16 v38, v2

    goto :goto_16

    .line 43
    :goto_18
    sget v0, Le/m/a/c/q1/d0;->a:I

    .line 44
    :try_start_8
    invoke-virtual/range {p3 .. p3}, Le/m/a/c/p1/h0/f;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :catch_6
    move-object/from16 v8, p1

    move-object/from16 v11, p5

    move-object/from16 v32, v1

    move-object/from16 v12, v16

    move-wide/from16 v13, v29

    move-wide/from16 v2, v38

    const-wide v15, 0x7fffffffffffffffL

    move-object/from16 v1, p0

    goto/16 :goto_d

    :cond_17
    :goto_19
    sub-long/2addr v13, v5

    .line 45
    sget v0, Le/m/a/c/q1/d0;->a:I

    .line 46
    :try_start_9
    invoke-virtual/range {p3 .. p3}, Le/m/a/c/p1/h0/f;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    cmp-long v0, v13, v25

    if-gez v0, :cond_19

    if-eqz p9, :cond_1b

    if-eqz v20, :cond_18

    goto :goto_1b

    .line 47
    :cond_18
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_19
    move-wide/from16 v2, v25

    :goto_1a
    add-long v21, v21, v2

    if-nez v20, :cond_1a

    sub-long v17, v17, v2

    :cond_1a
    move-object/from16 v8, p1

    move-object/from16 v11, p5

    move-object v6, v1

    move-object/from16 v12, v16

    move-wide/from16 v13, v29

    const/4 v7, 0x0

    const-wide v15, 0x7fffffffffffffffL

    move-object/from16 v1, p0

    goto/16 :goto_8

    :cond_1b
    :goto_1b
    return-void
.end method

.method public static b(Le/m/a/c/p1/n;Le/m/a/c/p1/h0/c;Ljava/lang/String;)J
    .locals 5

    .line 1
    iget-wide v0, p0, Le/m/a/c/p1/n;->g:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 2
    :cond_0
    invoke-interface {p1, p2}, Le/m/a/c/p1/h0/c;->a(Ljava/lang/String;)Le/m/a/c/p1/h0/q;

    move-result-object p1

    invoke-static {p1}, Le/m/a/c/p1/h0/p;->a(Le/m/a/c/p1/h0/q;)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-wide v0, p0, Le/m/a/c/p1/n;->e:J

    sub-long v2, p1, v0

    :goto_0
    return-wide v2
.end method

.method public static c(Ljava/io/IOException;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 1
    instance-of v0, p0, Le/m/a/c/p1/m;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Le/m/a/c/p1/m;

    iget v0, v0, Le/m/a/c/p1/m;->a:I

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Le/m/a/c/p1/h0/c;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Le/m/a/c/p1/h0/c;->k(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/p1/h0/l;

    .line 3
    :try_start_0
    invoke-interface {p0, v0}, Le/m/a/c/p1/h0/c;->c(Le/m/a/c/p1/h0/l;)V
    :try_end_0
    .catch Le/m/a/c/p1/h0/c$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static e(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    return-void

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method
