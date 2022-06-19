.class public Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl$a;
.super Ln3/c0/x$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl;->createOpenHelper(Ln3/c0/h;)Ln3/e0/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl$a;->a:Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl;

    invoke-direct {p0, p2}, Ln3/c0/x$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Ln3/e0/a/b;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `search_warnings` (`_id` TEXT NOT NULL, `header` TEXT NOT NULL, `message` TEXT NOT NULL, `backgroundColor` TEXT, `foregroundColor` TEXT, `iconUrl` TEXT, PRIMARY KEY(`_id`))"

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 2
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'40f75f6e493b6b88a67b3516632dcef0\')"

    .line 3
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Ln3/e0/a/b;)V
    .locals 3

    const-string v0, "DROP TABLE IF EXISTS `search_warnings`"

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl$a;->a:Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl;

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
    iget-object v2, p0, Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl$a;->a:Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl;

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
    iget-object v0, p0, Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl$a;->a:Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl;

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
    iget-object v2, p0, Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl$a;->a:Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl;

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
    iget-object v0, p0, Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl$a;->a:Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl;

    .line 2
    iput-object p1, v0, Ln3/c0/q;->mDatabase:Ln3/e0/a/b;

    .line 3
    iget-object v0, p0, Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl$a;->a:Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl;

    .line 4
    invoke-virtual {v0, p1}, Ln3/c0/q;->internalInitInvalidationTracker(Ln3/e0/a/b;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl$a;->a:Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl;

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
    iget-object v2, p0, Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl$a;->a:Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl;

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
    .locals 21

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v1, Ln3/c0/h0/e$a;

    const-string v3, "_id"

    const-string v4, "TEXT"

    const/4 v5, 0x1

    const/4 v13, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v1

    move v6, v13

    invoke-direct/range {v2 .. v8}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ln3/c0/h0/e$a;

    const-string v7, "header"

    const-string v8, "TEXT"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v6, v1

    move v9, v13

    move v10, v2

    move-object v11, v3

    move v12, v4

    invoke-direct/range {v6 .. v12}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "header"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Ln3/c0/h0/e$a;

    const-string v7, "message"

    const-string v8, "TEXT"

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "message"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Ln3/c0/h0/e$a;

    const-string v15, "backgroundColor"

    const-string v16, "TEXT"

    const/4 v5, 0x0

    move-object v14, v1

    move/from16 v17, v5

    move/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v20, v4

    invoke-direct/range {v14 .. v20}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "backgroundColor"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Ln3/c0/h0/e$a;

    const-string v15, "foregroundColor"

    const-string v16, "TEXT"

    move-object v14, v1

    invoke-direct/range {v14 .. v20}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "foregroundColor"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Ln3/c0/h0/e$a;

    const-string v15, "iconUrl"

    const-string v16, "TEXT"

    move-object v14, v1

    invoke-direct/range {v14 .. v20}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "iconUrl"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 9
    new-instance v4, Ln3/c0/h0/e;

    const-string v5, "search_warnings"

    invoke-direct {v4, v5, v0, v1, v2}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    move-object/from16 v0, p1

    .line 10
    invoke-static {v0, v5}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v0

    .line 11
    invoke-virtual {v4, v0}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Ln3/c0/x$b;

    const-string v2, "search_warnings(com.truecaller.searchwarnings.data.SearchWarningDTO).\n Expected:\n"

    const-string v5, "\n Found:\n"

    invoke-static {v2, v4, v5, v0}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v1

    .line 13
    :cond_0
    new-instance v0, Ln3/c0/x$b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
