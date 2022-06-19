.class public final Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase_Impl;
.super Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;
.source "SourceFile"


# instance fields
.field public volatile b:Le/a/q/g/c;

.field public volatile c:Le/a/q/g/g;

.field public volatile d:Le/a/q/g/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le/a/q/g/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase_Impl;->d:Le/a/q/g/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase_Impl;->d:Le/a/q/g/a;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase_Impl;->d:Le/a/q/g/a;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/q/g/b;

    invoke-direct {v0, p0}, Le/a/q/g/b;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase_Impl;->d:Le/a/q/g/a;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase_Impl;->d:Le/a/q/g/a;

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

.method public b()Le/a/q/g/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase_Impl;->b:Le/a/q/g/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase_Impl;->b:Le/a/q/g/c;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase_Impl;->b:Le/a/q/g/c;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/q/g/d;

    invoke-direct {v0, p0}, Le/a/q/g/d;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase_Impl;->b:Le/a/q/g/c;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase_Impl;->b:Le/a/q/g/c;

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

.method public c()Le/a/q/g/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase_Impl;->c:Le/a/q/g/g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase_Impl;->c:Le/a/q/g/g;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase_Impl;->c:Le/a/q/g/g;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/q/g/h;

    invoke-direct {v0, p0}, Le/a/q/g/h;-><init>(Ln3/c0/q;)V

    iput-object v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase_Impl;->c:Le/a/q/g/g;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase_Impl;->c:Le/a/q/g/g;

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

    const-string v3, "DELETE FROM `contact_feedback`"

    .line 4
    invoke-interface {v2, v3}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `contact_feedback_timestamp_table`"

    .line 5
    invoke-interface {v2, v3}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `comment_feedback_table`"

    .line 6
    invoke-interface {v2, v3}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 7
    invoke-super {p0}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-super {p0}, Ln3/c0/q;->endTransaction()V

    .line 9
    invoke-static {v2, v1}, Le/d/c/a/a;->Y0(Ln3/e0/a/b;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    invoke-interface {v2, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 11
    invoke-super {p0}, Ln3/c0/q;->endTransaction()V

    .line 12
    invoke-static {v2, v1}, Le/d/c/a/a;->Y0(Ln3/e0/a/b;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    invoke-interface {v2, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 14
    :cond_1
    throw v3
.end method

.method public createInvalidationTracker()Ln3/c0/o;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v1, Ln3/c0/o;

    const-string v3, "contact_feedback"

    const-string v4, "contact_feedback_timestamp_table"

    const-string v5, "comment_feedback_table"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Ln3/c0/o;-><init>(Ln3/c0/q;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public createOpenHelper(Ln3/c0/h;)Ln3/e0/a/c;
    .locals 5

    .line 1
    new-instance v0, Ln3/c0/x;

    new-instance v1, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase_Impl$a;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase_Impl$a;-><init>(Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase_Impl;I)V

    const-string v2, "8c3c405d4100a99bcdadfba7d2f67683"

    const-string v3, "077e32983b264203ee888e43a96fb935"

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
    const-class v1, Le/a/q/g/c;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Le/a/q/g/g;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-class v1, Le/a/q/g/a;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
