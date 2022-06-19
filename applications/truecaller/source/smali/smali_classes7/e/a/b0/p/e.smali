.class public final Le/a/b0/p/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/p/d;


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Le/a/b0/p/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/b0/e/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Le/a/b0/p/e;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Le/a/b0/e/f;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/b0/p/e;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/a/b0/p/e;->b:Le/a/b0/e/f;

    return-void
.end method


# virtual methods
.method public a(J)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Le/a/b0/p/c;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le/a/b0/p/e;->a:Landroid/content/Context;

    invoke-static {v0}, Le/a/b0/p/f/d;->a(Landroid/content/Context;)Le/a/b0/i/f/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v0, "_id"

    const-string v10, "name"

    const-string v11, "parent_id"

    const-string v12, "color"

    const-string v13, "image"

    .line 2
    filled-new-array {v0, v10, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    .line 3
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v6, v5

    const-string v3, "available_tags"

    const-string v5, "parent_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id ASC"

    .line 4
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v2, :cond_2

    .line 6
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 8
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 9
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 10
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-le v4, v5, :cond_0

    .line 11
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 12
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    goto :goto_1

    :cond_0
    move-object/from16 v20, v6

    move-object/from16 v21, v20

    .line 13
    :goto_1
    new-instance v4, Le/a/b0/p/c;

    move-object v14, v4

    invoke-direct/range {v14 .. v21}, Le/a/b0/p/c;-><init>(JLjava/lang/String;JLjava/lang/Long;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 15
    :cond_1
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 16
    :try_start_1
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 17
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 18
    throw v0

    :cond_2
    :goto_4
    return-object v3
.end method

.method public b()V
    .locals 19

    const-string v0, "image"

    const-string v1, "color"

    const-string v2, "parent_id"

    const-string v3, "name"

    const-string v4, "_id"

    const/4 v5, 0x0

    move-object/from16 v6, p0

    .line 1
    :try_start_0
    iget-object v7, v6, Le/a/b0/p/e;->a:Landroid/content/Context;

    invoke-static {v7}, Le/a/b0/p/f/d;->a(Landroid/content/Context;)Le/a/b0/i/f/a;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v9, "available_tags"

    .line 2
    filled-new-array {v4, v3, v2, v1, v0}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "_id ASC"

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_1

    .line 3
    :try_start_1
    sget-object v8, Le/a/b0/p/e;->c:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 4
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 6
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 7
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 8
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_0

    .line 9
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 10
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v15, v8

    move-object/from16 v16, v9

    goto :goto_1

    :cond_0
    move-object v15, v5

    move-object/from16 v16, v15

    .line 11
    :goto_1
    new-instance v8, Le/a/b0/p/c;

    move-object v9, v8

    move-wide/from16 v10, v17

    invoke-direct/range {v9 .. v16}, Le/a/b0/p/c;-><init>(JLjava/lang/String;JLjava/lang/Long;Ljava/lang/String;)V

    .line 12
    sget-object v9, Le/a/b0/p/e;->c:Ljava/util/Map;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v7

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v5, v7

    goto :goto_2

    :cond_1
    if-eqz v7, :cond_2

    .line 13
    :try_start_2
    invoke-interface {v7}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 14
    :goto_2
    :try_start_3
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_2

    .line 15
    :try_start_4
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_2
    :goto_3
    return-void

    :goto_4
    if-eqz v5, :cond_3

    :try_start_5
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 16
    :catch_3
    :cond_3
    throw v0
.end method

.method public c()Z
    .locals 12

    const-string v0, "available_tags"

    const-string v1, "tagsEntityTag"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {v1}, Le/a/n/g0;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {}, Le/a/n/g0;->S()Le/a/b0/p/g/b;

    move-result-object v4

    invoke-interface {v4, v3}, Le/a/b0/p/g/b;->c(Ljava/lang/String;)Lx3/b;

    move-result-object v3

    .line 3
    invoke-interface {v3}, Lx3/b;->execute()Lx3/a0;

    move-result-object v3

    .line 4
    iget-object v4, v3, Lx3/a0;->a:Lu3/k0;

    .line 5
    iget v4, v4, Lu3/k0;->e:I

    const/16 v5, 0x130

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    return v6

    .line 6
    :cond_0
    invoke-virtual {v3}, Lx3/a0;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7
    iget-object v4, v3, Lx3/a0;->b:Ljava/lang/Object;

    .line 8
    check-cast v4, Lcom/truecaller/common/tag/network/TagRestModel$TagsResponse;

    if-eqz v4, :cond_3

    iget-object v5, v4, Lcom/truecaller/common/tag/network/TagRestModel$TagsResponse;->data:Ljava/util/List;

    if-nez v5, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v5, p0, Le/a/b0/p/e;->a:Landroid/content/Context;

    invoke-static {v5}, Le/a/b0/p/f/d;->a(Landroid/content/Context;)Le/a/b0/i/f/a;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    :try_start_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v7, 0x0

    .line 11
    :try_start_2
    invoke-virtual {v5, v0, v7, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 12
    iget-object v4, v4, Lcom/truecaller/common/tag/network/TagRestModel$TagsResponse;->data:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/truecaller/common/tag/network/TagRestModel$Tag;

    .line 13
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "_id"

    .line 14
    iget v11, v8, Lcom/truecaller/common/tag/network/TagRestModel$Tag;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "name"

    .line 15
    iget-object v11, v8, Lcom/truecaller/common/tag/network/TagRestModel$Tag;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "parent_id"

    .line 16
    iget v11, v8, Lcom/truecaller/common/tag/network/TagRestModel$Tag;->parentId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "image"

    .line 17
    iget-object v11, v8, Lcom/truecaller/common/tag/network/TagRestModel$Tag;->iconUrl:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "color"

    .line 18
    iget-object v8, v8, Lcom/truecaller/common/tag/network/TagRestModel$Tag;->color:Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v5, v0, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 22
    :try_start_4
    invoke-virtual {p0}, Le/a/b0/p/e;->b()V

    const-string v0, "tagsDownloadedAtLeastOnce"

    .line 23
    invoke-static {v0, v6}, Le/a/n/g0;->v0(Ljava/lang/String;Z)V

    .line 24
    iget-object v0, v3, Lx3/a0;->a:Lu3/k0;

    .line 25
    iget-object v0, v0, Lu3/k0;->g:Lu3/z;

    const-string v3, "etag"

    .line 26
    invoke-virtual {v0, v3}, Lu3/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Le/a/n/g0;->B0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    return v6

    :catchall_0
    move-exception v0

    .line 27
    :try_start_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 28
    throw v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_0
    :cond_3
    :goto_1
    return v2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 29
    :goto_2
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    return v2
.end method

.method public d()Z
    .locals 1

    .line 1
    sget-object v0, Le/a/b0/p/e;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Le/a/b0/p/e;->a:Landroid/content/Context;

    invoke-static {v2}, Le/a/b0/p/f/d;->a(Landroid/content/Context;)Le/a/b0/i/f/a;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v4, "user_tags"

    const-string v5, "_id"

    const-string v6, "normalized_number"

    const-string v7, "tag_id"

    const-string v8, "tag_id_2"

    const-string v9, "context"

    const-string v10, "search_type"

    const-string v11, "timestamp"

    .line 2
    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    :catch_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    .line 6
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 7
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x3

    .line 8
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x4

    .line 9
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x5

    .line 10
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x6

    .line 11
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 12
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v6}, Ljava/util/ArrayList;-><init>(I)V

    if-lez v8, :cond_0

    .line 13
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-lez v7, :cond_1

    .line 14
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v6, "\\+"

    const-string v7, ""

    .line 15
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16
    new-instance v6, Lcom/truecaller/common/tag/network/TagRestModel$SetTagsRequest;

    invoke-direct {v6}, Lcom/truecaller/common/tag/network/TagRestModel$SetTagsRequest;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/truecaller/common/tag/network/TagRestModel$SetTagsRequest;->phoneNumber:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    iput-object v13, v6, Lcom/truecaller/common/tag/network/TagRestModel$SetTagsRequest;->tagIds:Ljava/util/List;

    if-lez v9, :cond_2

    .line 19
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v6, Lcom/truecaller/common/tag/network/TagRestModel$SetTagsRequest;->context:Ljava/lang/Integer;

    :cond_2
    if-lez v10, :cond_3

    .line 20
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v6, Lcom/truecaller/common/tag/network/TagRestModel$SetTagsRequest;->searchType:Ljava/lang/Integer;

    :cond_3
    const-wide/16 v7, 0x0

    cmp-long v5, v11, v7

    if-lez v5, :cond_4

    .line 21
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v6, Lcom/truecaller/common/tag/network/TagRestModel$SetTagsRequest;->timestamp:Ljava/lang/Long;

    .line 22
    :cond_4
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_6

    .line 25
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v6

    .line 26
    :cond_6
    :try_start_3
    invoke-static {}, Le/a/n/g0;->S()Le/a/b0/p/g/b;

    move-result-object v5

    invoke-interface {v5, v3}, Le/a/b0/p/g/b;->a(Ljava/util/List;)Lx3/b;

    move-result-object v3

    .line 27
    invoke-interface {v3}, Lx3/b;->execute()Lx3/a0;

    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lx3/a0;->b()Z

    move-result v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_7

    .line 29
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    :cond_7
    :try_start_4
    const-string v3, "user_tags"

    const-string v5, "_id in (%s)"

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, ","

    .line 30
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    const-string v10, "?"

    invoke-static {v9, v10}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 31
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 32
    invoke-virtual {v2, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 33
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v6

    :cond_8
    if-eqz v1, :cond_9

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    .line 34
    :goto_1
    :try_start_5
    invoke-static {v2}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_9

    .line 35
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    return v0

    :goto_3
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 36
    :cond_a
    throw v0
.end method

.method public f()Z
    .locals 17

    const-string v0, "tag_keywords"

    const-string v1, "tagsKeywordsEntityTag"

    .line 1
    :try_start_0
    invoke-static {v1}, Le/a/n/g0;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {}, Le/a/n/g0;->S()Le/a/b0/p/g/b;

    move-result-object v4

    invoke-interface {v4, v3}, Le/a/b0/p/g/b;->b(Ljava/lang/String;)Lx3/b;

    move-result-object v3

    .line 3
    invoke-interface {v3}, Lx3/b;->execute()Lx3/a0;

    move-result-object v3

    .line 4
    iget-object v4, v3, Lx3/a0;->a:Lu3/k0;

    .line 5
    iget v4, v4, Lu3/k0;->e:I

    const/16 v5, 0x130

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    return v6

    .line 6
    :cond_0
    invoke-virtual {v3}, Lx3/a0;->b()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 7
    iget-object v4, v3, Lx3/a0;->b:Ljava/lang/Object;

    .line 8
    check-cast v4, Lcom/truecaller/common/tag/network/TagRestModel$KeywordsResponse;

    if-eqz v4, :cond_5

    iget-object v5, v4, Lcom/truecaller/common/tag/network/TagRestModel$KeywordsResponse;->data:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v5, :cond_1

    goto/16 :goto_1

    :cond_1
    move-object/from16 v5, p0

    .line 9
    :try_start_1
    iget-object v7, v5, Le/a/b0/p/e;->a:Landroid/content/Context;

    invoke-static {v7}, Le/a/b0/p/f/d;->a(Landroid/content/Context;)Le/a/b0/i/f/a;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 10
    :try_start_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v8, 0x0

    .line 11
    :try_start_3
    invoke-virtual {v7, v0, v8, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 12
    iget-object v9, v4, Lcom/truecaller/common/tag/network/TagRestModel$KeywordsResponse;->data:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/truecaller/common/tag/network/TagRestModel$TagKeywords;

    .line 13
    iget-object v11, v10, Lcom/truecaller/common/tag/network/TagRestModel$TagKeywords;->keywords:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/truecaller/common/tag/network/TagRestModel$Keyword;

    .line 14
    iget-object v13, v12, Lcom/truecaller/common/tag/network/TagRestModel$Keyword;->term:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    new-instance v13, Landroid/content/ContentValues;

    const/4 v14, 0x4

    invoke-direct {v13, v14}, Landroid/content/ContentValues;-><init>(I)V

    const-string v14, "term"

    .line 16
    iget-object v15, v12, Lcom/truecaller/common/tag/network/TagRestModel$Keyword;->term:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "relevance"

    move-object/from16 v16, v3

    .line 17
    iget-wide v2, v12, Lcom/truecaller/common/tag/network/TagRestModel$Keyword;->relevance:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "tag_id"

    .line 18
    iget v3, v10, Lcom/truecaller/common/tag/network/TagRestModel$TagKeywords;->tagId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    invoke-virtual {v7, v0, v8, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-object/from16 v3, v16

    goto :goto_0

    :cond_4
    move-object/from16 v16, v3

    const-string v0, "tagsKeywordsVersion"

    .line 20
    iget v2, v4, Lcom/truecaller/common/tag/network/TagRestModel$KeywordsResponse;->version:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Le/a/n/g0;->y0(Ljava/lang/String;J)V

    .line 21
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    :try_start_4
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v0, v16

    .line 23
    :try_start_5
    iget-object v0, v0, Lx3/a0;->a:Lu3/k0;

    .line 24
    iget-object v0, v0, Lu3/k0;->g:Lu3/z;

    const-string v2, "etag"

    .line 25
    invoke-virtual {v0, v2}, Lu3/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Le/a/n/g0;->B0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    return v6

    :catchall_0
    move-exception v0

    .line 26
    :try_start_6
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 27
    throw v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_0
    const/4 v1, 0x0

    return v1

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_5
    :goto_1
    move-object/from16 v5, p0

    const/4 v1, 0x0

    return v1

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    :goto_2
    move-object/from16 v5, p0

    .line 28
    :goto_3
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return v1
.end method

.method public g(Ljava/util/List;Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v0, "name_suggestions"

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Le/a/b0/p/e;->b:Le/a/b0/e/f;

    invoke-interface {v1}, Le/a/b0/e/f;->d()Z

    move-result v1

    const/4 v2, 0x0

    .line 3
    :try_start_0
    iget-object v3, p0, Le/a/b0/p/e;->a:Landroid/content/Context;

    invoke-static {v3}, Le/a/b0/p/f/d;->a(Landroid/content/Context;)Le/a/b0/i/f/a;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v4, v2

    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "number=?"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    aput-object v5, v8, v2

    .line 6
    invoke-virtual {v3, v0, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7
    iget-object v6, p0, Le/a/b0/p/e;->b:Le/a/b0/e/f;

    const/4 v8, 0x2

    if-eq p3, v8, :cond_3

    if-nez v1, :cond_2

    .line 8
    invoke-interface {v6, v5}, Le/a/b0/e/f;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move v7, v2

    :cond_3
    :goto_1
    if-eqz v7, :cond_1

    .line 9
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "number"

    .line 10
    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "name"

    .line 11
    invoke-virtual {v6, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "type"

    .line 12
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v5, 0x0

    .line 13
    invoke-virtual {v3, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p1

    move v2, v4

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_2
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 16
    throw p1
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    move v4, v2

    .line 17
    :goto_3
    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :goto_4
    if-lez v4, :cond_5

    .line 18
    iget-object p1, p0, Le/a/b0/p/e;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/truecaller/common/tag/sync/TagsUploadWorker;->n(Landroid/content/Context;)V

    :cond_5
    return-void
.end method

.method public h(J)Le/a/b0/p/c;
    .locals 1

    .line 1
    sget-object v0, Le/a/b0/p/e;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b0/p/c;

    return-object p1
.end method

.method public i(Ljava/lang/String;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Le/a/b0/p/c;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le/a/b0/p/e;->a:Landroid/content/Context;

    invoke-static {v0}, Le/a/b0/p/f/d;->a(Landroid/content/Context;)Le/a/b0/i/f/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v0, "_id"

    const-string v10, "name"

    const-string v11, "parent_id"

    const-string v12, "color"

    const-string v13, "image"

    .line 2
    filled-new-array {v0, v10, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const-string v3, "%"

    move-object/from16 v5, p1

    invoke-static {v3, v5, v3}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v6, v5

    const-string v3, "available_tags"

    const-string v5, "name LIKE ?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v2, :cond_2

    .line 4
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 6
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 7
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 8
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-le v4, v5, :cond_0

    .line 9
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 10
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    goto :goto_1

    :cond_0
    move-object/from16 v20, v6

    move-object/from16 v21, v20

    .line 11
    :goto_1
    new-instance v4, Le/a/b0/p/c;

    move-object v14, v4

    invoke-direct/range {v14 .. v21}, Le/a/b0/p/c;-><init>(JLjava/lang/String;JLjava/lang/Long;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 13
    :try_start_1
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 15
    throw v0

    :cond_2
    :goto_3
    return-object v3
.end method

.method public j(Ljava/util/List;JJII)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;JJII)V"
        }
    .end annotation

    const-string v0, "user_tags"

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/b0/p/e;->a:Landroid/content/Context;

    invoke-static {v1}, Le/a/b0/p/f/d;->a(Landroid/content/Context;)Le/a/b0/i/f/a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "normalized_number=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 5
    invoke-virtual {v1, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "normalized_number"

    .line 7
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tag_id"

    .line 8
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "tag_id_2"

    .line 9
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-lez p6, :cond_0

    const-string v2, "context"

    .line 10
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    if-lez p7, :cond_1

    const-string v2, "search_type"

    .line 11
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string v2, "timestamp"

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 16
    iget-object p1, p0, Le/a/b0/p/e;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/truecaller/common/tag/sync/TagsUploadWorker;->n(Landroid/content/Context;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 17
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 18
    throw p1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 19
    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public k()Z
    .locals 15

    const-string v0, "type"

    const-string v1, "name"

    const-string v2, "number"

    const-string v3, "_id"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1
    :try_start_0
    iget-object v6, p0, Le/a/b0/p/e;->a:Landroid/content/Context;

    invoke-static {v6}, Le/a/b0/p/f/d;->a(Landroid/content/Context;)Le/a/b0/i/f/a;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v8, "name_suggestions"

    .line 2
    filled-new-array {v3, v2, v1, v0}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v6

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 3
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v8, 0x1

    if-nez v7, :cond_0

    .line 4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return v8

    .line 5
    :cond_0
    :try_start_1
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 6
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 7
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 8
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 11
    new-instance v9, Lcom/truecaller/common/tag/network/NameSuggestionRestModel$NameSuggestion;

    invoke-direct {v9}, Lcom/truecaller/common/tag/network/NameSuggestionRestModel$NameSuggestion;-><init>()V

    .line 12
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/truecaller/common/tag/network/NameSuggestionRestModel$NameSuggestion;->phoneNumber:Ljava/lang/String;

    .line 13
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/truecaller/common/tag/network/NameSuggestionRestModel$NameSuggestion;->name:Ljava/lang/String;

    .line 14
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v9, Lcom/truecaller/common/tag/network/NameSuggestionRestModel$NameSuggestion;->type:I

    .line 15
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {v7}, Le/a/n/g0;->t0(Ljava/util/List;)Lx3/b;

    move-result-object v0

    invoke-interface {v0}, Lx3/b;->execute()Lx3/a0;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lx3/a0;->b()Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_2

    .line 18
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return v4

    :cond_2
    const/4 v0, -0x1

    .line 19
    :try_start_2
    invoke-interface {v5, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 20
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    :goto_1
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "name_suggestions"

    const-string v1, "_id=?"

    new-array v2, v8, [Ljava/lang/String;

    .line 22
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    invoke-virtual {v6, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 23
    :cond_3
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    :try_start_4
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 25
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return v8

    :catchall_0
    move-exception v0

    .line 26
    :try_start_5
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 27
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_4
    if-eqz v5, :cond_5

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 28
    :goto_2
    :try_start_6
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v5, :cond_5

    .line 29
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_5
    return v4

    :goto_4
    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 30
    :cond_6
    throw v0
.end method
