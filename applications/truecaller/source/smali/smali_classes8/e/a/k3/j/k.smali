.class public Le/a/k3/j/k;
.super Le/a/k3/j/f;
.source "SourceFile"


# instance fields
.field public final c:Le/a/k3/j/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Le/a/k3/j/f;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Le/a/k3/j/j;

    invoke-direct {v0, p1}, Le/a/k3/j/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/a/k3/j/k;->c:Le/a/k3/j/j;

    return-void
.end method


# virtual methods
.method public c(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/data/entity/Tag;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "tc_id"

    .line 1
    invoke-static/range {p1 .. p1}, Le/a/k3/j/b;->o(Lcom/truecaller/data/entity/Contact;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/data/entity/Tag;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 4
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v3

    const/16 v5, 0x10

    and-int/2addr v3, v5

    const/4 v6, 0x1

    if-ne v3, v5, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_2

    .line 5
    iget-object v3, v1, Le/a/k3/j/f;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 6
    invoke-static {}, Le/a/m0/a1$m;->a()Landroid/net/Uri;

    move-result-object v8

    const-string v7, "_id"

    filled-new-array {v7, v2}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "aggregated_contact_id=? AND contact_source=16"

    new-array v11, v6, [Ljava/lang/String;

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v11, v4

    const/4 v12, 0x0

    move-object v7, v3

    .line 8
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v7, :cond_2

    .line 9
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 10
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 11
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 12
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v12

    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data_raw_contact_id=? AND data_type=6 AND data1=?"

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/String;

    .line 14
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v4

    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/data/entity/Tag;->getValue()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v6

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    .line 15
    invoke-virtual {v12, v4}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    .line 16
    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    .line 17
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v13, "data_type"

    const/4 v15, 0x6

    .line 19
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 20
    invoke-virtual {v12, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data_raw_contact_id"

    .line 21
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v12, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "data1"

    .line 22
    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/data/entity/Tag;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 24
    invoke-virtual {v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 26
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :try_start_2
    sget-object v2, Le/a/m0/a1;->a:Landroid/net/Uri;
    :try_end_2
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "com.truecaller"

    :try_start_3
    invoke-virtual {v3, v2, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    .line 28
    array-length v3, v2

    if-ne v3, v14, :cond_1

    aget-object v3, v2, v6

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 29
    invoke-virtual {v0, v10}, Lcom/truecaller/data/entity/RowEntity;->setTcId(Ljava/lang/String;)V

    .line 30
    aget-object v2, v2, v6

    iget-object v2, v2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/truecaller/data/entity/RowEntity;->setId(Ljava/lang/Long;)V
    :try_end_3
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return v6

    :catch_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return v4

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 32
    throw v0

    .line 33
    :cond_2
    :goto_1
    invoke-static/range {p1 .. p1}, Le/a/k3/j/i;->c(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object v2

    const/4 v3, 0x0

    .line 34
    invoke-virtual {v0, v3}, Lcom/truecaller/data/entity/RowEntity;->setId(Ljava/lang/Long;)V

    .line 35
    invoke-virtual {v0, v3}, Lcom/truecaller/data/entity/RowEntity;->setTcId(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2, v0}, Lcom/truecaller/data/entity/Contact;->g(Lcom/truecaller/data/entity/Tag;)V

    .line 37
    iget-object v3, v1, Le/a/k3/j/k;->c:Le/a/k3/j/j;

    invoke-virtual {v3, v2}, Le/a/k3/j/j;->c(Lcom/truecaller/data/entity/Contact;)Z

    .line 38
    invoke-virtual {v2}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v2

    or-int/2addr v2, v5

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lcom/truecaller/data/entity/Contact;->setSource(I)V

    .line 40
    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v0, :cond_3

    move v4, v6

    :cond_3
    return v4

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 41
    :goto_2
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :cond_4
    return v4
.end method
