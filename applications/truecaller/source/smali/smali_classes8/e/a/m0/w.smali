.class public final Le/a/m0/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$h;
.implements Le/a/b0/i/e/a$e;
.implements Le/a/b0/i/e/a$f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string p5, "provider"

    invoke-static {p1, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "helper"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "uri"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    const-string p2, "Update not supported"

    invoke-direct {p1, p2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    const-string v0, "provider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "helper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "uri"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "im_peer_id"

    .line 1
    invoke-virtual {p3, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    .line 2
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 3
    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    const/4 p5, 0x0

    const-string v0, "tc_im_peer_id"

    invoke-virtual {p4, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p5, 0x1

    new-array v0, p5, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v2, "msg_participants"

    const-string v3, "tc_im_peer_id = ?"

    .line 4
    invoke-virtual {p3, v2, p4, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    new-array p3, p5, [Ljava/lang/String;

    aput-object p2, p3, v1

    const-string p2, "msg_im_users"

    const-string p4, "im_peer_id = ?"

    invoke-virtual {p1, p2, p4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 6
    :cond_0
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    const-string p2, "A selection is not supported for delete operations"

    invoke-direct {p1, p2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    const-string p2, "IM ID must be specified"

    invoke-direct {p1, p2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v8, p4

    const-string v2, "provider"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "helper"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "uri"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "values"

    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "normalized_number"

    .line 1
    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "im_peer_id"

    .line 2
    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v9, :cond_1

    if-eqz v11, :cond_0

    goto :goto_0

    :cond_0
    move v2, v13

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v12

    :goto_1
    new-array v3, v13, [Ljava/lang/String;

    .line 3
    invoke-static {v2, v3}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const-string v15, "provider.database"

    invoke-static {v14, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v9, :cond_2

    new-array v6, v12, [Ljava/lang/String;

    aput-object v9, v6, v13

    const/4 v7, 0x5

    const-string v3, "msg_im_users"

    const-string v5, "normalized_number=?"

    move-object v2, v14

    move-object/from16 v4, p4

    .line 5
    invoke-virtual/range {v2 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v11, :cond_3

    new-array v6, v12, [Ljava/lang/String;

    aput-object v11, v6, v13

    const/4 v7, 0x5

    const-string v3, "msg_im_users"

    const-string v5, "im_peer_id=?"

    move-object v2, v14

    move-object/from16 v4, p4

    .line 6
    invoke-virtual/range {v2 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x5

    const-string v4, "msg_im_users"

    .line 7
    invoke-virtual {v14, v4, v2, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 8
    :goto_2
    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v9, :cond_5

    .line 9
    invoke-virtual/range {p1 .. p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v2, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v12, [Ljava/lang/String;

    aput-object v9, v3, v13

    const-string v4, "msg_participants"

    const-string v5, "_id"

    const-string v6, "normalized_destination = ?"

    invoke-static {v2, v4, v5, v6, v3}, Le/a/p5/s0/g;->U0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 10
    :cond_4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 11
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "normalized_destination"

    .line 12
    invoke-virtual {v2, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "tc_im_peer_id"

    .line 13
    invoke-virtual {v2, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Le/a/m0/a1$k;->H()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Le/a/b0/i/d;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_5
    :goto_3
    return-object v1
.end method
