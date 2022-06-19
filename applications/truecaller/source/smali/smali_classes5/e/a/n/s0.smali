.class public final Le/a/n/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/n/r0;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Le/a/e4/p;

.field public final c:Le/a/p5/a0;

.field public final d:Le/a/l0/f;

.field public final e:Le/a/p5/c;

.field public final f:Le/a/q2/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/e4/p;Le/a/p5/a0;Le/a/l0/f;Le/a/p5/c;Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callLogInfoUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/n/s0;->b:Le/a/e4/p;

    iput-object p3, p0, Le/a/n/s0;->c:Le/a/p5/a0;

    iput-object p4, p0, Le/a/n/s0;->d:Le/a/l0/f;

    iput-object p5, p0, Le/a/n/s0;->e:Le/a/p5/c;

    iput-object p6, p0, Le/a/n/s0;->f:Le/a/q2/a;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Le/a/n/s0;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "it"

    .line 1
    iget-object v0, v1, Le/a/n/s0;->c:Le/a/p5/a0;

    const-string v3, "android.permission.READ_CALL_LOG"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, v1, Le/a/n/s0;->c:Le/a/p5/a0;

    const-string v3, "android.permission.READ_PHONE_STATE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object v0, v1, Le/a/n/s0;->e:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v3

    .line 4
    iget-object v0, v1, Le/a/n/s0;->d:Le/a/l0/f;

    invoke-virtual {v0}, Le/a/l0/f;->a()[Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v5, v1, Le/a/n/s0;->b:Le/a/e4/p;

    invoke-interface {v5}, Le/a/e4/p;->q()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v6, "projection"

    .line 6
    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Ls1/u/i;->s0([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_1
    move-object v7, v0

    const-string v0, "_id"

    const-string v5, "call_log_id"

    const-string v6, "timestamp"

    .line 7
    filled-new-array {v0, v5, v6}, [Ljava/lang/String;

    move-result-object v11

    .line 8
    :try_start_0
    iget-object v5, v1, Le/a/n/s0;->a:Landroid/content/ContentResolver;

    .line 9
    iget-object v0, v1, Le/a/n/s0;->d:Le/a/l0/f;

    invoke-virtual {v0}, Le/a/l0/f;->b()Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "date DESC, _id DESC"

    .line 10
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    new-instance v5, Le/a/n/t0;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v0}, Le/a/n/t0;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_9

    .line 13
    iget-object v8, v1, Le/a/n/s0;->a:Landroid/content/ContentResolver;

    .line 14
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v9

    const/4 v12, 0x0

    const-string v0, "call_log_id>=0"

    const-string v13, "timestamp DESC, call_log_id DESC"

    move-object v10, v11

    move-object v11, v0

    .line 15
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 16
    new-instance v6, Le/a/n/h1;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Le/a/n/h1;-><init>(Landroid/database/Cursor;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-virtual {v5}, Le/a/n/t0;->moveToNext()Z

    move-result v2

    .line 19
    invoke-virtual {v6}, Le/a/n/h1;->moveToNext()Z

    move-result v7

    :goto_1
    const/4 v8, 0x1

    if-eqz v2, :cond_7

    if-eqz v7, :cond_7

    .line 20
    iget-object v9, v5, Le/a/n/t0;->b:Le/a/p5/s0/e;

    sget-object v10, Le/a/n/t0;->d:[Ls1/a/l;

    aget-object v11, v10, v8

    invoke-virtual {v9, v5, v11}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    .line 21
    iget-object v9, v6, Le/a/n/h1;->c:Le/a/p5/s0/e;

    sget-object v13, Le/a/n/h1;->e:[Ls1/a/l;

    const/4 v15, 0x2

    aget-object v15, v13, v15

    invoke-virtual {v9, v6, v15}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    .line 22
    iget-object v9, v5, Le/a/n/t0;->a:Le/a/p5/s0/e;

    const/4 v14, 0x0

    aget-object v10, v10, v14

    invoke-virtual {v9, v5, v10}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 23
    iget-object v14, v6, Le/a/n/h1;->b:Le/a/p5/s0/e;

    aget-object v8, v13, v8

    invoke-virtual {v14, v6, v8}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    cmp-long v8, v11, v15

    if-lez v8, :cond_3

    .line 24
    invoke-virtual {v5}, Le/a/n/t0;->moveToNext()Z

    move-result v2

    :goto_2
    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    if-gez v8, :cond_4

    .line 25
    invoke-virtual {v6}, Le/a/n/h1;->getId()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8, v0}, Le/a/n/s0;->b(JLjava/util/ArrayList;)V

    .line 26
    invoke-virtual {v6}, Le/a/n/h1;->moveToNext()Z

    move-result v7

    goto :goto_2

    :cond_4
    cmp-long v8, v9, v13

    if-lez v8, :cond_5

    .line 27
    invoke-virtual {v5}, Le/a/n/t0;->moveToNext()Z

    move-result v2

    goto :goto_2

    :cond_5
    if-gez v8, :cond_6

    .line 28
    invoke-virtual {v6}, Le/a/n/h1;->getId()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8, v0}, Le/a/n/s0;->b(JLjava/util/ArrayList;)V

    .line 29
    invoke-virtual {v6}, Le/a/n/h1;->moveToNext()Z

    move-result v7

    goto :goto_2

    .line 30
    :cond_6
    invoke-virtual {v6}, Le/a/n/h1;->getId()J

    move-result-wide v7

    .line 31
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 32
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 33
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    const-string v8, "ContentProviderOperation\u2026ull)\n            .build()"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    .line 35
    invoke-virtual {v1, v0, v7}, Le/a/n/s0;->c(Ljava/util/ArrayList;Z)V

    .line 36
    invoke-virtual {v6}, Le/a/n/h1;->moveToNext()Z

    move-result v7

    goto/16 :goto_1

    :cond_7
    :goto_3
    if-eqz v7, :cond_8

    .line 37
    invoke-virtual {v6}, Le/a/n/h1;->getId()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10, v0}, Le/a/n/s0;->b(JLjava/util/ArrayList;)V

    .line 38
    :try_start_1
    invoke-virtual {v6}, Le/a/n/h1;->moveToNext()Z

    move-result v7
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 39
    :catch_1
    :cond_8
    invoke-virtual {v1, v0, v8}, Le/a/n/s0;->c(Ljava/util/ArrayList;Z)V

    .line 40
    :try_start_2
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 41
    :catch_2
    :try_start_3
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 42
    :catch_3
    iget-object v0, v1, Le/a/n/s0;->e:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 43
    new-instance v0, Lcom/truecaller/backup/analyitcs/BackupDurationEvent;

    sget-object v2, Lcom/truecaller/backup/analyitcs/BackupDurationEvent$Segment;->CALL_LOG:Lcom/truecaller/backup/analyitcs/BackupDurationEvent$Segment;

    invoke-direct {v0, v2, v5, v6}, Lcom/truecaller/backup/analyitcs/BackupDurationEvent;-><init>(Lcom/truecaller/backup/analyitcs/BackupDurationEvent$Segment;J)V

    iget-object v2, v1, Le/a/n/s0;->f:Le/a/q2/a;

    invoke-static {v0, v2}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public final b(JLjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x2

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tc_flag"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "call_log_id"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    const-string p2, "ContentProviderOperation\u2026ull)\n            .build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p3, p1}, Le/a/n/s0;->c(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public final c(Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Le/a/n/s0;->a:Landroid/content/ContentResolver;

    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "com.truecaller"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
