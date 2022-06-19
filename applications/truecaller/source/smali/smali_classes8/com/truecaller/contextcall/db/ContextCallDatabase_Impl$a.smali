.class public Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl$a;
.super Ln3/c0/x$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;->createOpenHelper(Ln3/c0/h;)Ln3/e0/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl$a;->a:Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;

    invoke-direct {p0, p2}, Ln3/c0/x$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Ln3/e0/a/b;)V
    .locals 4

    const-string v0, "CREATE TABLE IF NOT EXISTS `context_call_availability` (`phone` TEXT NOT NULL, `enabled` INTEGER NOT NULL, `version` INTEGER NOT NULL, PRIMARY KEY(`phone`))"

    const-string v1, "CREATE TABLE IF NOT EXISTS `incoming_call_context` (`_id` TEXT NOT NULL, `phone_number` TEXT NOT NULL, `message` TEXT NOT NULL, `created_at` INTEGER NOT NULL, PRIMARY KEY(`_id`, `phone_number`))"

    const-string v2, "CREATE TABLE IF NOT EXISTS `call_reason` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `message` TEXT NOT NULL)"

    const-string v3, "CREATE TABLE IF NOT EXISTS `predefined_call_reason` (`_id` INTEGER NOT NULL, `index` INTEGER NOT NULL, `message` TEXT NOT NULL, `type` INTEGER NOT NULL, PRIMARY KEY(`_id`, `type`))"

    .line 1
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `hidden_number` (`number` TEXT NOT NULL, PRIMARY KEY(`number`))"

    .line 2
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 3
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'637bc9b78c45694fd61ec868ee73131c\')"

    .line 4
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Ln3/e0/a/b;)V
    .locals 4

    const-string v0, "DROP TABLE IF EXISTS `context_call_availability`"

    const-string v1, "DROP TABLE IF EXISTS `incoming_call_context`"

    const-string v2, "DROP TABLE IF EXISTS `call_reason`"

    const-string v3, "DROP TABLE IF EXISTS `predefined_call_reason`"

    .line 1
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `hidden_number`"

    .line 2
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl$a;->a:Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;

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
    iget-object v2, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl$a;->a:Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;

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
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl$a;->a:Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;

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
    iget-object v2, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl$a;->a:Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;

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
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl$a;->a:Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;

    .line 2
    iput-object p1, v0, Ln3/c0/q;->mDatabase:Ln3/e0/a/b;

    .line 3
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl$a;->a:Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;

    .line 4
    invoke-virtual {v0, p1}, Ln3/c0/q;->internalInitInvalidationTracker(Ln3/e0/a/b;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl$a;->a:Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;

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
    iget-object v2, p0, Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl$a;->a:Lcom/truecaller/contextcall/db/ContextCallDatabase_Impl;

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
    .locals 25

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v4, "phone"

    const-string v5, "TEXT"

    const/4 v6, 0x1

    const/4 v14, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v2

    move v7, v14

    invoke-direct/range {v3 .. v9}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "phone"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v8, "enabled"

    const-string v9, "INTEGER"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v7, v2

    move v10, v14

    move v11, v3

    move-object v12, v4

    move v13, v5

    invoke-direct/range {v7 .. v13}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "enabled"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v8, "version"

    const-string v9, "INTEGER"

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "version"

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 5
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 6
    new-instance v5, Ln3/c0/h0/e;

    const-string v6, "context_call_availability"

    invoke-direct {v5, v6, v1, v2, v3}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 7
    invoke-static {v0, v6}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 8
    invoke-virtual {v5, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "\n Found:\n"

    if-nez v2, :cond_0

    .line 9
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "context_call_availability(com.truecaller.contextcall.db.availability.ContextCallAvailability).\n Expected:\n"

    invoke-static {v2, v5, v3, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 10
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 11
    new-instance v12, Ln3/c0/h0/e$a;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v20, 0x1

    const-string v6, "_id"

    const-string v7, "TEXT"

    move-object v5, v12

    move/from16 v11, v20

    invoke-direct/range {v5 .. v11}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "_id"

    invoke-virtual {v1, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v6, Ln3/c0/h0/e$a;

    const/16 v16, 0x1

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x1

    const-string v14, "phone_number"

    const-string v15, "TEXT"

    move-object v13, v6

    invoke-direct/range {v13 .. v19}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "phone_number"

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v6, Ln3/c0/h0/e$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v14, "message"

    const-string v15, "TEXT"

    move-object v13, v6

    move/from16 v16, v20

    move/from16 v17, v7

    move-object/from16 v18, v8

    move/from16 v19, v9

    invoke-direct/range {v13 .. v19}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "message"

    invoke-virtual {v1, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v6, Ln3/c0/h0/e$a;

    const-string v14, "created_at"

    const-string v15, "INTEGER"

    move-object v13, v6

    invoke-direct/range {v13 .. v19}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "created_at"

    invoke-static {v1, v7, v6, v4}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v6

    .line 15
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 16
    new-instance v8, Ln3/c0/h0/e;

    const-string v9, "incoming_call_context"

    invoke-direct {v8, v9, v1, v6, v7}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 17
    invoke-static {v0, v9}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 18
    invoke-virtual {v8, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 19
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "incoming_call_context(com.truecaller.contextcall.db.incomingcallcontext.IncomingCallContext).\n Expected:\n"

    invoke-static {v2, v8, v3, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 20
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    const/4 v6, 0x2

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 21
    new-instance v6, Ln3/c0/h0/e$a;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v12, "_id"

    const-string v13, "INTEGER"

    move-object v11, v6

    invoke-direct/range {v11 .. v17}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v6, Ln3/c0/h0/e$a;

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const-string v19, "message"

    const-string v20, "TEXT"

    move-object/from16 v18, v6

    invoke-direct/range {v18 .. v24}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-static {v1, v10, v6, v4}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v6

    .line 23
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 24
    new-instance v8, Ln3/c0/h0/e;

    const-string v9, "call_reason"

    invoke-direct {v8, v9, v1, v6, v7}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 25
    invoke-static {v0, v9}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 26
    invoke-virtual {v8, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 27
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "call_reason(com.truecaller.contextcall.db.reason.CallReason).\n Expected:\n"

    invoke-static {v2, v8, v3, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 28
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 29
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v6, 0x1

    const/4 v15, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v12, "_id"

    const-string v13, "INTEGER"

    move-object v11, v2

    move v14, v6

    move-object/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v11 .. v17}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v5, 0x1

    const/16 v20, 0x0

    const/4 v9, 0x0

    const/16 v23, 0x1

    const-string v17, "index"

    const-string v18, "INTEGER"

    move-object/from16 v16, v2

    move/from16 v19, v5

    move-object/from16 v21, v9

    move/from16 v22, v23

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "index"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v15, 0x0

    const-string v12, "message"

    const-string v13, "TEXT"

    move-object v11, v2

    move-object/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v11 .. v17}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v15, 0x2

    const-string v12, "type"

    const-string v13, "INTEGER"

    move-object v11, v2

    move v14, v5

    move-object/from16 v16, v9

    move/from16 v17, v23

    invoke-direct/range {v11 .. v17}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "type"

    invoke-static {v1, v5, v2, v4}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 33
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 34
    new-instance v6, Ln3/c0/h0/e;

    const-string v7, "predefined_call_reason"

    invoke-direct {v6, v7, v1, v2, v5}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 35
    invoke-static {v0, v7}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 36
    invoke-virtual {v6, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 37
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "predefined_call_reason(com.truecaller.contextcall.db.reason.predefinedreasons.PredefinedCallReasonEntity).\n Expected:\n"

    invoke-static {v2, v6, v3, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 38
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 39
    new-instance v12, Ln3/c0/h0/e$a;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v6, "number"

    const-string v7, "TEXT"

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "number"

    invoke-static {v1, v5, v12, v4}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v5

    .line 40
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 41
    new-instance v7, Ln3/c0/h0/e;

    const-string v8, "hidden_number"

    invoke-direct {v7, v8, v1, v5, v6}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 42
    invoke-static {v0, v8}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v0

    .line 43
    invoke-virtual {v7, v0}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 44
    new-instance v1, Ln3/c0/x$b;

    const-string v2, "hidden_number(com.truecaller.contextcall.db.hiddennumber.HiddenNumber).\n Expected:\n"

    invoke-static {v2, v7, v3, v0}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v1

    .line 45
    :cond_4
    new-instance v0, Ln3/c0/x$b;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
