.class public final Landroidx/work/impl/WorkDatabase_Impl;
.super Landroidx/work/impl/WorkDatabase;
.source "SourceFile"


# static fields
.field public static final synthetic j:I


# instance fields
.field public volatile c:Ln3/m0/c0/s/q;

.field public volatile d:Ln3/m0/c0/s/b;

.field public volatile e:Ln3/m0/c0/s/v;

.field public volatile f:Ln3/m0/c0/s/h;

.field public volatile g:Ln3/m0/c0/s/k;

.field public volatile h:Ln3/m0/c0/s/n;

.field public volatile i:Ln3/m0/c0/s/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ln3/m0/c0/s/b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->d:Ln3/m0/c0/s/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->d:Ln3/m0/c0/s/b;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->d:Ln3/m0/c0/s/b;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ln3/m0/c0/s/c;

    invoke-direct {v0, p0}, Ln3/m0/c0/s/c;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->d:Ln3/m0/c0/s/b;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->d:Ln3/m0/c0/s/b;

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

.method public b()Ln3/m0/c0/s/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->i:Ln3/m0/c0/s/e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->i:Ln3/m0/c0/s/e;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->i:Ln3/m0/c0/s/e;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ln3/m0/c0/s/f;

    invoke-direct {v0, p0}, Ln3/m0/c0/s/f;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->i:Ln3/m0/c0/s/e;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->i:Ln3/m0/c0/s/e;

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

.method public c()Ln3/m0/c0/s/h;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->f:Ln3/m0/c0/s/h;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->f:Ln3/m0/c0/s/h;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->f:Ln3/m0/c0/s/h;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ln3/m0/c0/s/i;

    invoke-direct {v0, p0}, Ln3/m0/c0/s/i;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->f:Ln3/m0/c0/s/h;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->f:Ln3/m0/c0/s/h;

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
    .locals 6

    .line 1
    invoke-super {p0}, Ln3/c0/q;->assertNotMainThread()V

    .line 2
    invoke-super {p0}, Ln3/c0/q;->getOpenHelper()Ln3/e0/a/c;

    move-result-object v0

    invoke-interface {v0}, Ln3/e0/a/c;->getWritableDatabase()Ln3/e0/a/b;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "VACUUM"

    const-string v3, "PRAGMA foreign_keys = TRUE"

    const-string v4, "PRAGMA wal_checkpoint(FULL)"

    if-nez v1, :cond_0

    :try_start_0
    const-string v5, "PRAGMA foreign_keys = FALSE"

    .line 3
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-super {p0}, Ln3/c0/q;->beginTransaction()V

    if-eqz v1, :cond_1

    const-string v5, "PRAGMA defer_foreign_keys = TRUE"

    .line 5
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    :cond_1
    const-string v5, "DELETE FROM `Dependency`"

    .line 6
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `WorkSpec`"

    .line 7
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `WorkTag`"

    .line 8
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `SystemIdInfo`"

    .line 9
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `WorkName`"

    .line 10
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `WorkProgress`"

    .line 11
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `Preference`"

    .line 12
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 13
    invoke-super {p0}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-super {p0}, Ln3/c0/q;->endTransaction()V

    if-nez v1, :cond_2

    .line 15
    invoke-interface {v0, v3}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 16
    :cond_2
    invoke-static {v0, v4}, Le/d/c/a/a;->Y0(Ln3/e0/a/b;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 17
    invoke-interface {v0, v2}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v5

    .line 18
    invoke-super {p0}, Ln3/c0/q;->endTransaction()V

    if-nez v1, :cond_4

    .line 19
    invoke-interface {v0, v3}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 20
    :cond_4
    invoke-static {v0, v4}, Le/d/c/a/a;->Y0(Ln3/e0/a/b;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 21
    invoke-interface {v0, v2}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 22
    :cond_5
    throw v5
.end method

.method public createInvalidationTracker()Ln3/c0/o;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v1, Ln3/c0/o;

    const-string v3, "Dependency"

    const-string v4, "WorkSpec"

    const-string v5, "WorkTag"

    const-string v6, "SystemIdInfo"

    const-string v7, "WorkName"

    const-string v8, "WorkProgress"

    const-string v9, "Preference"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Ln3/c0/o;-><init>(Ln3/c0/q;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public createOpenHelper(Ln3/c0/h;)Ln3/e0/a/c;
    .locals 5

    .line 1
    new-instance v0, Ln3/c0/x;

    new-instance v1, Landroidx/work/impl/WorkDatabase_Impl$a;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Landroidx/work/impl/WorkDatabase_Impl$a;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    const-string v2, "c103703e120ae8cc73c9248622f3cd1e"

    const-string v3, "49f946663a8deb7054212b8adda248c6"

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

.method public d()Ln3/m0/c0/s/k;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Ln3/m0/c0/s/k;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Ln3/m0/c0/s/k;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Ln3/m0/c0/s/k;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ln3/m0/c0/s/l;

    invoke-direct {v0, p0}, Ln3/m0/c0/s/l;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Ln3/m0/c0/s/k;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Ln3/m0/c0/s/k;

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

.method public e()Ln3/m0/c0/s/n;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->h:Ln3/m0/c0/s/n;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->h:Ln3/m0/c0/s/n;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->h:Ln3/m0/c0/s/n;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ln3/m0/c0/s/o;

    invoke-direct {v0, p0}, Ln3/m0/c0/s/o;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->h:Ln3/m0/c0/s/n;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->h:Ln3/m0/c0/s/n;

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

.method public f()Ln3/m0/c0/s/q;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->c:Ln3/m0/c0/s/q;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->c:Ln3/m0/c0/s/q;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->c:Ln3/m0/c0/s/q;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ln3/m0/c0/s/t;

    invoke-direct {v0, p0}, Ln3/m0/c0/s/t;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->c:Ln3/m0/c0/s/q;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->c:Ln3/m0/c0/s/q;

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

.method public g()Ln3/m0/c0/s/v;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->e:Ln3/m0/c0/s/v;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->e:Ln3/m0/c0/s/v;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->e:Ln3/m0/c0/s/v;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ln3/m0/c0/s/w;

    invoke-direct {v0, p0}, Ln3/m0/c0/s/w;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->e:Ln3/m0/c0/s/v;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->e:Ln3/m0/c0/s/v;

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
