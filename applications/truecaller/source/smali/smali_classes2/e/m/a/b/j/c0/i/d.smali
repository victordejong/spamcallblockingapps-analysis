.class public final synthetic Le/m/a/b/j/c0/i/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/c0/i/h0$b;


# instance fields
.field public final synthetic a:Le/m/a/b/j/c0/i/h0;

.field public final synthetic b:Le/m/a/b/j/r;


# direct methods
.method public synthetic constructor <init>(Le/m/a/b/j/c0/i/h0;Le/m/a/b/j/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/b/j/c0/i/d;->a:Le/m/a/b/j/c0/i/h0;

    iput-object p2, p0, Le/m/a/b/j/c0/i/d;->b:Le/m/a/b/j/r;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Le/m/a/b/j/c0/i/d;->a:Le/m/a/b/j/c0/i/h0;

    iget-object v1, p0, Le/m/a/b/j/c0/i/d;->b:Le/m/a/b/j/r;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0, p1, v1}, Le/m/a/b/j/c0/i/h0;->q(Landroid/database/sqlite/SQLiteDatabase;Le/m/a/b/j/r;)Ljava/lang/Long;

    move-result-object v2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "_id"

    const-string v4, "transport_name"

    const-string v5, "timestamp_ms"

    const-string v6, "uptime_ms"

    const-string v7, "payload_encoding"

    const-string v8, "payload"

    const-string v9, "code"

    const-string v10, "inline"

    .line 4
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v4

    new-array v6, v13, [Ljava/lang/String;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v2, v0, Le/m/a/b/j/c0/i/h0;->d:Le/m/a/b/j/c0/i/b0;

    .line 6
    invoke-virtual {v2}, Le/m/a/b/j/c0/i/b0;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v3, "events"

    const-string v5, "context_id = ?"

    move-object v2, p1

    .line 7
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance v3, Le/m/a/b/j/c0/i/l;

    invoke-direct {v3, v0, v11, v1}, Le/m/a/b/j/c0/i/l;-><init>(Le/m/a/b/j/c0/i/h0;Ljava/util/List;Le/m/a/b/j/r;)V

    .line 8
    invoke-static {v2, v3}, Le/m/a/b/j/c0/i/h0;->J(Landroid/database/Cursor;Le/m/a/b/j/c0/i/h0$b;)Ljava/lang/Object;

    .line 9
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event_id IN ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v2, v12

    .line 11
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 12
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/b/j/c0/i/g0;

    invoke-virtual {v3}, Le/m/a/b/j/c0/i/g0;->b()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v13

    if-ge v2, v3, :cond_1

    const/16 v3, 0x2c

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0x29

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "event_id"

    const-string v3, "name"

    const-string v4, "value"

    .line 16
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "event_metadata"

    move-object v2, p1

    .line 18
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 19
    :goto_2
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 20
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 21
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-nez v3, :cond_3

    .line 22
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_3
    new-instance v1, Le/m/a/b/j/c0/i/h0$c;

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v5}, Le/m/a/b/j/c0/i/h0$c;-><init>(Ljava/lang/String;Ljava/lang/String;Le/m/a/b/j/c0/i/h0$a;)V

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 25
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 26
    invoke-virtual {v11}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 27
    :goto_3
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 28
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/b/j/c0/i/g0;

    .line 29
    invoke-virtual {v1}, Le/m/a/b/j/c0/i/g0;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    .line 30
    :cond_5
    invoke-virtual {v1}, Le/m/a/b/j/c0/i/g0;->a()Le/m/a/b/j/n;

    move-result-object v2

    invoke-virtual {v2}, Le/m/a/b/j/n;->j()Le/m/a/b/j/n$a;

    move-result-object v2

    .line 31
    invoke-virtual {v1}, Le/m/a/b/j/c0/i/g0;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/b/j/c0/i/h0$c;

    .line 32
    iget-object v5, v4, Le/m/a/b/j/c0/i/h0$c;->a:Ljava/lang/String;

    iget-object v4, v4, Le/m/a/b/j/c0/i/h0$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Le/m/a/b/j/n$a;->a(Ljava/lang/String;Ljava/lang/String;)Le/m/a/b/j/n$a;

    goto :goto_4

    .line 33
    :cond_6
    invoke-virtual {v1}, Le/m/a/b/j/c0/i/g0;->b()J

    move-result-wide v3

    invoke-virtual {v1}, Le/m/a/b/j/c0/i/g0;->c()Le/m/a/b/j/r;

    move-result-object v1

    invoke-virtual {v2}, Le/m/a/b/j/n$a;->b()Le/m/a/b/j/n;

    move-result-object v2

    .line 34
    new-instance v5, Le/m/a/b/j/c0/i/y;

    invoke-direct {v5, v3, v4, v1, v2}, Le/m/a/b/j/c0/i/y;-><init>(JLe/m/a/b/j/r;Le/m/a/b/j/n;)V

    .line 35
    invoke-interface {p1, v5}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    return-object v11

    :catchall_0
    move-exception v0

    .line 36
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 37
    throw v0
.end method
