.class public Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl$a;
.super Ln3/c0/x$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl;->createOpenHelper(Ln3/c0/h;)Ln3/e0/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl$a;->a:Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl;

    invoke-direct {p0, p2}, Ln3/c0/x$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Ln3/e0/a/b;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `call_me_back` (`phone` TEXT NOT NULL, `enabled` INTEGER NOT NULL, `message` TEXT, `button_text` TEXT, PRIMARY KEY(`phone`))"

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 2
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'a92b76d042a3cfd83d1fc093d78660c6\')"

    .line 3
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Ln3/e0/a/b;)V
    .locals 3

    const-string v0, "DROP TABLE IF EXISTS `call_me_back`"

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl$a;->a:Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl;

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
    iget-object v2, p0, Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl$a;->a:Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl;

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
    iget-object v0, p0, Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl$a;->a:Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl;

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
    iget-object v2, p0, Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl$a;->a:Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl;

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
    iget-object v0, p0, Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl$a;->a:Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl;

    .line 2
    iput-object p1, v0, Ln3/c0/q;->mDatabase:Ln3/e0/a/b;

    .line 3
    iget-object v0, p0, Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl$a;->a:Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl;

    .line 4
    invoke-virtual {v0, p1}, Ln3/c0/q;->internalInitInvalidationTracker(Ln3/e0/a/b;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl$a;->a:Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl;

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
    iget-object v2, p0, Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl$a;->a:Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl;

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
    .locals 17

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v1, Ln3/c0/h0/e$a;

    const-string v3, "phone"

    const-string v4, "TEXT"

    const/4 v5, 0x1

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v1

    move v6, v9

    invoke-direct/range {v2 .. v8}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ln3/c0/h0/e$a;

    const-string v7, "enabled"

    const-string v8, "INTEGER"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v6, v1

    move v10, v2

    move-object v11, v3

    move v12, v4

    invoke-direct/range {v6 .. v12}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "enabled"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Ln3/c0/h0/e$a;

    const-string v11, "message"

    const-string v12, "TEXT"

    const/4 v5, 0x0

    move-object v10, v1

    move v13, v5

    move v14, v2

    move-object v15, v3

    move/from16 v16, v4

    invoke-direct/range {v10 .. v16}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "message"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Ln3/c0/h0/e$a;

    const-string v11, "button_text"

    const-string v12, "TEXT"

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "button_text"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 7
    new-instance v4, Ln3/c0/h0/e;

    const-string v5, "call_me_back"

    invoke-direct {v4, v5, v0, v1, v2}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    move-object/from16 v0, p1

    .line 8
    invoke-static {v0, v5}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v0

    .line 9
    invoke-virtual {v4, v0}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Ln3/c0/x$b;

    const-string v2, "call_me_back(com.truecaller.bizmon.callMeBack.db.entity.CallMeBack).\n Expected:\n"

    const-string v5, "\n Found:\n"

    invoke-static {v2, v4, v5, v0}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v1

    .line 11
    :cond_0
    new-instance v0, Ln3/c0/x$b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
