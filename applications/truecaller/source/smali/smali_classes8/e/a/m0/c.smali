.class public final Le/a/m0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/m0/c$a;
    }
.end annotation


# instance fields
.field public final a:[Ljava/lang/String;

.field public final b:Landroid/database/sqlite/SQLiteDatabase;

.field public final c:J


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 8

    const-string v0, "db"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/m0/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    iput-wide p2, p0, Le/a/m0/c;->c:J

    const-string v1, "_id"

    const-string v2, "transport"

    const-string v3, "status"

    const-string v4, "date"

    const-string v5, "group_id_day"

    const-string v6, "group_id_minute"

    const-string v7, "info2"

    .line 2
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/m0/c;->a:[Ljava/lang/String;

    return-void
.end method

.method public static e(Le/a/m0/c;JJJIIII)V
    .locals 16

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move/from16 v10, p7

    and-int/lit8 v0, p10, 0x20

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    move v12, v11

    goto :goto_0

    :cond_0
    move/from16 v12, p9

    :goto_0
    cmp-long v0, v8, p3

    if-nez v0, :cond_1

    goto/16 :goto_9

    .line 1
    :cond_1
    iget-wide v1, v7, Le/a/m0/c;->c:J

    move-object/from16 v0, p0

    move-wide/from16 v3, p5

    move-wide/from16 v5, p1

    invoke-virtual/range {v0 .. v6}, Le/a/m0/c;->h(JJJ)Le/a/m0/c$a;

    move-result-object v13

    if-eqz v13, :cond_b

    .line 2
    iget v0, v13, Le/a/m0/c$a;->b:I

    const/4 v14, 0x5

    if-eq v0, v14, :cond_2

    goto/16 :goto_7

    .line 3
    :cond_2
    iget-wide v1, v7, Le/a/m0/c;->c:J

    move-object/from16 v0, p0

    move-wide/from16 v3, p5

    move-wide/from16 v5, p1

    invoke-virtual/range {v0 .. v6}, Le/a/m0/c;->i(JJJ)Le/a/m0/c$a;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 4
    invoke-virtual {v7, v15, v13}, Le/a/m0/c;->c(Le/a/m0/c$a;Le/a/m0/c$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v7, v15}, Le/a/m0/c;->a(Le/a/m0/c$a;)J

    move-result-wide v1

    invoke-virtual {v7, v13}, Le/a/m0/c;->a(Le/a/m0/c$a;)J

    move-result-wide v3

    move-object/from16 v0, p0

    move-wide/from16 v5, p1

    invoke-virtual/range {v0 .. v6}, Le/a/m0/c;->l(JJJ)V

    .line 6
    invoke-virtual {v7, v15, v13}, Le/a/m0/c;->d(Le/a/m0/c$a;Le/a/m0/c$a;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {v7, v15}, Le/a/m0/c;->b(Le/a/m0/c$a;)J

    move-result-wide v0

    invoke-virtual {v7, v13}, Le/a/m0/c;->b(Le/a/m0/c$a;)J

    move-result-wide v2

    invoke-virtual {v7, v0, v1, v2, v3}, Le/a/m0/c;->m(JJ)V

    goto/16 :goto_7

    :cond_3
    if-ne v10, v14, :cond_b

    const/4 v15, 0x1

    if-ne v10, v14, :cond_7

    .line 8
    iget v0, v13, Le/a/m0/c$a;->b:I

    if-eq v0, v14, :cond_4

    goto :goto_3

    :cond_4
    if-ne v12, v15, :cond_5

    move v0, v15

    goto :goto_1

    :cond_5
    move v0, v11

    .line 9
    :goto_1
    iget v1, v13, Le/a/m0/c$a;->g:I

    if-ne v1, v15, :cond_6

    move v1, v15

    goto :goto_2

    :cond_6
    move v1, v11

    :goto_2
    if-ne v0, v1, :cond_7

    move v0, v15

    goto :goto_4

    :cond_7
    :goto_3
    move v0, v11

    :goto_4
    if-eqz v0, :cond_b

    .line 10
    iget-wide v1, v13, Le/a/m0/c$a;->a:J

    .line 11
    invoke-virtual {v7, v13}, Le/a/m0/c;->a(Le/a/m0/c$a;)J

    move-result-wide v3

    move-object/from16 v0, p0

    move-wide/from16 v5, p1

    invoke-virtual/range {v0 .. v6}, Le/a/m0/c;->l(JJJ)V

    .line 12
    iget v0, v13, Le/a/m0/c$a;->b:I

    if-ne v0, v14, :cond_9

    if-eq v10, v14, :cond_8

    goto :goto_5

    .line 13
    :cond_8
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0, v8, v9}, Lw3/b/a/b;-><init>(J)V

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-virtual {v0, v1}, Lw3/b/a/e0/a;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DateTime(date).toString(\"yyyy-MM-dd HH:mm\")"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-wide v3, v13, Le/a/m0/c$a;->d:J

    .line 15
    new-instance v5, Lw3/b/a/b;

    invoke-direct {v5, v3, v4}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v5, v1}, Lw3/b/a/e0/a;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 17
    iget v0, v13, Le/a/m0/c$a;->c:I

    move/from16 v6, p8

    if-ne v6, v0, :cond_a

    .line 18
    iget v0, v13, Le/a/m0/c$a;->g:I

    if-ne v12, v0, :cond_a

    move v11, v15

    goto :goto_6

    :cond_9
    :goto_5
    move/from16 v6, p8

    :cond_a
    :goto_6
    if-eqz v11, :cond_c

    .line 19
    iget-wide v0, v13, Le/a/m0/c$a;->a:J

    .line 20
    invoke-virtual {v7, v13}, Le/a/m0/c;->b(Le/a/m0/c$a;)J

    move-result-wide v2

    invoke-virtual {v7, v0, v1, v2, v3}, Le/a/m0/c;->m(JJ)V

    goto :goto_8

    :cond_b
    :goto_7
    move/from16 v6, p8

    :cond_c
    :goto_8
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p3

    move/from16 v5, p7

    move/from16 v6, p8

    move v7, v12

    .line 21
    invoke-virtual/range {v0 .. v7}, Le/a/m0/c;->g(JJIII)V

    :goto_9
    return-void
.end method


# virtual methods
.method public final a(Le/a/m0/c$a;)J
    .locals 4

    .line 1
    iget-wide v0, p1, Le/a/m0/c$a;->e:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2
    iget-wide v0, p1, Le/a/m0/c$a;->a:J

    :cond_0
    return-wide v0
.end method

.method public final b(Le/a/m0/c$a;)J
    .locals 4

    .line 1
    iget-wide v0, p1, Le/a/m0/c$a;->f:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2
    iget-wide v0, p1, Le/a/m0/c$a;->a:J

    :cond_0
    return-wide v0
.end method

.method public final c(Le/a/m0/c$a;Le/a/m0/c$a;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    iget v1, p1, Le/a/m0/c$a;->b:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    iget v1, p2, Le/a/m0/c$a;->b:I

    if-eq v1, v2, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    iget p1, p1, Le/a/m0/c$a;->g:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    iget p2, p2, Le/a/m0/c$a;->g:I

    if-ne p2, v1, :cond_3

    move p2, v1

    goto :goto_1

    :cond_3
    move p2, v0

    :goto_1
    if-ne p1, p2, :cond_4

    move v0, v1

    :cond_4
    :goto_2
    return v0
.end method

.method public final d(Le/a/m0/c$a;Le/a/m0/c$a;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    iget v1, p2, Le/a/m0/c$a;->b:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    iget v1, p1, Le/a/m0/c$a;->b:I

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-wide v1, p1, Le/a/m0/c$a;->d:J

    .line 3
    new-instance v3, Lw3/b/a/b;

    invoke-direct {v3, v1, v2}, Lw3/b/a/b;-><init>(J)V

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-virtual {v3, v1}, Lw3/b/a/e0/a;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DateTime(date).toString(\"yyyy-MM-dd HH:mm\")"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-wide v4, p2, Le/a/m0/c$a;->d:J

    .line 5
    new-instance v6, Lw3/b/a/b;

    invoke-direct {v6, v4, v5}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v6, v1}, Lw3/b/a/e0/a;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v2, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget v1, p1, Le/a/m0/c$a;->c:I

    iget v2, p2, Le/a/m0/c$a;->c:I

    if-ne v1, v2, :cond_2

    .line 8
    iget p1, p1, Le/a/m0/c$a;->g:I

    iget p2, p2, Le/a/m0/c$a;->g:I

    if-ne p1, p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public final f(JLandroid/content/ContentValues;)V
    .locals 15

    move-object/from16 v0, p3

    const-string v1, "contentValues"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "date"

    .line 1
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "transport"

    .line 2
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "status"

    .line 3
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "contentValues.getAsInteger(STATUS)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    const-string v5, "info2"

    .line 5
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7
    :goto_1
    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v1, "historyType"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object v7, p0

    move-wide/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Le/a/m0/c;->g(JJIII)V

    return-void
.end method

.method public final g(JJIII)V
    .locals 22

    move-object/from16 v7, p0

    .line 1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v9, "group_id_day"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3
    new-instance v5, Le/a/m0/c$a;

    const-wide/16 v17, -0x1

    const-wide/16 v19, -0x1

    move-object v10, v5

    move-wide/from16 v11, p1

    move/from16 v13, p5

    move/from16 v14, p6

    move-wide/from16 v15, p3

    move/from16 v21, p7

    invoke-direct/range {v10 .. v21}, Le/a/m0/c$a;-><init>(JIIJJJI)V

    .line 4
    iget-wide v1, v7, Le/a/m0/c;->c:J

    move-object/from16 v0, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Le/a/m0/c;->i(JJJ)Le/a/m0/c$a;

    move-result-object v11

    .line 5
    iget v0, v10, Le/a/m0/c$a;->b:I

    const/4 v12, 0x5

    if-eq v0, v12, :cond_1

    if-eqz v11, :cond_0

    iget v0, v11, Le/a/m0/c$a;->b:I

    if-eq v0, v12, :cond_1

    :cond_0
    return-void

    .line 6
    :cond_1
    iget-wide v1, v7, Le/a/m0/c;->c:J

    move-object/from16 v0, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Le/a/m0/c;->h(JJJ)Le/a/m0/c$a;

    move-result-object v13

    .line 7
    invoke-virtual {v7, v10, v11}, Le/a/m0/c;->c(Le/a/m0/c$a;Le/a/m0/c$a;)Z

    move-result v0

    .line 8
    invoke-virtual {v7, v10, v13}, Le/a/m0/c;->c(Le/a/m0/c$a;Le/a/m0/c$a;)Z

    move-result v1

    .line 9
    iget v2, v10, Le/a/m0/c$a;->b:I

    const-string v5, "msg_messages"

    const/4 v6, 0x1

    const/16 v16, 0x0

    if-ne v2, v12, :cond_5

    if-eqz v11, :cond_2

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {v7, v11}, Le/a/m0/c;->a(Le/a/m0/c$a;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v0, v5

    move v12, v6

    goto/16 :goto_1

    :cond_2
    if-eqz v13, :cond_3

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 11
    invoke-virtual {v7, v13}, Le/a/m0/c;->a(Le/a/m0/c$a;)J

    move-result-wide v3

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object v9, v5

    move v12, v6

    move-wide/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Le/a/m0/c;->l(JJJ)V

    goto :goto_0

    :cond_3
    move v12, v6

    if-eqz v11, :cond_4

    if-eqz v13, :cond_4

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v7, v11}, Le/a/m0/c;->a(Le/a/m0/c$a;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 13
    invoke-virtual {v7, v11}, Le/a/m0/c;->a(Le/a/m0/c$a;)J

    move-result-wide v1

    invoke-virtual {v7, v13}, Le/a/m0/c;->a(Le/a/m0/c$a;)J

    move-result-wide v3

    move-object/from16 v0, p0

    move-object v9, v5

    move-wide/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Le/a/m0/c;->l(JJJ)V

    goto :goto_0

    :cond_4
    move-object v9, v5

    :goto_0
    move-object v0, v9

    goto :goto_1

    :cond_5
    move-object v0, v5

    move v12, v6

    if-eqz v13, :cond_7

    if-eqz v11, :cond_7

    .line 14
    invoke-virtual {v7, v13, v11}, Le/a/m0/c;->c(Le/a/m0/c$a;Le/a/m0/c$a;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 15
    iget-wide v1, v13, Le/a/m0/c$a;->a:J

    .line 16
    invoke-virtual {v7, v11}, Le/a/m0/c;->a(Le/a/m0/c$a;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_6

    goto :goto_1

    .line 17
    :cond_6
    iget-object v5, v7, Le/a/m0/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 19
    iget-wide v14, v7, Le/a/m0/c;->c:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    move-wide/from16 v2, p3

    invoke-virtual {v7, v2, v3}, Le/a/m0/c;->j(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "conversation_id=? AND group_id_day=? AND date >=? AND date<?"

    .line 20
    invoke-virtual {v5, v0, v6, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 21
    :cond_7
    :goto_1
    iget-wide v1, v10, Le/a/m0/c$a;->a:J

    .line 22
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "group_id_minute"

    invoke-virtual {v8, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 23
    invoke-virtual {v7, v10, v11}, Le/a/m0/c;->d(Le/a/m0/c$a;Le/a/m0/c$a;)Z

    move-result v1

    .line 24
    invoke-virtual {v7, v10, v13}, Le/a/m0/c;->d(Le/a/m0/c$a;Le/a/m0/c$a;)Z

    move-result v3

    .line 25
    iget v4, v10, Le/a/m0/c$a;->b:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_a

    if-eqz v11, :cond_8

    if-eqz v1, :cond_8

    if-nez v3, :cond_8

    .line 26
    invoke-virtual {v7, v11}, Le/a/m0/c;->b(Le/a/m0/c$a;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2

    :cond_8
    if-eqz v13, :cond_9

    if-eqz v3, :cond_9

    if-nez v1, :cond_9

    .line 27
    iget-wide v1, v10, Le/a/m0/c$a;->a:J

    .line 28
    invoke-virtual {v7, v13}, Le/a/m0/c;->b(Le/a/m0/c$a;)J

    move-result-wide v3

    invoke-virtual {v7, v1, v2, v3, v4}, Le/a/m0/c;->m(JJ)V

    goto :goto_2

    :cond_9
    if-eqz v11, :cond_c

    if-eqz v13, :cond_c

    if-eqz v1, :cond_c

    if-eqz v3, :cond_c

    .line 29
    invoke-virtual {v7, v11}, Le/a/m0/c;->b(Le/a/m0/c$a;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 30
    invoke-virtual {v7, v11}, Le/a/m0/c;->b(Le/a/m0/c$a;)J

    move-result-wide v1

    invoke-virtual {v7, v13}, Le/a/m0/c;->b(Le/a/m0/c$a;)J

    move-result-wide v3

    invoke-virtual {v7, v1, v2, v3, v4}, Le/a/m0/c;->m(JJ)V

    goto :goto_2

    :cond_a
    if-eqz v13, :cond_c

    if-eqz v11, :cond_c

    if-eqz v1, :cond_c

    if-eqz v3, :cond_c

    .line 31
    iget-wide v3, v13, Le/a/m0/c$a;->a:J

    .line 32
    invoke-virtual {v7, v11}, Le/a/m0/c;->b(Le/a/m0/c$a;)J

    move-result-wide v5

    .line 33
    iget-wide v9, v10, Le/a/m0/c$a;->d:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_b

    goto :goto_2

    .line 34
    :cond_b
    iget-object v1, v7, Le/a/m0/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 36
    iget-wide v3, v7, Le/a/m0/c;->c:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v16

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "conversation_id=? AND group_id_minute=? AND date >=?"

    .line 37
    invoke-virtual {v1, v0, v11, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 38
    :cond_c
    :goto_2
    iget-object v1, v7, Le/a/m0/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    new-array v2, v12, [Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v16

    const-string v3, "_id=?"

    invoke-virtual {v1, v0, v8, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final h(JJJ)Le/a/m0/c$a;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/m0/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    iget-object v2, p0, Le/a/m0/c;->a:[Ljava/lang/String;

    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    .line 3
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v4, v3

    invoke-virtual {p0, p5, p6}, Le/a/m0/c;->j(J)J

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x1

    aput-object p5, v4, p6

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, v4, p4

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v4, p2

    const-string v1, "msg_messages"

    const-string v3, "date >=? AND date <? AND _id !=? AND conversation_id=? AND (status & 2)=0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date ASC, sequence_number ASC LIMIT 1"

    .line 4
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Le/a/m0/c;->k(Landroid/database/Cursor;)Le/a/m0/c$a;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, p2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p3

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    invoke-static {p1, p2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    :cond_0
    return-object p2
.end method

.method public final i(JJJ)Le/a/m0/c$a;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/m0/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    iget-object v2, p0, Le/a/m0/c;->a:[Ljava/lang/String;

    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    .line 3
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v4, v3

    .line 4
    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1, p5, p6}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v1}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object p5

    const-string p6, "DateTime(this).withTimeAtStartOfDay()"

    invoke-static {p5, p6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-wide p5, p5, Lw3/b/a/e0/e;->a:J

    .line 6
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x1

    aput-object p5, v4, p6

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, v4, p4

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v4, p2

    const-string v1, "msg_messages"

    const-string v3, "date<=? AND date>=? AND _id !=? AND conversation_id=? AND (status & 2)=0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date DESC, sequence_number DESC LIMIT 1"

    .line 7
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Le/a/m0/c;->k(Landroid/database/Cursor;)Le/a/m0/c$a;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, p2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p3

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    invoke-static {p1, p2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    :cond_0
    return-object p2
.end method

.method public final j(J)J
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0, p1, p2}, Lw3/b/a/b;-><init>(J)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lw3/b/a/b;->D(I)Lw3/b/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object p1

    const-string p2, "DateTime(this).plusDays(1).withTimeAtStartOfDay()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-wide p1, p1, Lw3/b/a/e0/e;->a:J

    return-wide p1
.end method

.method public final k(Landroid/database/Cursor;)Le/a/m0/c$a;
    .locals 13

    .line 1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "transport"

    .line 2
    invoke-static {p1, v0}, Le/a/p5/s0/g;->q0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3
    new-instance v0, Le/a/m0/c$a;

    const-string v1, "_id"

    .line 4
    invoke-static {p1, v1}, Le/a/p5/s0/g;->E0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    const-string v1, "status"

    .line 5
    invoke-static {p1, v1}, Le/a/p5/s0/g;->q0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v1, "date"

    .line 6
    invoke-static {p1, v1}, Le/a/p5/s0/g;->E0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    const-string v1, "group_id_day"

    .line 7
    invoke-static {p1, v1}, Le/a/p5/s0/g;->E0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v8

    const-string v1, "group_id_minute"

    .line 8
    invoke-static {p1, v1}, Le/a/p5/s0/g;->E0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v10

    const/4 v1, 0x5

    if-ne v4, v1, :cond_0

    const-string v1, "info2"

    .line 9
    invoke-static {p1, v1}, Le/a/p5/s0/g;->q0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move v12, p1

    move-object v1, v0

    .line 10
    invoke-direct/range {v1 .. v12}, Le/a/m0/c$a;-><init>(JIIJJJI)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final l(JJJ)V
    .locals 4

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Le/a/m0/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id_day"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    .line 3
    iget-wide v2, p0, Le/a/m0/c;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, p2

    const/4 p2, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 4
    new-instance p3, Lw3/b/a/b;

    invoke-direct {p3, p5, p6}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {p3}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object p3

    const-string p4, "DateTime(this).withTimeAtStartOfDay()"

    invoke-static {p3, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-wide p3, p3, Lw3/b/a/e0/e;->a:J

    .line 6
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    invoke-virtual {p0, p5, p6}, Le/a/m0/c;->j(J)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "msg_messages"

    const-string p3, "conversation_id=? AND group_id_day=? AND date>=? AND date<?"

    .line 7
    invoke-virtual {v0, p2, v1, p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final m(JJ)V
    .locals 4

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Le/a/m0/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id_minute"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    .line 3
    iget-wide v2, p0, Le/a/m0/c;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, p2

    const/4 p2, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "msg_messages"

    const-string p3, "conversation_id=? AND group_id_minute=?"

    .line 4
    invoke-virtual {v0, p2, v1, p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
