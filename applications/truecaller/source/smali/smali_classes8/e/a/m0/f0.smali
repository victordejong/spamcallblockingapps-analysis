.class public Le/a/m0/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$f;
.implements Le/a/b0/i/e/a$e;


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "_id"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/m0/f0;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const/4 p2, 0x1

    const/4 p5, 0x0

    if-nez p4, :cond_0

    move p4, p2

    goto :goto_0

    :cond_0
    move p4, p5

    :goto_0
    const-string v0, "Selection is not supported for this operation"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 2
    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p3

    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1

    move v0, p2

    goto :goto_1

    :cond_1
    move v0, p5

    :goto_1
    new-array v1, p5, [Ljava/lang/String;

    .line 3
    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    const-string v2, "This method can work properly only in transaction"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    new-array p2, p2, [Ljava/lang/String;

    .line 6
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, p5

    const-string p3, "msg_messages"

    const-string p4, "_id=?"

    .line 7
    invoke-virtual {v0, p3, p4, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_2

    .line 8
    invoke-static {}, Le/a/b0/q/g0;->z()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Le/a/b0/i/c;->i(Landroid/net/Uri;)V

    :cond_2
    return p2
.end method

.method public c(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 27

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    const-string v3, "conversation_id"

    .line 1
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 3
    invoke-virtual/range {p1 .. p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    .line 4
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v6

    const-string v7, "This method can work properly only in transaction"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 5
    new-instance v15, Le/a/m0/c;

    invoke-direct {v15, v14, v3, v4}, Le/a/m0/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;J)V

    const-string v13, "status"

    .line 6
    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "send_schedule_date"

    .line 7
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    const/4 v12, 0x1

    if-eqz v6, :cond_0

    .line 8
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x2

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_0

    move/from16 v16, v12

    goto :goto_0

    :cond_0
    move/from16 v16, v5

    :goto_0
    const-string v11, "msg_messages"

    const-wide/16 v17, 0x0

    const/4 v10, 0x0

    if-nez v16, :cond_2

    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v17

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_b

    :cond_2
    :goto_1
    :try_start_0
    const-string v6, "SELECT MAX(sequence_number) FROM msg_messages WHERE conversation_id= ?"

    new-array v7, v12, [Ljava/lang/String;

    .line 10
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 11
    invoke-static {v14, v6, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-wide/from16 v6, v17

    .line 12
    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "sequence_number"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-array v9, v12, [Ljava/lang/String;

    .line 13
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v5

    const-string v6, "$this$queryBoolean"

    .line 14
    invoke-static {v14, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "msg_conversations"

    const-string v6, "table"

    invoke-static {v7, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "hidden_number"

    const-string v6, "column"

    invoke-static {v8, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v23, "_id = ?"

    move-object v6, v14

    move-object/from16 v24, v8

    move-object/from16 v8, v19

    move-object/from16 v19, v9

    move-object/from16 v9, v23

    move-object/from16 v10, v19

    move-object/from16 v25, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move-object/from16 v26, v13

    move-object/from16 v13, v22

    .line 15
    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 16
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    move v12, v5

    :goto_3
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v7

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    const/4 v13, 0x0

    invoke-static {v6, v13}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v6, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    const/4 v13, 0x0

    move-object v10, v13

    :goto_5
    if-eqz v10, :cond_6

    .line 17
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v12, 0x1

    goto :goto_6

    :cond_6
    move v12, v5

    .line 18
    :goto_6
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v7, v24

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v16, :cond_b

    const-string v6, "_id"

    .line 19
    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    .line 20
    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 21
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, v2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    move-object/from16 v7, v26

    .line 22
    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const/4 v12, 0x1

    new-array v10, v12, [Ljava/lang/String;

    .line 23
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v5

    const-string v3, "status & 2 = 2 AND conversation_id = ?"

    move-object/from16 v4, v25

    .line 24
    invoke-virtual {v14, v4, v2, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_a

    :try_start_3
    const-string v7, "msg_messages"

    .line 25
    sget-object v8, Le/a/m0/f0;->a:[Ljava/lang/String;

    const-string v9, "status & 2 = 2 AND conversation_id = ?"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, v14

    move v15, v12

    move-object v12, v2

    move-object v2, v13

    move-object v13, v3

    :try_start_4
    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 26
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 27
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    :cond_7
    const-wide/16 v2, -0x1

    .line 28
    :goto_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    if-eqz v16, :cond_8

    .line 29
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-eqz v6, :cond_8

    new-array v6, v15, [Ljava/lang/String;

    .line 30
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    const-string v5, "(_id=?)"

    .line 31
    invoke-virtual {v14, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "msg_entities"

    const-string v5, "message_id=?"

    .line 32
    invoke-virtual {v14, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 33
    :cond_8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v2, v13

    :goto_8
    move-object v10, v2

    :goto_9
    if-eqz v10, :cond_9

    .line 34
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 35
    :cond_9
    throw v0

    :cond_a
    move-object v3, v13

    .line 36
    invoke-virtual {v14, v4, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 37
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v15, v4, v5, v2}, Le/a/m0/c;->f(JLandroid/content/ContentValues;)V

    move-object v2, v3

    .line 38
    :goto_a
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Le/a/b0/i/e/a;->a(J)Landroid/net/Uri;

    move-result-object v1

    .line 39
    invoke-static {}, Le/a/b0/q/g0;->z()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/a/b0/i/c;->i(Landroid/net/Uri;)V

    return-object v1

    :cond_b
    move-object v3, v13

    move-object/from16 v4, v25

    .line 40
    :goto_b
    invoke-virtual {v14, v4, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    cmp-long v5, v3, v17

    if-ltz v5, :cond_c

    .line 41
    invoke-virtual {v15, v3, v4, v2}, Le/a/m0/c;->f(JLandroid/content/ContentValues;)V

    .line 42
    invoke-static {}, Le/a/b0/q/g0;->z()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/a/b0/i/c;->i(Landroid/net/Uri;)V

    .line 43
    invoke-virtual {v1, v3, v4}, Le/a/b0/i/e/a;->a(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 44
    :cond_c
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Can not insert new message"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
