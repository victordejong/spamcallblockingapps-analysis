.class public final Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;
.super Lcom/appnext/core/ra/database/RecentAppsDatabase;
.source "SourceFile"


# instance fields
.field private volatile eX:Lcom/appnext/core/ra/database/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/appnext/core/ra/database/RecentAppsDatabase;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 2
    iget-object p0, p0, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic a(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;Ln3/e0/a/b;)Ln3/e0/a/b;
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/c0/q;->mDatabase:Ln3/e0/a/b;

    return-object p1
.end method

.method public static synthetic b(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;Ln3/e0/a/b;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Ln3/c0/q;->internalInitInvalidationTracker(Ln3/e0/a/b;)V

    return-void
.end method

.method public static synthetic c(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic e(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic f(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic g(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic h(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic i(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final clearAllTables()V
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

    const-string v3, "DELETE FROM `RecentApp`"

    .line 4
    invoke-interface {v2, v3}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 5
    invoke-super {p0}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-super {p0}, Ln3/c0/q;->endTransaction()V

    .line 7
    invoke-static {v2, v1}, Le/d/c/a/a;->Y0(Ln3/e0/a/b;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-interface {v2, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 9
    invoke-super {p0}, Ln3/c0/q;->endTransaction()V

    .line 10
    invoke-static {v2, v1}, Le/d/c/a/a;->Y0(Ln3/e0/a/b;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    invoke-interface {v2, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 12
    :cond_1
    throw v3
.end method

.method public final createInvalidationTracker()Ln3/c0/o;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v1, Ln3/c0/o;

    const-string v3, "RecentApp"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Ln3/c0/o;-><init>(Ln3/c0/q;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public final createOpenHelper(Ln3/c0/h;)Ln3/e0/a/c;
    .locals 5

    .line 1
    new-instance v0, Ln3/c0/x;

    new-instance v1, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl$1;-><init>(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;I)V

    const-string v2, "e1eb051e9230fda8568d681a1d3cf00b"

    const-string v3, "52c6c70fcfd3ff556a2b04d53ac85ff8"

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

.method public final recentAppDao()Lcom/appnext/core/ra/database/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;->eX:Lcom/appnext/core/ra/database/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;->eX:Lcom/appnext/core/ra/database/b;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;->eX:Lcom/appnext/core/ra/database/b;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/appnext/core/ra/database/c;

    invoke-direct {v0, p0}, Lcom/appnext/core/ra/database/c;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;->eX:Lcom/appnext/core/ra/database/b;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;->eX:Lcom/appnext/core/ra/database/b;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    throw v0
.end method
