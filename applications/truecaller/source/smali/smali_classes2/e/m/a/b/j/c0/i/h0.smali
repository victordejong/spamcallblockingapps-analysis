.class public Le/m/a/b/j/c0/i/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/c0/i/a0;
.implements Le/m/a/b/j/d0/b;
.implements Le/m/a/b/j/c0/i/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/b/j/c0/i/h0$c;,
        Le/m/a/b/j/c0/i/h0$b;,
        Le/m/a/b/j/c0/i/h0$d;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final f:Le/m/a/b/b;


# instance fields
.field public final a:Le/m/a/b/j/c0/i/j0;

.field public final b:Le/m/a/b/j/e0/a;

.field public final c:Le/m/a/b/j/e0/a;

.field public final d:Le/m/a/b/j/c0/i/b0;

.field public final e:Le/m/a/b/j/z/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/b/j/z/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/m/a/b/b;

    const-string v1, "proto"

    invoke-direct {v0, v1}, Le/m/a/b/b;-><init>(Ljava/lang/String;)V

    .line 2
    sput-object v0, Le/m/a/b/j/c0/i/h0;->f:Le/m/a/b/b;

    return-void
.end method

.method public constructor <init>(Le/m/a/b/j/e0/a;Le/m/a/b/j/e0/a;Le/m/a/b/j/c0/i/b0;Le/m/a/b/j/c0/i/j0;Le/m/a/b/j/z/a;)V
    .locals 0
    .param p5    # Le/m/a/b/j/z/a;
        .annotation runtime Ljavax/inject/Named;
            value = "PACKAGE_NAME"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/b/j/e0/a;",
            "Le/m/a/b/j/e0/a;",
            "Le/m/a/b/j/c0/i/b0;",
            "Le/m/a/b/j/c0/i/j0;",
            "Le/m/a/b/j/z/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Le/m/a/b/j/c0/i/h0;->a:Le/m/a/b/j/c0/i/j0;

    .line 3
    iput-object p1, p0, Le/m/a/b/j/c0/i/h0;->b:Le/m/a/b/j/e0/a;

    .line 4
    iput-object p2, p0, Le/m/a/b/j/c0/i/h0;->c:Le/m/a/b/j/e0/a;

    .line 5
    iput-object p3, p0, Le/m/a/b/j/c0/i/h0;->d:Le/m/a/b/j/c0/i/b0;

    .line 6
    iput-object p5, p0, Le/m/a/b/j/c0/i/h0;->e:Le/m/a/b/j/z/a;

    return-void
.end method

.method public static I(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Le/m/a/b/j/c0/i/g0;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/b/j/c0/i/g0;

    invoke-virtual {v1}, Le/m/a/b/j/c0/i/g0;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2c

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static J(Landroid/database/Cursor;Le/m/a/b/j/c0/i/h0$b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Le/m/a/b/j/c0/i/h0$b<",
            "Landroid/database/Cursor;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Le/m/a/b/j/c0/i/h0$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 3
    throw p1
.end method


# virtual methods
.method public final E(Le/m/a/b/j/c0/i/h0$d;Le/m/a/b/j/c0/i/h0$b;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/m/a/b/j/c0/i/h0$d<",
            "TT;>;",
            "Le/m/a/b/j/c0/i/h0$b<",
            "Ljava/lang/Throwable;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/b/j/c0/i/h0;->c:Le/m/a/b/j/e0/a;

    invoke-interface {v0}, Le/m/a/b/j/e0/a;->a()J

    move-result-wide v0

    .line 2
    :goto_0
    :try_start_0
    invoke-interface {p1}, Le/m/a/b/j/c0/i/h0$d;->a()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v2

    .line 3
    iget-object v3, p0, Le/m/a/b/j/c0/i/h0;->c:Le/m/a/b/j/e0/a;

    invoke-interface {v3}, Le/m/a/b/j/e0/a;->a()J

    move-result-wide v3

    iget-object v5, p0, Le/m/a/b/j/c0/i/h0;->d:Le/m/a/b/j/c0/i/b0;

    invoke-virtual {v5}, Le/m/a/b/j/c0/i/b0;->a()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 4
    invoke-interface {p2, v2}, Le/m/a/b/j/c0/i/h0$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v2, 0x32

    .line 5
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method public G(Le/m/a/b/j/r;J)V
    .locals 1

    .line 1
    new-instance v0, Le/m/a/b/j/c0/i/f;

    invoke-direct {v0, p2, p3, p1}, Le/m/a/b/j/c0/i/f;-><init>(JLe/m/a/b/j/r;)V

    invoke-virtual {p0, v0}, Le/m/a/b/j/c0/i/h0;->s(Le/m/a/b/j/c0/i/h0$b;)Ljava/lang/Object;

    return-void
.end method

.method public K1(Le/m/a/b/j/r;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/b/j/r;",
            ")",
            "Ljava/lang/Iterable<",
            "Le/m/a/b/j/c0/i/g0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/a/b/j/c0/i/d;

    invoke-direct {v0, p0, p1}, Le/m/a/b/j/c0/i/d;-><init>(Le/m/a/b/j/c0/i/h0;Le/m/a/b/j/r;)V

    invoke-virtual {p0, v0}, Le/m/a/b/j/c0/i/h0;->s(Le/m/a/b/j/c0/i/h0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    return-object p1
.end method

.method public P0(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Le/m/a/b/j/c0/i/g0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DELETE FROM events WHERE _id in "

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Le/m/a/b/j/c0/i/h0;->I(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Le/m/a/b/j/c0/i/h0;->l()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-void
.end method

.method public Y0()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Le/m/a/b/j/r;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/a/b/j/c0/i/h0;->l()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    sget-object v2, Le/m/a/b/j/c0/i/h;->a:Le/m/a/b/j/c0/i/h;

    .line 4
    invoke-static {v1, v2}, Le/m/a/b/j/c0/i/h0;->J(Landroid/database/Cursor;Le/m/a/b/j/c0/i/h0$b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 7
    throw v1
.end method

.method public a2(Le/m/a/b/j/r;Le/m/a/b/j/n;)Le/m/a/b/j/c0/i/g0;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Le/m/a/b/j/r;->d()Le/m/a/b/d;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p2}, Le/m/a/b/j/n;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-virtual {p1}, Le/m/a/b/j/r;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "SQLiteEventStore"

    .line 4
    invoke-static {v1}, Ln3/g0/y;->C0(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "Storing event with priority=%s, name=%s for destination %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    new-instance v0, Le/m/a/b/j/c0/i/m;

    invoke-direct {v0, p0, p2, p1}, Le/m/a/b/j/c0/i/m;-><init>(Le/m/a/b/j/c0/i/h0;Le/m/a/b/j/n;Le/m/a/b/j/r;)V

    .line 6
    invoke-virtual {p0, v0}, Le/m/a/b/j/c0/i/h0;->s(Le/m/a/b/j/c0/i/h0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    new-instance v2, Le/m/a/b/j/c0/i/y;

    invoke-direct {v2, v0, v1, p1, p2}, Le/m/a/b/j/c0/i/y;-><init>(JLe/m/a/b/j/r;Le/m/a/b/j/n;)V

    return-object v2
.end method

.method public b()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/m/a/b/j/c0/i/h0;->l()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DELETE FROM log_event_dropped"

    .line 4
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE global_log_event_state SET last_metrics_upload_ms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/m/a/b/j/c0/i/h0;->b:Le/m/a/b/j/e0/a;

    .line 6
    invoke-interface {v2}, Le/m/a/b/j/e0/a;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 11
    throw v1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/b/j/c0/i/h0;->a:Le/m/a/b/j/c0/i/j0;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public d()Le/m/a/b/j/a0/a/a;
    .locals 5

    .line 1
    sget v0, Le/m/a/b/j/a0/a/a;->e:I

    new-instance v0, Le/m/a/b/j/a0/a/a$a;

    invoke-direct {v0}, Le/m/a/b/j/a0/a/a$a;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "SELECT log_source, reason, events_dropped_count FROM log_event_dropped"

    .line 3
    invoke-virtual {p0}, Le/m/a/b/j/c0/i/h0;->l()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5
    :try_start_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 6
    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance v4, Le/m/a/b/j/c0/i/n;

    invoke-direct {v4, p0, v1, v0}, Le/m/a/b/j/c0/i/n;-><init>(Le/m/a/b/j/c0/i/h0;Ljava/util/Map;Le/m/a/b/j/a0/a/a$a;)V

    .line 7
    invoke-static {v2, v4}, Le/m/a/b/j/c0/i/h0;->J(Landroid/database/Cursor;Le/m/a/b/j/c0/i/h0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/b/j/a0/a/a;

    .line 8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 10
    throw v0
.end method

.method public j(JLe/m/a/b/j/a0/a/c$a;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Le/m/a/b/j/c0/i/i;

    invoke-direct {v0, p4, p3, p1, p2}, Le/m/a/b/j/c0/i/i;-><init>(Ljava/lang/String;Le/m/a/b/j/a0/a/c$a;J)V

    invoke-virtual {p0, v0}, Le/m/a/b/j/c0/i/h0;->s(Le/m/a/b/j/c0/i/h0$b;)Ljava/lang/Object;

    return-void
.end method

.method public k(Le/m/a/b/j/d0/b$a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/m/a/b/j/d0/b$a<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/a/b/j/c0/i/h0;->l()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    new-instance v1, Le/m/a/b/j/c0/i/e;

    invoke-direct {v1, v0}, Le/m/a/b/j/c0/i/e;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object v2, Le/m/a/b/j/c0/i/b;->a:Le/m/a/b/j/c0/i/b;

    invoke-virtual {p0, v1, v2}, Le/m/a/b/j/c0/i/h0;->E(Le/m/a/b/j/c0/i/h0$d;Le/m/a/b/j/c0/i/h0$b;)Ljava/lang/Object;

    .line 3
    :try_start_0
    invoke-interface {p1}, Le/m/a/b/j/d0/b$a;->execute()Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6
    throw p1
.end method

.method public l()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/b/j/c0/i/h0;->a:Le/m/a/b/j/c0/i/j0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Le/m/a/b/j/c0/i/w;

    invoke-direct {v1, v0}, Le/m/a/b/j/c0/i/w;-><init>(Le/m/a/b/j/c0/i/j0;)V

    sget-object v0, Le/m/a/b/j/c0/i/a;->a:Le/m/a/b/j/c0/i/a;

    .line 3
    invoke-virtual {p0, v1, v0}, Le/m/a/b/j/c0/i/h0;->E(Le/m/a/b/j/c0/i/h0$d;Le/m/a/b/j/c0/i/h0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public final q(Landroid/database/sqlite/SQLiteDatabase;Le/m/a/b/j/r;)Ljava/lang/Long;
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "backend_name = ? and priority = ?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Le/m/a/b/j/r;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 4
    invoke-virtual {p2}, Le/m/a/b/j/r;->d()Le/m/a/b/d;

    move-result-object v3

    invoke-static {v3}, Le/m/a/b/j/f0/a;->a(Le/m/a/b/d;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 5
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {p2}, Le/m/a/b/j/r;->c()[B

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, " and extras = ?"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p2}, Le/m/a/b/j/r;->c()[B

    move-result-object p2

    invoke-static {p2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, " and extras is null"

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p2, "_id"

    .line 10
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array p2, v4, [Ljava/lang/String;

    .line 12
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    move-object v9, p2

    check-cast v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v6, "transport_contexts"

    move-object v5, p1

    .line 13
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 14
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    .line 15
    :cond_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 17
    throw p2
.end method

.method public r1(Le/m/a/b/j/r;)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/m/a/b/j/c0/i/h0;->l()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Le/m/a/b/j/r;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-virtual {p1}, Le/m/a/b/j/r;->d()Le/m/a/b/d;

    move-result-object p1

    invoke-static {p1}, Le/m/a/b/j/f0/a;->a(Le/m/a/b/d;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?"

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 5
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    throw v0
.end method

.method public s(Le/m/a/b/j/c0/i/h0$b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/m/a/b/j/c0/i/h0$b<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/a/b/j/c0/i/h0;->l()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    invoke-interface {p1, v0}, Le/m/a/b/j/c0/i/h0$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6
    throw p1
.end method

.method public t1(Le/m/a/b/j/r;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/m/a/b/j/c0/i/h0;->l()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    invoke-virtual {p0, v0, p1}, Le/m/a/b/j/c0/i/h0;->q(Landroid/database/sqlite/SQLiteDatabase;Le/m/a/b/j/r;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Le/m/a/b/j/c0/i/h0;->l()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    .line 7
    invoke-virtual {v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    sget-object v1, Le/m/a/b/j/c0/i/v;->a:Le/m/a/b/j/c0/i/v;

    .line 8
    invoke-static {p1, v1}, Le/m/a/b/j/c0/i/h0;->J(Landroid/database/Cursor;Le/m/a/b/j/c0/i/h0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 9
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 13
    throw p1
.end method

.method public x()I
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/b/j/c0/i/h0;->b:Le/m/a/b/j/e0/a;

    invoke-interface {v0}, Le/m/a/b/j/e0/a;->a()J

    move-result-wide v0

    iget-object v2, p0, Le/m/a/b/j/c0/i/h0;->d:Le/m/a/b/j/c0/i/b0;

    invoke-virtual {v2}, Le/m/a/b/j/c0/i/b0;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Le/m/a/b/j/c0/i/h0;->l()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4
    :try_start_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 5
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const-string v0, "SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name"

    .line 6
    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Le/m/a/b/j/c0/i/j;

    invoke-direct {v1, p0}, Le/m/a/b/j/c0/i/j;-><init>(Le/m/a/b/j/c0/i/h0;)V

    .line 7
    invoke-static {v0, v1}, Le/m/a/b/j/c0/i/h0;->J(Landroid/database/Cursor;Le/m/a/b/j/c0/i/h0$b;)Ljava/lang/Object;

    const-string v0, "events"

    const-string v1, "timestamp_ms < ?"

    .line 8
    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 13
    throw v0
.end method

.method public x1(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Le/m/a/b/j/c0/i/g0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in "

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1}, Le/m/a/b/j/c0/i/h0;->I(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name"

    .line 4
    invoke-virtual {p0}, Le/m/a/b/j/c0/i/h0;->l()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6
    :try_start_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {v1, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance v0, Le/m/a/b/j/c0/i/o;

    invoke-direct {v0, p0}, Le/m/a/b/j/c0/i/o;-><init>(Le/m/a/b/j/c0/i/h0;)V

    .line 9
    invoke-static {p1, v0}, Le/m/a/b/j/c0/i/h0;->J(Landroid/database/Cursor;Le/m/a/b/j/c0/i/h0$b;)Ljava/lang/Object;

    const-string p1, "DELETE FROM events WHERE num_attempts >= 16"

    .line 10
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 11
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 13
    throw p1
.end method
