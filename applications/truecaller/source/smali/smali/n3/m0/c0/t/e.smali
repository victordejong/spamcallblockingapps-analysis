.class public Ln3/m0/c0/t/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field public final a:Ln3/m0/c0/g;

.field public final b:Ln3/m0/c0/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "EnqueueRunnable"

    .line 1
    invoke-static {v0}, Ln3/m0/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln3/m0/c0/t/e;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ln3/m0/c0/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/m0/c0/t/e;->a:Ln3/m0/c0/g;

    .line 3
    new-instance p1, Ln3/m0/c0/c;

    invoke-direct {p1}, Ln3/m0/c0/c;-><init>()V

    iput-object p1, p0, Ln3/m0/c0/t/e;->b:Ln3/m0/c0/c;

    return-void
.end method

.method public static a(Ln3/m0/c0/g;)Z
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ln3/m0/c0/g;->g:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/m0/c0/g;

    .line 3
    iget-boolean v6, v5, Ln3/m0/c0/g;->h:Z

    if-nez v6, :cond_0

    .line 4
    invoke-static {v5}, Ln3/m0/c0/t/e;->a(Ln3/m0/c0/g;)Z

    move-result v5

    or-int/2addr v4, v5

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v6

    sget-object v7, Ln3/m0/c0/t/e;->c:Ljava/lang/String;

    new-array v8, v3, [Ljava/lang/Object;

    .line 6
    iget-object v5, v5, Ln3/m0/c0/g;->e:Ljava/util/List;

    const-string v9, ", "

    .line 7
    invoke-static {v9, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v2

    const-string v5, "Already enqueued work ids (%s)."

    .line 8
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v8, v2, [Ljava/lang/Throwable;

    invoke-virtual {v6, v7, v5, v8}, Ln3/m0/p;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move v4, v2

    .line 9
    :cond_2
    invoke-static/range {p0 .. p0}, Ln3/m0/c0/g;->d(Ln3/m0/c0/g;)Ljava/util/Set;

    move-result-object v1

    .line 10
    iget-object v5, v0, Ln3/m0/c0/g;->a:Ln3/m0/c0/l;

    .line 11
    iget-object v6, v0, Ln3/m0/c0/g;->d:Ljava/util/List;

    new-array v7, v2, [Ljava/lang/String;

    .line 12
    invoke-interface {v1, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 13
    iget-object v7, v0, Ln3/m0/c0/g;->b:Ljava/lang/String;

    .line 14
    iget-object v8, v0, Ln3/m0/c0/g;->c:Ln3/m0/h;

    .line 15
    sget-object v9, Ln3/m0/x$a;->a:Ln3/m0/x$a;

    sget-object v10, Ln3/m0/h;->d:Ln3/m0/h;

    sget-object v11, Ln3/m0/x$a;->c:Ln3/m0/x$a;

    sget-object v12, Ln3/m0/x$a;->f:Ln3/m0/x$a;

    sget-object v13, Ln3/m0/x$a;->d:Ln3/m0/x$a;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 17
    iget-object v2, v5, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    if-eqz v1, :cond_3

    .line 18
    array-length v3, v1

    if-lez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_9

    move/from16 v16, v4

    .line 19
    array-length v4, v1

    const/4 v0, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    :goto_2
    if-ge v0, v4, :cond_8

    move/from16 v20, v4

    aget-object v4, v1, v0

    .line 20
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object v21

    move-wide/from16 v22, v14

    move-object/from16 v14, v21

    check-cast v14, Ln3/m0/c0/s/t;

    invoke-virtual {v14, v4}, Ln3/m0/c0/s/t;->k(Ljava/lang/String;)Ln3/m0/c0/s/p;

    move-result-object v14

    if-nez v14, :cond_4

    .line 21
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v1, Ln3/m0/c0/t/e;->c:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v3, v2

    const-string v4, "Prerequisite %s doesn\'t exist; not enqueuing"

    .line 22
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Throwable;

    .line 23
    invoke-virtual {v0, v1, v3, v4}, Ln3/m0/p;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 24
    :cond_4
    iget-object v4, v14, Ln3/m0/c0/s/p;->b:Ln3/m0/x$a;

    if-ne v4, v11, :cond_5

    const/4 v14, 0x1

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    :goto_3
    and-int v19, v19, v14

    if-ne v4, v13, :cond_6

    const/16 v18, 0x1

    goto :goto_4

    :cond_6
    if-ne v4, v12, :cond_7

    const/16 v17, 0x1

    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v20

    move-wide/from16 v14, v22

    goto :goto_2

    :cond_8
    move-wide/from16 v22, v14

    goto :goto_5

    :cond_9
    move/from16 v16, v4

    move-wide/from16 v22, v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    .line 25
    :goto_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    if-eqz v0, :cond_a

    if-nez v3, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_1c

    .line 26
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object v4

    check-cast v4, Ln3/m0/c0/s/t;

    invoke-virtual {v4, v7}, Ln3/m0/c0/s/t;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 27
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1c

    .line 28
    sget-object v14, Ln3/m0/h;->c:Ln3/m0/h;

    if-eq v8, v14, :cond_10

    if-ne v8, v10, :cond_b

    goto :goto_a

    .line 29
    :cond_b
    sget-object v10, Ln3/m0/h;->b:Ln3/m0/h;

    if-ne v8, v10, :cond_e

    .line 30
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ln3/m0/c0/s/p$b;

    .line 31
    iget-object v10, v10, Ln3/m0/c0/s/p$b;->b:Ln3/m0/x$a;

    if-eq v10, v9, :cond_d

    sget-object v11, Ln3/m0/x$a;->b:Ln3/m0/x$a;

    if-ne v10, v11, :cond_c

    :cond_d
    :goto_7
    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_8
    move-object/from16 v0, p0

    goto/16 :goto_17

    .line 32
    :cond_e
    new-instance v8, Ln3/m0/c0/t/c;

    const/4 v10, 0x0

    invoke-direct {v8, v5, v7, v10}, Ln3/m0/c0/t/c;-><init>(Ln3/m0/c0/l;Ljava/lang/String;Z)V

    .line 33
    invoke-virtual {v8}, Ln3/m0/c0/t/d;->run()V

    .line 34
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object v5

    .line 35
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ln3/m0/c0/s/p$b;

    .line 36
    iget-object v8, v8, Ln3/m0/c0/s/p$b;->a:Ljava/lang/String;

    move-object v10, v5

    check-cast v10, Ln3/m0/c0/s/t;

    invoke-virtual {v10, v8}, Ln3/m0/c0/s/t;->c(Ljava/lang/String;)V

    goto :goto_9

    :cond_f
    move/from16 v24, v0

    const/4 v0, 0x1

    const/4 v15, 0x0

    goto/16 :goto_12

    .line 37
    :cond_10
    :goto_a
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->a()Ln3/m0/c0/s/b;

    move-result-object v3

    .line 38
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ln3/m0/c0/s/p$b;

    .line 40
    iget-object v15, v14, Ln3/m0/c0/s/p$b;->a:Ljava/lang/String;

    move-object/from16 v20, v4

    move-object v4, v3

    check-cast v4, Ln3/m0/c0/s/c;

    .line 41
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v3

    const-string v3, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    move/from16 v24, v0

    const/4 v0, 0x1

    .line 42
    invoke-static {v3, v0}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v3

    if-nez v15, :cond_11

    .line 43
    invoke-virtual {v3, v0}, Ln3/c0/y;->y0(I)V

    goto :goto_c

    .line 44
    :cond_11
    invoke-virtual {v3, v0, v15}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 45
    :goto_c
    iget-object v0, v4, Ln3/m0/c0/s/c;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 46
    iget-object v0, v4, Ln3/m0/c0/s/c;->a:Ln3/c0/q;

    const/4 v4, 0x0

    const/4 v15, 0x0

    invoke-static {v0, v3, v15, v4}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    .line 47
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 48
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_d

    :cond_12
    move v0, v15

    .line 49
    :goto_d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 50
    invoke-virtual {v3}, Ln3/c0/y;->l()V

    if-nez v0, :cond_16

    .line 51
    iget-object v0, v14, Ln3/m0/c0/s/p$b;->b:Ln3/m0/x$a;

    if-ne v0, v11, :cond_13

    const/4 v3, 0x1

    goto :goto_e

    :cond_13
    move v3, v15

    :goto_e
    and-int v3, v19, v3

    if-ne v0, v13, :cond_14

    const/16 v18, 0x1

    goto :goto_f

    :cond_14
    if-ne v0, v12, :cond_15

    const/16 v17, 0x1

    .line 52
    :cond_15
    :goto_f
    iget-object v0, v14, Ln3/m0/c0/s/p$b;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v19, v3

    :cond_16
    move-object/from16 v4, v20

    move-object/from16 v3, v21

    move/from16 v0, v24

    goto :goto_b

    :catchall_0
    move-exception v0

    .line 53
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 54
    invoke-virtual {v3}, Ln3/c0/y;->l()V

    .line 55
    throw v0

    :cond_17
    move/from16 v24, v0

    const/4 v15, 0x0

    if-ne v8, v10, :cond_1a

    if-nez v17, :cond_18

    if-eqz v18, :cond_1a

    .line 56
    :cond_18
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object v0

    .line 57
    check-cast v0, Ln3/m0/c0/s/t;

    invoke-virtual {v0, v7}, Ln3/m0/c0/s/t;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 58
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/m0/c0/s/p$b;

    .line 59
    iget-object v4, v4, Ln3/m0/c0/s/p$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ln3/m0/c0/s/t;->c(Ljava/lang/String;)V

    goto :goto_10

    .line 60
    :cond_19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move/from16 v17, v15

    move/from16 v18, v17

    .line 61
    :cond_1a
    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    .line 62
    array-length v0, v1

    if-lez v0, :cond_1b

    const/4 v3, 0x1

    goto :goto_11

    :cond_1b
    move v3, v15

    goto :goto_11

    :cond_1c
    move/from16 v24, v0

    const/4 v15, 0x0

    :goto_11
    move v0, v15

    .line 63
    :goto_12
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1d
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/m0/z;

    .line 64
    iget-object v6, v5, Ln3/m0/z;->b:Ln3/m0/c0/s/p;

    if-eqz v3, :cond_20

    if-nez v19, :cond_20

    if-eqz v18, :cond_1e

    .line 65
    iput-object v13, v6, Ln3/m0/c0/s/p;->b:Ln3/m0/x$a;

    goto :goto_14

    :cond_1e
    if-eqz v17, :cond_1f

    .line 66
    iput-object v12, v6, Ln3/m0/c0/s/p;->b:Ln3/m0/x$a;

    goto :goto_14

    .line 67
    :cond_1f
    sget-object v8, Ln3/m0/x$a;->e:Ln3/m0/x$a;

    iput-object v8, v6, Ln3/m0/c0/s/p;->b:Ln3/m0/x$a;

    goto :goto_14

    .line 68
    :cond_20
    invoke-virtual {v6}, Ln3/m0/c0/s/p;->c()Z

    move-result v8

    if-nez v8, :cond_21

    move-wide/from16 v10, v22

    .line 69
    iput-wide v10, v6, Ln3/m0/c0/s/p;->n:J

    goto :goto_14

    :cond_21
    const-wide/16 v10, 0x0

    .line 70
    iput-wide v10, v6, Ln3/m0/c0/s/p;->n:J

    .line 71
    :goto_14
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x19

    if-gt v8, v10, :cond_22

    .line 72
    invoke-static {v6}, Ln3/m0/c0/t/e;->b(Ln3/m0/c0/s/p;)V

    .line 73
    :cond_22
    iget-object v8, v6, Ln3/m0/c0/s/p;->b:Ln3/m0/x$a;

    if-ne v8, v9, :cond_23

    const/4 v0, 0x1

    .line 74
    :cond_23
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object v8

    check-cast v8, Ln3/m0/c0/s/t;

    .line 75
    iget-object v10, v8, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    invoke-virtual {v10}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 76
    iget-object v10, v8, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    invoke-virtual {v10}, Ln3/c0/q;->beginTransaction()V

    .line 77
    :try_start_1
    iget-object v10, v8, Ln3/m0/c0/s/t;->b:Ln3/c0/k;

    invoke-virtual {v10, v6}, Ln3/c0/k;->insert(Ljava/lang/Object;)V

    .line 78
    iget-object v6, v8, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    invoke-virtual {v6}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 79
    iget-object v6, v8, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    invoke-virtual {v6}, Ln3/c0/q;->endTransaction()V

    if-eqz v3, :cond_24

    .line 80
    array-length v6, v1

    move v8, v15

    :goto_15
    if-ge v8, v6, :cond_24

    aget-object v10, v1, v8

    .line 81
    new-instance v11, Ln3/m0/c0/s/a;

    invoke-virtual {v5}, Ln3/m0/z;->a()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14, v10}, Ln3/m0/c0/s/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->a()Ln3/m0/c0/s/b;

    move-result-object v10

    check-cast v10, Ln3/m0/c0/s/c;

    .line 83
    iget-object v14, v10, Ln3/m0/c0/s/c;->a:Ln3/c0/q;

    invoke-virtual {v14}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 84
    iget-object v14, v10, Ln3/m0/c0/s/c;->a:Ln3/c0/q;

    invoke-virtual {v14}, Ln3/c0/q;->beginTransaction()V

    .line 85
    :try_start_2
    iget-object v14, v10, Ln3/m0/c0/s/c;->b:Ln3/c0/k;

    invoke-virtual {v14, v11}, Ln3/c0/k;->insert(Ljava/lang/Object;)V

    .line 86
    iget-object v11, v10, Ln3/m0/c0/s/c;->a:Ln3/c0/q;

    invoke-virtual {v11}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    iget-object v10, v10, Ln3/m0/c0/s/c;->a:Ln3/c0/q;

    invoke-virtual {v10}, Ln3/c0/q;->endTransaction()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :catchall_1
    move-exception v0

    iget-object v1, v10, Ln3/m0/c0/s/c;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 88
    throw v0

    .line 89
    :cond_24
    iget-object v6, v5, Ln3/m0/z;->c:Ljava/util/Set;

    .line 90
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_25

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 91
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->g()Ln3/m0/c0/s/v;

    move-result-object v10

    new-instance v11, Ln3/m0/c0/s/u;

    invoke-virtual {v5}, Ln3/m0/z;->a()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v8, v14}, Ln3/m0/c0/s/u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v10, Ln3/m0/c0/s/w;

    .line 92
    iget-object v8, v10, Ln3/m0/c0/s/w;->a:Ln3/c0/q;

    invoke-virtual {v8}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 93
    iget-object v8, v10, Ln3/m0/c0/s/w;->a:Ln3/c0/q;

    invoke-virtual {v8}, Ln3/c0/q;->beginTransaction()V

    .line 94
    :try_start_3
    iget-object v8, v10, Ln3/m0/c0/s/w;->b:Ln3/c0/k;

    invoke-virtual {v8, v11}, Ln3/c0/k;->insert(Ljava/lang/Object;)V

    .line 95
    iget-object v8, v10, Ln3/m0/c0/s/w;->a:Ln3/c0/q;

    invoke-virtual {v8}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 96
    iget-object v8, v10, Ln3/m0/c0/s/w;->a:Ln3/c0/q;

    invoke-virtual {v8}, Ln3/c0/q;->endTransaction()V

    goto :goto_16

    :catchall_2
    move-exception v0

    iget-object v1, v10, Ln3/m0/c0/s/w;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 97
    throw v0

    :cond_25
    if-eqz v24, :cond_1d

    .line 98
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->d()Ln3/m0/c0/s/k;

    move-result-object v6

    new-instance v8, Ln3/m0/c0/s/j;

    invoke-virtual {v5}, Ln3/m0/z;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v7, v5}, Ln3/m0/c0/s/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v6, Ln3/m0/c0/s/l;

    .line 99
    iget-object v5, v6, Ln3/m0/c0/s/l;->a:Ln3/c0/q;

    invoke-virtual {v5}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 100
    iget-object v5, v6, Ln3/m0/c0/s/l;->a:Ln3/c0/q;

    invoke-virtual {v5}, Ln3/c0/q;->beginTransaction()V

    .line 101
    :try_start_4
    iget-object v5, v6, Ln3/m0/c0/s/l;->b:Ln3/c0/k;

    invoke-virtual {v5, v8}, Ln3/c0/k;->insert(Ljava/lang/Object;)V

    .line 102
    iget-object v5, v6, Ln3/m0/c0/s/l;->a:Ln3/c0/q;

    invoke-virtual {v5}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 103
    iget-object v5, v6, Ln3/m0/c0/s/l;->a:Ln3/c0/q;

    invoke-virtual {v5}, Ln3/c0/q;->endTransaction()V

    goto/16 :goto_13

    :catchall_3
    move-exception v0

    iget-object v1, v6, Ln3/m0/c0/s/l;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 104
    throw v0

    :catchall_4
    move-exception v0

    .line 105
    iget-object v1, v8, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 106
    throw v0

    :cond_26
    const/4 v1, 0x1

    move v2, v0

    goto/16 :goto_8

    .line 107
    :goto_17
    iput-boolean v1, v0, Ln3/m0/c0/g;->h:Z

    or-int v0, v16, v2

    return v0
.end method

.method public static b(Ln3/m0/c0/s/p;)V
    .locals 5

    .line 1
    const-class v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-object v1, p0, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 2
    iget-object v2, p0, Ln3/m0/c0/s/p;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    iget-boolean v3, v1, Ln3/m0/d;->d:Z

    if-nez v3, :cond_0

    .line 5
    iget-boolean v1, v1, Ln3/m0/d;->e:Z

    if-eqz v1, :cond_1

    .line 6
    :cond_0
    new-instance v1, Ln3/m0/f$a;

    invoke-direct {v1}, Ln3/m0/f$a;-><init>()V

    .line 7
    iget-object v3, p0, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 8
    iget-object v3, v3, Ln3/m0/f;->a:Ljava/util/Map;

    invoke-virtual {v1, v3}, Ln3/m0/f$a;->b(Ljava/util/Map;)Ln3/m0/f$a;

    .line 9
    iget-object v3, v1, Ln3/m0/f$a;->a:Ljava/util/Map;

    const-string v4, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln3/m0/c0/s/p;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {v1}, Ln3/m0/f$a;->a()Ln3/m0/f;

    move-result-object v0

    iput-object v0, p0, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/m0/c0/t/e;->a:Ln3/m0/c0/g;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v1}, Ln3/m0/c0/g;->c(Ln3/m0/c0/g;Ljava/util/Set;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Ln3/m0/c0/t/e;->a:Ln3/m0/c0/g;

    .line 5
    iget-object v0, v0, Ln3/m0/c0/g;->a:Ln3/m0/c0/l;

    .line 6
    iget-object v0, v0, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 7
    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v2, p0, Ln3/m0/c0/t/e;->a:Ln3/m0/c0/g;

    invoke-static {v2}, Ln3/m0/c0/t/e;->a(Ln3/m0/c0/g;)Z

    move-result v2

    .line 9
    invoke-virtual {v0}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    if-eqz v2, :cond_0

    .line 11
    iget-object v0, p0, Ln3/m0/c0/t/e;->a:Ln3/m0/c0/g;

    .line 12
    iget-object v0, v0, Ln3/m0/c0/g;->a:Ln3/m0/c0/l;

    .line 13
    iget-object v0, v0, Ln3/m0/c0/l;->a:Landroid/content/Context;

    .line 14
    const-class v2, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v2, v1}, Ln3/m0/c0/t/h;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 15
    iget-object v0, p0, Ln3/m0/c0/t/e;->a:Ln3/m0/c0/g;

    .line 16
    iget-object v0, v0, Ln3/m0/c0/g;->a:Ln3/m0/c0/l;

    .line 17
    iget-object v1, v0, Ln3/m0/c0/l;->b:Ln3/m0/c;

    .line 18
    iget-object v2, v0, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 19
    iget-object v0, v0, Ln3/m0/c0/l;->e:Ljava/util/List;

    .line 20
    invoke-static {v1, v2, v0}, Ln3/m0/c0/f;->a(Ln3/m0/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 21
    :cond_0
    iget-object v0, p0, Ln3/m0/c0/t/e;->b:Ln3/m0/c0/c;

    sget-object v1, Ln3/m0/s;->a:Ln3/m0/s$b$c;

    invoke-virtual {v0, v1}, Ln3/m0/c0/c;->a(Ln3/m0/s$b;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 22
    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 23
    throw v1

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "WorkContinuation has cycles (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Ln3/m0/c0/t/e;->a:Ln3/m0/c0/g;

    aput-object v4, v1, v3

    .line 25
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 26
    iget-object v1, p0, Ln3/m0/c0/t/e;->b:Ln3/m0/c0/c;

    new-instance v2, Ln3/m0/s$b$a;

    invoke-direct {v2, v0}, Ln3/m0/s$b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Ln3/m0/c0/c;->a(Ln3/m0/s$b;)V

    :goto_0
    return-void
.end method
