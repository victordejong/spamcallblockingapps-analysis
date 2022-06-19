.class public Le/a/m0/c1/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/c1/h0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 2

    const-string v0, "CREATE TABLE topspammers(_id INTEGER PRIMARY KEY AUTOINCREMENT, value TEXT NOT NULL, label TEXT, count INTEGER, spam_categories TEXT, spam_version INTEGER )"

    const-string v1, "CREATE INDEX idx_topspammers_value ON topspammers (value)"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/16 p4, 0xc

    if-ge p3, p4, :cond_3

    const-string p3, "CREATE TABLE topspammers(_id INTEGER PRIMARY KEY AUTOINCREMENT, value TEXT NOT NULL, label TEXT, count INTEGER, spam_categories TEXT, spam_version INTEGER )"

    .line 1
    invoke-virtual {p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE INDEX idx_topspammers_value ON topspammers (value)"

    .line 2
    invoke-virtual {p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "filterDatabase"

    .line 3
    invoke-virtual {p1, p3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_3

    const/4 p4, 0x0

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1, p3, v0, p4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string p3, "SELECT _id AS _id, value AS value, label AS label, score AS count FROM filterstable WHERE filter_type = 1"

    .line 5
    invoke-virtual {p1, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p3, :cond_1

    .line 6
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 9
    invoke-static {p3, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    const-string v1, "topspammers"

    .line 10
    invoke-virtual {p2, v1, p4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 11
    :cond_0
    :try_start_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 12
    throw p2
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 13
    :cond_1
    :goto_1
    :try_start_4
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catchall_1
    move-exception p2

    move-object p4, p1

    goto :goto_3

    :catch_0
    move-exception p2

    move-object p4, p1

    goto :goto_2

    :catchall_2
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    .line 14
    :goto_2
    :try_start_5
    invoke-static {p2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p4, :cond_3

    .line 15
    :try_start_6
    invoke-interface {p4}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :goto_3
    if-eqz p4, :cond_2

    :try_start_7
    invoke-interface {p4}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 16
    :catch_2
    :cond_2
    throw p2

    :catch_3
    :cond_3
    :goto_4
    return-void
.end method

.method public synthetic c()[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Le/a/m0/c1/g0;->b(Le/a/m0/c1/h0;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
