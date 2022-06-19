.class public abstract Lcom/appnext/base/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/base/a/c/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MODE",
        "L:Lcom/appnext/base/a/b/a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 5

    const-string v0, "DatabaseRepo$upsert"

    const/4 v1, 0x0

    const/4 v2, 0x5

    const-wide/16 v3, -0x1

    .line 6
    :try_start_0
    invoke-virtual {p0, p1, v1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 7
    invoke-static {}, Lcom/appnext/base/a/a/a;->L()Lcom/appnext/base/a/a/a;

    sget-object p1, Lcom/appnext/base/a/a/a$a;->Global:Lcom/appnext/base/a/a/a$a;

    invoke-static {p1, p0}, Lcom/appnext/base/a/a/a;->a(Lcom/appnext/base/a/a/a$a;Ljava/lang/Throwable;)V

    .line 8
    invoke-static {v0, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v3

    :catch_0
    move-exception p0

    .line 9
    invoke-static {}, Lcom/appnext/base/a/a/a;->L()Lcom/appnext/base/a/a/a;

    sget-object p1, Lcom/appnext/base/a/a/a$a;->DatabaseOrDiskFull:Lcom/appnext/base/a/a/a$a;

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p2}, Lcom/appnext/base/a/a/a;->a(Lcom/appnext/base/a/a/a$a;Ljava/lang/Throwable;)V

    .line 10
    invoke-static {v0, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v3
.end method

.method public static a(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4

    const-wide/16 v0, -0x1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/appnext/base/a/a/a;->L()Lcom/appnext/base/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/a/a/a;->M()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v2, p0, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    .line 3
    invoke-static {}, Lcom/appnext/base/a/a/a;->L()Lcom/appnext/base/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/a/a/a;->N()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 4
    invoke-static {}, Lcom/appnext/base/a/a/a;->L()Lcom/appnext/base/a/a/a;

    sget-object p1, Lcom/appnext/base/a/a/a$a;->Global:Lcom/appnext/base/a/a/a$a;

    invoke-static {p1, p0}, Lcom/appnext/base/a/a/a;->a(Lcom/appnext/base/a/a/a$a;Ljava/lang/Throwable;)V

    return-wide v0

    :catch_0
    move-exception p0

    .line 5
    invoke-static {}, Lcom/appnext/base/a/a/a;->L()Lcom/appnext/base/a/a/a;

    sget-object p1, Lcom/appnext/base/a/a/a$a;->DatabaseOrDiskFull:Lcom/appnext/base/a/a/a$a;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, v2}, Lcom/appnext/base/a/a/a;->a(Lcom/appnext/base/a/a/a$a;Ljava/lang/Throwable;)V

    return-wide v0
.end method

.method private static a(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 4

    .line 11
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 12
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 15
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception p0

    const-string v0, "DatabaseRepo$covertJsonModelToContentValue"

    .line 16
    invoke-static {v0, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/c/a$a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 50
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    :try_start_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    if-lez v2, :cond_1

    const-string v3, " AND "

    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_1
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appnext/base/a/c/a$a;

    invoke-virtual {v3}, Lcom/appnext/base/a/c/a$a;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "DatabaseRepo$createQuerySelection"

    .line 56
    invoke-static {p1, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "TMODE",
            "L;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 44
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lcom/appnext/base/a/c/a;->b(Landroid/database/Cursor;)Lcom/appnext/base/a/b/a;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v1, "DatabaseRepo$completeFetch"

    .line 49
    invoke-static {v1, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public abstract O()[Ljava/lang/String;
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/c/a$a;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 29
    :try_start_0
    invoke-static {}, Lcom/appnext/base/a/a/a;->L()Lcom/appnext/base/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/base/a/a/a;->M()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 30
    invoke-static {p2, p4}, Lcom/appnext/base/a/c/a;->a([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 31
    :cond_0
    invoke-virtual {v1, p1, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 32
    invoke-static {}, Lcom/appnext/base/a/a/a;->L()Lcom/appnext/base/a/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/base/a/a/a;->N()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 33
    invoke-static {}, Lcom/appnext/base/a/a/a;->L()Lcom/appnext/base/a/a/a;

    sget-object p2, Lcom/appnext/base/a/a/a$a;->Global:Lcom/appnext/base/a/a/a$a;

    new-instance p3, Ljava/lang/Exception;

    invoke-direct {p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p2, p3}, Lcom/appnext/base/a/a/a;->a(Lcom/appnext/base/a/a/a$a;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    invoke-static {}, Lcom/appnext/base/a/a/a;->L()Lcom/appnext/base/a/a/a;

    sget-object p2, Lcom/appnext/base/a/a/a$a;->DatabaseOrDiskFull:Lcom/appnext/base/a/a/a$a;

    new-instance p3, Ljava/lang/Exception;

    invoke-direct {p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p2, p3}, Lcom/appnext/base/a/a/a;->a(Lcom/appnext/base/a/a/a$a;Ljava/lang/Throwable;)V

    const-string p2, "DatabaseRepo$delete"

    .line 35
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONArray;)J
    .locals 6

    const-wide/16 v0, -0x1

    if-eqz p2, :cond_2

    const/4 v2, 0x0

    .line 17
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 18
    invoke-static {}, Lcom/appnext/base/a/a/a;->L()Lcom/appnext/base/a/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appnext/base/a/a/a;->M()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 20
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 21
    invoke-static {v5}, Lcom/appnext/base/a/c/a;->a(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-static {v2, p1, v5}, Lcom/appnext/base/a/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :goto_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 24
    invoke-static {}, Lcom/appnext/base/a/a/a;->L()Lcom/appnext/base/a/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/base/a/a/a;->N()V

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_1
    const-string p2, "DatabaseRepo$upsert"

    .line 25
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    goto :goto_1

    :catchall_1
    move-exception p1

    if-eqz v2, :cond_1

    .line 26
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 27
    invoke-static {}, Lcom/appnext/base/a/a/a;->L()Lcom/appnext/base/a/a/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appnext/base/a/a/a;->N()V

    .line 28
    :cond_1
    throw p1

    :cond_2
    :goto_2
    return-wide v0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/c/a$a;",
            ">;)",
            "Ljava/util/List<",
            "TMODE",
            "L;",
            ">;"
        }
    .end annotation

    .line 36
    :try_start_0
    invoke-static {}, Lcom/appnext/base/a/a/a;->L()Lcom/appnext/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/a/a;->M()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 37
    invoke-virtual {p0}, Lcom/appnext/base/a/c/a;->O()[Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, p5}, Lcom/appnext/base/a/c/a;->a([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, p3

    move-object v8, p4

    .line 38
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Lcom/appnext/base/a/c/a;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    .line 40
    invoke-static {}, Lcom/appnext/base/a/a/a;->L()Lcom/appnext/base/a/a/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appnext/base/a/a/a;->N()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string p2, "DatabaseRepo$fetch"

    .line 41
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract b(Landroid/database/Cursor;)Lcom/appnext/base/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TMODE",
            "L;"
        }
    .end annotation
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/appnext/base/a/c/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)I

    return-void
.end method

.method public final j(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TMODE",
            "L;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/appnext/base/a/a/a;->L()Lcom/appnext/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/a/a;->M()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcom/appnext/base/a/c/a;->O()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    .line 3
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/appnext/base/a/c/a;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/appnext/base/a/a/a;->L()Lcom/appnext/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/a/a;->N()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "DatabaseRepo$fetch"

    .line 6
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
