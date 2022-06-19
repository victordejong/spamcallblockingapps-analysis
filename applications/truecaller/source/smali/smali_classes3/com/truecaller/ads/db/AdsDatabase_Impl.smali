.class public final Lcom/truecaller/ads/db/AdsDatabase_Impl;
.super Lcom/truecaller/ads/db/AdsDatabase;
.source "SourceFile"


# static fields
.field public static final synthetic l:I


# instance fields
.field public volatile d:Le/a/i/e/h/a/e;

.field public volatile e:Le/a/i/e/h/a/l;

.field public volatile f:Le/a/i/v/f;

.field public volatile g:Le/a/i/e/h/a/b;

.field public volatile h:Le/a/i/e/h/a/i;

.field public volatile i:Le/a/i/d0/c0/m;

.field public volatile j:Le/a/i/d0/g0/c/b;

.field public volatile k:Le/a/i/b0/c/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/ads/db/AdsDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le/a/i/b0/c/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->k:Le/a/i/b0/c/c/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->k:Le/a/i/b0/c/c/a;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->k:Le/a/i/b0/c/c/a;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/i/b0/c/c/b;

    invoke-direct {v0, p0}, Le/a/i/b0/c/c/b;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->k:Le/a/i/b0/c/c/a;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->k:Le/a/i/b0/c/c/a;

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

.method public b()Le/a/i/v/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->f:Le/a/i/v/f;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->f:Le/a/i/v/f;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->f:Le/a/i/v/f;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/i/v/g;

    invoke-direct {v0, p0}, Le/a/i/v/g;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->f:Le/a/i/v/f;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->f:Le/a/i/v/f;

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

.method public c()Le/a/i/e/h/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->g:Le/a/i/e/h/a/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->g:Le/a/i/e/h/a/b;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->g:Le/a/i/e/h/a/b;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/i/e/h/a/c;

    invoke-direct {v0, p0}, Le/a/i/e/h/a/c;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->g:Le/a/i/e/h/a/b;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->g:Le/a/i/e/h/a/b;

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

    const-string v3, "DELETE FROM `offline_ads`"

    .line 4
    invoke-interface {v2, v3}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `offline_tracker`"

    .line 5
    invoke-interface {v2, v3}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `cached_ads`"

    .line 6
    invoke-interface {v2, v3}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `offline_ad_ui_config`"

    .line 7
    invoke-interface {v2, v3}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `offline_leadgen`"

    .line 8
    invoke-interface {v2, v3}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `partner_ads`"

    .line 9
    invoke-interface {v2, v3}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `predictive_ecpm_config`"

    .line 10
    invoke-interface {v2, v3}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `ad_campaigns`"

    .line 11
    invoke-interface {v2, v3}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 12
    invoke-super {p0}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-super {p0}, Ln3/c0/q;->endTransaction()V

    .line 14
    invoke-static {v2, v1}, Le/d/c/a/a;->Y0(Ln3/e0/a/b;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15
    invoke-interface {v2, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 16
    invoke-super {p0}, Ln3/c0/q;->endTransaction()V

    .line 17
    invoke-static {v2, v1}, Le/d/c/a/a;->Y0(Ln3/e0/a/b;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 18
    invoke-interface {v2, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 19
    :cond_1
    throw v3
.end method

.method public createInvalidationTracker()Ln3/c0/o;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v1, Ln3/c0/o;

    const-string v3, "offline_ads"

    const-string v4, "offline_tracker"

    const-string v5, "cached_ads"

    const-string v6, "offline_ad_ui_config"

    const-string v7, "offline_leadgen"

    const-string v8, "partner_ads"

    const-string v9, "predictive_ecpm_config"

    const-string v10, "ad_campaigns"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Ln3/c0/o;-><init>(Ln3/c0/q;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public createOpenHelper(Ln3/c0/h;)Ln3/e0/a/c;
    .locals 5

    .line 1
    new-instance v0, Ln3/c0/x;

    new-instance v1, Lcom/truecaller/ads/db/AdsDatabase_Impl$a;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v2}, Lcom/truecaller/ads/db/AdsDatabase_Impl$a;-><init>(Lcom/truecaller/ads/db/AdsDatabase_Impl;I)V

    const-string v2, "39638243cfe14a7dd6eb95d07eb4ada1"

    const-string v3, "6480b41bfa0016f35d80e1e6a030a1c6"

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

.method public d()Le/a/i/e/h/a/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->d:Le/a/i/e/h/a/e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->d:Le/a/i/e/h/a/e;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->d:Le/a/i/e/h/a/e;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/i/e/h/a/f;

    invoke-direct {v0, p0}, Le/a/i/e/h/a/f;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->d:Le/a/i/e/h/a/e;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->d:Le/a/i/e/h/a/e;

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

.method public e()Le/a/i/e/h/a/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->h:Le/a/i/e/h/a/i;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->h:Le/a/i/e/h/a/i;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->h:Le/a/i/e/h/a/i;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/i/e/h/a/j;

    invoke-direct {v0, p0}, Le/a/i/e/h/a/j;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->h:Le/a/i/e/h/a/i;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->h:Le/a/i/e/h/a/i;

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

.method public f()Le/a/i/d0/c0/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->i:Le/a/i/d0/c0/m;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->i:Le/a/i/d0/c0/m;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->i:Le/a/i/d0/c0/m;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/i/d0/c0/n;

    invoke-direct {v0, p0}, Le/a/i/d0/c0/n;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->i:Le/a/i/d0/c0/m;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->i:Le/a/i/d0/c0/m;

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

.method public g()Le/a/i/d0/g0/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->j:Le/a/i/d0/g0/c/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->j:Le/a/i/d0/g0/c/b;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->j:Le/a/i/d0/g0/c/b;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/i/d0/g0/c/c;

    invoke-direct {v0, p0}, Le/a/i/d0/g0/c/c;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->j:Le/a/i/d0/g0/c/b;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->j:Le/a/i/d0/g0/c/b;

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
    const-class v1, Le/a/i/e/h/a/e;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Le/a/i/e/h/a/l;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-class v1, Le/a/i/v/f;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-class v1, Le/a/i/e/h/a/b;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-class v1, Le/a/i/e/h/a/i;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-class v1, Le/a/i/d0/c0/m;

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-class v1, Le/a/i/d0/g0/c/b;

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-class v1, Le/a/i/b0/c/c/a;

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public h()Le/a/i/e/h/a/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->e:Le/a/i/e/h/a/l;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->e:Le/a/i/e/h/a/l;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->e:Le/a/i/e/h/a/l;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/i/e/h/a/m;

    invoke-direct {v0, p0}, Le/a/i/e/h/a/m;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->e:Le/a/i/e/h/a/l;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/ads/db/AdsDatabase_Impl;->e:Le/a/i/e/h/a/l;

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
