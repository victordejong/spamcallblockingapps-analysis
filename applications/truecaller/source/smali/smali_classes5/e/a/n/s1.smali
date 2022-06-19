.class public final Le/a/n/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/n/r1;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Le/a/b0/o/a;

.field public final c:Le/a/p5/c;

.field public final d:Le/a/q2/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/b0/o/a;Le/a/p5/c;Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/n/s1;->b:Le/a/b0/o/a;

    iput-object p3, p0, Le/a/n/s1;->c:Le/a/p5/c;

    iput-object p4, p0, Le/a/n/s1;->d:Le/a/q2/a;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Le/a/n/s1;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    invoke-static {}, Le/a/b0/q/g0;->y()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 2
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v4, "transport=?"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v2, 0x4

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "transport"

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    const-string v2, "ContentProviderOperation\u2026SMS)\n            .build()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Le/a/b0/q/g0;->y()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-array v6, v1, [Ljava/lang/String;

    .line 6
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v4, 0x7

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    const-string v4, "ContentProviderOperation\u2026MMS)\n            .build()"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v4, p0, Le/a/n/s1;->a:Landroid/content/ContentResolver;

    sget-object v5, Le/a/m0/a1;->a:Landroid/net/Uri;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/content/ContentProviderOperation;

    aput-object v0, v5, v3

    aput-object v2, v5, v1

    invoke-static {v5}, Ls1/u/i;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "com.truecaller"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 10
    iget-object v0, p0, Le/a/n/s1;->b:Le/a/b0/o/a;

    const-string v2, "deleteBackupDuplicates"

    invoke-interface {v0, v2, v1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public declared-synchronized b()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/n/s1;->b:Le/a/b0/o/a;

    const-string v1, "deleteBackupDuplicates"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/a/n/s1;->a:Landroid/content/ContentResolver;

    .line 3
    invoke-static {}, Le/a/b0/q/g0;->y()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "(status & 128) = 128"

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Le/a/n/s1;->c:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v0

    const/4 v3, 0x4

    .line 6
    invoke-virtual {p0, v2, v3}, Le/a/n/s1;->f(II)V

    const/4 v3, 0x1

    const/4 v4, 0x7

    .line 7
    invoke-virtual {p0, v3, v4}, Le/a/n/s1;->f(II)V

    .line 8
    iget-object v3, p0, Le/a/n/s1;->c:Le/a/p5/c;

    invoke-interface {v3}, Le/a/p5/c;->c()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 9
    new-instance v0, Lcom/truecaller/backup/analyitcs/BackupDurationEvent;

    sget-object v1, Lcom/truecaller/backup/analyitcs/BackupDurationEvent$Segment;->MESSAGES:Lcom/truecaller/backup/analyitcs/BackupDurationEvent$Segment;

    invoke-direct {v0, v1, v3, v4}, Lcom/truecaller/backup/analyitcs/BackupDurationEvent;-><init>(Lcom/truecaller/backup/analyitcs/BackupDurationEvent$Segment;J)V

    iget-object v1, p0, Le/a/n/s1;->d:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 10
    iget-object v0, p0, Le/a/n/s1;->b:Le/a/b0/o/a;

    const-string v1, "deleteBackupDuplicates"

    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    iget-object v0, p0, Le/a/n/s1;->b:Le/a/b0/o/a;

    const-string v1, "messageLinksMigrated"

    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/n/s1;->a:Landroid/content/ContentResolver;

    sget-object v1, Le/a/m0/a1;->a:Landroid/net/Uri;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "com.truecaller"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final d(I)Le/a/n/q1;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/n/s1;->a:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/b0/q/g0;->y()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Le/a/n/t1;->a:[Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v4, v3

    const-string v3, "transport=?"

    const-string v5, "date DESC, participant_id DESC"

    .line 3
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Le/a/n/q1;

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Le/a/n/q1;-><init>(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final e(Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    const-string p3, "ContentProviderOperation\u2026\n                .build()"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/16 p3, 0x32

    if-ne p2, p3, :cond_0

    invoke-virtual {p0, p1}, Le/a/n/s1;->c(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final f(II)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    invoke-virtual {v0, v1}, Le/a/n/s1;->d(I)Le/a/n/q1;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 2
    invoke-virtual/range {p0 .. p1}, Le/a/n/s1;->d(I)Le/a/n/q1;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v1}, Le/a/n/q1;->moveToNext()Z

    move-result v4

    .line 5
    invoke-virtual {v2}, Le/a/n/q1;->moveToNext()Z

    move-result v5

    :goto_0
    if-eqz v4, :cond_14

    if-eqz v5, :cond_14

    .line 6
    iget-object v6, v1, Le/a/n/q1;->b:Le/a/p5/s0/e;

    sget-object v7, Le/a/n/q1;->i:[Ls1/a/l;

    const/4 v8, 0x1

    aget-object v9, v7, v8

    invoke-virtual {v6, v1, v9}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 7
    iget-object v6, v2, Le/a/n/q1;->b:Le/a/p5/s0/e;

    aget-object v11, v7, v8

    invoke-virtual {v6, v2, v11}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    .line 8
    iget-object v6, v1, Le/a/n/q1;->c:Le/a/p5/s0/e;

    const/4 v13, 0x2

    aget-object v14, v7, v13

    invoke-virtual {v6, v1, v14}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    .line 9
    iget-object v6, v2, Le/a/n/q1;->c:Le/a/p5/s0/e;

    aget-object v13, v7, v13

    invoke-virtual {v6, v2, v13}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v16

    .line 10
    iget-object v6, v1, Le/a/n/q1;->e:Le/a/p5/s0/e;

    const/4 v13, 0x4

    aget-object v8, v7, v13

    invoke-virtual {v6, v1, v8}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 11
    iget-object v8, v2, Le/a/n/q1;->e:Le/a/p5/s0/e;

    aget-object v13, v7, v13

    invoke-virtual {v8, v2, v13}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 12
    iget-object v13, v1, Le/a/n/q1;->f:Le/a/p5/s0/e;

    const/16 v18, 0x5

    move/from16 p2, v4

    aget-object v4, v7, v18

    invoke-virtual {v13, v1, v4}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 13
    iget-object v13, v2, Le/a/n/q1;->f:Le/a/p5/s0/e;

    move/from16 v19, v5

    aget-object v5, v7, v18

    invoke-virtual {v13, v2, v5}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 14
    iget-object v13, v1, Le/a/n/q1;->d:Le/a/p5/s0/e;

    const/16 v18, 0x3

    move-object/from16 v20, v4

    aget-object v4, v7, v18

    invoke-virtual {v13, v1, v4}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x34

    const/4 v13, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v13

    :goto_1
    if-eqz v4, :cond_1

    .line 15
    invoke-virtual {v1}, Le/a/n/q1;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Le/a/n/s1;->e(Ljava/util/List;J)V

    .line 16
    invoke-virtual {v1}, Le/a/n/q1;->moveToNext()Z

    move-result v4

    goto/16 :goto_e

    :cond_1
    cmp-long v4, v9, v11

    if-lez v4, :cond_2

    .line 17
    invoke-virtual {v1}, Le/a/n/q1;->moveToNext()Z

    move-result v4

    goto/16 :goto_e

    :cond_2
    if-gez v4, :cond_3

    .line 18
    invoke-virtual {v2}, Le/a/n/q1;->moveToNext()Z

    move-result v4

    :goto_2
    move v5, v4

    goto/16 :goto_d

    :cond_3
    cmp-long v4, v14, v16

    if-eqz v4, :cond_10

    if-eqz v8, :cond_5

    .line 19
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    goto :goto_3

    :cond_4
    move v9, v13

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v9, 0x1

    :goto_4
    if-nez v9, :cond_f

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_6

    goto :goto_5

    :cond_6
    move v9, v13

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v9, 0x1

    :goto_6
    if-eqz v9, :cond_8

    goto :goto_b

    .line 20
    :cond_8
    invoke-static {v8, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v8, 0x1

    goto :goto_c

    :cond_9
    if-eqz v5, :cond_b

    .line 21
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a

    goto :goto_7

    :cond_a
    move v5, v13

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v5, 0x1

    :goto_8
    if-eqz v5, :cond_e

    if-eqz v20, :cond_d

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_c

    goto :goto_9

    :cond_c
    move v5, v13

    goto :goto_a

    :cond_d
    :goto_9
    const/4 v5, 0x1

    :goto_a
    if-nez v5, :cond_f

    .line 22
    :cond_e
    invoke-static {v8}, Le/a/b0/q/c0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6}, Le/a/b0/q/c0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    goto :goto_c

    :cond_f
    :goto_b
    move v8, v13

    :goto_c
    if-eqz v8, :cond_10

    .line 23
    invoke-virtual {v1}, Le/a/n/q1;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Le/a/n/s1;->e(Ljava/util/List;J)V

    .line 24
    invoke-virtual {v1}, Le/a/n/q1;->moveToNext()Z

    move-result v4

    goto :goto_e

    :cond_10
    if-lez v4, :cond_11

    .line 25
    invoke-virtual {v1}, Le/a/n/q1;->moveToNext()Z

    move-result v4

    goto :goto_e

    :cond_11
    if-gez v4, :cond_12

    .line 26
    invoke-virtual {v2}, Le/a/n/q1;->moveToNext()Z

    move-result v4

    goto :goto_2

    :goto_d
    move/from16 v4, p2

    goto/16 :goto_0

    .line 27
    :cond_12
    invoke-virtual {v1}, Le/a/n/q1;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Le/a/n/s1;->e(Ljava/util/List;J)V

    .line 28
    invoke-virtual {v2}, Le/a/n/q1;->getId()J

    move-result-wide v4

    .line 29
    iget-object v6, v1, Le/a/n/q1;->g:Le/a/p5/s0/e;

    const/4 v8, 0x6

    aget-object v7, v7, v8

    invoke-virtual {v6, v1, v7}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_13

    .line 30
    invoke-static {v4, v5}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 31
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "important"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 32
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    const-string v5, "ContentProviderOperation\u2026                 .build()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x32

    if-ne v4, v5, :cond_13

    invoke-virtual {v0, v3}, Le/a/n/s1;->c(Ljava/util/List;)V

    .line 35
    :cond_13
    invoke-virtual {v1}, Le/a/n/q1;->moveToNext()Z

    move-result v4

    :goto_e
    move/from16 v5, v19

    goto/16 :goto_0

    .line 36
    :cond_14
    invoke-virtual {v0, v3}, Le/a/n/s1;->c(Ljava/util/List;)V

    .line 37
    :try_start_0
    iget-object v1, v1, Le/a/n/q1;->h:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :catch_0
    :try_start_1
    iget-object v1, v2, Le/a/n/q1;->h:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_15
    return-void
.end method
