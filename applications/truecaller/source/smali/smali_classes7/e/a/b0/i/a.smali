.class public abstract Le/a/b0/i/a;
.super Le/a/b0/i/c;
.source "SourceFile"


# instance fields
.field public volatile g:Le/a/b0/i/e/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/b0/i/c;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    .line 1
    invoke-virtual {p0}, Le/a/b0/i/a;->r()Le/a/b0/i/e/c;

    move-result-object v0

    .line 2
    iget-object v1, v0, Le/a/b0/i/e/c;->a:Landroid/net/Uri;

    .line 3
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 4
    iget-object v2, v0, Le/a/b0/i/e/c;->b:Landroid/util/SparseArray;

    iget-object v0, v0, Le/a/b0/i/e/c;->c:Landroid/content/UriMatcher;

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Le/a/b0/i/e/a;

    if-eqz v4, :cond_0

    .line 5
    iget-object v2, v4, Le/a/b0/i/e/a;->p:Le/a/b0/i/e/a$d;

    if-eqz v2, :cond_0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 6
    invoke-interface/range {v2 .. v7}, Le/a/b0/i/e/a$d;->a(Le/a/b0/i/a;Le/a/b0/i/e/a;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "dump"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 10
    invoke-static {v0, v1, v1}, Le/a/b0/i/f/b;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 11
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    invoke-static {v0, v1, v2}, Le/a/b0/i/f/b;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Ljava/io/PrintStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 14
    throw p1

    .line 15
    :cond_2
    invoke-virtual {p0}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string v3, "name=?"

    .line 16
    invoke-static {v0, v3, v2}, Le/a/b0/i/f/b;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 17
    :goto_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    invoke-static {v0, v2, v1}, Le/a/b0/i/f/b;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Ljava/io/PrintStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 19
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 20
    throw p1

    .line 21
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2, p3}, Le/a/b0/i/d;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public g(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 13

    move-object v3, p1

    .line 1
    invoke-virtual {p0}, Le/a/b0/i/a;->r()Le/a/b0/i/e/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/a/b0/i/e/c;->a(Landroid/net/Uri;)Le/a/b0/i/e/a;

    move-result-object v2

    .line 2
    iget-object v0, v2, Le/a/b0/i/e/a;->l:Le/a/b0/i/e/a$g;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 3
    invoke-interface/range {v0 .. v8}, Le/a/b0/i/e/a$g;->c(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-boolean v0, v2, Le/a/b0/i/e/a;->d:Z

    if-eqz v0, :cond_5

    .line 5
    iget-boolean v0, v2, Le/a/b0/i/e/a;->f:Z

    if-eqz v0, :cond_1

    const-string v0, "_id=?"

    move-object/from16 v1, p3

    .line 6
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    move-object/from16 v4, p4

    .line 8
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->c([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v6, v0

    move-object v7, v1

    goto :goto_0

    :cond_1
    move-object/from16 v1, p3

    move-object/from16 v4, p4

    move-object v6, v1

    move-object v7, v4

    .line 9
    :goto_0
    iget-boolean v0, v2, Le/a/b0/i/e/a;->g:Z

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 11
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    const-string v1, " WHERE "

    invoke-static {v1, v6}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v3, "SELECT COUNT(*) AS _count FROM "

    .line 12
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 13
    iget-object v4, v2, Le/a/b0/i/e/a;->h:Ljava/lang/String;

    .line 14
    invoke-static {v3, v4, v1}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2

    .line 16
    :cond_3
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 17
    iget-object v1, v2, Le/a/b0/i/e/a;->h:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v1, "limit"

    .line 20
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v0

    move-object v5, p2

    move-object/from16 v10, p5

    move-object/from16 v12, p6

    .line 21
    invoke-virtual/range {v3 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    .line 22
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 24
    iget-object v2, v2, Le/a/b0/i/e/a;->j:Landroid/net/Uri;

    .line 25
    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_4
    return-object v0

    .line 26
    :cond_5
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Cannot read from "

    invoke-static {v1, p1}, Le/d/c/a/a;->s2(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/b0/i/a;->r()Le/a/b0/i/e/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/a/b0/i/e/c;->a(Landroid/net/Uri;)Le/a/b0/i/e/a;

    move-result-object p1

    .line 2
    iget-object p1, p1, Le/a/b0/i/e/a;->i:Ljava/lang/String;

    return-object p1
.end method

.method public l(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Le/a/b0/i/a;->r()Le/a/b0/i/e/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/a/b0/i/e/c;->a(Landroid/net/Uri;)Le/a/b0/i/e/a;

    move-result-object v0

    .line 2
    iget-object v1, v0, Le/a/b0/i/e/a;->o:Le/a/b0/i/e/a$e;

    if-eqz v1, :cond_1

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 3
    invoke-interface/range {v1 .. v6}, Le/a/b0/i/e/a$e;->b(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    const/4 v1, -0x1

    if-eq v7, v1, :cond_1

    .line 4
    iget-object v1, v0, Le/a/b0/i/e/a;->s:Le/a/b0/i/e/a$a;

    if-eqz v1, :cond_0

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 5
    invoke-interface/range {v1 .. v7}, Le/a/b0/i/e/a$a;->a(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v7

    .line 6
    :cond_0
    iget-object p1, v0, Le/a/b0/i/e/a;->k:Ljava/util/Set;

    .line 7
    invoke-virtual {p0, p1}, Le/a/b0/i/c;->j(Ljava/util/Collection;)V

    return v7

    .line 8
    :cond_1
    iget-boolean v1, v0, Le/a/b0/i/e/a;->e:Z

    if-eqz v1, :cond_7

    .line 9
    iget-boolean v1, v0, Le/a/b0/i/e/a;->f:Z

    if-eqz v1, :cond_2

    const-string v1, "_id=?"

    .line 10
    invoke-static {p2, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 11
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 12
    invoke-static {p3, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->c([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    const/4 p3, 0x0

    const-string p2, "1"

    :cond_3
    :goto_0
    move-object v5, p2

    move-object v6, p3

    .line 13
    invoke-virtual {p0}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 14
    iget-object p3, v0, Le/a/b0/i/e/a;->h:Ljava/lang/String;

    .line 15
    invoke-virtual {p2, p3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_5

    .line 16
    iget-boolean p2, v0, Le/a/b0/i/e/a;->d:Z

    if-eqz p2, :cond_4

    .line 17
    iget-object p2, v0, Le/a/b0/i/e/a;->j:Landroid/net/Uri;

    .line 18
    invoke-virtual {p0, p2}, Le/a/b0/i/c;->i(Landroid/net/Uri;)V

    .line 19
    :cond_4
    iget-object p2, v0, Le/a/b0/i/e/a;->k:Ljava/util/Set;

    .line 20
    invoke-virtual {p0, p2}, Le/a/b0/i/c;->j(Ljava/util/Collection;)V

    .line 21
    :cond_5
    iget-object v1, v0, Le/a/b0/i/e/a;->s:Le/a/b0/i/e/a$a;

    if-eqz v1, :cond_6

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    .line 22
    invoke-interface/range {v1 .. v7}, Le/a/b0/i/e/a$a;->a(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v7

    :cond_6
    return v7

    .line 23
    :cond_7
    new-instance p2, Landroid/database/sqlite/SQLiteException;

    const-string p3, "Cannot delete from "

    invoke-static {p3, p1}, Le/d/c/a/a;->s2(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public n(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8

    .line 1
    invoke-virtual {p0}, Le/a/b0/i/a;->r()Le/a/b0/i/e/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/a/b0/i/e/c;->a(Landroid/net/Uri;)Le/a/b0/i/e/a;

    move-result-object v0

    .line 2
    iget-object v1, v0, Le/a/b0/i/e/a;->m:Le/a/b0/i/e/a$f;

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v1, p0, v0, p1, p2}, Le/a/b0/i/e/a$f;->c(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 4
    iget-object v1, v0, Le/a/b0/i/e/a;->q:Le/a/b0/i/e/a$b;

    if-eqz v1, :cond_0

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    .line 5
    invoke-interface/range {v1 .. v6}, Le/a/b0/i/e/a$b;->a(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 6
    :cond_0
    iget-boolean p1, v0, Le/a/b0/i/e/a;->d:Z

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0, v6}, Le/a/b0/i/c;->i(Landroid/net/Uri;)V

    .line 8
    :cond_1
    iget-object p1, v0, Le/a/b0/i/e/a;->k:Ljava/util/Set;

    .line 9
    invoke-virtual {p0, p1}, Le/a/b0/i/c;->j(Ljava/util/Collection;)V

    return-object v6

    .line 10
    :cond_2
    iget-boolean v1, v0, Le/a/b0/i/e/a;->e:Z

    if-eqz v1, :cond_8

    .line 11
    iget-boolean v1, v0, Le/a/b0/i/e/a;->f:Z

    if-nez v1, :cond_7

    const-string v1, "_id"

    .line 12
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_7

    .line 13
    invoke-virtual {p0}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 14
    iget-object v3, v0, Le/a/b0/i/e/a;->h:Ljava/lang/String;

    .line 15
    iget v4, v0, Le/a/b0/i/e/a;->b:I

    .line 16
    invoke-virtual {v2, v3, v1, p2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const-string v7, "Could not insert into "

    if-lez v3, :cond_6

    .line 17
    iget-object v3, v0, Le/a/b0/i/e/a;->j:Landroid/net/Uri;

    .line 18
    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 19
    iget-boolean v1, v0, Le/a/b0/i/e/a;->d:Z

    if-eqz v1, :cond_3

    .line 20
    iget-object v1, v0, Le/a/b0/i/e/a;->j:Landroid/net/Uri;

    .line 21
    invoke-virtual {p0, v1}, Le/a/b0/i/c;->i(Landroid/net/Uri;)V

    .line 22
    :cond_3
    iget-object v1, v0, Le/a/b0/i/e/a;->k:Ljava/util/Set;

    .line 23
    invoke-virtual {p0, v1}, Le/a/b0/i/c;->j(Ljava/util/Collection;)V

    .line 24
    iget-object v1, v0, Le/a/b0/i/e/a;->q:Le/a/b0/i/e/a$b;

    if-eqz v1, :cond_5

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    .line 25
    invoke-interface/range {v1 .. v6}, Le/a/b0/i/e/a$b;->a(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_4

    goto :goto_0

    .line 26
    :cond_4
    new-instance p2, Landroid/database/sqlite/SQLiteException;

    invoke-static {v7, p1}, Le/d/c/a/a;->s2(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    :goto_0
    return-object v6

    .line 27
    :cond_6
    new-instance p2, Landroid/database/sqlite/SQLiteException;

    invoke-static {v7, p1}, Le/d/c/a/a;->s2(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 28
    :cond_7
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot insert into a row, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", values="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_8
    new-instance p2, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Cannot insert into "

    invoke-static {v0, p1}, Le/d/c/a/a;->s2(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10

    .line 1
    invoke-virtual {p0}, Le/a/b0/i/a;->r()Le/a/b0/i/e/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/a/b0/i/e/c;->a(Landroid/net/Uri;)Le/a/b0/i/e/a;

    move-result-object v0

    .line 2
    iget-object v1, v0, Le/a/b0/i/e/a;->n:Le/a/b0/i/e/a$h;

    if-eqz v1, :cond_1

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 3
    invoke-interface/range {v1 .. v7}, Le/a/b0/i/e/a$h;->a(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    const/4 v1, -0x1

    if-eq v9, v1, :cond_1

    .line 4
    iget-object v1, v0, Le/a/b0/i/e/a;->r:Le/a/b0/i/e/a$c;

    if-eqz v1, :cond_0

    .line 5
    check-cast v1, Le/a/m0/r;

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Le/a/m0/r;->a(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    .line 6
    :cond_0
    iget-object p1, v0, Le/a/b0/i/e/a;->k:Ljava/util/Set;

    .line 7
    invoke-virtual {p0, p1}, Le/a/b0/i/c;->j(Ljava/util/Collection;)V

    return v9

    .line 8
    :cond_1
    iget-boolean v1, v0, Le/a/b0/i/e/a;->e:Z

    if-eqz v1, :cond_6

    .line 9
    iget-boolean v1, v0, Le/a/b0/i/e/a;->f:Z

    if-eqz v1, :cond_2

    const-string v1, "_id=?"

    .line 10
    invoke-static {p3, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 11
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 12
    invoke-static {p4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->c([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    :cond_2
    move-object v7, p4

    .line 13
    invoke-virtual {p0}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 14
    iget-object v2, v0, Le/a/b0/i/e/a;->h:Ljava/lang/String;

    .line 15
    iget v6, v0, Le/a/b0/i/e/a;->c:I

    move-object v3, p2

    move-object v4, p3

    move-object v5, v7

    .line 16
    invoke-virtual/range {v1 .. v6}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result p4

    if-lez p4, :cond_4

    .line 17
    iget-boolean v1, v0, Le/a/b0/i/e/a;->d:Z

    if-eqz v1, :cond_3

    .line 18
    iget-object v1, v0, Le/a/b0/i/e/a;->j:Landroid/net/Uri;

    .line 19
    invoke-virtual {p0, v1}, Le/a/b0/i/c;->i(Landroid/net/Uri;)V

    .line 20
    :cond_3
    iget-object v1, v0, Le/a/b0/i/e/a;->k:Ljava/util/Set;

    .line 21
    invoke-virtual {p0, v1}, Le/a/b0/i/c;->j(Ljava/util/Collection;)V

    .line 22
    :cond_4
    iget-object v1, v0, Le/a/b0/i/e/a;->r:Le/a/b0/i/e/a$c;

    if-eqz v1, :cond_5

    .line 23
    check-cast v1, Le/a/m0/r;

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Le/a/m0/r;->a(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    :cond_5
    return p4

    .line 24
    :cond_6
    new-instance p2, Landroid/database/sqlite/SQLiteException;

    const-string p3, "Cannot update "

    invoke-static {p3, p1}, Le/d/c/a/a;->s2(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public r()Le/a/b0/i/e/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b0/i/a;->g:Le/a/b0/i/e/c;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/b0/i/a;->g:Le/a/b0/i/e/c;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/b0/i/a;->s(Landroid/content/Context;)Le/a/b0/i/e/c;

    move-result-object v0

    iput-object v0, p0, Le/a/b0/i/a;->g:Le/a/b0/i/e/c;

    .line 5
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public abstract s(Landroid/content/Context;)Le/a/b0/i/e/c;
.end method
