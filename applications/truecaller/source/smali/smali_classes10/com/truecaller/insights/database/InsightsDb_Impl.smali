.class public final Lcom/truecaller/insights/database/InsightsDb_Impl;
.super Lcom/truecaller/insights/database/InsightsDb;
.source "SourceFile"


# instance fields
.field public volatile a:Le/a/c/c/d/d0;

.field public volatile b:Le/a/c/c/d/m0;

.field public volatile c:Le/a/c/c/d/s;

.field public volatile d:Le/a/c/c/d/c;

.field public volatile e:Le/a/c/c/d/a;

.field public volatile f:Le/a/c/c/d/e;

.field public volatile g:Le/a/c/c/d/i;

.field public volatile h:Le/a/c/c/d/k;

.field public volatile i:Le/a/c/c/d/p;

.field public volatile j:Le/a/c/c/d/m;

.field public volatile k:Le/a/c/c/d/y;

.field public volatile l:Le/a/c/c/d/g;

.field public volatile m:Le/a/c/c/d/a0;

.field public volatile n:Le/a/c/c/d/u;

.field public volatile o:Le/a/c/c/d/f0;

.field public volatile p:Le/a/c/c/d/j0;

.field public volatile q:Le/a/c/c/d/o0;

.field public volatile r:Le/a/c/c/d/w;

.field public volatile s:Le/a/c/c/d/h0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/insights/database/InsightsDb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le/a/c/c/d/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->e:Le/a/c/c/d/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->e:Le/a/c/c/d/a;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->e:Le/a/c/c/d/a;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/c/c/d/b;

    invoke-direct {v0, p0}, Le/a/c/c/d/b;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->e:Le/a/c/c/d/a;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->e:Le/a/c/c/d/a;

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

.method public b()Le/a/c/c/d/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->d:Le/a/c/c/d/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->d:Le/a/c/c/d/c;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->d:Le/a/c/c/d/c;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/c/c/d/d;

    invoke-direct {v0, p0}, Le/a/c/c/d/d;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->d:Le/a/c/c/d/c;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->d:Le/a/c/c/d/c;

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

.method public c()Le/a/c/c/d/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->f:Le/a/c/c/d/e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->f:Le/a/c/c/d/e;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->f:Le/a/c/c/d/e;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/c/c/d/f;

    invoke-direct {v0, p0}, Le/a/c/c/d/f;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->f:Le/a/c/c/d/e;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->f:Le/a/c/c/d/e;

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
    const-string v5, "DELETE FROM `parsed_data_object_table`"

    .line 6
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `sms_backup_table`"

    .line 7
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `account_relation_model`"

    .line 8
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `account_mapping_rule_model`"

    .line 9
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `account_model_table`"

    .line 10
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `link_prune_table`"

    .line 11
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `states_table`"

    .line 12
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `analytics_property_maps`"

    .line 13
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `analytics_events`"

    .line 14
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `insights_reminders`"

    .line 15
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `action_state`"

    .line 16
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `categorizer_probability`"

    .line 17
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `sms_message_fts`"

    .line 18
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `reclassified_message`"

    .line 19
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `pdo_fts`"

    .line 20
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `feedback`"

    .line 21
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `sender_info`"

    .line 22
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `aggregate_analytics_events`"

    .line 23
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `sender_resolution_table`"

    .line 24
    invoke-interface {v0, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 25
    invoke-super {p0}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-super {p0}, Ln3/c0/q;->endTransaction()V

    if-nez v1, :cond_2

    .line 27
    invoke-interface {v0, v3}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 28
    :cond_2
    invoke-static {v0, v4}, Le/d/c/a/a;->Y0(Ln3/e0/a/b;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 29
    invoke-interface {v0, v2}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v5

    .line 30
    invoke-super {p0}, Ln3/c0/q;->endTransaction()V

    if-nez v1, :cond_4

    .line 31
    invoke-interface {v0, v3}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 32
    :cond_4
    invoke-static {v0, v4}, Le/d/c/a/a;->Y0(Ln3/e0/a/b;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 33
    invoke-interface {v0, v2}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 34
    :cond_5
    throw v5
.end method

.method public createInvalidationTracker()Ln3/c0/o;
    .locals 22

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "sms_message_fts"

    const-string v2, "sms_backup_table"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pdo_fts"

    const-string v2, "parsed_data_object_table"

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    new-instance v2, Ln3/c0/o;

    const-string v3, "parsed_data_object_table"

    const-string v4, "sms_backup_table"

    const-string v5, "account_model_table"

    const-string v6, "account_relation_model"

    const-string v7, "account_mapping_rule_model"

    const-string v8, "link_prune_table"

    const-string v9, "states_table"

    const-string v10, "analytics_events"

    const-string v11, "analytics_property_maps"

    const-string v12, "insights_reminders"

    const-string v13, "action_state"

    const-string v14, "categorizer_probability"

    const-string v15, "sms_message_fts"

    const-string v16, "reclassified_message"

    const-string v17, "pdo_fts"

    const-string v18, "feedback"

    const-string v19, "sender_info"

    const-string v20, "aggregate_analytics_events"

    const-string v21, "sender_resolution_table"

    filled-new-array/range {v3 .. v21}, [Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    invoke-direct {v2, v4, v0, v1, v3}, Ln3/c0/o;-><init>(Ln3/c0/q;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v2
.end method

.method public createOpenHelper(Ln3/c0/h;)Ln3/e0/a/c;
    .locals 5

    .line 1
    new-instance v0, Ln3/c0/x;

    new-instance v1, Lcom/truecaller/insights/database/InsightsDb_Impl$a;

    const/16 v2, 0x37

    invoke-direct {v1, p0, v2}, Lcom/truecaller/insights/database/InsightsDb_Impl$a;-><init>(Lcom/truecaller/insights/database/InsightsDb_Impl;I)V

    const-string v2, "bdd3ef8f4b0524f2c4c637b896d776da"

    const-string v3, "dcf04f80e226c5edd0323464d1858e5a"

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

.method public d()Le/a/c/c/d/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->l:Le/a/c/c/d/g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->l:Le/a/c/c/d/g;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->l:Le/a/c/c/d/g;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/c/c/d/h;

    invoke-direct {v0, p0}, Le/a/c/c/d/h;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->l:Le/a/c/c/d/g;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->l:Le/a/c/c/d/g;

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

.method public e()Le/a/c/c/d/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->g:Le/a/c/c/d/i;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->g:Le/a/c/c/d/i;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->g:Le/a/c/c/d/i;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/c/c/d/j;

    invoke-direct {v0, p0}, Le/a/c/c/d/j;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->g:Le/a/c/c/d/i;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->g:Le/a/c/c/d/i;

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

.method public f()Le/a/c/c/d/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->h:Le/a/c/c/d/k;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->h:Le/a/c/c/d/k;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->h:Le/a/c/c/d/k;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/c/c/d/l;

    invoke-direct {v0, p0}, Le/a/c/c/d/l;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->h:Le/a/c/c/d/k;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->h:Le/a/c/c/d/k;

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

.method public g()Le/a/c/c/d/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->i:Le/a/c/c/d/p;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->i:Le/a/c/c/d/p;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->i:Le/a/c/c/d/p;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/c/c/d/q;

    invoke-direct {v0, p0}, Le/a/c/c/d/q;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->i:Le/a/c/c/d/p;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->i:Le/a/c/c/d/p;

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
    const-class v1, Le/a/c/c/d/d0;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Le/a/c/c/d/m0;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-class v1, Le/a/c/c/d/s;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-class v1, Le/a/c/c/d/c;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-class v1, Le/a/c/c/d/a;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-class v1, Le/a/c/c/d/e;

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-class v1, Le/a/c/c/d/i;

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-class v1, Le/a/c/c/d/k;

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-class v1, Le/a/c/c/d/p;

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-class v1, Le/a/c/c/d/m;

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-class v1, Le/a/c/c/d/y;

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-class v1, Le/a/c/c/d/g;

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-class v1, Le/a/c/c/d/a0;

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-class v1, Le/a/c/c/d/u;

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-class v1, Le/a/c/c/d/f0;

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-class v1, Le/a/c/c/d/j0;

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-class v1, Le/a/c/c/d/o0;

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-class v1, Le/a/c/c/d/w;

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 55
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-class v1, Le/a/c/c/d/h0;

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public h()Le/a/c/c/d/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->c:Le/a/c/c/d/s;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->c:Le/a/c/c/d/s;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->c:Le/a/c/c/d/s;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/c/c/d/t;

    invoke-direct {v0, p0}, Le/a/c/c/d/t;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->c:Le/a/c/c/d/s;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->c:Le/a/c/c/d/s;

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

.method public i()Le/a/c/c/d/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->n:Le/a/c/c/d/u;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->n:Le/a/c/c/d/u;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->n:Le/a/c/c/d/u;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/c/c/d/v;

    invoke-direct {v0, p0}, Le/a/c/c/d/v;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->n:Le/a/c/c/d/u;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->n:Le/a/c/c/d/u;

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

.method public j()Le/a/c/c/d/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->r:Le/a/c/c/d/w;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->r:Le/a/c/c/d/w;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->r:Le/a/c/c/d/w;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/c/c/d/x;

    invoke-direct {v0, p0}, Le/a/c/c/d/x;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->r:Le/a/c/c/d/w;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->r:Le/a/c/c/d/w;

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

.method public k()Le/a/c/c/d/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->j:Le/a/c/c/d/m;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->j:Le/a/c/c/d/m;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->j:Le/a/c/c/d/m;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/c/c/d/n;

    invoke-direct {v0, p0}, Le/a/c/c/d/n;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->j:Le/a/c/c/d/m;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->j:Le/a/c/c/d/m;

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

.method public l()Le/a/c/c/d/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->m:Le/a/c/c/d/a0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->m:Le/a/c/c/d/a0;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->m:Le/a/c/c/d/a0;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/c/c/d/c0;

    invoke-direct {v0, p0}, Le/a/c/c/d/c0;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->m:Le/a/c/c/d/a0;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->m:Le/a/c/c/d/a0;

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

.method public m()Le/a/c/c/d/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->a:Le/a/c/c/d/d0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->a:Le/a/c/c/d/d0;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->a:Le/a/c/c/d/d0;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/c/c/d/e0;

    invoke-direct {v0, p0}, Le/a/c/c/d/e0;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->a:Le/a/c/c/d/d0;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->a:Le/a/c/c/d/d0;

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

.method public n()Le/a/c/c/d/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->k:Le/a/c/c/d/y;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->k:Le/a/c/c/d/y;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->k:Le/a/c/c/d/y;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/c/c/d/z;

    invoke-direct {v0, p0}, Le/a/c/c/d/z;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->k:Le/a/c/c/d/y;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->k:Le/a/c/c/d/y;

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

.method public o()Le/a/c/c/d/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->o:Le/a/c/c/d/f0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->o:Le/a/c/c/d/f0;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->o:Le/a/c/c/d/f0;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/c/c/d/g0;

    invoke-direct {v0, p0}, Le/a/c/c/d/g0;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->o:Le/a/c/c/d/f0;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->o:Le/a/c/c/d/f0;

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

.method public p()Le/a/c/c/d/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->s:Le/a/c/c/d/h0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->s:Le/a/c/c/d/h0;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->s:Le/a/c/c/d/h0;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/c/c/d/i0;

    invoke-direct {v0, p0}, Le/a/c/c/d/i0;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->s:Le/a/c/c/d/h0;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->s:Le/a/c/c/d/h0;

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

.method public q()Le/a/c/c/d/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->p:Le/a/c/c/d/j0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->p:Le/a/c/c/d/j0;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->p:Le/a/c/c/d/j0;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/c/c/d/k0;

    invoke-direct {v0, p0}, Le/a/c/c/d/k0;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->p:Le/a/c/c/d/j0;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->p:Le/a/c/c/d/j0;

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

.method public r()Le/a/c/c/d/m0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->b:Le/a/c/c/d/m0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->b:Le/a/c/c/d/m0;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->b:Le/a/c/c/d/m0;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/c/c/d/n0;

    invoke-direct {v0, p0}, Le/a/c/c/d/n0;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->b:Le/a/c/c/d/m0;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->b:Le/a/c/c/d/m0;

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

.method public s()Le/a/c/c/d/o0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->q:Le/a/c/c/d/o0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->q:Le/a/c/c/d/o0;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->q:Le/a/c/c/d/o0;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/c/c/d/p0;

    invoke-direct {v0, p0}, Le/a/c/c/d/p0;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->q:Le/a/c/c/d/o0;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/insights/database/InsightsDb_Impl;->q:Le/a/c/c/d/o0;

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
