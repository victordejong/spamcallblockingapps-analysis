.class public final Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;
.super Lcom/truecaller/contextcall/db/ContextCallDatabase;
.source "SourceFile"


# instance fields
.field public volatile b:Le/a/o/p/a/a;

.field public volatile c:Le/a/o/p/c/a;

.field public volatile d:Le/a/o/p/e/a;

.field public volatile e:Le/a/o/p/b/b;

.field public volatile f:Le/a/o/p/e/g/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/contextcall/db/ContextCallDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le/a/o/p/e/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->d:Le/a/o/p/e/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->d:Le/a/o/p/e/a;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->d:Le/a/o/p/e/a;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/o/p/e/b;

    invoke-direct {v0, p0}, Le/a/o/p/e/b;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->d:Le/a/o/p/e/a;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->d:Le/a/o/p/e/a;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Le/a/o/p/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->b:Le/a/o/p/a/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->b:Le/a/o/p/a/a;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->b:Le/a/o/p/a/a;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/o/p/a/b;

    invoke-direct {v0, p0}, Le/a/o/p/a/b;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->b:Le/a/o/p/a/a;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->b:Le/a/o/p/a/a;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Le/a/o/p/b/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->e:Le/a/o/p/b/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->e:Le/a/o/p/b/b;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->e:Le/a/o/p/b/b;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/o/p/b/c;

    invoke-direct {v0, p0}, Le/a/o/p/b/c;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->e:Le/a/o/p/b/b;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->e:Le/a/o/p/b/b;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAllTables()V
    .locals 4

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 1
    invoke-super {p0}, Ln3/c0/q;->assertNotMainThread()V

    .line 2
    invoke-super {p0}, Ln3/c0/q;->getOpenHelper()Ln3/e0/a/c;

    move-result-object v2

    invoke-interface {v2}, Ln3/e0/a/c;->getWritableDatabase()Ln3/e0/a/b;

    move-result-object v2

    .line 3
    :try_start_0
    invoke-super {p0}, Ln3/c0/q;->beginTransaction()V

    const-string v3, "DELETE FROM `context_call_availability`"

    .line 4
    invoke-interface {v2, v3}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `incoming_call_context`"

    .line 5
    invoke-interface {v2, v3}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `call_reason`"

    .line 6
    invoke-interface {v2, v3}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `predefined_call_reason`"

    .line 7
    invoke-interface {v2, v3}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `hidden_number`"

    .line 8
    invoke-interface {v2, v3}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 9
    invoke-super {p0}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-super {p0}, Ln3/c0/q;->endTransaction()V

    .line 11
    invoke-static {v2, v1}, Le/d/c/a/a;->Y0(Ln3/e0/a/b;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    invoke-interface {v2, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 13
    invoke-super {p0}, Ln3/c0/q;->endTransaction()V

    .line 14
    invoke-static {v2, v1}, Le/d/c/a/a;->Y0(Ln3/e0/a/b;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 15
    invoke-interface {v2, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 16
    :cond_1
    throw v3
.end method

.method public createInvalidationTracker()Ln3/c0/o;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v1, Ln3/c0/o;

    const-string v3, "context_call_availability"

    const-string v4, "incoming_call_context"

    const-string v5, "call_reason"

    const-string v6, "predefined_call_reason"

    const-string v7, "hidden_number"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Ln3/c0/o;-><init>(Ln3/c0/q;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public createOpenHelper(Ln3/c0/h;)Ln3/e0/a/c;
    .locals 5

    .line 1
    new-instance v0, Ln3/c0/x;

    new-instance v1, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl$a;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl$a;-><init>(Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;I)V

    const-string v2, "637bc9b78c45694fd61ec868ee73131c"

    const-string v3, "186a41922ab3dd32883abfc556621e8b"

    invoke-direct {v0, p1, v1, v2, v3}, Ln3/c0/x;-><init>(Ln3/c0/h;Ln3/c0/x$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p1, Ln3/c0/h;->b:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p1, Ln3/c0/h;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    new-instance v4, Ln3/e0/a/c$b;

    invoke-direct {v4, v1, v3, v0, v2}, Ln3/e0/a/c$b;-><init>(Landroid/content/Context;Ljava/lang/String;Ln3/e0/a/c$a;Z)V

    .line 4
    iget-object p1, p1, Ln3/c0/h;->a:Ln3/e0/a/c$c;

    invoke-interface {p1, v4}, Ln3/e0/a/c$c;->a(Ln3/e0/a/c$b;)Ln3/e0/a/c;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must set a non-null context to create the configuration."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Le/a/o/p/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->c:Le/a/o/p/c/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->c:Le/a/o/p/c/a;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->c:Le/a/o/p/c/a;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/o/p/c/b;

    invoke-direct {v0, p0}, Le/a/o/p/c/b;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->c:Le/a/o/p/c/a;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->c:Le/a/o/p/c/a;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Le/a/o/p/e/g/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->f:Le/a/o/p/e/g/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->f:Le/a/o/p/e/g/a;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->f:Le/a/o/p/e/g/a;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/o/p/e/g/b;

    invoke-direct {v0, p0}, Le/a/o/p/e/g/b;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->f:Le/a/o/p/e/g/a;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->f:Le/a/o/p/e/g/a;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequiredTypeConverters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-class v1, Le/a/o/p/a/a;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Le/a/o/p/c/a;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-class v1, Le/a/o/p/e/a;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-class v1, Le/a/o/p/b/b;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-class v1, Le/a/o/p/e/g/a;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
