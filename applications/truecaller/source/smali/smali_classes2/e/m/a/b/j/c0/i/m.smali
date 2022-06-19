.class public final synthetic Le/m/a/b/j/c0/i/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/c0/i/h0$b;


# instance fields
.field public final synthetic a:Le/m/a/b/j/c0/i/h0;

.field public final synthetic b:Le/m/a/b/j/n;

.field public final synthetic c:Le/m/a/b/j/r;


# direct methods
.method public synthetic constructor <init>(Le/m/a/b/j/c0/i/h0;Le/m/a/b/j/n;Le/m/a/b/j/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/b/j/c0/i/m;->a:Le/m/a/b/j/c0/i/h0;

    iput-object p2, p0, Le/m/a/b/j/c0/i/m;->b:Le/m/a/b/j/n;

    iput-object p3, p0, Le/m/a/b/j/c0/i/m;->c:Le/m/a/b/j/r;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Le/m/a/b/j/c0/i/m;->a:Le/m/a/b/j/c0/i/h0;

    iget-object v1, p0, Le/m/a/b/j/c0/i/m;->b:Le/m/a/b/j/n;

    iget-object v2, p0, Le/m/a/b/j/c0/i/m;->c:Le/m/a/b/j/r;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 1
    invoke-virtual {v0}, Le/m/a/b/j/c0/i/h0;->l()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "PRAGMA page_count"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v3

    .line 2
    invoke-virtual {v0}, Le/m/a/b/j/c0/i/h0;->l()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "PRAGMA page_size"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v5

    mul-long/2addr v5, v3

    .line 3
    iget-object v3, v0, Le/m/a/b/j/c0/i/h0;->d:Le/m/a/b/j/c0/i/b0;

    invoke-virtual {v3}, Le/m/a/b/j/c0/i/b0;->e()J

    move-result-wide v3

    cmp-long v3, v5, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_1

    const-wide/16 v2, 0x1

    .line 4
    sget-object p1, Le/m/a/b/j/a0/a/c$a;->d:Le/m/a/b/j/a0/a/c$a;

    .line 5
    invoke-virtual {v1}, Le/m/a/b/j/n;->h()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v2, v3, p1, v1}, Le/m/a/b/j/c0/i/h0;->j(JLe/m/a/b/j/a0/a/c$a;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_6

    .line 8
    :cond_1
    invoke-virtual {v0, p1, v2}, Le/m/a/b/j/c0/i/h0;->q(Landroid/database/sqlite/SQLiteDatabase;Le/m/a/b/j/r;)Ljava/lang/Long;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    .line 10
    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 11
    invoke-virtual {v2}, Le/m/a/b/j/r;->b()Ljava/lang/String;

    move-result-object v7

    const-string v8, "backend_name"

    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Le/m/a/b/j/r;->d()Le/m/a/b/d;

    move-result-object v7

    invoke-static {v7}, Le/m/a/b/j/f0/a;->a(Le/m/a/b/d;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "priority"

    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "next_request_ms"

    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    invoke-virtual {v2}, Le/m/a/b/j/r;->c()[B

    move-result-object v7

    if-eqz v7, :cond_3

    .line 15
    invoke-virtual {v2}, Le/m/a/b/j/r;->c()[B

    move-result-object v2

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v7, "extras"

    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v2, "transport_contexts"

    .line 16
    invoke-virtual {p1, v2, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 17
    :goto_1
    iget-object v0, v0, Le/m/a/b/j/c0/i/h0;->d:Le/m/a/b/j/c0/i/b0;

    invoke-virtual {v0}, Le/m/a/b/j/c0/i/b0;->d()I

    move-result v0

    .line 18
    invoke-virtual {v1}, Le/m/a/b/j/n;->e()Le/m/a/b/j/m;

    move-result-object v7

    .line 19
    iget-object v7, v7, Le/m/a/b/j/m;->b:[B

    .line 20
    array-length v8, v7

    if-gt v8, v0, :cond_4

    move v8, v5

    goto :goto_2

    :cond_4
    move v8, v4

    .line 21
    :goto_2
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "context_id"

    invoke-virtual {v9, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 23
    invoke-virtual {v1}, Le/m/a/b/j/n;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "transport_name"

    invoke-virtual {v9, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1}, Le/m/a/b/j/n;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "timestamp_ms"

    invoke-virtual {v9, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 25
    invoke-virtual {v1}, Le/m/a/b/j/n;->i()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "uptime_ms"

    invoke-virtual {v9, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 26
    invoke-virtual {v1}, Le/m/a/b/j/n;->e()Le/m/a/b/j/m;

    move-result-object v2

    .line 27
    iget-object v2, v2, Le/m/a/b/j/m;->a:Le/m/a/b/b;

    .line 28
    iget-object v2, v2, Le/m/a/b/b;->a:Ljava/lang/String;

    const-string v3, "payload_encoding"

    .line 29
    invoke-virtual {v9, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Le/m/a/b/j/n;->d()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "code"

    invoke-virtual {v9, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "num_attempts"

    invoke-virtual {v9, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "inline"

    invoke-virtual {v9, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v8, :cond_5

    move-object v2, v7

    goto :goto_3

    :cond_5
    new-array v2, v4, [B

    :goto_3
    const-string v3, "payload"

    .line 33
    invoke-virtual {v9, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "events"

    .line 34
    invoke-virtual {p1, v2, v6, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-string v4, "event_id"

    if-nez v8, :cond_6

    .line 35
    array-length v8, v7

    int-to-double v8, v8

    int-to-double v10, v0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    :goto_4
    if-gt v5, v8, :cond_6

    add-int/lit8 v9, v5, -0x1

    mul-int/2addr v9, v0

    mul-int v10, v5, v0

    .line 36
    array-length v11, v7

    .line 37
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 38
    invoke-static {v7, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 39
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 40
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "sequence_num"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "bytes"

    .line 42
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v9, "event_payloads"

    .line 43
    invoke-virtual {p1, v9, v6, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 44
    :cond_6
    invoke-virtual {v1}, Le/m/a/b/j/n;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 46
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 47
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 48
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "name"

    invoke-virtual {v5, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, "value"

    invoke-virtual {v5, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "event_metadata"

    .line 50
    invoke-virtual {p1, v1, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_5

    .line 51
    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_6
    return-object p1
.end method
