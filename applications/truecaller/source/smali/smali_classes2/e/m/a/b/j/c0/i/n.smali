.class public final synthetic Le/m/a/b/j/c0/i/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/c0/i/h0$b;


# instance fields
.field public final synthetic a:Le/m/a/b/j/c0/i/h0;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Le/m/a/b/j/a0/a/a$a;


# direct methods
.method public synthetic constructor <init>(Le/m/a/b/j/c0/i/h0;Ljava/util/Map;Le/m/a/b/j/a0/a/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/b/j/c0/i/n;->a:Le/m/a/b/j/c0/i/h0;

    iput-object p2, p0, Le/m/a/b/j/c0/i/n;->b:Ljava/util/Map;

    iput-object p3, p0, Le/m/a/b/j/c0/i/n;->c:Le/m/a/b/j/a0/a/a$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Le/m/a/b/j/c0/i/n;->a:Le/m/a/b/j/c0/i/h0;

    iget-object v1, p0, Le/m/a/b/j/c0/i/n;->b:Ljava/util/Map;

    iget-object v2, p0, Le/m/a/b/j/c0/i/n;->c:Le/m/a/b/j/a0/a/a$a;

    check-cast p1, Landroid/database/Cursor;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v3, Le/m/a/b/j/a0/a/c$a;->b:Le/m/a/b/j/a0/a/c$a;

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    .line 3
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 4
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x2

    if-nez v6, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    sget-object v8, Le/m/a/b/j/a0/a/c$a;->c:Le/m/a/b/j/a0/a/c$a;

    if-ne v6, v5, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    sget-object v8, Le/m/a/b/j/a0/a/c$a;->d:Le/m/a/b/j/a0/a/c$a;

    if-ne v6, v7, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    sget-object v8, Le/m/a/b/j/a0/a/c$a;->e:Le/m/a/b/j/a0/a/c$a;

    const/4 v5, 0x3

    if-ne v6, v5, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    sget-object v8, Le/m/a/b/j/a0/a/c$a;->f:Le/m/a/b/j/a0/a/c$a;

    const/4 v5, 0x4

    if-ne v6, v5, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    sget-object v8, Le/m/a/b/j/a0/a/c$a;->g:Le/m/a/b/j/a0/a/c$a;

    const/4 v5, 0x5

    if-ne v6, v5, :cond_5

    goto :goto_2

    .line 10
    :cond_5
    sget-object v8, Le/m/a/b/j/a0/a/c$a;->h:Le/m/a/b/j/a0/a/c$a;

    const/4 v5, 0x6

    if-ne v6, v5, :cond_6

    goto :goto_2

    .line 11
    :cond_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "SQLiteEventStore"

    const-string v8, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN"

    .line 12
    invoke-static {v6, v8, v5}, Ln3/g0/y;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    move-object v8, v3

    .line 13
    :goto_2
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 14
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 15
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_7
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 17
    sget v7, Le/m/a/b/j/a0/a/c;->c:I

    .line 18
    new-instance v7, Le/m/a/b/j/a0/a/c;

    invoke-direct {v7, v5, v6, v8}, Le/m/a/b/j/a0/a/c;-><init>(JLe/m/a/b/j/a0/a/c$a;)V

    .line 19
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_8
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 21
    sget v3, Le/m/a/b/j/a0/a/d;->c:I

    .line 22
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 24
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 25
    new-instance v4, Le/m/a/b/j/a0/a/d;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v3, v1}, Le/m/a/b/j/a0/a/d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 26
    iget-object v1, v2, Le/m/a/b/j/a0/a/a$a;->b:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 27
    :cond_9
    iget-object p1, v0, Le/m/a/b/j/c0/i/h0;->b:Le/m/a/b/j/e0/a;

    invoke-interface {p1}, Le/m/a/b/j/e0/a;->a()J

    move-result-wide v3

    .line 28
    new-instance p1, Le/m/a/b/j/c0/i/k;

    invoke-direct {p1, v3, v4}, Le/m/a/b/j/c0/i/k;-><init>(J)V

    invoke-virtual {v0, p1}, Le/m/a/b/j/c0/i/h0;->s(Le/m/a/b/j/c0/i/h0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/a/b/j/a0/a/f;

    .line 29
    iput-object p1, v2, Le/m/a/b/j/a0/a/a$a;->a:Le/m/a/b/j/a0/a/f;

    .line 30
    sget p1, Le/m/a/b/j/a0/a/b;->b:I

    .line 31
    sget p1, Le/m/a/b/j/a0/a/e;->c:I

    .line 32
    invoke-virtual {v0}, Le/m/a/b/j/c0/i/h0;->l()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v1, "PRAGMA page_count"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v3

    .line 33
    invoke-virtual {v0}, Le/m/a/b/j/c0/i/h0;->l()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v1, "PRAGMA page_size"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v5

    mul-long/2addr v5, v3

    .line 34
    sget-object p1, Le/m/a/b/j/c0/i/b0;->a:Le/m/a/b/j/c0/i/b0;

    .line 35
    invoke-virtual {p1}, Le/m/a/b/j/c0/i/b0;->e()J

    move-result-wide v3

    .line 36
    new-instance p1, Le/m/a/b/j/a0/a/e;

    invoke-direct {p1, v5, v6, v3, v4}, Le/m/a/b/j/a0/a/e;-><init>(JJ)V

    .line 37
    new-instance v1, Le/m/a/b/j/a0/a/b;

    invoke-direct {v1, p1}, Le/m/a/b/j/a0/a/b;-><init>(Le/m/a/b/j/a0/a/e;)V

    .line 38
    iput-object v1, v2, Le/m/a/b/j/a0/a/a$a;->c:Le/m/a/b/j/a0/a/b;

    .line 39
    iget-object p1, v0, Le/m/a/b/j/c0/i/h0;->e:Le/m/a/b/j/z/a;

    invoke-interface {p1}, Le/m/a/b/j/z/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 40
    iput-object p1, v2, Le/m/a/b/j/a0/a/a$a;->d:Ljava/lang/String;

    .line 41
    new-instance p1, Le/m/a/b/j/a0/a/a;

    iget-object v0, v2, Le/m/a/b/j/a0/a/a$a;->a:Le/m/a/b/j/a0/a/f;

    iget-object v1, v2, Le/m/a/b/j/a0/a/a$a;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v3, v2, Le/m/a/b/j/a0/a/a$a;->c:Le/m/a/b/j/a0/a/b;

    iget-object v2, v2, Le/m/a/b/j/a0/a/a$a;->d:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v3, v2}, Le/m/a/b/j/a0/a/a;-><init>(Le/m/a/b/j/a0/a/f;Ljava/util/List;Le/m/a/b/j/a0/a/b;Ljava/lang/String;)V

    return-object p1
.end method
