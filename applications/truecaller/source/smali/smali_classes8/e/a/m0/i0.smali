.class public final Le/a/m0/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const-string v4, "provider"

    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "helper"

    move-object/from16 v5, p2

    invoke-static {v5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "uri"

    move-object/from16 v5, p3

    invoke-static {v5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "values"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static/range {p3 .. p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v4, v14, v16

    const/4 v13, 0x0

    const/16 v18, 0x1

    if-eqz v4, :cond_0

    move/from16 v4, v18

    goto :goto_0

    :cond_0
    move v4, v13

    :goto_0
    new-array v5, v13, [Ljava/lang/String;

    .line 2
    invoke-static {v4, v5}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-eqz p6, :cond_1

    move-object/from16 v5, p6

    goto :goto_1

    :cond_1
    new-array v5, v13, [Ljava/lang/String;

    .line 4
    :goto_1
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ls1/u/i;->s0([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, [Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 5
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v13

    goto :goto_3

    :cond_3
    :goto_2
    move/from16 v5, v18

    :goto_3
    if-eqz v5, :cond_4

    const-string v3, "(_id=?)"

    goto :goto_4

    .line 6
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") AND (_id=?)"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    const-string v10, "date"

    .line 7
    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    const-string v11, "transport"

    const-string v8, "conversation_id"

    const-string v9, "db"

    const-string v6, "status"

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v19

    .line 8
    invoke-static {v4, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v4, v14, v15}, Le/a/m0/i0;->b(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 10
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 11
    new-instance v7, Le/a/m0/c;

    move-wide/from16 v21, v14

    invoke-static {v5, v8}, Le/a/p5/s0/g;->E0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v13

    invoke-direct {v7, v4, v13, v14}, Le/a/m0/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 12
    invoke-static {v5, v10}, Le/a/p5/s0/g;->E0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v13

    .line 13
    invoke-static {v5, v11}, Le/a/p5/s0/g;->q0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 14
    invoke-static {v5, v6}, Le/a/p5/s0/g;->q0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v24, 0x0

    const/16 v25, 0x20

    move-object v1, v5

    move-object v5, v7

    move-object/from16 v26, v6

    const/4 v0, 0x0

    move-wide v6, v13

    move-object v14, v8

    move-object v13, v9

    move-wide/from16 v8, v19

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-wide/from16 v10, v21

    move-object/from16 v29, v12

    move v12, v15

    move-object v15, v13

    const/16 v19, 0x0

    move/from16 v13, v23

    move-object/from16 v32, v14

    move-wide/from16 v30, v21

    move/from16 v14, v24

    move-object/from16 v33, v15

    move/from16 v15, v25

    .line 15
    :try_start_1
    invoke-static/range {v5 .. v15}, Le/a/m0/c;->e(Le/a/m0/c;JJJIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_5
    move-object v1, v5

    move-object/from16 v26, v6

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move/from16 v19, v13

    move-wide/from16 v30, v14

    const/4 v0, 0x0

    .line 16
    :goto_5
    invoke-static {v1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v5

    :goto_6
    move-object v2, v0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_6
    move-object/from16 v26, v6

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move/from16 v19, v13

    move-wide/from16 v30, v14

    const/4 v0, 0x0

    :goto_7
    const-string v1, "msg_messages"

    move-object/from16 v5, v29

    .line 17
    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_c

    move-object/from16 v5, v33

    .line 18
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, p0

    move-wide/from16 v14, v30

    invoke-virtual {v13, v4, v14, v15}, Le/a/m0/i0;->b(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_b

    .line 19
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v5, v32

    .line 20
    invoke-static {v12, v5}, Le/a/p5/s0/g;->E0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v5, "group_id_day"

    .line 21
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_8

    :cond_7
    move-object v13, v12

    move-object/from16 v34, v26

    goto :goto_9

    :cond_8
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v16

    if-nez v5, :cond_7

    .line 22
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v7, v28

    .line 23
    invoke-static {v12, v7}, Le/a/p5/s0/g;->q0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const/4 v7, 0x5

    if-ne v10, v7, :cond_9

    const-string v7, "info2"

    .line 24
    invoke-static {v12, v7}, Le/a/p5/s0/g;->q0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v16, v7

    goto :goto_8

    :cond_9
    move/from16 v16, v19

    .line 25
    :goto_8
    new-instance v7, Le/a/m0/c;

    invoke-direct {v7, v4, v5, v6}, Le/a/m0/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;J)V

    move-object/from16 v5, v27

    .line 26
    invoke-static {v12, v5}, Le/a/p5/s0/g;->E0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v11, v26

    .line 27
    invoke-static {v12, v11}, Le/a/p5/s0/g;->q0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object v5, v7

    move-wide v6, v14

    move-object/from16 v34, v11

    move/from16 v11, v17

    move-object v13, v12

    move/from16 v12, v16

    .line 28
    :try_start_4
    invoke-virtual/range {v5 .. v12}, Le/a/m0/c;->g(JJIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_a

    .line 29
    :goto_9
    invoke-static {v13, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object/from16 v7, v20

    goto :goto_b

    :cond_a
    move-object v13, v12

    .line 30
    invoke-static {v13, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v3

    :catchall_4
    move-exception v0

    move-object v13, v12

    :goto_a
    move-object v1, v0

    .line 31
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    invoke-static {v13, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_b
    move-object/from16 v34, v26

    move-object v7, v0

    .line 32
    :goto_b
    invoke-static {}, Le/a/b0/q/g0;->z()Landroid/net/Uri;

    move-result-object v0

    move-object/from16 v5, p1

    invoke-virtual {v5, v0}, Le/a/b0/i/c;->i(Landroid/net/Uri;)V

    if-eqz v7, :cond_c

    .line 33
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v34

    .line 34
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 35
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-eqz v0, :cond_c

    new-array v0, v2, [Ljava/lang/String;

    .line 36
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v19

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v18

    const-string v2, "(status & 2) != 0 AND conversation_id=? AND _id !=?"

    .line 37
    invoke-virtual {v4, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_c
    return v3
.end method

.method public final b(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;
    .locals 13

    const-string v0, "conversation_id"

    const-string v1, "date"

    const-string v2, "transport"

    const-string v3, "status"

    const-string v4, "info2"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    .line 2
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v9, v1

    const-string v6, "msg_messages"

    const-string v8, "(_id=?)"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p1

    .line 3
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
