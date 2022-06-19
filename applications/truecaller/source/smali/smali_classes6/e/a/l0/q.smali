.class public final Le/a/l0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l0/p;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/k3/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/k3/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraInfoReaderProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l0/q;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/l0/q;->b:Le/a/k3/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/HistoryEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b(Lcom/truecaller/data/entity/HistoryEvent;)V
    .locals 10

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Entity;->getTcId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v3, p0, Le/a/l0/q;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 5
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v5

    const-string v3, "tc_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "data1=? AND data_type=4"

    new-array v8, v1, [Ljava/lang/String;

    .line 6
    iget-object v3, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    aput-object v3, v8, v2

    const/4 v9, 0x0

    .line 7
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/truecaller/data/entity/Entity;->setTcId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 11
    :cond_1
    throw p1

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Entity;->getTcId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget v0, p1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    const/4 v3, 0x6

    if-eq v0, v3, :cond_3

    .line 14
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 15
    iget-wide v3, p1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 16
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "timestamp"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 17
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Entity;->getTcId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 18
    iget-object v4, p0, Le/a/l0/q;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "tc_id=? AND type=5"

    invoke-virtual {v4, v5, v0, v3, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    iget-object p1, p0, Le/a/l0/q;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/truecaller/service/WidgetListProvider;->b(Landroid/content/Context;)V

    return-void

    .line 20
    :cond_3
    iput v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    .line 21
    iget-object v0, p0, Le/a/l0/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1}, Le/a/n/g0;->G0(Lcom/truecaller/data/entity/HistoryEvent;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 22
    iget-object p1, p0, Le/a/l0/q;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/truecaller/service/WidgetListProvider;->b(Landroid/content/Context;)V

    :cond_4
    return-void
.end method

.method public d(I)V
    .locals 5

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    :try_start_0
    new-array v3, v2, [Ljava/lang/String;

    .line 1
    invoke-static {v0, v3}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/l0/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "type=?"

    new-array v1, v1, [Ljava/lang/String;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 5
    invoke-virtual {v0, v3, v4, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Le/a/l0/q;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/truecaller/service/WidgetListProvider;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public q(I)Le/a/r2/x;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    new-array v3, v0, [Ljava/lang/String;

    .line 1
    invoke-static {v2, v3}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    new-array v8, v1, [Ljava/lang/String;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v0

    const/4 p1, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Le/a/m0/a1$j;->d()Landroid/net/Uri;

    move-result-object v5

    .line 4
    iget-object v0, p0, Le/a/l0/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "type=?"

    const-string v9, "timestamp DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    .line 5
    :try_start_1
    iget-object v2, p0, Le/a/l0/q;->b:Le/a/k3/d;

    invoke-interface {v2}, Le/a/k3/d;->a()Le/a/k3/c;

    move-result-object v2

    .line 6
    invoke-static {v0, v2, v1}, Le/a/n/g0;->H0(Landroid/database/Cursor;Le/a/k3/c;Z)Le/a/l0/u/d/c;

    move-result-object v1

    sget-object v2, Le/a/l0/q$a;->a:Le/a/l0/q$a;

    .line 7
    new-instance v3, Le/a/r2/y;

    invoke-direct {v3, v1, v2}, Le/a/r2/y;-><init>(Ljava/lang/Object;Le/a/r2/c0;)V

    const-string v1, "Promise.wrap<HistoryEven\u2026er, true)) { it.close() }"

    .line 8
    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v0, p1

    .line 9
    :goto_2
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 11
    :cond_2
    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string v0, "Promise.wrap(null)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
