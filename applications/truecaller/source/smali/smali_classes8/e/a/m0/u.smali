.class public final Le/a/m0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$f;


# instance fields
.field public final a:Le/a/a/i0;


# direct methods
.method public constructor <init>(Le/a/a/i0;)V
    .locals 1

    const-string v0, "messagingSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/m0/u;->a:Le/a/a/i0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "I)",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Mention;",
            ">;"
        }
    .end annotation

    const-string v1, "_id"

    const-string v2, "im_id"

    const-string v3, "m_offset"

    const-string v4, "m_length"

    const-string v5, "private_name"

    const-string v6, "public_name"

    .line 1
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x1

    new-array v11, v0, [Ljava/lang/String;

    .line 2
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v11, v2

    const-string v8, "msg_im_mentions"

    const-string v10, "message_id = ?"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "m_offset ASC"

    move-object/from16 v7, p1

    .line 3
    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 4
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    new-instance v5, Lcom/truecaller/messaging/data/types/Mention;

    .line 7
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 8
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v6, "getString(1)"

    invoke-static {v9, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    .line 9
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v6, 0x3

    .line 10
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v6, 0x4

    .line 11
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v6, "getString(4)"

    invoke-static {v12, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x5

    .line 12
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v6, "getString(5)"

    invoke-static {v13, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v5

    .line 13
    invoke-direct/range {v6 .. v13}, Lcom/truecaller/messaging/data/types/Mention;-><init>(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v1, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v3, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 15
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_1
    :goto_1
    return-object v3
.end method

.method public c(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    const-string v3, "provider"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "helper"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "uri"

    move-object/from16 v4, p3

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "values"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "provider.database"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "msg_im_mentions"

    const/4 v5, 0x0

    .line 2
    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-string v6, "message_id"

    .line 3
    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "values.getAsInteger(ImMentionsTable.MESSAGE_ID)"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v6, -0x1

    if-eq v14, v6, :cond_2

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    move-object/from16 v15, p0

    .line 4
    invoke-virtual {v15, v3, v14}, Le/a/m0/u;->a(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {v6}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v6

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    move-object v13, v6

    const-string v6, "im_id"

    .line 5
    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "m_offset"

    .line 6
    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "m_length"

    .line 7
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "private_name"

    .line 8
    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v8, "public_name"

    .line 9
    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    new-instance v11, Lcom/truecaller/messaging/data/types/Mention;

    const-string v8, "imId"

    invoke-static {v9, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "offset"

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v6, "length"

    invoke-static {v7, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const-string v6, "privateName"

    invoke-static {v12, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "publicName"

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v11

    move-wide v7, v4

    move-object v15, v11

    move/from16 v11, v16

    move-object v1, v13

    move-object v13, v2

    invoke-direct/range {v6 .. v13}, Lcom/truecaller/messaging/data/types/Mention;-><init>(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x0

    new-array v7, v6, [Lcom/truecaller/messaging/data/types/Mention;

    .line 12
    invoke-interface {v1, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v7, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v1, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, [Lcom/truecaller/messaging/data/types/Mention;

    const-string v7, "$this$mentionsToJson"

    .line 13
    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v7, Le/m/e/k;

    invoke-direct {v7}, Le/m/e/k;-><init>()V

    const-class v8, [Lcom/truecaller/messaging/data/types/Mention;

    invoke-virtual {v7, v1, v8}, Le/m/e/k;->n(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "Gson().toJson(this, Array<Mention>::class.java)"

    invoke-static {v1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "info11"

    .line 15
    invoke-virtual {v2, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    .line 16
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v8, "msg_messages"

    const-string v9, "_id = ?"

    .line 17
    invoke-virtual {v3, v8, v2, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    move v6, v1

    :cond_1
    if-eqz v6, :cond_2

    .line 18
    invoke-static {}, Le/a/b0/q/g0;->y()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/b0/i/c;->i(Landroid/net/Uri;)V

    :cond_2
    move-object/from16 v0, p2

    .line 19
    invoke-virtual {v0, v4, v5}, Le/a/b0/i/e/a;->a(J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "helper.getContentUri(ins\u2026abase, provider, values))"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
