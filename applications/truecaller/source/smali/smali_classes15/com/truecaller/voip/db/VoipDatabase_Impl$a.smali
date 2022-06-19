.class public Lcom/truecaller/voip/db/VoipDatabase_Impl$a;
.super Ln3/c0/x$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/voip/db/VoipDatabase_Impl;->createOpenHelper(Ln3/c0/h;)Ln3/e0/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/voip/db/VoipDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/db/VoipDatabase_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/voip/db/VoipDatabase_Impl$a;->a:Lcom/truecaller/voip/db/VoipDatabase_Impl;

    invoke-direct {p0, p2}, Ln3/c0/x$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Ln3/e0/a/b;)V
    .locals 4

    const-string v0, "CREATE TABLE IF NOT EXISTS `voip_availability` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `phone` TEXT NOT NULL, `voip_enabled` INTEGER NOT NULL, `version` INTEGER NOT NULL)"

    const-string v1, "CREATE UNIQUE INDEX IF NOT EXISTS `index_voip_availability_phone` ON `voip_availability` (`phone`)"

    const-string v2, "CREATE TABLE IF NOT EXISTS `voip_id_cache` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `voip_id` TEXT NOT NULL, `number` TEXT NOT NULL, `expiry_epoch_seconds` INTEGER NOT NULL)"

    const-string v3, "CREATE UNIQUE INDEX IF NOT EXISTS `index_voip_id_cache_voip_id` ON `voip_id_cache` (`voip_id`)"

    .line 1
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_voip_id_cache_number` ON `voip_id_cache` (`number`)"

    .line 2
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 3
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'347a6a5a76bf916aae5582781ebc7fb7\')"

    .line 4
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Ln3/e0/a/b;)V
    .locals 3

    const-string v0, "DROP TABLE IF EXISTS `voip_availability`"

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `voip_id_cache`"

    .line 2
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/voip/db/VoipDatabase_Impl$a;->a:Lcom/truecaller/voip/db/VoipDatabase_Impl;

    .line 4
    iget-object v0, v0, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    iget-object v2, p0, Lcom/truecaller/voip/db/VoipDatabase_Impl$a;->a:Lcom/truecaller/voip/db/VoipDatabase_Impl;

    .line 7
    iget-object v2, v2, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    .line 8
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
    iget-object v0, p0, Lcom/truecaller/voip/db/VoipDatabase_Impl$a;->a:Lcom/truecaller/voip/db/VoipDatabase_Impl;

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
    iget-object v2, p0, Lcom/truecaller/voip/db/VoipDatabase_Impl$a;->a:Lcom/truecaller/voip/db/VoipDatabase_Impl;

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
    iget-object v0, p0, Lcom/truecaller/voip/db/VoipDatabase_Impl$a;->a:Lcom/truecaller/voip/db/VoipDatabase_Impl;

    .line 2
    iput-object p1, v0, Ln3/c0/q;->mDatabase:Ln3/e0/a/b;

    .line 3
    iget-object v0, p0, Lcom/truecaller/voip/db/VoipDatabase_Impl$a;->a:Lcom/truecaller/voip/db/VoipDatabase_Impl;

    .line 4
    invoke-virtual {v0, p1}, Ln3/c0/q;->internalInitInvalidationTracker(Ln3/e0/a/b;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/voip/db/VoipDatabase_Impl$a;->a:Lcom/truecaller/voip/db/VoipDatabase_Impl;

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
    iget-object v2, p0, Lcom/truecaller/voip/db/VoipDatabase_Impl$a;->a:Lcom/truecaller/voip/db/VoipDatabase_Impl;

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
    .locals 22

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v10, Ln3/c0/h0/e$a;

    const-string v4, "_id"

    const-string v5, "INTEGER"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v14, 0x1

    move-object v3, v10

    move v9, v14

    invoke-direct/range {v3 .. v9}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "_id"

    invoke-virtual {v1, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v4, Ln3/c0/h0/e$a;

    const-string v16, "phone"

    const-string v17, "TEXT"

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v15, v4

    invoke-direct/range {v15 .. v21}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "phone"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v4, Ln3/c0/h0/e$a;

    const-string v12, "voip_enabled"

    const-string v13, "INTEGER"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v11, v4

    invoke-direct/range {v11 .. v17}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "voip_enabled"

    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v4, Ln3/c0/h0/e$a;

    const-string v8, "version"

    const-string v9, "INTEGER"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v7, v4

    invoke-direct/range {v7 .. v13}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "version"

    const/4 v7, 0x0

    invoke-static {v1, v6, v4, v7}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v4

    .line 6
    new-instance v6, Ljava/util/HashSet;

    const/4 v8, 0x1

    invoke-direct {v6, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 7
    new-instance v9, Ln3/c0/h0/e$d;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v10, "index_voip_availability_phone"

    invoke-direct {v9, v10, v8, v5}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v5, Ln3/c0/h0/e;

    const-string v9, "voip_availability"

    invoke-direct {v5, v9, v1, v4, v6}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 9
    invoke-static {v0, v9}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 10
    invoke-virtual {v5, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "\n Found:\n"

    if-nez v4, :cond_0

    .line 11
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "voip_availability(com.truecaller.voip.db.VoipAvailability).\n Expected:\n"

    invoke-static {v2, v5, v6, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 12
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 13
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v10, "_id"

    const-string v11, "INTEGER"

    move-object v9, v2

    move-object v14, v4

    move v15, v5

    invoke-direct/range {v9 .. v15}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const-string v15, "voip_id"

    const-string v16, "TEXT"

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "voip_id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v15, "number"

    const-string v16, "TEXT"

    move-object v14, v2

    move/from16 v17, v9

    move/from16 v18, v10

    move-object/from16 v19, v4

    move/from16 v20, v5

    invoke-direct/range {v14 .. v20}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "number"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v15, "expiry_epoch_seconds"

    const-string v16, "INTEGER"

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "expiry_epoch_seconds"

    invoke-static {v1, v4, v2, v7}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 17
    new-instance v4, Ljava/util/HashSet;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 18
    new-instance v5, Ln3/c0/h0/e$d;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v9, "index_voip_id_cache_voip_id"

    invoke-direct {v5, v9, v8, v3}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v3, Ln3/c0/h0/e$d;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v9, "index_voip_id_cache_number"

    invoke-direct {v3, v9, v8, v5}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v3, Ln3/c0/h0/e;

    const-string v5, "voip_id_cache"

    invoke-direct {v3, v5, v1, v2, v4}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 21
    invoke-static {v0, v5}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v0

    .line 22
    invoke-virtual {v3, v0}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 23
    new-instance v1, Ln3/c0/x$b;

    const-string v2, "voip_id_cache(com.truecaller.voip.db.VoipIdCache).\n Expected:\n"

    invoke-static {v2, v3, v6, v0}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v7, v0}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v1

    .line 24
    :cond_1
    new-instance v0, Ln3/c0/x$b;

    const/4 v1, 0x0

    invoke-direct {v0, v8, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
