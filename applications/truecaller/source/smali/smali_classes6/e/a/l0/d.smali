.class public final Le/a/l0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l0/c;


# instance fields
.field public final a:Le/a/l0/g;

.field public final b:Le/a/l0/p;

.field public final c:Le/a/l0/r;

.field public final d:Le/a/k3/j/j;

.field public final e:Le/a/l0/x/a;

.field public final f:Le/a/l0/u/e/d;

.field public final g:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Le/a/l0/g;Le/a/l0/p;Le/a/l0/r;Le/a/k3/j/j;Le/a/l0/x/a;Le/a/l0/u/e/d;Landroid/content/ContentResolver;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callLogManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchHistoryManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syncManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawContactDao"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "widgetDataProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingHistoryEventInserter"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l0/d;->a:Le/a/l0/g;

    iput-object p2, p0, Le/a/l0/d;->b:Le/a/l0/p;

    iput-object p3, p0, Le/a/l0/d;->c:Le/a/l0/r;

    iput-object p4, p0, Le/a/l0/d;->d:Le/a/k3/j/j;

    iput-object p5, p0, Le/a/l0/d;->e:Le/a/l0/x/a;

    iput-object p6, p0, Le/a/l0/d;->f:Le/a/l0/u/e/d;

    iput-object p7, p0, Le/a/l0/d;->g:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public A(Ljava/util/Set;)Le/a/r2/x;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "Promise.wrap(false)"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "historyIds"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "new"

    const/4 v4, 0x0

    .line 2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "is_read"

    const/4 v5, 0x1

    .line 3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    iget-object v3, p0, Le/a/l0/d;->g:Landroid/content/ContentResolver;

    .line 5
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v6

    .line 6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id IN ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "?"

    const-string v9, ","

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v10

    invoke-static {v8, v9, v10}, Lw3/c/a/a/a/h;->u(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 7
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {p1, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 9
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 10
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p1, v4, [Ljava/lang/String;

    .line 11
    invoke-interface {v8, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, [Ljava/lang/String;

    .line 12
    invoke-virtual {v3, v6, v2, v7, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    move v4, v5

    .line 13
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string v2, "Promise.wrap(count != 0)"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 15
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 16
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catch_1
    move-exception p1

    .line 17
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 18
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catch_2
    move-exception p1

    .line 19
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 20
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public B(Ljava/lang/String;)V
    .locals 12

    const-string v0, "call_log_id"

    const-string v1, "_id"

    const-string v2, "normalizedNumber"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v3, p0, Le/a/l0/d;->g:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v4

    .line 3
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "normalized_number =? AND type = 3 AND (new = 1 OR is_read = 0)"

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x0

    .line 4
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    const/4 v3, 0x0

    .line 5
    :try_start_1
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 6
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "it"

    .line 8
    invoke-static {p1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Le/a/p5/s0/g;->E0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    .line 9
    invoke-static {p1, v1}, Le/a/p5/s0/g;->E0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_0

    .line 10
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p0, v4}, Le/a/l0/d;->x(Ljava/util/Set;)Le/a/r2/x;

    .line 14
    :cond_2
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0, v5}, Le/a/l0/d;->A(Ljava/util/Set;)Le/a/r2/x;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :cond_3
    :try_start_2
    invoke-static {p1, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 17
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public C(Lcom/truecaller/data/entity/HistoryEvent;)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "historyEvent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l0/d;->a:Le/a/l0/g;

    invoke-interface {v0, p1}, Le/a/l0/g;->f(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string v0, "Promise.wrap(callLogMana\u2026dCallEvent(historyEvent))"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public D(Lcom/truecaller/data/entity/Contact;)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l0/d;->a:Le/a/l0/g;

    invoke-interface {v0, p1}, Le/a/l0/g;->d(Lcom/truecaller/data/entity/Contact;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    const-string v0, "normalizedNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l0/d;->a:Le/a/l0/g;

    invoke-interface {v0, p1, p2}, Le/a/l0/g;->a(Ljava/lang/String;Ljava/lang/Integer;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/truecaller/data/entity/Contact;Ljava/lang/Integer;)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ljava/lang/Integer;",
            ")",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l0/d;->a:Le/a/l0/g;

    invoke-interface {v0, p1, p2}, Le/a/l0/g;->b(Lcom/truecaller/data/entity/Contact;Ljava/lang/Integer;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/List;)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;)",
            "Le/a/r2/x<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "eventsToRestore"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l0/d;->a:Le/a/l0/g;

    invoke-interface {v0, p1}, Le/a/l0/g;->c(Ljava/util/List;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l0/d;->b:Le/a/l0/p;

    invoke-interface {v0, p1}, Le/a/l0/p;->d(I)V

    return-void
.end method

.method public e(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l0/d;->a:Le/a/l0/g;

    invoke-interface {v0, p1, p2}, Le/a/l0/g;->e(J)V

    return-void
.end method

.method public f(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/data/entity/Contact;)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            "Lcom/truecaller/data/entity/Contact;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contact"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l0/d;->d:Le/a/k3/j/j;

    invoke-virtual {v0, p2}, Le/a/k3/j/j;->c(Lcom/truecaller/data/entity/Contact;)Z

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/truecaller/data/entity/Entity;->setTcId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Le/a/l0/d;->n(Lcom/truecaller/data/entity/HistoryEvent;)V

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(true)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public g(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l0/d;->a:Le/a/l0/g;

    invoke-interface {v0, p1, p2}, Le/a/l0/g;->g(J)V

    return-void
.end method

.method public h(Ljava/lang/String;)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "normalizedNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l0/d;->a:Le/a/l0/g;

    invoke-interface {v0, p1}, Le/a/l0/g;->h(Ljava/lang/String;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public i(Le/a/l0/v/a$a;)V
    .locals 1

    const-string v0, "batch"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l0/d;->c:Le/a/l0/r;

    invoke-interface {v0, p1}, Le/a/l0/r;->i(Le/a/l0/v/a$a;)V

    return-void
.end method

.method public j(Lcom/truecaller/callhistory/data/FilterType;Ljava/lang/Integer;Landroid/os/CancellationSignal;)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/callhistory/data/FilterType;",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Le/a/r2/x<",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;>;"
        }
    .end annotation

    const-string v0, "callTypeFilter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l0/d;->a:Le/a/l0/g;

    invoke-interface {v0, p1, p2, p3}, Le/a/l0/g;->j(Lcom/truecaller/callhistory/data/FilterType;Ljava/lang/Integer;Landroid/os/CancellationSignal;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;JJLcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;",
            ")",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    const-string v0, "normalizedNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/l0/d;->a:Le/a/l0/g;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Le/a/l0/g;->k(Ljava/lang/String;JJLcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public l()Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/d;->a:Le/a/l0/g;

    invoke-interface {v0}, Le/a/l0/g;->l()Le/a/r2/x;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/util/List;Ljava/util/List;Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l0/d;->a:Le/a/l0/g;

    invoke-interface {v0, p1, p2, p3}, Le/a/l0/g;->m(Ljava/util/List;Ljava/util/List;Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/truecaller/data/entity/HistoryEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l0/d;->b:Le/a/l0/p;

    invoke-interface {v0, p1}, Le/a/l0/p;->a(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/l0/d;->b:Le/a/l0/p;

    invoke-interface {v0, p1}, Le/a/l0/p;->b(Lcom/truecaller/data/entity/HistoryEvent;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/l0/d;->a:Le/a/l0/g;

    invoke-interface {v0, p1}, Le/a/l0/g;->f(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result p1

    :goto_0
    return-void
.end method

.method public o(Lcom/truecaller/data/entity/CallRecording;)V
    .locals 1

    const-string v0, "callRecording"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l0/d;->f:Le/a/l0/u/e/d;

    invoke-interface {v0, p1}, Le/a/l0/u/e/d;->o(Lcom/truecaller/data/entity/CallRecording;)V

    return-void
.end method

.method public p()Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/d;->e:Le/a/l0/x/a;

    invoke-interface {v0}, Le/a/l0/x/a;->p()Le/a/r2/x;

    move-result-object v0

    return-object v0
.end method

.method public q(I)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/d;->b:Le/a/l0/p;

    invoke-interface {v0, p1}, Le/a/l0/p;->q(I)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/String;)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "tcId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l0/d;->a:Le/a/l0/g;

    invoke-interface {v0, p1}, Le/a/l0/g;->r(Ljava/lang/String;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public s()Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/d;->a:Le/a/l0/g;

    invoke-interface {v0}, Le/a/l0/g;->s()Le/a/r2/x;

    move-result-object v0

    return-object v0
.end method

.method public t()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l0/d;->a:Le/a/l0/g;

    invoke-interface {v0}, Le/a/l0/g;->t()V

    return-void
.end method

.method public u(J)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/d;->a:Le/a/l0/g;

    invoke-interface {v0, p1, p2}, Le/a/l0/g;->u(J)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public v(I)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/d;->a:Le/a/l0/g;

    invoke-interface {v0, p1}, Le/a/l0/g;->v(I)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public w(Ljava/lang/String;)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "eventId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l0/d;->a:Le/a/l0/g;

    invoke-interface {v0, p1}, Le/a/l0/g;->w(Ljava/lang/String;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public x(Ljava/util/Set;)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "callLogIds"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l0/d;->a:Le/a/l0/g;

    invoke-interface {v0, p1}, Le/a/l0/g;->x(Ljava/util/Set;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string v0, "Promise.wrap(callLogMana\u2026r.markAsSeen(callLogIds))"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public y()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l0/d;->c:Le/a/l0/r;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/l0/r;->b(Z)V

    return-void
.end method

.method public z()Le/a/r2/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/l0/d;->u(J)Le/a/r2/x;

    move-result-object v0

    return-object v0
.end method
