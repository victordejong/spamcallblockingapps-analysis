.class public Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl$a;
.super Ln3/c0/x$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl;->createOpenHelper(Ln3/c0/h;)Ln3/e0/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl$a;->a:Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl;

    invoke-direct {p0, p2}, Ln3/c0/x$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Ln3/e0/a/b;)V
    .locals 4

    const-string v0, "CREATE TABLE IF NOT EXISTS `hidden_contact` (`number` TEXT NOT NULL, PRIMARY KEY(`number`))"

    const-string v1, "CREATE TABLE IF NOT EXISTS `outgoing_video` (`_id` TEXT NOT NULL, `raw_video_path` TEXT, `video_url` TEXT NOT NULL, `size_bytes` INTEGER NOT NULL, `duration_millis` INTEGER NOT NULL, `mirror_playback` INTEGER NOT NULL, PRIMARY KEY(`_id`))"

    const-string v2, "CREATE TABLE IF NOT EXISTS `incoming_video` (`phone_number` TEXT NOT NULL, `_id` TEXT NOT NULL, `video_url` TEXT NOT NULL, `call_id` TEXT NOT NULL, `received_at` INTEGER NOT NULL, `size_bytes` INTEGER NOT NULL, `duration_millis` INTEGER NOT NULL, `mirror_playback` INTEGER NOT NULL, PRIMARY KEY(`phone_number`))"

    const-string v3, "CREATE TABLE IF NOT EXISTS `video_id_availability` (`number` TEXT NOT NULL, `enabled` INTEGER NOT NULL, `version` INTEGER NOT NULL, PRIMARY KEY(`number`))"

    .line 1
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 2
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'a85c2d4ee496b7102c94b55d4827281e\')"

    .line 3
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Ln3/e0/a/b;)V
    .locals 4

    const-string v0, "DROP TABLE IF EXISTS `hidden_contact`"

    const-string v1, "DROP TABLE IF EXISTS `outgoing_video`"

    const-string v2, "DROP TABLE IF EXISTS `incoming_video`"

    const-string v3, "DROP TABLE IF EXISTS `video_id_availability`"

    .line 1
    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->v0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl$a;->a:Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl;

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
    iget-object v2, p0, Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl$a;->a:Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl;

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
    iget-object v0, p0, Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl$a;->a:Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl;

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
    iget-object v2, p0, Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl$a;->a:Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl;

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
    iget-object v0, p0, Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl$a;->a:Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl;

    .line 2
    iput-object p1, v0, Ln3/c0/q;->mDatabase:Ln3/e0/a/b;

    .line 3
    iget-object v0, p0, Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl$a;->a:Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl;

    .line 4
    invoke-virtual {v0, p1}, Ln3/c0/q;->internalInitInvalidationTracker(Ln3/e0/a/b;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl$a;->a:Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl;

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
    iget-object v2, p0, Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl$a;->a:Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl;

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
    .locals 34

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v10, Ln3/c0/h0/e$a;

    const-string v4, "number"

    const-string v5, "TEXT"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "number"

    const/4 v4, 0x0

    invoke-static {v1, v3, v10, v4}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v5

    .line 3
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 4
    new-instance v7, Ln3/c0/h0/e;

    const-string v8, "hidden_contact"

    invoke-direct {v7, v8, v1, v5, v6}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 5
    invoke-static {v0, v8}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 6
    invoke-virtual {v7, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "\n Found:\n"

    if-nez v5, :cond_0

    .line 7
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "hidden_contact(com.truecaller.videocallerid.db.hiddencontacts.HiddenContact).\n Expected:\n"

    invoke-static {v2, v7, v6, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v5, 0x6

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 9
    new-instance v5, Ln3/c0/h0/e$a;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v8, "_id"

    const-string v9, "TEXT"

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "_id"

    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v5, Ln3/c0/h0/e$a;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v9, "raw_video_path"

    const-string v10, "TEXT"

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "raw_video_path"

    invoke-virtual {v1, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v5, Ln3/c0/h0/e$a;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const-string v10, "video_url"

    const-string v11, "TEXT"

    move-object v9, v5

    move/from16 v12, v16

    move/from16 v13, v17

    move-object/from16 v14, v18

    move/from16 v15, v19

    invoke-direct/range {v9 .. v15}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "video_url"

    invoke-virtual {v1, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v5, Ln3/c0/h0/e$a;

    const-string v9, "size_bytes"

    const-string v10, "INTEGER"

    move-object v8, v5

    move/from16 v11, v16

    move/from16 v12, v17

    move-object/from16 v13, v18

    move/from16 v14, v19

    invoke-direct/range {v8 .. v14}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "size_bytes"

    invoke-virtual {v1, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v5, Ln3/c0/h0/e$a;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const-string v17, "duration_millis"

    const-string v18, "INTEGER"

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "duration_millis"

    invoke-virtual {v1, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v5, Ln3/c0/h0/e$a;

    const-string v17, "mirror_playback"

    const-string v18, "INTEGER"

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "mirror_playback"

    invoke-static {v1, v10, v5, v4}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v5

    .line 15
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 16
    new-instance v12, Ln3/c0/h0/e;

    const-string v13, "outgoing_video"

    invoke-direct {v12, v13, v1, v5, v11}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 17
    invoke-static {v0, v13}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 18
    invoke-virtual {v12, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 19
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "outgoing_video(com.truecaller.videocallerid.db.outgoingvideo.OutgoingVideoId).\n Expected:\n"

    invoke-static {v2, v12, v6, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 20
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    const/16 v5, 0x8

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 21
    new-instance v5, Ln3/c0/h0/e$a;

    const/16 v19, 0x1

    const/16 v23, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x1

    const-string v17, "phone_number"

    const-string v18, "TEXT"

    move-object/from16 v16, v5

    move/from16 v20, v23

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "phone_number"

    invoke-virtual {v1, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v5, Ln3/c0/h0/e$a;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const-string v21, "_id"

    const-string v22, "TEXT"

    move-object/from16 v20, v5

    invoke-direct/range {v20 .. v26}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v5, Ln3/c0/h0/e$a;

    const/16 v30, 0x1

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x1

    const-string v28, "video_url"

    const-string v29, "TEXT"

    move-object/from16 v27, v5

    invoke-direct/range {v27 .. v33}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v5, Ln3/c0/h0/e$a;

    const/4 v7, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const-string v17, "call_id"

    const-string v18, "TEXT"

    move-object/from16 v16, v5

    move/from16 v19, v7

    move/from16 v20, v23

    move-object/from16 v21, v24

    move/from16 v22, v25

    invoke-direct/range {v16 .. v22}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "call_id"

    invoke-virtual {v1, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v5, Ln3/c0/h0/e$a;

    const-string v12, "received_at"

    const-string v13, "INTEGER"

    move-object v11, v5

    move v14, v7

    move/from16 v15, v23

    move-object/from16 v16, v24

    move/from16 v17, v25

    invoke-direct/range {v11 .. v17}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "received_at"

    invoke-virtual {v1, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v5, Ln3/c0/h0/e$a;

    const-string v12, "size_bytes"

    const-string v13, "INTEGER"

    move-object v11, v5

    invoke-direct/range {v11 .. v17}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v5, Ln3/c0/h0/e$a;

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const-string v15, "duration_millis"

    const-string v16, "INTEGER"

    move-object v14, v5

    invoke-direct/range {v14 .. v20}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v5, Ln3/c0/h0/e$a;

    const-string v12, "mirror_playback"

    const-string v13, "INTEGER"

    move-object v11, v5

    move v14, v7

    move/from16 v15, v23

    move-object/from16 v16, v24

    move/from16 v17, v25

    invoke-direct/range {v11 .. v17}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-static {v1, v10, v5, v4}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v5

    .line 29
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 30
    new-instance v8, Ln3/c0/h0/e;

    const-string v9, "incoming_video"

    invoke-direct {v8, v9, v1, v5, v7}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 31
    invoke-static {v0, v9}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v1

    .line 32
    invoke-virtual {v8, v1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 33
    new-instance v0, Ln3/c0/x$b;

    const-string v2, "incoming_video(com.truecaller.videocallerid.db.incomingvideoid.IncomingVideoId).\n Expected:\n"

    invoke-static {v2, v8, v6, v1}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 34
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    const/4 v5, 0x3

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 35
    new-instance v5, Ln3/c0/h0/e$a;

    const/4 v14, 0x1

    const/4 v11, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-string v8, "number"

    const-string v9, "TEXT"

    move-object v7, v5

    move v10, v14

    move-object v12, v15

    move/from16 v13, v16

    invoke-direct/range {v7 .. v13}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v3, Ln3/c0/h0/e$a;

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const-string v18, "enabled"

    const-string v19, "INTEGER"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "enabled"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v3, Ln3/c0/h0/e$a;

    const/4 v11, 0x0

    const-string v8, "version"

    const-string v9, "INTEGER"

    move-object v7, v3

    invoke-direct/range {v7 .. v13}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "version"

    invoke-static {v1, v5, v3, v4}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v3

    .line 38
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 39
    new-instance v7, Ln3/c0/h0/e;

    const-string v8, "video_id_availability"

    invoke-direct {v7, v8, v1, v3, v5}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 40
    invoke-static {v0, v8}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object v0

    .line 41
    invoke-virtual {v7, v0}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 42
    new-instance v1, Ln3/c0/x$b;

    const-string v2, "video_id_availability(com.truecaller.videocallerid.db.availability.VideoIdAvailabilityDto).\n Expected:\n"

    invoke-static {v2, v7, v6, v0}, Le/d/c/a/a;->u2(Ljava/lang/String;Ln3/c0/h0/e;Ljava/lang/String;Ln3/c0/h0/e;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v1

    .line 43
    :cond_3
    new-instance v0, Ln3/c0/x$b;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
