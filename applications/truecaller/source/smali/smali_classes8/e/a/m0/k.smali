.class public final Le/a/m0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const-string v4, "provider"

    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "helper"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "uri"

    move-object/from16 v5, p3

    invoke-static {v5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "tracking_type IN (?, ?)"

    .line 2
    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v13, 0x0

    if-eqz v2, :cond_1

    .line 3
    invoke-static/range {p4 .. p4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v13

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v6, 0x1

    :goto_1
    const/16 v15, 0x29

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v5, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v8, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "PHONE_NUMBER"

    const-string v6, "OTHER"

    .line 5
    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    if-eqz v3, :cond_3

    move-object v6, v3

    goto :goto_2

    :cond_3
    new-array v6, v13, [Ljava/lang/String;

    :goto_2
    invoke-static {v5, v6}, Ls1/u/i;->n0(Ljava/util/Collection;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v6, "value"

    .line 6
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    new-array v6, v13, [Ljava/lang/String;

    .line 7
    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    const-string v12, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v5, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v9, v5

    check-cast v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const-string v6, "filters"

    move-object v5, v4

    move-object v14, v12

    move-object/from16 v12, v16

    .line 8
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    .line 9
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 11
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 12
    :cond_4
    invoke-static {v5, v6}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v6, v7

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 13
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v5, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    :goto_4
    if-eqz v6, :cond_6

    goto :goto_5

    .line 14
    :cond_6
    sget-object v6, Ls1/u/s;->a:Ls1/u/s;

    :goto_5
    const/16 v5, 0x1f4

    invoke-static {v6, v5}, Ls1/u/i;->k(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v5

    .line 15
    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 16
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12, v8}, Landroid/content/ContentValues;-><init>(I)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v6, "filter_action"

    invoke-virtual {v12, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "normalized_destination IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    sget-object v22, Le/a/m0/k$a;->b:Le/a/m0/k$a;

    const/16 v23, 0x1f

    move-object/from16 v16, v11

    invoke-static/range {v16 .. v23}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v15}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/String;

    .line 18
    invoke-interface {v11, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    const-string v8, "msg_participants"

    .line 19
    invoke-virtual {v4, v8, v12, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v9, v6

    const/4 v13, 0x0

    const/4 v8, 0x1

    goto :goto_6

    :cond_7
    const-wide/16 v6, 0x0

    cmp-long v5, v9, v6

    if-lez v5, :cond_8

    .line 20
    invoke-static {}, Le/a/m0/a1$k;->H()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Le/a/b0/i/c;->i(Landroid/net/Uri;)V

    .line 21
    invoke-static {}, Le/a/b0/q/g0;->n()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Le/a/b0/i/c;->i(Landroid/net/Uri;)V

    .line 22
    :cond_8
    iget-object v0, v1, Le/a/b0/i/e/a;->h:Ljava/lang/String;

    .line 23
    invoke-virtual {v4, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
