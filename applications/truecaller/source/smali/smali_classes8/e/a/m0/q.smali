.class public Le/a/m0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$b;


# instance fields
.field public a:Landroid/database/sqlite/SQLiteStatement;

.field public b:Le/a/m0/d1/a;


# direct methods
.method public constructor <init>(Le/a/m0/d1/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/m0/q;->b:Le/a/m0/d1/a;

    return-void
.end method


# virtual methods
.method public a(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6

    const-string p2, "tc_id"

    .line 1
    invoke-virtual {p4, p2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p2, "normalized_number"

    .line 2
    invoke-virtual {p4, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 4
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5
    iget-object p1, p0, Le/a/m0/q;->a:Landroid/database/sqlite/SQLiteStatement;

    if-nez p1, :cond_1

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object p1, p0, Le/a/m0/q;->a:Landroid/database/sqlite/SQLiteStatement;

    if-nez p1, :cond_0

    const-string p1, "SELECT tc_id FROM data WHERE data1=? AND data_type=4"

    .line 8
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    iput-object p1, p0, Le/a/m0/q;->a:Landroid/database/sqlite/SQLiteStatement;

    .line 9
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 10
    :cond_1
    :goto_0
    iget-object p1, p0, Le/a/m0/q;->a:Landroid/database/sqlite/SQLiteStatement;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 11
    :try_start_1
    iget-object p1, p0, Le/a/m0/q;->a:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 13
    invoke-virtual {p4}, Landroid/content/ContentValues;->clear()V

    const-string p2, "tc_id"

    .line 14
    invoke-virtual {p4, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "history"

    const-string v3, "_id=?"

    new-array v4, p3, [Ljava/lang/String;

    const/4 p1, 0x0

    .line 15
    invoke-virtual {p5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 v5, 0x4

    move-object v2, p4

    .line 16
    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    :catch_0
    :cond_2
    iget-object p1, p0, Le/a/m0/q;->b:Le/a/m0/d1/a;

    invoke-interface {p1, p4}, Le/a/m0/d1/a;->a(Landroid/content/ContentValues;)V

    return-object p5
.end method
