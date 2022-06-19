.class public Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl$a;
.super Ln3/c0/x$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl;->createOpenHelper(Ln3/c0/h;)Ln3/e0/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl$a;->a:Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl;

    invoke-direct {p0, p2}, Ln3/c0/x$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Ln3/e0/a/b;)V
    .locals 4

    const-string v0, "CREATE TABLE IF NOT EXISTS `state` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `general_services_count` INTEGER NOT NULL)"

    const-string v1, "CREATE TABLE IF NOT EXISTS `district` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `contacts_count` INTEGER NOT NULL, `state_id` INTEGER NOT NULL, FOREIGN KEY(`state_id`) REFERENCES `state`(`id`) ON UPDATE NO ACTION ON DELETE NO ACTION )"

    const-string v2, "CREATE INDEX IF NOT EXISTS `index_district_state_id` ON `district` (`state_id`)"

    const-string v3, "CREATE TABLE IF NOT EXISTS `contact` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `phone_number` TEXT NOT NULL, `designation` TEXT, `department_name` TEXT, `email` TEXT, `fax` TEXT, `address` TEXT, `ministry` TEXT, `res` TEXT, `district_id` INTEGER, `state_id` INTEGER, FOREIGN KEY(`district_id`) REFERENCES `district`(`id`) ON UPDATE NO ACTION ON DELETE NO ACTION , FOREIGN KEY(`state_id`) REFERENCES `state`(`id`) ON UPDATE NO ACTION ON DELETE NO ACTION )"

    .line 1
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_contact_district_id` ON `contact` (`district_id`)"

    const-string v1, "CREATE INDEX IF NOT EXISTS `index_contact_state_id` ON `contact` (`state_id`)"

    const-string v2, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    const-string v3, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'0614d2d917b72be170a2b0615ff98667\')"

    .line 2
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Ln3/e0/a/b;)V
    .locals 3

    const-string v0, "DROP TABLE IF EXISTS `state`"

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `district`"

    .line 2
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `contact`"

    .line 3
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl$a;->a:Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl;

    .line 5
    iget-object v0, v0, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    iget-object v2, p0, Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl$a;->a:Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl;

    .line 8
    iget-object v2, v2, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    .line 9
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
    iget-object v0, p0, Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl$a;->a:Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl;

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
    iget-object v2, p0, Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl$a;->a:Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl;

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
    iget-object v0, p0, Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl$a;->a:Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl;

    .line 2
    iput-object p1, v0, Ln3/c0/q;->mDatabase:Ln3/e0/a/b;

    const-string v0, "PRAGMA foreign_keys = ON"

    .line 3
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl$a;->a:Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl;

    .line 5
    invoke-virtual {v0, p1}, Ln3/c0/q;->internalInitInvalidationTracker(Ln3/e0/a/b;)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl$a;->a:Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl;

    .line 7
    iget-object v0, v0, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    iget-object v2, p0, Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl$a;->a:Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl;

    .line 10
    iget-object v2, v2, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    .line 11
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

    const-string v4, "id"

    const-string v5, "INTEGER"

    const/4 v6, 0x1

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v2

    move v7, v10

    invoke-direct/range {v3 .. v9}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v8, "name"

    const-string v9, "TEXT"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "name"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v6, "general_services_count"

    const-string v7, "INTEGER"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "general_services_count"

    const/4 v6, 0x0

    invoke-static {v1, v5, v2, v6}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 5
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 6
    new-instance v7, Ln3/c0/h0/e;

    const-string v8, "state"

    invoke-direct {v7, v8, v1, v2, v5}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 7
    invoke-static {v0, v8}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 8
    invoke-virtual {v7, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "\n Found:\n"

    if-nez v2, :cond_0

    .line 9
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "state(com.truecaller.bizmon.governmentServices.db.entities.State).\n Expected:\n"

    invoke-static {v2, v7, v5, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 10
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 11
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v14, 0x1

    const/4 v11, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-string v8, "id"

    const-string v9, "INTEGER"

    move-object v7, v2

    move v10, v14

    move-object v12, v15

    move/from16 v13, v16

    invoke-direct/range {v7 .. v13}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const-string v18, "name"

    const-string v19, "TEXT"

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v23}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v11, 0x0

    const-string v8, "contacts_count"

    const-string v9, "INTEGER"

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "contacts_count"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v9, "state_id"

    const-string v10, "INTEGER"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "state_id"

    const/4 v8, 0x1

    invoke-static {v1, v7, v2, v8}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 15
    new-instance v15, Ln3/c0/h0/e$b;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v10, "state"

    const-string v11, "NO ACTION"

    const-string v12, "NO ACTION"

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Ln3/c0/h0/e$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 17
    new-instance v8, Ln3/c0/h0/e$d;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string v11, "index_district_state_id"

    invoke-direct {v8, v11, v6, v10}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v8, Ln3/c0/h0/e;

    const-string v10, "district"

    invoke-direct {v8, v10, v1, v2, v9}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 19
    invoke-static {v0, v10}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 20
    invoke-virtual {v8, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 21
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "district(com.truecaller.bizmon.governmentServices.db.entities.District).\n Expected:\n"

    invoke-static {v2, v8, v5, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 22
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 23
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v15, 0x1

    const/4 v12, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x1

    const-string v9, "id"

    const-string v10, "INTEGER"

    move-object v8, v2

    move v11, v15

    move-object/from16 v13, v23

    move/from16 v14, v24

    invoke-direct/range {v8 .. v14}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v2, Ln3/c0/h0/e$a;

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const-string v17, "name"

    const-string v18, "TEXT"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v4, 0x0

    const-string v9, "phone_number"

    const-string v10, "TEXT"

    move-object v8, v2

    move v12, v4

    invoke-direct/range {v8 .. v14}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "phone_number"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v2, Ln3/c0/h0/e$a;

    const/4 v8, 0x0

    const-string v17, "designation"

    const-string v18, "TEXT"

    move-object/from16 v16, v2

    move/from16 v19, v8

    move/from16 v20, v4

    move-object/from16 v21, v23

    move/from16 v22, v24

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "designation"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v17, "department_name"

    const-string v18, "TEXT"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "department_name"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v17, "email"

    const-string v18, "TEXT"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "email"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v17, "fax"

    const-string v18, "TEXT"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "fax"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v17, "address"

    const-string v18, "TEXT"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "address"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v17, "ministry"

    const-string v18, "TEXT"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "ministry"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v17, "res"

    const-string v18, "TEXT"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "res"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v17, "district_id"

    const-string v18, "INTEGER"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "district_id"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v2, Ln3/c0/h0/e$a;

    const-string v17, "state_id"

    const-string v18, "INTEGER"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const/4 v4, 0x2

    invoke-static {v1, v7, v2, v4}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v2

    .line 35
    new-instance v8, Ln3/c0/h0/e$b;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const-string v11, "district"

    const-string v12, "NO ACTION"

    const-string v13, "NO ACTION"

    move-object v10, v8

    invoke-direct/range {v10 .. v15}, Ln3/c0/h0/e$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v8, Ln3/c0/h0/e$b;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    const-string v17, "state"

    const-string v18, "NO ACTION"

    const-string v19, "NO ACTION"

    move-object/from16 v16, v8

    invoke-direct/range {v16 .. v21}, Ln3/c0/h0/e$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 38
    new-instance v4, Ln3/c0/h0/e$d;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string v9, "index_contact_district_id"

    invoke-direct {v4, v9, v6, v8}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v4, Ln3/c0/h0/e$d;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v8, "index_contact_state_id"

    invoke-direct {v4, v8, v6, v7}, Ln3/c0/h0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v4, Ln3/c0/h0/e;

    const-string v7, "contact"

    invoke-direct {v4, v7, v1, v2, v3}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 41
    invoke-static {v0, v7}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v0

    .line 42
    invoke-virtual {v4, v0}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 43
    new-instance v1, Ln3/c0/x$b;

    const-string v2, "contact(com.truecaller.bizmon.governmentServices.db.entities.GovServicesContact).\n Expected:\n"

    invoke-static {v2, v4, v5, v0}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v1

    .line 44
    :cond_2
    new-instance v0, Ln3/c0/x$b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
