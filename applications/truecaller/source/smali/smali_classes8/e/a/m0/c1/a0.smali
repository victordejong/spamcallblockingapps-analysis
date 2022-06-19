.class public final Le/a/m0/c1/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/c1/b0$m;
.implements Le/a/m0/c1/b0$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/m0/c1/a0$e;,
        Le/a/m0/c1/a0$h;,
        Le/a/m0/c1/a0$g;,
        Le/a/m0/c1/a0$c;,
        Le/a/m0/c1/a0$f;,
        Le/a/m0/c1/a0$d;,
        Le/a/m0/c1/a0$b;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final c:Le/a/m0/c1/a0$h;

.field public static final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Le/a/m0/c1/a0$d;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Le/a/m0/c1/a0$e;

.field public b:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/a/m0/c1/a0$h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/m0/c1/a0$h;-><init>(Le/a/m0/c1/a0$a;)V

    sput-object v0, Le/a/m0/c1/a0;->c:Le/a/m0/c1/a0$h;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Le/a/m0/c1/a0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Le/a/m0/c1/a0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Le/a/m0/c1/a0;->f:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Le/a/m0/c1/a0;->g:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, ".s3db"

    .line 3
    invoke-static {p2, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    new-instance v0, Le/a/m0/c1/a0$e;

    invoke-direct {v0, p1, p2}, Le/a/m0/c1/a0$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/m0/c1/a0;->a:Le/a/m0/c1/a0$e;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 1
    sget-object p1, Le/a/m0/c1/a0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public b([B)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Le/a/m0/c1/a0;->a:Le/a/m0/c1/a0$e;

    iget-object p1, p1, Le/a/m0/c1/a0$e;->b:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {p0}, Le/a/m0/c1/a0;->e()Ljava/util/Map;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Landroid/content/SharedPreferences$Editor;Ljava/util/Queue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/util/Queue<",
            "Le/a/m0/c1/b0$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Le/a/m0/c1/a0$d;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Le/a/m0/c1/a0$d;-><init>(Le/a/m0/c1/a0$a;)V

    .line 2
    invoke-interface {p2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/m0/c1/b0$b;

    .line 5
    invoke-interface {v1}, Le/a/m0/c1/b0$b;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v1, 0x4

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p1, Le/a/m0/c1/a0$d;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 7
    iget-object v1, p1, Le/a/m0/c1/a0$d;->b:Ljava/util/Queue;

    new-instance v2, Le/a/m0/c1/a0$c;

    invoke-direct {v2, v0}, Le/a/m0/c1/a0$c;-><init>(Le/a/m0/c1/a0$a;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p1, Le/a/m0/c1/a0$d;->b:Ljava/util/Queue;

    new-instance v3, Le/a/m0/c1/a0$g;

    check-cast v1, Le/a/m0/c1/b0$p;

    invoke-interface {v1}, Le/a/m0/c1/b0$p;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Le/a/m0/c1/a0$g;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object v2, p1, Le/a/m0/c1/a0$d;->b:Ljava/util/Queue;

    new-instance v3, Le/a/m0/c1/a0$f;

    move-object v4, v1

    check-cast v4, Le/a/m0/c1/b0$p;

    invoke-interface {v4}, Le/a/m0/c1/b0$p;->getKey()Ljava/lang/String;

    move-result-object v4

    check-cast v1, Le/a/m0/c1/b0$q;

    .line 10
    invoke-interface {v1}, Le/a/m0/c1/b0$q;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Le/a/m0/c1/a0$f;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    sget-object p2, Le/a/m0/c1/a0;->c:Le/a/m0/c1/a0$h;

    iget-object p2, p2, Le/a/m0/c1/a0$h;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 13
    iget-object p2, p0, Le/a/m0/c1/a0;->a:Le/a/m0/c1/a0$e;

    iget-object p2, p2, Le/a/m0/c1/a0$e;->a:Ljava/lang/String;

    .line 14
    sget-object v0, Le/a/m0/c1/a0;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-nez v1, :cond_5

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-nez v1, :cond_4

    .line 17
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_4
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 19
    :cond_5
    :goto_1
    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)[B"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Le/a/m0/c1/a0;->a:Le/a/m0/c1/a0$e;

    iget-object p1, p1, Le/a/m0/c1/a0$e;->b:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {p0}, Le/a/m0/c1/a0;->f()V

    .line 3
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 4
    instance-of p1, p1, Le/a/m0/c1/b0$k;

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-wide v1, p0, Le/a/m0/c1/a0;->b:J

    .line 3
    iget-object v3, p0, Le/a/m0/c1/a0;->a:Le/a/m0/c1/a0$e;

    invoke-virtual {v3}, Le/a/m0/c1/a0$e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, ""

    .line 4
    invoke-static {v4, v1, v2}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v8, v5

    const-string v5, "preferences"

    const/4 v6, 0x0

    const-string v7, "[time] > ?"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v3

    .line 5
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "key"

    .line 7
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "type"

    .line 8
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "value"

    .line 9
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "time"

    .line 10
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 11
    :cond_0
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 12
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 13
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 14
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 15
    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    and-int/lit8 v12, v10, 0x7e

    if-lez v12, :cond_1

    .line 16
    new-instance v12, Ljava/io/DataInputStream;

    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v12, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    invoke-static {v12, v10}, Le/a/m0/a1$k;->X0(Ljava/io/DataInputStream;I)Ljava/lang/Object;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    const/4 v10, 0x0

    .line 18
    :goto_0
    :try_start_2
    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v9, :cond_0

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 20
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 21
    throw v0

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 22
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 23
    :cond_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 24
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Le/a/m0/c1/a0;->b:J

    return-object v0
.end method

.method public final f()V
    .locals 6

    .line 1
    sget-object v0, Le/a/m0/c1/a0;->c:Le/a/m0/c1/a0$h;

    iget-object v0, v0, Le/a/m0/c1/a0$h;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2
    iget-object v0, p0, Le/a/m0/c1/a0;->a:Le/a/m0/c1/a0$e;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/m0/c1/a0;->a:Le/a/m0/c1/a0$e;

    iget-object v1, v1, Le/a/m0/c1/a0$e;->a:Ljava/lang/String;

    .line 4
    sget-object v2, Le/a/m0/c1/a0;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6
    :goto_0
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/m0/c1/a0$d;

    if-eqz v2, :cond_1

    .line 7
    :goto_1
    iget-object v3, v2, Le/a/m0/c1/a0$d;->b:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/m0/c1/a0$b;

    if-eqz v3, :cond_0

    .line 8
    iget-wide v4, v2, Le/a/m0/c1/a0$d;->a:J

    invoke-interface {v3, v0, v4, v5}, Le/a/m0/c1/a0$b;->a(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 9
    sget-object v3, Le/a/m0/c1/a0;->c:Le/a/m0/c1/a0$h;

    iget-object v3, v3, Le/a/m0/c1/a0$h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_1

    .line 10
    :cond_0
    sget-object v2, Le/a/m0/c1/a0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 12
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 13
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 14
    sget-object v0, Le/a/m0/c1/a0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sget-object v1, Le/a/m0/c1/a0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_2

    return-void

    .line 15
    :cond_2
    new-instance v0, Le/a/m0/c1/b0$k;

    const-string v1, "Reschedule of synchronization job is required. Expected version does not match current."

    invoke-direct {v0, v1}, Le/a/m0/c1/b0$k;-><init>(Ljava/lang/String;)V

    throw v0
.end method
