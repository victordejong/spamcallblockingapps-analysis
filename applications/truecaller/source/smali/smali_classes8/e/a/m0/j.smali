.class public Le/a/m0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$f;
.implements Le/a/b0/i/e/a$h;
.implements Le/a/b0/i/e/a$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/m0/j$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p4}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 2
    sget-object v0, Le/a/m0/a1$f;->a:[Ljava/lang/String;

    invoke-static {v0, p3}, Le/q/f/a/d/a;->Q([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const-string p2, "The "

    const-string p4, " column should never be updated directly"

    .line 3
    invoke-static {p2, p3, p4}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->fail([Ljava/lang/String;)V

    return p3

    .line 4
    :cond_1
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "msg_conversations"

    .line 5
    invoke-virtual {p1, p2, p4, p5, p6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 1
    invoke-static {p4, p2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "msg_conversations"

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p1, p2, p3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public c(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p4

    .line 1
    invoke-virtual/range {p1 .. p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "addr"

    move-object/from16 v5, p3

    .line 2
    invoke-virtual {v5, v4}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const-string v5, "You have to provide at least one participant"

    .line 3
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isFalse(Z[Ljava/lang/String;)V

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " IN ("

    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    move v8, v6

    .line 6
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    const-string v10, ","

    if-ge v8, v9, :cond_0

    .line 7
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const-string v8, ")"

    .line 9
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "SELECT _id, type, normalized_destination, im_business_state FROM msg_participants WHERE normalized_destination"

    const-string v9, " OR "

    const-string v11, "tc_im_peer_id"

    .line 10
    invoke-static {v8, v5, v9, v11, v5}, Le/d/c/a/a;->E2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    new-array v9, v8, [Le/a/m0/j$b;

    const/4 v11, 0x0

    .line 12
    :try_start_0
    invoke-virtual {v3, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v5, :cond_c

    .line 13
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-ne v12, v8, :cond_b

    move v4, v7

    .line 14
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    const/4 v13, 0x2

    if-eqz v12, :cond_2

    add-int/lit8 v12, v4, 0x1

    .line 15
    new-instance v21, Le/a/m0/j$b;

    .line 16
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 17
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 18
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v13, 0x3

    .line 19
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-ne v13, v6, :cond_1

    move/from16 v19, v6

    goto :goto_2

    :cond_1
    move/from16 v19, v7

    :goto_2
    const/16 v20, 0x0

    move-object/from16 v14, v21

    invoke-direct/range {v14 .. v20}, Le/a/m0/j$b;-><init>(JILjava/lang/String;ZLe/a/m0/j$a;)V

    aput-object v21, v9, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v4, v12

    goto :goto_1

    .line 20
    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const-string v4, ") GROUP BY conversation_id HAVING count(*)="

    .line 21
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "SELECT conversation_id FROM msg_conversation_participants WHERE conversation_id IN (SELECT conversation_id FROM msg_conversation_participants WHERE participant_id IN ("

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    aget-object v12, v9, v7

    iget-wide v14, v12, Le/a/m0/j$b;->a:J

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v12, v6

    :goto_3
    if-ge v12, v8, :cond_3

    .line 23
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v9, v12

    iget-wide v14, v14, Le/a/m0/j$b;->a:J

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 24
    :cond_3
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 25
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v14, -0x1

    if-eqz v4, :cond_4

    .line 28
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 29
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-wide/from16 v4, v16

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v11, v4

    goto/16 :goto_7

    :cond_4
    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_5
    move-wide v4, v14

    :goto_4
    cmp-long v10, v4, v14

    const-string v12, "msg_conversations"

    const-string v14, "type"

    const-string v15, "tc_group_id"

    if-eqz v10, :cond_6

    .line 31
    invoke-virtual {v2, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {v1, v9, v2}, Le/a/m0/j;->d([Le/a/m0/j$b;Ljava/lang/String;)I

    move-result v2

    .line 33
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v9, v13, [Ljava/lang/String;

    .line 35
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v6

    const-string v2, "_id=? AND type != ?"

    .line 36
    invoke-virtual {v3, v12, v8, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 37
    invoke-virtual {v0, v4, v5}, Le/a/b0/i/e/a;->a(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 38
    :cond_6
    invoke-virtual {v2, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-virtual {v1, v9, v4}, Le/a/m0/j;->d([Le/a/m0/j$b;Ljava/lang/String;)I

    move-result v5

    .line 40
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    invoke-virtual {v6, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "hidden_number"

    .line 43
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 44
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_5

    :cond_7
    move v2, v7

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 45
    invoke-virtual {v3, v12, v11, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v12, -0x1

    cmp-long v2, v4, v12

    if-eqz v2, :cond_9

    .line 46
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    :goto_6
    if-ge v7, v8, :cond_8

    .line 47
    aget-object v6, v9, v7

    .line 48
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v12, "conversation_id"

    invoke-virtual {v2, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 49
    iget-wide v12, v6, Le/a/m0/j$b;->a:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v10, "participant_id"

    invoke-virtual {v2, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "msg_conversation_participants"

    .line 50
    invoke-virtual {v3, v6, v11, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 51
    :cond_8
    invoke-virtual {v0, v4, v5}, Le/a/b0/i/e/a;->a(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 52
    :cond_9
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v2, "Can not create new conversation"

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    :goto_7
    if-eqz v11, :cond_a

    .line 53
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_a
    throw v0

    .line 55
    :cond_b
    :try_start_4
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not all participants was inserted: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3b

    invoke-static {v4, v3}, Lw3/c/a/a/a/h;->o(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_c
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v2, "Can not fetch participants"

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v11, v5

    goto :goto_8

    :catchall_3
    move-exception v0

    :goto_8
    if-eqz v11, :cond_d

    .line 57
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 58
    :cond_d
    throw v0
.end method

.method public final d([Le/a/m0/j$b;Ljava/lang/String;)I
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 2
    aget-object v0, p1, p2

    iget-object v0, v0, Le/a/m0/j$b;->c:Ljava/lang/String;

    invoke-static {v0}, Le/a/b0/q/g0;->K(Ljava/lang/String;)I

    move-result v0

    .line 3
    aget-object v1, p1, p2

    iget-object v1, v1, Le/a/m0/j$b;->c:Ljava/lang/String;

    aget-object v2, p1, p2

    iget v2, v2, Le/a/m0/j$b;->b:I

    invoke-static {v1, v2, v0}, Le/a/b0/q/g0;->c(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 4
    :cond_0
    aget-object p1, p1, p2

    iget-boolean p1, p1, Le/a/m0/j$b;->d:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    return p2

    :cond_2
    return v1
.end method
