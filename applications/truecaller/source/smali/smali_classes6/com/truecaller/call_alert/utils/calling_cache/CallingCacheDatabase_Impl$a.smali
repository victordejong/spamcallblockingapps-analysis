.class public Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl$a;
.super Ln3/c0/x$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl;->createOpenHelper(Ln3/c0/h;)Ln3/e0/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl$a;->a:Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl;

    invoke-direct {p0, p2}, Ln3/c0/x$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Ln3/e0/a/b;)V
    .locals 4

    const-string v0, "CREATE TABLE IF NOT EXISTS `call_cache` (`number` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `state` TEXT NOT NULL, `maxAgeSeconds` INTEGER NOT NULL, `_id` INTEGER PRIMARY KEY AUTOINCREMENT)"

    const-string v1, "CREATE UNIQUE INDEX IF NOT EXISTS `index_call_cache_number_state` ON `call_cache` (`number`, `state`)"

    const-string v2, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    const-string v3, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'af35447d6c059b339496371a9145b79d\')"

    .line 1
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Ln3/e0/a/b;)V
    .locals 3

    const-string v0, "DROP TABLE IF EXISTS `call_cache`"

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl$a;->a:Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl;

    .line 3
    iget-object v0, v0, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    iget-object v2, p0, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl$a;->a:Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl;

    .line 6
    iget-object v2, v2, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    .line 7
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/c0/q$b;

    invoke-virtual {v2, p1}, Ln3/c0/q$b;->b(Ln3/e0/a/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(Ln3/e0/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl$a;->a:Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl;

    .line 2
    iget-object v0, v0, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl$a;->a:Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl;

    .line 5
    iget-object v2, v2, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    .line 6
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/c0/q$b;

    invoke-virtual {v2, p1}, Ln3/c0/q$b;->a(Ln3/e0/a/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOpen(Ln3/e0/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl$a;->a:Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl;

    .line 2
    iput-object p1, v0, Ln3/c0/q;->mDatabase:Ln3/e0/a/b;

    .line 3
    iget-object v0, p0, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl$a;->a:Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl;

    .line 4
    invoke-virtual {v0, p1}, Ln3/c0/q;->internalInitInvalidationTracker(Ln3/e0/a/b;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl$a;->a:Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl;

    .line 6
    iget-object v0, v0, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 8
    iget-object v2, p0, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl$a;->a:Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl;

    .line 9
    iget-object v2, v2, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    .line 10
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/c0/q$b;

    invoke-virtual {v2, p1}, Ln3/c0/q$b;->c(Ln3/e0/a/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPostMigrate(Ln3/e0/a/b;)V
    .locals 0

    return-void
.end method

.method public onPreMigrate(Ln3/e0/a/b;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ln3/c0/h0/b;->a(Ln3/e0/a/b;)V

    return-void
.end method

.method public onValidateSchema(Ln3/e0/a/b;)Ln3/c0/x$b;
    .locals 15

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v1, Ln3/c0/h0/e$a;

    const-string v3, "number"

    const-string v4, "TEXT"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ln3/c0/h0/e$a;

    const-string v4, "timestamp"

    const-string v5, "INTEGER"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "timestamp"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Ln3/c0/h0/e$a;

    const-string v5, "state"

    const-string v6, "TEXT"

    const/4 v3, 0x1

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v4, v1

    move v7, v3

    move v8, v14

    move-object v9, v12

    move v10, v13

    invoke-direct/range {v4 .. v10}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "state"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Ln3/c0/h0/e$a;

    const-string v8, "maxAgeSeconds"

    const-string v9, "INTEGER"

    move-object v7, v1

    move v10, v3

    move v11, v14

    invoke-direct/range {v7 .. v13}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "maxAgeSeconds"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Ln3/c0/h0/e$a;

    const-string v8, "_id"

    const-string v9, "INTEGER"

    const/4 v11, 0x1

    move-object v7, v1

    move v10, v14

    invoke-direct/range {v7 .. v13}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "_id"

    const/4 v5, 0x0

    invoke-static {v0, v3, v1, v5}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v1

    .line 7
    new-instance v3, Ljava/util/HashSet;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 8
    new-instance v7, Ln3/c0/h0/e$d;

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "index_call_cache_number_state"

    invoke-direct {v7, v4, v6, v2}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v2, Ln3/c0/h0/e;

    const-string v4, "call_cache"

    invoke-direct {v2, v4, v0, v1, v3}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    move-object/from16 v0, p1

    .line 10
    invoke-static {v0, v4}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v0

    .line 11
    invoke-virtual {v2, v0}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Ln3/c0/x$b;

    const-string v3, "call_cache(com.truecaller.network.util.calling_cache.CallCacheEntry).\n Expected:\n"

    const-string v4, "\n Found:\n"

    invoke-static {v3, v2, v4, v0}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v1

    .line 13
    :cond_0
    new-instance v0, Ln3/c0/x$b;

    const/4 v1, 0x0

    invoke-direct {v0, v6, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
