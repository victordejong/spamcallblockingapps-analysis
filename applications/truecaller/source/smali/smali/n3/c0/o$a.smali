.class public Ln3/c0/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/c0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/c0/o;


# direct methods
.method public constructor <init>(Ln3/c0/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/c0/o$a;->a:Ln3/c0/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Ln3/c0/o$a;->a:Ln3/c0/o;

    iget-object v1, v1, Ln3/c0/o;->d:Ln3/c0/q;

    new-instance v2, Ln3/e0/a/a;

    const-string v3, "SELECT * FROM room_table_modification_log WHERE invalidated = 1;"

    invoke-direct {v2, v3}, Ln3/e0/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ln3/c0/q;->query(Ln3/e0/a/e;)Landroid/database/Cursor;

    move-result-object v1

    .line 3
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 4
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 7
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Ln3/c0/o$a;->a:Ln3/c0/o;

    iget-object v1, v1, Ln3/c0/o;->g:Ln3/e0/a/f;

    invoke-interface {v1}, Ln3/e0/a/f;->A()I

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 10
    throw v0
.end method

.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Ln3/c0/o$a;->a:Ln3/c0/o;

    iget-object v0, v0, Ln3/c0/o;->d:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->getCloseLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3
    :try_start_0
    iget-object v4, p0, Ln3/c0/o$a;->a:Ln3/c0/o;

    invoke-virtual {v4}, Ln3/c0/o;->c()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v4, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    iget-object v0, p0, Ln3/c0/o$a;->a:Ln3/c0/o;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6
    :cond_0
    :try_start_1
    iget-object v4, p0, Ln3/c0/o$a;->a:Ln3/c0/o;

    iget-object v4, v4, Ln3/c0/o;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v4, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    iget-object v0, p0, Ln3/c0/o$a;->a:Ln3/c0/o;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 9
    :cond_1
    :try_start_2
    iget-object v4, p0, Ln3/c0/o$a;->a:Ln3/c0/o;

    iget-object v4, v4, Ln3/c0/o;->d:Ln3/c0/q;

    invoke-virtual {v4}, Ln3/c0/q;->inTransaction()Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_2

    .line 10
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    iget-object v0, p0, Ln3/c0/o$a;->a:Ln3/c0/o;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 12
    :cond_2
    :try_start_3
    iget-object v4, p0, Ln3/c0/o$a;->a:Ln3/c0/o;

    iget-object v4, v4, Ln3/c0/o;->d:Ln3/c0/q;

    iget-boolean v5, v4, Ln3/c0/q;->mWriteAheadLoggingEnabled:Z

    if-eqz v5, :cond_3

    .line 13
    invoke-virtual {v4}, Ln3/c0/q;->getOpenHelper()Ln3/e0/a/c;

    move-result-object v4

    invoke-interface {v4}, Ln3/e0/a/c;->getWritableDatabase()Ln3/e0/a/b;

    move-result-object v4

    .line 14
    invoke-interface {v4}, Ln3/e0/a/b;->M()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 15
    :try_start_4
    invoke-virtual {p0}, Ln3/c0/o$a;->a()Ljava/util/Set;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 16
    :try_start_5
    invoke-interface {v4}, Ln3/e0/a/b;->b1()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 17
    :try_start_6
    invoke-interface {v4}, Ln3/e0/a/b;->f1()V

    goto :goto_1

    :catchall_0
    move-exception v6

    goto :goto_0

    :catchall_1
    move-exception v6

    move-object v5, v2

    :goto_0
    invoke-interface {v4}, Ln3/e0/a/b;->f1()V

    .line 18
    throw v6
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 19
    :cond_3
    :try_start_7
    invoke-virtual {p0}, Ln3/c0/o$a;->a()Ljava/util/Set;

    move-result-object v5
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 20
    :catch_0
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 21
    iget-object v0, p0, Ln3/c0/o$a;->a:Ln3/c0/o;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_2
    move-exception v1

    .line 22
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 23
    iget-object v0, p0, Ln3/c0/o$a;->a:Ln3/c0/o;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    throw v1

    :catch_1
    move-object v5, v2

    goto :goto_1

    :goto_2
    if-eqz v5, :cond_a

    .line 25
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 26
    iget-object v0, p0, Ln3/c0/o$a;->a:Ln3/c0/o;

    iget-object v0, v0, Ln3/c0/o;->j:Ln3/c/a/b/b;

    monitor-enter v0

    .line 27
    :try_start_8
    iget-object v4, p0, Ln3/c0/o$a;->a:Ln3/c0/o;

    iget-object v4, v4, Ln3/c0/o;->j:Ln3/c/a/b/b;

    invoke-virtual {v4}, Ln3/c/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_4
    :goto_3
    move-object v6, v4

    check-cast v6, Ln3/c/a/b/b$e;

    :try_start_9
    invoke-virtual {v6}, Ln3/c/a/b/b$e;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v6}, Ln3/c/a/b/b$e;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/c0/o$d;

    .line 29
    iget-object v7, v6, Ln3/c0/o$d;->a:[I

    array-length v7, v7

    move v8, v1

    move-object v9, v2

    :goto_4
    if-ge v8, v7, :cond_8

    .line 30
    iget-object v10, v6, Ln3/c0/o$d;->a:[I

    aget v10, v10, v8

    .line 31
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-ne v7, v3, :cond_5

    .line 32
    iget-object v9, v6, Ln3/c0/o$d;->d:Ljava/util/Set;

    goto :goto_5

    :cond_5
    if-nez v9, :cond_6

    .line 33
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 34
    :cond_6
    iget-object v10, v6, Ln3/c0/o$d;->b:[Ljava/lang/String;

    aget-object v10, v10, v8

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    if-eqz v9, :cond_4

    .line 35
    iget-object v6, v6, Ln3/c0/o$d;->c:Ln3/c0/o$c;

    invoke-virtual {v6, v9}, Ln3/c0/o$c;->a(Ljava/util/Set;)V

    goto :goto_3

    .line 36
    :cond_9
    monitor-exit v0

    goto :goto_6

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v1

    :cond_a
    :goto_6
    return-void
.end method
