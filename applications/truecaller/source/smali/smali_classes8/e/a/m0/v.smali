.class public final Le/a/m0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 19

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "provider"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "helper"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "uri"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "values"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "provider.database"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "raw_message_id"

    .line 2
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const-string v1, "msg_messages"

    const-string v7, "_id"

    const-string v8, "transport = 2 AND raw_id = ?"

    .line 3
    invoke-static {v3, v1, v7, v8, v5}, Le/a/p5/s0/g;->U0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v7, -0x1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 4
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v5, "message_id"

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "from_peer_id"

    .line 5
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "values.getAsString(ImReactionsTable.FROM_PEER_ID)"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v11, v5, [Ljava/lang/String;

    .line 6
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    aput-object v1, v11, v4

    const-string v12, "msg_im_reactions"

    const-string v13, "send_date"

    const-string v14, "message_id = ? AND from_peer_id = ?"

    invoke-static {v3, v12, v13, v14, v11}, Le/a/p5/s0/g;->U0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 7
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    const-string v13, "values.getAsLong(ImReactionsTable.DATE)"

    invoke-static {v11, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v11, v15, v17

    if-gez v11, :cond_4

    new-array v5, v5, [Ljava/lang/String;

    .line 8
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    aput-object v1, v5, v4

    invoke-virtual {v3, v12, v14, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    const-string v1, "emoji"

    .line 9
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v6

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v3, v12, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 11
    :cond_4
    :goto_1
    invoke-virtual {v0, v7, v8}, Le/a/b0/i/e/a;->a(J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "helper.getContentUri(ins\u2026r.database, uri, values))"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 12
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
