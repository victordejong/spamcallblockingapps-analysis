.class public final Le/a/l0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l0/r;


# instance fields
.field public a:J

.field public final b:Landroid/content/Context;

.field public final c:Le/a/l0/u/e/d;

.field public final d:Le/a/l0/f;

.field public final e:Le/a/l0/v/a;

.field public final f:Lcom/truecaller/settings/CallingSettings;

.field public final g:Le/a/p5/g;

.field public final h:Lcom/truecaller/callrecording/CallRecordingManager;

.field public final i:Le/a/l0/u/a;

.field public final j:Le/a/q2/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/l0/u/e/d;Le/a/l0/f;Le/a/l0/v/a;Lcom/truecaller/settings/CallingSettings;Le/a/p5/g;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/l0/u/a;Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingHistoryEventInserter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callLogUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "batchExecutor"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syncManagerDataProvider"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l0/s;->b:Landroid/content/Context;

    iput-object p2, p0, Le/a/l0/s;->c:Le/a/l0/u/e/d;

    iput-object p3, p0, Le/a/l0/s;->d:Le/a/l0/f;

    iput-object p4, p0, Le/a/l0/s;->e:Le/a/l0/v/a;

    iput-object p5, p0, Le/a/l0/s;->f:Lcom/truecaller/settings/CallingSettings;

    iput-object p6, p0, Le/a/l0/s;->g:Le/a/p5/g;

    iput-object p7, p0, Le/a/l0/s;->h:Lcom/truecaller/callrecording/CallRecordingManager;

    iput-object p8, p0, Le/a/l0/s;->i:Le/a/l0/u/a;

    iput-object p9, p0, Le/a/l0/s;->j:Le/a/q2/a;

    const-wide/16 p1, -0x1

    .line 2
    iput-wide p1, p0, Le/a/l0/s;->a:J

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Le/a/l0/s;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/l0/s;->f:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "deleteUnknownHistoryEvents"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    sget-object v0, Ln3/k/e/h;->b:Ljava/lang/reflect/Method;

    const-string v0, "Deleting unknown entries from the local database"

    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Le/a/l0/s;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "type=0"

    const/4 v6, 0x0

    .line 6
    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Le/a/l0/s;->b:Landroid/content/Context;

    invoke-static {}, Le/a/m0/c1/l0;->d()[Le/a/m0/c1/h0;

    move-result-object v4

    iget-object v5, p0, Le/a/l0/s;->j:Le/a/q2/a;

    invoke-static {v0, v4, v5}, Le/a/m0/c1/l0;->j(Landroid/content/Context;[Le/a/m0/c1/h0;Le/a/q2/a;)Le/a/m0/c1/l0;

    move-result-object v0

    const-string v4, "TruecallerDatabaseHelper\u2026ableHelpers(), analytics)"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "TruecallerDatabaseHelper\u2026        .writableDatabase"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$this$vacuum"

    .line 8
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "PRAGMA wal_checkpoint(FULL)"

    .line 9
    invoke-virtual {v0, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 10
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const-string v4, "VACUUM"

    .line 11
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_2

    .line 12
    iget-object v0, p0, Le/a/l0/s;->f:Lcom/truecaller/settings/CallingSettings;

    invoke-interface {v0, v1, v3}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 14
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 15
    :goto_2
    iget-wide v0, p0, Le/a/l0/s;->a:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le/a/l0/s;->a:J

    return-void

    .line 17
    :cond_3
    new-instance v0, Le/a/l0/v/a$a;

    const-wide/16 v1, 0x0

    const/4 v4, 0x3

    invoke-direct {v0, v3, v1, v2, v4}, Le/a/l0/v/a$a;-><init>(IJI)V

    .line 18
    iget-wide v1, v0, Le/a/l0/v/a$a;->b:J

    .line 19
    iput-wide v1, p0, Le/a/l0/s;->a:J

    if-eqz p1, :cond_4

    .line 20
    invoke-virtual {p0, v0}, Le/a/l0/s;->i(Le/a/l0/v/a$a;)V

    goto :goto_3

    .line 21
    :cond_4
    iget-object p1, p0, Le/a/l0/s;->e:Le/a/l0/v/a;

    invoke-interface {p1, v0}, Le/a/l0/v/a;->a(Le/a/l0/v/a$a;)V

    :goto_3
    return-void
.end method

.method public final c(JLjava/util/ArrayList;Ljava/util/ArrayList;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)J"
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "timestamp"

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "toBeUpdated[toBeUpdated.size - 1]"

    invoke-static {p4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Landroid/content/ContentValues;

    .line 3
    invoke-virtual {p4, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p4

    const-string v0, "toBeUpdated[toBeUpdated.size - 1].timestamp()"

    .line 4
    invoke-static {p4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 5
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_1

    .line 6
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "toBeAdded[toBeAdded.size - 1]"

    invoke-static {p3, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/content/ContentValues;

    .line 7
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "toBeAdded[toBeAdded.size - 1].timestamp()"

    .line 8
    invoke-static {p3, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    :cond_1
    return-wide p1
.end method

.method public final d(Le/a/l0/u/d/d;Le/a/l0/u/d/b;Ljava/util/List;Ljava/util/List;)Le/a/l0/v/a$a;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l0/u/d/d;",
            "Le/a/l0/u/d/b;",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Le/a/l0/v/a$a;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    .line 1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 4
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    move v10, v0

    move v11, v1

    :goto_0
    const-string v12, "build()"

    const-string v13, "ContentProviderOperation\u2026oryTable.getContentUri())"

    const-wide/16 v16, -0x1

    const/4 v5, 0x1

    if-eqz v10, :cond_8

    if-eqz v11, :cond_8

    .line 5
    invoke-interface/range {p1 .. p1}, Le/a/l0/u/d/d;->D1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface/range {p2 .. p2}, Le/a/l0/u/d/b;->e()J

    move-result-wide v3

    .line 8
    invoke-interface/range {p1 .. p1}, Le/a/l0/u/d/d;->e()J

    move-result-wide v1

    .line 9
    invoke-interface/range {p2 .. p2}, Le/a/l0/u/d/b;->A0()J

    move-result-wide v18

    .line 10
    invoke-interface/range {p1 .. p1}, Le/a/l0/u/d/d;->getId()J

    move-result-wide v20

    .line 11
    invoke-interface/range {p2 .. p2}, Le/a/l0/u/d/b;->A0()J

    move-result-wide v22

    cmp-long v0, v22, v16

    if-nez v0, :cond_1

    .line 12
    invoke-interface/range {p2 .. p2}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v11

    move-object/from16 v0, p0

    move-wide v12, v1

    move-object v1, v11

    move-object v2, v9

    move-wide v14, v3

    move-object v3, v8

    move-object/from16 v4, p3

    move v11, v5

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Le/a/l0/s;->g(Lcom/truecaller/data/entity/HistoryEvent;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 13
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    move v3, v10

    move v10, v11

    move v11, v0

    :goto_1
    move-wide v0, v12

    goto/16 :goto_4

    :cond_1
    move-wide v14, v3

    move v3, v5

    move-wide v4, v1

    cmp-long v0, v14, v4

    if-lez v0, :cond_2

    .line 14
    invoke-interface/range {p2 .. p2}, Le/a/l0/u/d/b;->getId()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1, v7}, Le/a/l0/s;->f(JLjava/util/List;)V

    .line 15
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    :goto_2
    move v11, v0

    move-wide v0, v4

    move/from16 v24, v10

    move v10, v3

    move/from16 v3, v24

    goto/16 :goto_4

    :cond_2
    if-gez v0, :cond_3

    .line 16
    invoke-interface/range {p1 .. p1}, Le/a/l0/u/d/d;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v1

    move-object/from16 v0, p0

    move-object v2, v9

    move v10, v3

    move-object v3, v8

    move-wide v12, v4

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Le/a/l0/s;->e(Lcom/truecaller/data/entity/HistoryEvent;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;)V

    .line 17
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    :goto_3
    move v3, v0

    goto :goto_1

    :cond_3
    cmp-long v0, v18, v20

    if-lez v0, :cond_4

    .line 18
    invoke-interface/range {p2 .. p2}, Le/a/l0/u/d/b;->getId()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1, v7}, Le/a/l0/s;->f(JLjava/util/List;)V

    .line 19
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto :goto_2

    :cond_4
    if-gez v0, :cond_5

    .line 20
    invoke-interface/range {p1 .. p1}, Le/a/l0/u/d/d;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v1

    move-object/from16 v0, p0

    move-object v2, v9

    move v10, v3

    move-object v3, v8

    move-wide v12, v4

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Le/a/l0/s;->e(Lcom/truecaller/data/entity/HistoryEvent;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;)V

    .line 21
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto :goto_3

    :cond_5
    move v10, v3

    move-wide v0, v4

    .line 22
    invoke-interface/range {p2 .. p2}, Le/a/e4/l;->z()Ljava/lang/String;

    move-result-object v2

    const-string v3, "local.simToken"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface/range {p1 .. p1}, Le/a/e4/l;->z()Ljava/lang/String;

    move-result-object v3

    const-string v4, "remote.simToken"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {v2, v3}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 25
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-static {v2, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "subscription_id"

    .line 26
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    new-array v3, v10, [Ljava/lang/String;

    .line 27
    invoke-interface/range {p2 .. p2}, Le/a/l0/u/d/b;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "_id=?"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 28
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-static {v2, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_6
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 30
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    move v11, v2

    .line 31
    :goto_4
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    const/16 v4, 0x64

    if-lt v2, v4, :cond_7

    .line 32
    new-instance v2, Le/a/l0/v/a$a;

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1, v9, v8}, Le/a/l0/s;->c(JLjava/util/ArrayList;Ljava/util/ArrayList;)J

    move-result-wide v0

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1, v10}, Le/a/l0/v/a$a;-><init>(IJI)V

    return-object v2

    :cond_7
    move v10, v3

    goto/16 :goto_0

    :cond_8
    move v14, v5

    :goto_5
    if-eqz v10, :cond_c

    .line 33
    invoke-interface/range {p1 .. p1}, Le/a/l0/u/d/d;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 34
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 35
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-static {v0, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {v10}, Le/a/n/g0;->G0(Lcom/truecaller/data/entity/HistoryEvent;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 37
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-static {v0, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v9

    move-object v3, v8

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 38
    invoke-virtual/range {v0 .. v5}, Le/a/l0/s;->e(Lcom/truecaller/data/entity/HistoryEvent;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;)V

    .line 39
    :goto_6
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_b

    .line 40
    new-instance v0, Le/a/l0/v/a$a;

    .line 41
    iget-wide v1, v10, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 42
    invoke-virtual {v6, v1, v2, v9, v8}, Le/a/l0/s;->c(JLjava/util/ArrayList;Ljava/util/ArrayList;)J

    move-result-wide v1

    const/4 v10, 0x0

    invoke-direct {v0, v10, v1, v2, v14}, Le/a/l0/v/a$a;-><init>(IJI)V

    return-object v0

    :cond_a
    const/16 v1, 0x64

    :cond_b
    const/4 v10, 0x0

    .line 43
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    move v10, v0

    goto :goto_5

    :cond_c
    const/4 v10, 0x0

    :goto_7
    if-eqz v11, :cond_f

    .line 44
    invoke-interface/range {p2 .. p2}, Le/a/l0/u/d/b;->A0()J

    move-result-wide v0

    cmp-long v0, v0, v16

    if-eqz v0, :cond_d

    .line 45
    invoke-interface/range {p2 .. p2}, Le/a/l0/u/d/b;->getId()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1, v7}, Le/a/l0/s;->f(JLjava/util/List;)V

    goto :goto_8

    .line 46
    :cond_d
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v14

    if-eqz v0, :cond_e

    .line 47
    invoke-interface/range {p2 .. p2}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v1

    move-object/from16 v0, p0

    move-object v2, v9

    move-object v3, v8

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 48
    invoke-virtual/range {v0 .. v5}, Le/a/l0/s;->g(Lcom/truecaller/data/entity/HistoryEvent;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 49
    :cond_e
    :goto_8
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    goto :goto_7

    .line 50
    :cond_f
    invoke-virtual {v9}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 51
    :goto_9
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 52
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-static {v1, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 54
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-static {v1, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_9

    .line 56
    :cond_10
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_11

    move v5, v14

    goto :goto_a

    :cond_11
    move v5, v10

    :goto_a
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12

    move v10, v14

    :cond_12
    and-int v0, v5, v10

    if-eqz v0, :cond_13

    .line 57
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 58
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v2, "_id"

    .line 59
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "it.longId()"

    .line 60
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v6, v1, v2, v7}, Le/a/l0/s;->f(JLjava/util/List;)V

    goto :goto_b

    .line 61
    :cond_13
    new-instance v0, Le/a/l0/v/a$a;

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v14, v1, v2, v3}, Le/a/l0/v/a$a;-><init>(IJI)V

    return-object v0
.end method

.method public final e(Lcom/truecaller/data/entity/HistoryEvent;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scheduleEventToAdd() called with: remote = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "], toBeAdded = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "], toBeUpdated = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v7, 0x5d

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scheduleEventToAdd() localOperations = ["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "], remoteOperations = ["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-wide v7, v1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    const/16 v5, 0x2710

    int-to-long v9, v5

    add-long/2addr v7, v9

    .line 4
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    const/4 v9, 0x1

    xor-int/2addr v5, v9

    const-string v10, "build()"

    const-string v11, "ContentProviderOperation\u2026oryTable.getContentUri())"

    const-string v12, "timestamp"

    if-eqz v5, :cond_5

    .line 5
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-string v6, "toBeUpdated.iterator()"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    const-string v14, "update.next()"

    invoke-static {v6, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/content/ContentValues;

    .line 8
    invoke-virtual {v6, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 9
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v14, v14, v7

    if-lez v14, :cond_1

    .line 10
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const-string v14, "type"

    .line 11
    invoke-virtual {v6, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    const-string v13, "event.type()"

    .line 12
    invoke-static {v15, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 13
    iget v13, v1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    const-string v15, "normalized_number"

    .line 14
    invoke-virtual {v6, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 15
    iget-object v9, v1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    move-wide/from16 v24, v7

    .line 16
    invoke-virtual {v6, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "event.timestamp()"

    .line 17
    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 18
    iget-wide v7, v1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    move/from16 v17, v13

    move-object/from16 v19, v9

    move-wide/from16 v22, v7

    .line 19
    invoke-static/range {v16 .. v23}, Le/a/n/g0;->o(IILjava/lang/String;Ljava/lang/String;JJ)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v2, "action"

    .line 20
    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x5

    const-string v9, "_id"

    const-string v13, "_id=?"

    if-nez v7, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_3

    .line 22
    invoke-virtual {v6, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "event.longId()"

    .line 23
    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v3}, Le/a/l0/s;->f(JLjava/util/List;)V

    .line 24
    iget-object v2, v0, Le/a/l0/s;->d:Le/a/l0/f;

    .line 25
    invoke-virtual {v2}, Le/a/l0/f;->b()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "ContentProviderOperation\u2026e(callLogUtil.callLogUri)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 26
    iget-object v1, v1, Lcom/truecaller/data/entity/HistoryEvent;->g:Ljava/lang/Long;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v3, v6

    invoke-virtual {v2, v13, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 28
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-static {v1, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 29
    :cond_3
    :goto_1
    iget v4, v1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    .line 30
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    iget-object v4, v1, Lcom/truecaller/data/entity/HistoryEvent;->g:Ljava/lang/Long;

    const-string v7, "call_log_id"

    .line 32
    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 33
    iget-wide v7, v1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 34
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 35
    iget-wide v7, v1, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    .line 36
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "duration"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 37
    iget-object v4, v1, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    const-string v7, "subscription_id"

    .line 38
    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget v4, v1, Lcom/truecaller/data/entity/HistoryEvent;->l:I

    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "feature"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 41
    iget-object v1, v1, Lcom/truecaller/data/entity/HistoryEvent;->s:Ljava/lang/String;

    const-string v4, "subscription_component_name"

    .line 42
    invoke-virtual {v6, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v6, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "filter_source"

    .line 45
    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "ringing_duration"

    .line 46
    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-static {v1, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    const/4 v7, 0x1

    new-array v2, v7, [Ljava/lang/String;

    .line 49
    invoke-virtual {v6, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v2, v6

    .line 50
    invoke-virtual {v1, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 51
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-static {v1, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_4
    move-wide/from16 v7, v24

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_5
    move-wide/from16 v24, v7

    .line 53
    invoke-static/range {p1 .. p1}, Le/a/n/g0;->G0(Lcom/truecaller/data/entity/HistoryEvent;)Landroid/content/ContentValues;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 54
    iget-object v4, v0, Le/a/l0/s;->g:Le/a/p5/g;

    invoke-interface {v4}, Le/a/p5/g;->h()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 55
    iget v4, v1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 56
    iget-object v4, v0, Le/a/l0/s;->h:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v4}, Lcom/truecaller/callrecording/CallRecordingManager;->w()Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-static {v4}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 58
    iget-object v5, v0, Le/a/l0/s;->h:Lcom/truecaller/callrecording/CallRecordingManager;

    .line 59
    iget-object v6, v1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 60
    invoke-interface {v5, v6}, Lcom/truecaller/callrecording/CallRecordingManager;->p(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    return-void

    .line 61
    :cond_6
    new-instance v5, Lcom/truecaller/data/entity/CallRecording;

    const-wide/16 v6, -0x1

    .line 62
    iget-object v8, v1, Lcom/truecaller/data/entity/HistoryEvent;->a:Ljava/lang/String;

    .line 63
    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-direct {v5, v6, v7, v8, v4}, Lcom/truecaller/data/entity/CallRecording;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 64
    iput-object v5, v1, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    .line 65
    iget-object v4, v0, Le/a/l0/s;->c:Le/a/l0/u/e/d;

    invoke-interface {v4, v5}, Le/a/l0/u/e/d;->o(Lcom/truecaller/data/entity/CallRecording;)V

    .line 66
    iget-object v4, v0, Le/a/l0/s;->h:Lcom/truecaller/callrecording/CallRecordingManager;

    .line 67
    iget-object v1, v1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    .line 68
    invoke-interface {v4, v1}, Lcom/truecaller/callrecording/CallRecordingManager;->D(Lcom/truecaller/data/entity/Contact;)V

    .line 69
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 70
    :goto_3
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 71
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "previous()"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/content/ContentValues;

    .line 72
    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 73
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v24

    if-lez v4, :cond_8

    .line 74
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-static {v4, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 76
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-static {v2, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_3

    :cond_8
    return-void
.end method

.method public final f(JLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "ContentProviderOperation\u2026oryTable.getContentUri())"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, "_id=?"

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 3
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    const-string p2, "build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final g(Lcom/truecaller/data/entity/HistoryEvent;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    if-nez v1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Entity;->getId()Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Event must have record in local database"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v5, "_id"

    const-string v6, "type"

    const-string v7, "ringing_duration"

    const-string v8, "filter_source"

    const-string v9, "action"

    const-string v10, "timestamp"

    const-string v11, "normalized_number"

    if-eqz v4, :cond_1

    .line 3
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Entity;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5
    iget-wide v4, v1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7
    iget-object v4, v1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v3, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget v4, v1, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11
    iget-object v4, v1, Lcom/truecaller/data/entity/HistoryEvent;->u:Ljava/lang/String;

    .line 12
    invoke-virtual {v3, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-wide v4, v1, Lcom/truecaller/data/entity/HistoryEvent;->j:J

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 15
    iget v1, v1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 18
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 19
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 20
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ContentValues;

    .line 21
    iget v14, v1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    .line 22
    invoke-virtual {v12, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    const-string v13, "remote.type()"

    .line 23
    invoke-static {v15, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 24
    iget-object v13, v1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 25
    invoke-virtual {v12, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v23, v5

    move-object/from16 v22, v6

    .line 26
    iget-wide v5, v1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 27
    invoke-virtual {v12, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v24, v10

    const-string v10, "remote.timestamp()"

    .line 28
    invoke-static {v2, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v16, v13

    move-wide/from16 v18, v5

    invoke-static/range {v14 .. v21}, Le/a/n/g0;->o(IILjava/lang/String;Ljava/lang/String;JJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 29
    iget v2, v1, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    const/4 v5, 0x5

    const-string v6, "build()"

    const/4 v10, 0x1

    const-string v13, "_id=?"

    if-ne v2, v5, :cond_3

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Entity;->getId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "it"

    .line 31
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3}, Le/a/l0/s;->f(JLjava/util/List;)V

    .line 32
    :cond_2
    iget-object v1, v0, Le/a/l0/s;->d:Le/a/l0/f;

    .line 33
    invoke-virtual {v1}, Le/a/l0/f;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "ContentProviderOperation\u2026e(callLogUtil.callLogUri)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "call_log_id"

    .line 34
    invoke-virtual {v12, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 35
    invoke-virtual {v1, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 36
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p5

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 37
    :cond_3
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v5, "ContentProviderOperation\u2026oryTable.getContentUri())"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "tc_id"

    .line 38
    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v12, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v5, "raw_number"

    .line 40
    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v5, "number_type"

    .line 41
    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v5, "country_code"

    .line 42
    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v5, "cached_name"

    .line 43
    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v12, v9}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v12, v8}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v12, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    new-array v5, v10, [Ljava/lang/String;

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Entity;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    aput-object v1, v5, v7

    invoke-virtual {v2, v13, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 49
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_4
    move-object/from16 v2, p5

    move-object/from16 v2, p3

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    move-object/from16 v10, v24

    goto/16 :goto_0

    :cond_5
    move-object/from16 v23, v5

    move-object/from16 v22, v6

    move-object/from16 v24, v10

    .line 51
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Entity;->getId()Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v4, v23

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 53
    iget-object v3, v1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 54
    invoke-virtual {v2, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-wide v3, v1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 56
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v4, v24

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 57
    iget v3, v1, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    iget-object v3, v1, Lcom/truecaller/data/entity/HistoryEvent;->u:Ljava/lang/String;

    .line 60
    invoke-virtual {v2, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-wide v3, v1, Lcom/truecaller/data/entity/HistoryEvent;->j:J

    .line 62
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 63
    iget v1, v1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v3, v22

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v1, p3

    const/4 v3, 0x0

    .line 65
    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public i(Le/a/l0/v/a$a;)V
    .locals 14

    const-string v0, "batchToExecute"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call Log: process sync batch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Ln3/k/e/h;->b:Ljava/lang/reflect/Method;

    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string v0, "ms with count: "

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call History - SYNC MANAGER - performing next sync batch (batchToExecute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    iget-object v1, p0, Le/a/l0/s;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-wide v4, p0, Le/a/l0/s;->a:J

    .line 10
    iget-wide v6, p1, Le/a/l0/v/a$a;->b:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 11
    new-instance v6, Le/a/l0/v/a$a;

    .line 12
    iget p1, p1, Le/a/l0/v/a$a;->a:I

    .line 13
    invoke-direct {v6, p1, v4, v5}, Le/a/l0/v/a$a;-><init>(IJ)V

    move-object p1, v6

    :cond_0
    const/4 v4, 0x0

    .line 14
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 15
    iget-object v7, p0, Le/a/l0/s;->i:Le/a/l0/u/a;

    const-string v8, "resolver"

    invoke-static {v1, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-wide v8, p1, Le/a/l0/v/a$a;->b:J

    .line 17
    invoke-interface {v7, v1, v8, v9}, Le/a/l0/u/a;->a(Landroid/content/ContentResolver;J)Le/a/l0/u/d/d;

    move-result-object v7

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v5

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call History - SYNC MANAGER - fetching remote took: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v6, v4

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v7, :cond_2

    if-eqz v7, :cond_d

    .line 20
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8

    .line 21
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 22
    iget-object v8, p0, Le/a/l0/s;->i:Le/a/l0/u/a;

    .line 23
    iget-wide v9, p1, Le/a/l0/v/a$a;->b:J

    .line 24
    invoke-interface {v8, v1, v9, v10}, Le/a/l0/u/a;->b(Landroid/content/ContentResolver;J)Le/a/l0/u/d/b;

    move-result-object p1

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v5

    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call History - SYNC MANAGER - fetching local took: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v4

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_4

    .line 27
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    if-eqz p1, :cond_d

    goto/16 :goto_7

    .line 28
    :cond_4
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    invoke-virtual {p0, v7, p1, v2, v3}, Le/a/l0/s;->d(Le/a/l0/u/d/d;Le/a/l0/u/d/b;Ljava/util/List;Ljava/util/List;)Le/a/l0/v/a$a;

    move-result-object v0

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 32
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 33
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const-string v4, "initialCallLogSyncComplete"

    const/4 v5, 0x1

    const-wide/16 v6, -0x1

    if-eqz p1, :cond_5

    .line 34
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const-string v0, "Remote operations are not allowed without local one"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Le/a/l0/s;->f:Lcom/truecaller/settings/CallingSettings;

    invoke-interface {p1, v4, v5}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    iget-object p1, p0, Le/a/l0/s;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/truecaller/service/MissedCallsNotificationService$a;->a(Landroid/content/Context;)V

    .line 37
    iput-wide v6, p0, Le/a/l0/s;->a:J

    goto/16 :goto_8

    .line 38
    :cond_5
    iget p1, v0, Le/a/l0/v/a$a;->a:I

    const/4 v6, 0x0

    if-ne p1, v5, :cond_6

    move p1, v5

    goto :goto_2

    :cond_6
    move p1, v6

    :goto_2
    if-eqz p1, :cond_7

    .line 39
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "ContentProviderOperation\u2026oryTable.getContentUri())"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "action"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    new-array v8, v5, [Ljava/lang/String;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x1

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const-string v9, "(call_log_id NOT NULL OR tc_flag=2 OR tc_flag=3) AND action=4 AND timestamp<?"

    .line 42
    invoke-virtual {v7, v9, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 43
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    const-string v8, "build()"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_7
    :try_start_3
    sget-object v7, Le/a/m0/a1;->a:Landroid/net/Uri;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_2

    const-string v7, "com.truecaller"

    :try_start_4
    invoke-virtual {v1, v7, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    const-string v7, "resolver.applyBatch(True\u2026ority(), localOperations)"

    invoke-static {v2, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    array-length v2, v2

    if-nez v2, :cond_8

    move v6, v5

    :cond_8
    xor-int/lit8 v2, v6, 0x1

    if-eqz v2, :cond_9

    .line 46
    iget-object v2, p0, Le/a/l0/s;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/truecaller/service/WidgetListProvider;->b(Landroid/content/Context;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_2

    .line 47
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v5

    if-eqz v2, :cond_a

    :try_start_5
    const-string v2, "call_log"

    .line 48
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    const-string v2, "resolver.applyBatch(Call\u2026HORITY, remoteOperations)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 49
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v1

    .line 50
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_a
    :goto_3
    if-eqz p1, :cond_b

    .line 51
    iget-object p1, p0, Le/a/l0/s;->f:Lcom/truecaller/settings/CallingSettings;

    invoke-interface {p1, v4, v5}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    iget-object p1, p0, Le/a/l0/s;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/truecaller/service/MissedCallsNotificationService$a;->a(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    .line 53
    iput-wide v0, p0, Le/a/l0/s;->a:J

    goto :goto_8

    .line 54
    :cond_b
    iget-wide v1, v0, Le/a/l0/v/a$a;->b:J

    .line 55
    iput-wide v1, p0, Le/a/l0/s;->a:J

    .line 56
    iget-object p1, p0, Le/a/l0/s;->e:Le/a/l0/v/a;

    invoke-interface {p1, v0}, Le/a/l0/v/a;->a(Le/a/l0/v/a$a;)V

    goto :goto_8

    :catch_2
    move-exception p1

    .line 57
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    .line 58
    iput-wide v0, p0, Le/a/l0/s;->a:J

    goto :goto_8

    :catch_3
    move-exception p1

    const-wide/16 v0, -0x1

    .line 59
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 60
    iput-wide v0, p0, Le/a/l0/s;->a:J

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v4, p1

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v4, p1

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v0, p1

    :goto_4
    move-object p1, v4

    move-object v4, v7

    goto :goto_9

    :catch_5
    move-exception p1

    move-object v0, p1

    :goto_5
    move-object p1, v4

    move-object v4, v7

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object v0, p1

    move-object p1, v4

    goto :goto_9

    :catch_6
    move-exception p1

    move-object v0, p1

    move-object p1, v4

    .line 61
    :goto_6
    :try_start_6
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v4, :cond_c

    .line 62
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz p1, :cond_d

    .line 63
    :goto_7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_d
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_3
    move-exception v0

    :goto_9
    if-eqz v4, :cond_e

    .line 66
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_e
    if-eqz p1, :cond_f

    .line 67
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v0
.end method
