.class public final Le/m/a/h/a/a/s1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Le/m/a/h/a/d/g;


# instance fields
.field public final a:Le/m/a/h/a/a/p1;

.field public final b:Le/m/a/h/a/a/e0;

.field public final c:Le/m/a/h/a/a/m0;

.field public final d:Le/m/a/h/a/b/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/m/a/h/a/d/g;

    const-string v1, "ExtractorTaskFinder"

    .line 1
    invoke-direct {v0, v1}, Le/m/a/h/a/d/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/m/a/h/a/a/s1;->e:Le/m/a/h/a/d/g;

    return-void
.end method

.method public constructor <init>(Le/m/a/h/a/a/p1;Le/m/a/h/a/a/e0;Le/m/a/h/a/a/m0;Le/m/a/h/a/b/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/s1;->a:Le/m/a/h/a/a/p1;

    iput-object p2, p0, Le/m/a/h/a/a/s1;->b:Le/m/a/h/a/a/e0;

    iput-object p3, p0, Le/m/a/h/a/a/s1;->c:Le/m/a/h/a/a/m0;

    iput-object p4, p0, Le/m/a/h/a/a/s1;->d:Le/m/a/h/a/b/b;

    return-void
.end method


# virtual methods
.method public final a()Le/m/a/h/a/a/r1;
    .locals 32

    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Le/m/a/h/a/a/s1;->a:Le/m/a/h/a/a/p1;

    .line 1
    iget-object v0, v0, Le/m/a/h/a/a/p1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Le/m/a/h/a/a/s1;->a:Le/m/a/h/a/a/p1;

    .line 5
    iget-object v0, v0, Le/m/a/h/a/a/p1;->e:Ljava/util/Map;

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/h/a/a/m1;

    .line 7
    iget-object v4, v3, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget v4, v4, Le/m/a/h/a/a/l1;->d:I

    invoke-static {v4}, Ln3/g0/y;->J2(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v1, Le/m/a/h/a/a/s1;->a:Le/m/a/h/a/a/p1;

    .line 10
    iget-object v0, v0, Le/m/a/h/a/a/p1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v3

    .line 12
    :cond_2
    :try_start_1
    iget-object v0, v1, Le/m/a/h/a/a/s1;->d:Le/m/a/h/a/b/b;

    .line 13
    invoke-virtual {v0}, Le/m/a/h/a/b/b;->a()Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v0, :cond_6

    iget-object v0, v1, Le/m/a/h/a/a/s1;->b:Le/m/a/h/a/a/e0;

    .line 14
    invoke-virtual {v0}, Le/m/a/h/a/a/e0;->v()Ljava/util/Map;

    move-result-object v0

    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/m/a/h/a/a/m1;

    .line 16
    iget-object v9, v8, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v9, v9, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v0

    check-cast v10, Ljava/util/HashMap;

    :try_start_2
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_3

    .line 17
    iget-object v10, v8, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-wide v10, v10, Le/m/a/h/a/a/l1;->b:J

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_3

    sget-object v0, Le/m/a/h/a/a/s1;->e:Le/m/a/h/a/d/g;

    new-array v7, v6, [Ljava/lang/Object;

    .line 18
    iget v9, v8, Le/m/a/h/a/a/m1;->a:I

    .line 19
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v4

    iget-object v9, v8, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v9, v9, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    aput-object v9, v7, v5

    const-string v9, "Found promote pack task for session %s with pack %s."

    .line 20
    invoke-virtual {v0, v9, v7}, Le/m/a/h/a/d/g;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Le/m/a/h/a/a/q2;

    .line 21
    iget v11, v8, Le/m/a/h/a/a/m1;->a:I

    iget-object v7, v8, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v12, v7, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    iget-object v7, v1, Le/m/a/h/a/a/s1;->b:Le/m/a/h/a/a/e0;

    .line 22
    invoke-virtual {v7, v12}, Le/m/a/h/a/a/e0;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 23
    invoke-static {v7, v5}, Le/m/a/h/a/a/e0;->d(Ljava/io/File;Z)J

    move-result-wide v9

    long-to-int v13, v9

    .line 24
    iget v14, v8, Le/m/a/h/a/a/m1;->b:I

    iget-object v7, v8, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-wide v7, v7, Le/m/a/h/a/a/l1;->b:J

    move-object v10, v0

    move-wide v15, v7

    invoke-direct/range {v10 .. v16}, Le/m/a/h/a/a/q2;-><init>(ILjava/lang/String;IIJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    move-object v0, v3

    :goto_1
    if-nez v0, :cond_5

    goto :goto_3

    .line 25
    :cond_5
    iget-object v2, v1, Le/m/a/h/a/a/s1;->a:Le/m/a/h/a/a/p1;

    .line 26
    :goto_2
    iget-object v2, v2, Le/m/a/h/a/a/p1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 27
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 28
    :cond_6
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/m/a/h/a/a/m1;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v8, v1, Le/m/a/h/a/a/s1;->b:Le/m/a/h/a/a/e0;

    .line 29
    iget-object v9, v7, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v10, v9, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    iget v11, v7, Le/m/a/h/a/a/m1;->b:I

    iget-wide v12, v9, Le/m/a/h/a/a/l1;->b:J

    invoke-virtual {v8, v10, v11, v12, v13}, Le/m/a/h/a/a/e0;->k(Ljava/lang/String;IJ)I

    move-result v8

    iget-object v9, v7, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v9, v9, Le/m/a/h/a/a/l1;->f:Ljava/util/List;

    .line 30
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v8, v9, :cond_7

    :try_start_5
    sget-object v0, Le/m/a/h/a/a/s1;->e:Le/m/a/h/a/d/g;

    new-array v8, v6, [Ljava/lang/Object;

    .line 31
    iget v9, v7, Le/m/a/h/a/a/m1;->a:I

    .line 32
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    iget-object v9, v7, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v9, v9, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    aput-object v9, v8, v5

    const-string v9, "Found final move task for session %s with pack %s."

    .line 33
    invoke-virtual {v0, v9, v8}, Le/m/a/h/a/d/g;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Le/m/a/h/a/a/e2;

    .line 34
    iget v11, v7, Le/m/a/h/a/a/m1;->a:I

    iget-object v8, v7, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v12, v8, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    iget v13, v7, Le/m/a/h/a/a/m1;->b:I

    iget-wide v14, v8, Le/m/a/h/a/a/l1;->b:J

    iget-object v7, v8, Le/m/a/h/a/a/l1;->c:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v16, v7

    invoke-direct/range {v10 .. v16}, Le/m/a/h/a/a/e2;-><init>(ILjava/lang/String;IJLjava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception v0

    .line 35
    new-instance v2, Le/m/a/h/a/a/x0;

    new-array v3, v6, [Ljava/lang/Object;

    .line 36
    iget v6, v7, Le/m/a/h/a/a/m1;->a:I

    .line 37
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    iget-object v4, v7, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v4, v4, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string v4, "Failed to check number of completed merges for session %s, pack %s"

    .line 38
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, v7, Le/m/a/h/a/a/m1;->a:I

    invoke-direct {v2, v3, v0, v4}, Le/m/a/h/a/a/x0;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v2

    :cond_8
    move-object v0, v3

    :goto_4
    if-nez v0, :cond_5

    .line 39
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x3

    if-eqz v7, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/m/a/h/a/a/m1;

    .line 40
    iget-object v9, v7, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget v9, v9, Le/m/a/h/a/a/l1;->d:I

    invoke-static {v9}, Ln3/g0/y;->J2(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 41
    iget-object v9, v7, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v9, v9, Le/m/a/h/a/a/l1;->f:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/m/a/h/a/a/n1;

    iget-object v11, v1, Le/m/a/h/a/a/s1;->b:Le/m/a/h/a/a/e0;

    .line 42
    iget-object v12, v7, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v13, v12, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    iget v14, v7, Le/m/a/h/a/a/m1;->b:I

    iget-wide v5, v12, Le/m/a/h/a/a/l1;->b:J

    iget-object v15, v10, Le/m/a/h/a/a/n1;->a:Ljava/lang/String;

    move-object v12, v13

    move v13, v14

    move-object/from16 v16, v15

    move-wide v14, v5

    .line 43
    invoke-virtual/range {v11 .. v16}, Le/m/a/h/a/a/e0;->t(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 44
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v0, Le/m/a/h/a/a/s1;->e:Le/m/a/h/a/d/g;

    new-array v5, v8, [Ljava/lang/Object;

    .line 45
    iget v6, v7, Le/m/a/h/a/a/m1;->a:I

    .line 46
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v6, v7, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v6, v6, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v6, v5, v9

    iget-object v6, v10, Le/m/a/h/a/a/n1;->a:Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    const-string v6, "Found merge task for session %s with pack %s and slice %s."

    .line 47
    invoke-virtual {v0, v6, v5}, Le/m/a/h/a/d/g;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Le/m/a/h/a/a/b2;

    .line 48
    iget v5, v7, Le/m/a/h/a/a/m1;->a:I

    iget-object v6, v7, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v9, v6, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    iget v7, v7, Le/m/a/h/a/a/m1;->b:I

    iget-wide v11, v6, Le/m/a/h/a/a/l1;->b:J

    iget-object v6, v10, Le/m/a/h/a/a/n1;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    move/from16 v18, v5

    move-object/from16 v19, v9

    move/from16 v20, v7

    move-wide/from16 v21, v11

    move-object/from16 v23, v6

    invoke-direct/range {v17 .. v23}, Le/m/a/h/a/a/b2;-><init>(ILjava/lang/String;IJLjava/lang/String;)V

    goto :goto_6

    :cond_a
    const/4 v5, 0x1

    const/4 v6, 0x2

    goto :goto_5

    :cond_b
    move-object v0, v3

    :goto_6
    if-nez v0, :cond_5

    .line 49
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/a/h/a/a/m1;

    .line 50
    iget-object v6, v5, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget v6, v6, Le/m/a/h/a/a/l1;->d:I

    invoke-static {v6}, Ln3/g0/y;->J2(I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 51
    iget-object v6, v5, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v6, v6, Le/m/a/h/a/a/l1;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/m/a/h/a/a/n1;

    .line 52
    invoke-virtual {v1, v5, v7}, Le/m/a/h/a/a/s1;->b(Le/m/a/h/a/a/m1;Le/m/a/h/a/a/n1;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v10, v1, Le/m/a/h/a/a/s1;->b:Le/m/a/h/a/a/e0;

    iget-object v9, v5, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v11, v9, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    iget v12, v5, Le/m/a/h/a/a/m1;->b:I

    iget-wide v13, v9, Le/m/a/h/a/a/l1;->b:J

    iget-object v15, v7, Le/m/a/h/a/a/n1;->a:Ljava/lang/String;

    .line 53
    invoke-virtual/range {v10 .. v15}, Le/m/a/h/a/a/e0;->s(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 54
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_d

    sget-object v0, Le/m/a/h/a/a/s1;->e:Le/m/a/h/a/d/g;

    new-array v6, v8, [Ljava/lang/Object;

    .line 55
    iget v9, v5, Le/m/a/h/a/a/m1;->a:I

    .line 56
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v4

    iget-object v9, v5, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v9, v9, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v6, v10

    iget-object v9, v7, Le/m/a/h/a/a/n1;->a:Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v9, v6, v10

    const-string v9, "Found verify task for session %s with pack %s and slice %s."

    .line 57
    invoke-virtual {v0, v9, v6}, Le/m/a/h/a/d/g;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Le/m/a/h/a/a/y2;

    .line 58
    iget v6, v5, Le/m/a/h/a/a/m1;->a:I

    iget-object v9, v5, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v10, v9, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    iget v5, v5, Le/m/a/h/a/a/m1;->b:I

    iget-wide v11, v9, Le/m/a/h/a/a/l1;->b:J

    iget-object v9, v7, Le/m/a/h/a/a/n1;->a:Ljava/lang/String;

    iget-object v7, v7, Le/m/a/h/a/a/n1;->b:Ljava/lang/String;

    move-object/from16 v17, v0

    move/from16 v18, v6

    move-object/from16 v19, v10

    move/from16 v20, v5

    move-wide/from16 v21, v11

    move-object/from16 v23, v9

    move-object/from16 v24, v7

    invoke-direct/range {v17 .. v24}, Le/m/a/h/a/a/y2;-><init>(ILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    move-object v0, v3

    :goto_7
    if-nez v0, :cond_5

    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v6, 0x4

    if-eqz v0, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Le/m/a/h/a/a/m1;

    .line 60
    iget-object v0, v7, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget v0, v0, Le/m/a/h/a/a/l1;->d:I

    invoke-static {v0}, Ln3/g0/y;->J2(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 61
    iget-object v0, v7, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v0, v0, Le/m/a/h/a/a/l1;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_10
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Le/m/a/h/a/a/n1;

    .line 62
    iget v0, v10, Le/m/a/h/a/a/n1;->f:I

    const/4 v11, 0x1

    if-eq v0, v11, :cond_12

    const/4 v11, 0x2

    if-ne v0, v11, :cond_11

    goto :goto_9

    :cond_11
    move v0, v4

    goto :goto_a

    :cond_12
    :goto_9
    const/4 v0, 0x1

    :goto_a
    if-nez v0, :cond_10

    .line 63
    new-instance v0, Le/m/a/h/a/a/v2;

    iget-object v11, v1, Le/m/a/h/a/a/s1;->b:Le/m/a/h/a/a/e0;

    iget-object v12, v7, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v13, v12, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    iget v14, v7, Le/m/a/h/a/a/m1;->b:I

    move-object/from16 v16, v9

    iget-wide v8, v12, Le/m/a/h/a/a/l1;->b:J

    iget-object v12, v10, Le/m/a/h/a/a/n1;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v19, v13

    move/from16 v20, v14

    move-wide/from16 v21, v8

    move-object/from16 v23, v12

    invoke-direct/range {v17 .. v23}, Le/m/a/h/a/a/v2;-><init>(Le/m/a/h/a/a/e0;Ljava/lang/String;IJLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 64
    :try_start_6
    invoke-virtual {v0}, Le/m/a/h/a/a/v2;->a()I

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_b

    :catch_1
    move-exception v0

    move-object v8, v0

    .line 65
    :try_start_7
    sget-object v0, Le/m/a/h/a/a/s1;->e:Le/m/a/h/a/d/g;

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v8, v11, v4

    const-string v8, "Slice checkpoint corrupt, restarting extraction. %s"

    .line 66
    invoke-virtual {v0, v8, v11}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v4

    :goto_b
    const/4 v8, -0x1

    if-eq v0, v8, :cond_13

    .line 67
    iget-object v8, v10, Le/m/a/h/a/a/n1;->d:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/m/a/h/a/a/k1;

    iget-boolean v8, v8, Le/m/a/h/a/a/k1;->a:Z

    if-eqz v8, :cond_13

    sget-object v5, Le/m/a/h/a/a/s1;->e:Le/m/a/h/a/d/g;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    .line 68
    iget v9, v10, Le/m/a/h/a/a/n1;->e:I

    .line 69
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    iget v9, v7, Le/m/a/h/a/a/m1;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v8, v11

    iget-object v9, v7, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v9, v9, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    const/4 v11, 0x2

    aput-object v9, v8, v11

    iget-object v9, v10, Le/m/a/h/a/a/n1;->a:Ljava/lang/String;

    const/4 v11, 0x3

    aput-object v9, v8, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const-string v9, "Found extraction task using compression format %s for session %s, pack %s, slice %s, chunk %s."

    .line 70
    invoke-virtual {v5, v9, v8}, Le/m/a/h/a/d/g;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v5, v1, Le/m/a/h/a/a/s1;->c:Le/m/a/h/a/a/m0;

    .line 71
    iget v8, v7, Le/m/a/h/a/a/m1;->a:I

    iget-object v9, v7, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v9, v9, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    iget-object v11, v10, Le/m/a/h/a/a/n1;->a:Ljava/lang/String;

    .line 72
    invoke-virtual {v5, v8, v9, v11, v0}, Le/m/a/h/a/a/m0;->a(ILjava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v31

    new-instance v5, Le/m/a/h/a/a/u0;

    .line 73
    iget v8, v7, Le/m/a/h/a/a/m1;->a:I

    iget-object v9, v7, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v11, v9, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    iget v12, v7, Le/m/a/h/a/a/m1;->b:I

    iget-wide v13, v9, Le/m/a/h/a/a/l1;->b:J

    iget-object v9, v9, Le/m/a/h/a/a/l1;->c:Ljava/lang/String;

    iget-object v15, v10, Le/m/a/h/a/a/n1;->a:Ljava/lang/String;

    iget v3, v10, Le/m/a/h/a/a/n1;->e:I

    iget-object v10, v10, Le/m/a/h/a/a/n1;->d:Ljava/util/List;

    .line 74
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v27

    iget-object v7, v7, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    move-object/from16 v16, v5

    iget-wide v4, v7, Le/m/a/h/a/a/l1;->e:J

    iget v7, v7, Le/m/a/h/a/a/l1;->d:I

    move-object/from16 v17, v16

    move/from16 v18, v8

    move-object/from16 v19, v11

    move/from16 v20, v12

    move-wide/from16 v21, v13

    move-object/from16 v23, v9

    move-object/from16 v24, v15

    move/from16 v25, v3

    move/from16 v26, v0

    move-wide/from16 v28, v4

    move/from16 v30, v7

    invoke-direct/range {v17 .. v31}, Le/m/a/h/a/a/u0;-><init>(ILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;IIIJILjava/io/InputStream;)V

    move-object/from16 v5, v16

    goto :goto_c

    :cond_13
    move-object/from16 v9, v16

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x3

    goto/16 :goto_8

    :cond_14
    const/4 v5, 0x0

    :goto_c
    if-nez v5, :cond_1b

    .line 75
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/h/a/a/m1;

    .line 76
    iget-object v3, v2, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget v3, v3, Le/m/a/h/a/a/l1;->d:I

    invoke-static {v3}, Ln3/g0/y;->J2(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 77
    iget-object v3, v2, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v3, v3, Le/m/a/h/a/a/l1;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/h/a/a/n1;

    .line 78
    iget v5, v4, Le/m/a/h/a/a/n1;->f:I

    const/4 v7, 0x1

    if-eq v5, v7, :cond_18

    const/4 v7, 0x2

    if-ne v5, v7, :cond_17

    goto :goto_d

    :cond_17
    const/4 v5, 0x0

    goto :goto_e

    :cond_18
    :goto_d
    const/4 v5, 0x1

    :goto_e
    if-eqz v5, :cond_16

    .line 79
    iget-object v5, v4, Le/m/a/h/a/a/n1;->d:Ljava/util/List;

    const/4 v7, 0x0

    .line 80
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/a/h/a/a/k1;

    iget-boolean v5, v5, Le/m/a/h/a/a/k1;->a:Z

    if-eqz v5, :cond_16

    .line 81
    invoke-virtual {v1, v2, v4}, Le/m/a/h/a/a/s1;->b(Le/m/a/h/a/a/m1;Le/m/a/h/a/a/n1;)Z

    move-result v5

    if-nez v5, :cond_16

    sget-object v0, Le/m/a/h/a/a/s1;->e:Le/m/a/h/a/d/g;

    new-array v3, v6, [Ljava/lang/Object;

    .line 82
    iget v5, v4, Le/m/a/h/a/a/n1;->f:I

    .line 83
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    iget v5, v2, Le/m/a/h/a/a/m1;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    iget-object v5, v2, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v5, v5, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v5, v3, v7

    iget-object v5, v4, Le/m/a/h/a/a/n1;->a:Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v5, v3, v8

    const-string v5, "Found patch slice task using patch format %s for session %s, pack %s, slice %s."

    .line 84
    invoke-virtual {v0, v5, v3}, Le/m/a/h/a/d/g;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, v1, Le/m/a/h/a/a/s1;->c:Le/m/a/h/a/a/m0;

    .line 85
    iget v3, v2, Le/m/a/h/a/a/m1;->a:I

    iget-object v5, v2, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v5, v5, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    iget-object v6, v4, Le/m/a/h/a/a/n1;->a:Ljava/lang/String;

    const/4 v9, 0x0

    .line 86
    invoke-virtual {v0, v3, v5, v6, v9}, Le/m/a/h/a/a/m0;->a(ILjava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v30

    new-instance v0, Le/m/a/h/a/a/n2;

    .line 87
    iget v3, v2, Le/m/a/h/a/a/m1;->a:I

    iget-object v5, v2, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v5, v5, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    iget-object v6, v1, Le/m/a/h/a/a/s1;->b:Le/m/a/h/a/a/e0;

    .line 88
    invoke-virtual {v6, v5}, Le/m/a/h/a/a/e0;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    const/4 v10, 0x1

    .line 89
    invoke-static {v6, v10}, Le/m/a/h/a/a/e0;->d(Ljava/io/File;Z)J

    move-result-wide v6

    long-to-int v6, v6

    .line 90
    iget-object v7, v1, Le/m/a/h/a/a/s1;->b:Le/m/a/h/a/a/e0;

    iget-object v8, v2, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v8, v8, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    .line 91
    invoke-virtual {v7, v8}, Le/m/a/h/a/a/e0;->l(Ljava/lang/String;)J

    move-result-wide v21

    iget v7, v2, Le/m/a/h/a/a/m1;->b:I

    iget-object v2, v2, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-wide v8, v2, Le/m/a/h/a/a/l1;->b:J

    iget v2, v4, Le/m/a/h/a/a/n1;->f:I

    iget-object v10, v4, Le/m/a/h/a/a/n1;->a:Ljava/lang/String;

    iget-wide v11, v4, Le/m/a/h/a/a/n1;->c:J

    move-object/from16 v17, v0

    move/from16 v18, v3

    move-object/from16 v19, v5

    move/from16 v20, v6

    move/from16 v23, v7

    move-wide/from16 v24, v8

    move/from16 v26, v2

    move-object/from16 v27, v10

    move-wide/from16 v28, v11

    invoke-direct/range {v17 .. v30}, Le/m/a/h/a/a/n2;-><init>(ILjava/lang/String;IJIJILjava/lang/String;JLjava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_f

    :cond_19
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_1a

    iget-object v2, v1, Le/m/a/h/a/a/s1;->a:Le/m/a/h/a/a/p1;

    goto/16 :goto_2

    .line 92
    :cond_1a
    iget-object v0, v1, Le/m/a/h/a/a/s1;->a:Le/m/a/h/a/a/p1;

    .line 93
    iget-object v0, v0, Le/m/a/h/a/a/p1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 94
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v2, 0x0

    return-object v2

    .line 95
    :cond_1b
    iget-object v0, v1, Le/m/a/h/a/a/s1;->a:Le/m/a/h/a/a/p1;

    .line 96
    iget-object v0, v0, Le/m/a/h/a/a/p1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 97
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v5

    :catchall_0
    move-exception v0

    .line 98
    iget-object v2, v1, Le/m/a/h/a/a/s1;->a:Le/m/a/h/a/a/p1;

    .line 99
    iget-object v2, v2, Le/m/a/h/a/a/p1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 100
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 101
    throw v0
.end method

.method public final b(Le/m/a/h/a/a/m1;Le/m/a/h/a/a/n1;)Z
    .locals 7

    .line 1
    new-instance v0, Le/m/a/h/a/a/v2;

    iget-object v1, p0, Le/m/a/h/a/a/s1;->b:Le/m/a/h/a/a/e0;

    iget-object v0, p1, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v2, v0, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    iget v3, p1, Le/m/a/h/a/a/m1;->b:I

    iget-wide v4, v0, Le/m/a/h/a/a/l1;->b:J

    iget-object v6, p2, Le/m/a/h/a/a/n1;->a:Ljava/lang/String;

    .line 2
    invoke-virtual/range {v1 .. v6}, Le/m/a/h/a/a/e0;->q(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 4
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Ljava/util/Properties;

    .line 5
    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    .line 6
    invoke-virtual {p1, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "fileStatus"

    .line 8
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object p1, Le/m/a/h/a/a/v2;->h:Le/m/a/h/a/d/g;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "Slice checkpoint file corrupt while checking if extraction finished."

    .line 9
    invoke-virtual {p1, v1, p2}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    move v0, p2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 12
    sget-object v1, Le/m/a/h/a/a/v2;->h:Le/m/a/h/a/d/g;

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "Could not read checkpoint while checking if extraction finished. %s"

    .line 13
    invoke-virtual {v1, p1, p2}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    :goto_0
    return v0
.end method
