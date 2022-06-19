.class public final Le/a/c/c/a/u;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x1c

    const/16 v1, 0x1d

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 9

    const-string v0, "database"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SELECT * FROM insights_reminders"

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->U1(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_6

    :try_start_1
    const-string v3, "uniqueRefId"

    .line 4
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "meta"

    .line 5
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 6
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    move v7, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v7, v6

    :goto_2
    if-nez v7, :cond_4

    const-string v7, "metaString"

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "refId"

    invoke-static {v3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "subCategory"

    const-string v8, "Bill"

    .line 8
    invoke-virtual {v7, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v5, v6

    goto :goto_3

    :catch_0
    move-exception v4

    .line 10
    :try_start_3
    sget-object v6, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 11
    invoke-virtual {v6, v4, v2}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    :catch_1
    :goto_3
    if-eqz v5, :cond_3

    .line 12
    sget-object v4, Lcom/truecaller/insights/models/DomainOrigin;->SMS:Lcom/truecaller/insights/models/DomainOrigin;

    goto :goto_4

    :cond_3
    const-string v4, "BBPS"

    :goto_4
    const-string v5, "origin"

    invoke-virtual {v7, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_4
    move-object v7, v2

    :goto_5
    if-eqz v7, :cond_5

    .line 13
    new-instance v4, Ls1/k;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v3

    .line 14
    :try_start_4
    sget-object v4, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 15
    invoke-virtual {v4, v3, v2}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_5
    move-object v4, v2

    .line 16
    :goto_6
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 17
    :cond_6
    :goto_7
    invoke-static {v0, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 18
    invoke-static {v1}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/k;

    const-string v2, " UPDATE insights_reminders SET meta = \'"

    .line 20
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 21
    iget-object v3, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 22
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' WHERE uniqueRefId = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v1, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 24
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-interface {p1, v1}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    goto :goto_8

    :cond_7
    return-void

    :catchall_1
    move-exception p1

    .line 26
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v1

    invoke-static {v0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
