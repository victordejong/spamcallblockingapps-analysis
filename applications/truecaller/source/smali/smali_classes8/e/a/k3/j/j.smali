.class public Le/a/k3/j/j;
.super Le/a/k3/j/f;
.source "SourceFile"


# instance fields
.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/k3/j/f;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/a/k3/j/j;->c:Z

    return-void
.end method


# virtual methods
.method public c(Lcom/truecaller/data/entity/Contact;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/k3/j/j;->d(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/data/entity/Contact;

    const/4 v5, 0x1

    add-int/2addr v3, v5

    .line 4
    rem-int/lit8 v6, v3, 0x5

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    invoke-virtual {p0, v0, v1, v4, v5}, Le/a/k3/j/j;->j(Ljava/util/List;Ljava/util/List;Lcom/truecaller/data/entity/Contact;Z)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v0, v1}, Le/a/k3/j/f;->a(Ljava/util/ArrayList;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public final e(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 1
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    const-string v1, "tc_id=?"

    .line 2
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    .line 4
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {}, Le/a/m0/a1$m;->a()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    .line 6
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    .line 8
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f(J)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_6

    .line 2
    iget-object v4, p0, Le/a/k3/j/f;->b:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/m0/a1$m;->b()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v8, p2

    const/4 v9, 0x0

    const-string v7, "aggregated_contact_id=?"

    .line 4
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 5
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 6
    new-instance v4, Le/a/k3/j/d;

    invoke-direct {v4, p1}, Le/a/k3/j/d;-><init>(Landroid/database/Cursor;)V

    .line 7
    invoke-virtual {v4, p2}, Le/a/k3/j/d;->h(Z)V

    const/4 v5, 0x0

    move v6, p2

    :goto_0
    if-nez v6, :cond_5

    if-nez v5, :cond_0

    move-wide v7, v1

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v5}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 9
    :goto_1
    iget v9, v4, Le/a/k3/j/d;->a:I

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    if-eqz v5, :cond_1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    .line 10
    :cond_1
    invoke-virtual {v4, p1}, Le/a/k3/j/d;->g(Landroid/database/Cursor;)Lcom/truecaller/data/entity/Contact;

    move-result-object v5

    .line 11
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_2
    invoke-virtual {v4, p1, v5}, Le/a/k3/j/d;->f(Landroid/database/Cursor;Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Entity;

    .line 13
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 14
    iget v7, v4, Le/a/k3/j/d;->a:I

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, p2

    goto :goto_2

    :cond_4
    move v6, v3

    :goto_2
    if-nez v7, :cond_2

    goto :goto_0

    .line 15
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 16
    throw p2

    :cond_6
    :goto_3
    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;
    .locals 3

    .line 1
    invoke-static {}, Le/a/m0/a1$m;->b()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "tc_id=?"

    invoke-virtual {p0, v0, p1, v1}, Le/a/k3/j/j;->i(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1
.end method

.method public h()Landroid/database/Cursor;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/k3/j/f;->b:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/m0/a1$m;->a()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "tc_id"

    const-string v3, "contact_phonebook_id"

    const-string v4, "contact_phonebook_hash"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "contact_phonebook_hash IS NOT NULL"

    const/4 v4, 0x0

    const-string v5, "contact_phonebook_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final varargs i(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/k3/j/f;->b:Landroid/content/ContentResolver;

    array-length v1, p3

    const/4 v6, 0x0

    if-nez v1, :cond_0

    move-object v4, v6

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3
    new-instance p2, Le/a/k3/j/d;

    invoke-direct {p2, p1}, Le/a/k3/j/d;-><init>(Landroid/database/Cursor;)V

    const/4 p3, 0x0

    .line 4
    invoke-virtual {p2, p3}, Le/a/k3/j/d;->h(Z)V

    .line 5
    invoke-virtual {p2, p1}, Le/a/k3/j/d;->g(Landroid/database/Cursor;)Lcom/truecaller/data/entity/Contact;

    move-result-object p3

    .line 6
    :cond_1
    invoke-virtual {p2, p1, p3}, Le/a/k3/j/d;->f(Landroid/database/Cursor;Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Entity;

    .line 7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    move-object v6, p3

    .line 8
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 9
    throw p2

    :cond_3
    :goto_1
    return-object v6
.end method

.method public final j(Ljava/util/List;Ljava/util/List;Lcom/truecaller/data/entity/Contact;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Entity;",
            ">;",
            "Lcom/truecaller/data/entity/Contact;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v3, :cond_1d

    .line 1
    iget-boolean v4, v3, Lcom/truecaller/data/entity/Contact;->j:Z

    if-eqz v4, :cond_0

    goto/16 :goto_b

    .line 2
    :cond_0
    invoke-interface/range {p2 .. p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Le/a/m0/a1$m;->a()Landroid/net/Uri;

    move-result-object v4

    .line 4
    iget-boolean v5, v0, Le/a/k3/j/j;->c:Z

    if-nez v5, :cond_1

    .line 5
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "aggregation"

    const-string v6, "false"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 6
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->x0()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    .line 7
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 8
    invoke-static {}, Le/a/m0/a1$m;->a()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    .line 9
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const-string v9, "public"

    aput-object v9, v8, v7

    const-string v9, "tc_id=? AND contact_access LIKE ?"

    .line 10
    invoke-virtual {v5, v9, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 11
    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 12
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    .line 13
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    .line 15
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    iget-boolean v8, v0, Le/a/k3/j/j;->c:Z

    .line 16
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 17
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_3

    .line 18
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/truecaller/data/entity/Contact;->setTcId(Ljava/lang/String;)V

    :cond_3
    const-string v10, "aggregated_contact_id"

    if-nez v8, :cond_4

    .line 19
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->l()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 20
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v8

    const-string v11, "tc_id"

    invoke-virtual {v9, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v8

    const-string v11, "contact_name"

    invoke-virtual {v9, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->f0()Ljava/lang/String;

    move-result-object v8

    const-string v11, "contact_transliterated_name"

    invoke-virtual {v9, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->o0()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v11, "contact_is_favorite"

    invoke-virtual {v9, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 24
    iget-object v8, v3, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v8, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget v8, v8, Lcom/truecaller/data/dto/ContactDto$Contact;->favoritePosition:I

    const/4 v11, 0x0

    if-ltz v8, :cond_5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_0

    :cond_5
    move-object v8, v11

    :goto_0
    const-string v12, "contact_favorite_position"

    .line 25
    invoke-virtual {v9, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 26
    iget-object v8, v3, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v8, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v8, v8, Lcom/truecaller/data/dto/ContactDto$Contact;->handle:Ljava/lang/String;

    const-string v12, "contact_handle"

    .line 27
    invoke-virtual {v9, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->m()Ljava/lang/String;

    move-result-object v8

    const-string v12, "contact_alt_name"

    invoke-virtual {v9, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v8, v3, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v8, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v8, v8, Lcom/truecaller/data/dto/ContactDto$Contact;->gender:Ljava/lang/String;

    const-string v12, "contact_gender"

    .line 30
    invoke-virtual {v9, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->h()Ljava/lang/String;

    move-result-object v8

    const-string v12, "contact_about"

    invoke-virtual {v9, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->B()Ljava/lang/String;

    move-result-object v8

    const-string v12, "contact_image_url"

    invoke-virtual {v9, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->D()Ljava/lang/String;

    move-result-object v8

    const-string v12, "contact_job_title"

    invoke-virtual {v9, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->p()Ljava/lang/String;

    move-result-object v8

    const-string v12, "contact_company"

    invoke-virtual {v9, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v8, v3, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v8, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v8, v8, Lcom/truecaller/data/dto/ContactDto$Contact;->access:Ljava/lang/String;

    const-string v12, "contact_access"

    .line 36
    invoke-virtual {v9, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v8, v3, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v8, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget v8, v8, Lcom/truecaller/data/dto/ContactDto$Contact;->commonConnections:I

    .line 38
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v12, "contact_common_connections"

    invoke-virtual {v9, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->X()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v12, "contact_search_time"

    invoke-virtual {v9, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 40
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v12, "contact_source"

    invoke-virtual {v9, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 41
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->s()Ljava/lang/String;

    move-result-object v8

    const-string v12, "contact_default_number"

    invoke-virtual {v9, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object v8

    const-string v12, "contact_phonebook_id"

    invoke-virtual {v9, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 43
    iget-object v8, v3, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v8, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-wide v12, v8, Lcom/truecaller/data/dto/ContactDto$Contact;->phonebookHash:J

    const-wide/16 v14, 0x0

    cmp-long v8, v12, v14

    if-nez v8, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    :goto_1
    const-string v8, "contact_phonebook_hash"

    .line 44
    invoke-virtual {v9, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 45
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->T()Ljava/lang/String;

    move-result-object v8

    const-string v11, "contact_phonebook_lookup"

    invoke-virtual {v9, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->V()Ljava/lang/String;

    move-result-object v8

    const-string v11, "search_query"

    invoke-virtual {v9, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->o()Ljava/lang/Long;

    move-result-object v8

    const-string v11, "cache_control"

    invoke-virtual {v9, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 48
    iget v8, v3, Lcom/truecaller/data/entity/Contact;->r:I

    .line 49
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "contact_badges"

    invoke-virtual {v9, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    iget v8, v3, Lcom/truecaller/data/entity/Contact;->z:I

    .line 51
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "tc_flag"

    invoke-virtual {v9, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->A()Ljava/lang/String;

    move-result-object v8

    const-string v11, "contact_im_id"

    invoke-virtual {v9, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "contact_spam_score"

    invoke-virtual {v9, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->b0()Ljava/lang/String;

    move-result-object v8

    const-string v11, "contact_spam_type"

    invoke-virtual {v9, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->Z()Ljava/lang/String;

    move-result-object v8

    const-string v11, "spam_categories"

    invoke-virtual {v9, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v4, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    move/from16 v8, p4

    .line 57
    invoke-virtual {v4, v8}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 58
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 59
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "data10"

    const-string v11, "data9"

    const-string v12, "data8"

    const-string v13, "data7"

    const-string v14, "data6"

    const-string v15, "data5"

    const-string v6, "data4"

    const-string v7, "data3"

    move-object/from16 v18, v10

    const-string v10, "data2"

    const-string v0, "data_raw_contact_id"

    const-string v1, "data_type"

    move-object/from16 p4, v0

    const-string v0, "data1"

    if-eqz v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/truecaller/data/entity/Number;

    .line 61
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v20, v4

    invoke-static/range {v19 .. v19}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 63
    invoke-static {v8, v3}, Le/a/k3/j/f;->b(Lcom/truecaller/data/entity/RowEntity;Lcom/truecaller/data/entity/Contact;)Landroid/content/ContentValues;

    move-result-object v2

    .line 64
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Number;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Number;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Number;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Number;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, v8, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->dialingCode:Ljava/lang/String;

    invoke-static {v0}, Lw3/c/a/a/a/k/a;->g(Ljava/lang/String;)I

    move-result v0

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Number;->i()Le/m/f/a/j$d;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v8}, Lcom/truecaller/data/entity/Number;->i()Le/m/f/a/j$d;

    move-result-object v0

    goto :goto_3

    :cond_7
    sget-object v0, Le/m/f/a/j$d;->l:Le/m/f/a/j$d;

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Number;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Number;->n()Ljava/lang/String;

    move-result-object v0

    const-string v3, "data11"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    invoke-virtual {v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    move-object/from16 v1, p4

    .line 78
    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    move-object/from16 v1, p1

    .line 80
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p0

    .line 81
    iget-boolean v0, v2, Le/a/k3/j/j;->c:Z

    if-nez v0, :cond_8

    invoke-virtual {v8}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 82
    invoke-static {}, Le/a/m0/a1$k;->H()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 83
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v3, v4, v8

    const-string v3, "normalized_destination=?"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 84
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->l()Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v4, v18

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 86
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    move-object/from16 v4, v18

    const/4 v8, 0x0

    :goto_4
    move-object/from16 v3, p3

    move-object v0, v2

    move-object v10, v4

    move v6, v8

    move-object/from16 v4, v20

    const/4 v7, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_2

    :cond_9
    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object v8, v1

    move-object/from16 v1, p1

    .line 87
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->k()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Lcom/truecaller/data/entity/Address;

    move-object/from16 p4, v4

    move-object/from16 v4, p2

    .line 88
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v18, v9

    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object/from16 v16, v11

    move-object/from16 v11, p3

    .line 90
    invoke-static {v2, v11}, Le/a/k3/j/f;->b(Lcom/truecaller/data/entity/RowEntity;Lcom/truecaller/data/entity/Contact;)Landroid/content/ContentValues;

    move-result-object v4

    .line 91
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Address;->getStreet()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Address;->getZipCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Address;->getCity()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v7, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Address;->getType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v15, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Address;->getTypeLabel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Address;->getTimeZone()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Address;->getArea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    invoke-virtual {v9, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 101
    invoke-virtual {v4, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 102
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 103
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move-object/from16 v11, v16

    move-object/from16 v9, v18

    goto/16 :goto_5

    :cond_a
    move-object/from16 v18, v9

    move-object/from16 v16, v11

    .line 104
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->d0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/data/entity/Tag;

    move-object/from16 v9, p2

    .line 105
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 p4, v2

    move-object/from16 v17, v12

    move-object/from16 v2, p3

    .line 107
    invoke-static {v4, v2}, Le/a/k3/j/f;->b(Lcom/truecaller/data/entity/RowEntity;Lcom/truecaller/data/entity/Contact;)Landroid/content/ContentValues;

    move-result-object v12

    .line 108
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Tag;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x6

    .line 109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    invoke-virtual {v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 111
    invoke-virtual {v4, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 112
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 113
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p4

    move-object/from16 v12, v17

    goto :goto_6

    :cond_b
    move-object/from16 v9, p2

    move-object/from16 v2, p3

    move-object/from16 v17, v12

    .line 114
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->F()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/truecaller/data/entity/Link;

    .line 115
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v12

    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    move-object/from16 p4, v4

    .line 117
    invoke-static {v11, v2}, Le/a/k3/j/f;->b(Lcom/truecaller/data/entity/RowEntity;Lcom/truecaller/data/entity/Contact;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v19, v13

    .line 118
    invoke-virtual {v11}, Lcom/truecaller/data/entity/Link;->getInfo()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v11}, Lcom/truecaller/data/entity/Link;->getService()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v11}, Lcom/truecaller/data/entity/Link;->getCaption()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v7, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x3

    .line 121
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    invoke-virtual {v12, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 123
    invoke-virtual {v4, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 124
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 125
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p4

    move-object/from16 v13, v19

    goto :goto_7

    :cond_c
    move-object/from16 v19, v13

    .line 126
    iget-object v4, v2, Lcom/truecaller/data/entity/Contact;->n:Ljava/util/List;

    if-nez v4, :cond_d

    .line 127
    iget-object v4, v2, Lcom/truecaller/data/entity/Contact;->d:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v2, Lcom/truecaller/data/entity/Contact;->n:Ljava/util/List;

    .line 128
    :cond_d
    iget-object v4, v2, Lcom/truecaller/data/entity/Contact;->n:Ljava/util/List;

    .line 129
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/truecaller/data/entity/Source;

    .line 130
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v12

    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    .line 132
    invoke-static {v11, v2}, Le/a/k3/j/f;->b(Lcom/truecaller/data/entity/RowEntity;Lcom/truecaller/data/entity/Contact;)Landroid/content/ContentValues;

    move-result-object v13

    move-object/from16 p4, v4

    .line 133
    invoke-virtual {v11}, Lcom/truecaller/data/entity/Source;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v4, v11, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v4, Lcom/truecaller/data/dto/ContactDto$Contact$Source;

    iget-object v4, v4, Lcom/truecaller/data/dto/ContactDto$Contact$Source;->url:Ljava/lang/String;

    .line 135
    invoke-virtual {v13, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v4, v11, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v4, Lcom/truecaller/data/dto/ContactDto$Contact$Source;

    iget-object v4, v4, Lcom/truecaller/data/dto/ContactDto$Contact$Source;->logo:Ljava/lang/String;

    .line 137
    invoke-virtual {v13, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v4, v11, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v4, Lcom/truecaller/data/dto/ContactDto$Contact$Source;

    iget-object v4, v4, Lcom/truecaller/data/dto/ContactDto$Contact$Source;->caption:Ljava/lang/String;

    .line 139
    invoke-virtual {v13, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x5

    .line 140
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    iget-object v4, v11, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v4, Lcom/truecaller/data/dto/ContactDto$Contact$Source;

    iget-object v4, v4, Lcom/truecaller/data/dto/ContactDto$Contact$Source;->extra:Ljava/util/Map;

    if-eqz v4, :cond_e

    .line 142
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_e

    .line 143
    new-instance v11, Le/m/e/k;

    invoke-direct {v11}, Le/m/e/k;-><init>()V

    invoke-virtual {v11, v4}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_e
    invoke-virtual {v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 145
    invoke-virtual {v4, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 146
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 147
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p4

    goto :goto_8

    .line 148
    :cond_f
    iget-object v4, v2, Lcom/truecaller/data/entity/Contact;->s:Lcom/truecaller/data/entity/StructuredName;

    if-eqz v4, :cond_10

    .line 149
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 151
    invoke-static {v4, v2}, Le/a/k3/j/f;->b(Lcom/truecaller/data/entity/RowEntity;Lcom/truecaller/data/entity/Contact;)Landroid/content/ContentValues;

    move-result-object v12

    .line 152
    invoke-virtual {v4}, Lcom/truecaller/data/entity/StructuredName;->getGivenName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v4}, Lcom/truecaller/data/entity/StructuredName;->getFamilyName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v4}, Lcom/truecaller/data/entity/StructuredName;->getMiddleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x7

    .line 155
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    invoke-virtual {v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 157
    invoke-virtual {v4, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 158
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 159
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_10
    iget-object v4, v2, Lcom/truecaller/data/entity/Contact;->t:Lcom/truecaller/data/entity/Note;

    if-eqz v4, :cond_11

    .line 161
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 163
    invoke-static {v4, v2}, Le/a/k3/j/f;->b(Lcom/truecaller/data/entity/RowEntity;Lcom/truecaller/data/entity/Contact;)Landroid/content/ContentValues;

    move-result-object v12

    .line 164
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Note;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x8

    .line 165
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    invoke-virtual {v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 167
    invoke-virtual {v4, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 168
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 169
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_11
    iget-object v4, v2, Lcom/truecaller/data/entity/Contact;->u:Lcom/truecaller/data/entity/Business;

    if-eqz v4, :cond_12

    .line 171
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 173
    invoke-static {v4, v2}, Le/a/k3/j/f;->b(Lcom/truecaller/data/entity/RowEntity;Lcom/truecaller/data/entity/Contact;)Landroid/content/ContentValues;

    move-result-object v12

    .line 174
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Business;->getBranch()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Business;->getDepartment()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Business;->getCompanySize()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v7, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Business;->getOpeningHours()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v6, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Business;->getLandline()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Business;->getScore()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Business;->getSwishNumber()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, v19

    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Business;->getMediaCallerIDs()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, v17

    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Business;->getAppStores()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, v16

    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Business;->getBrandedMedia()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v13, v18

    invoke-virtual {v12, v13, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x9

    .line 184
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    invoke-virtual {v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 186
    invoke-virtual {v4, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 187
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 188
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_12
    iget-object v4, v2, Lcom/truecaller/data/entity/Contact;->v:Lcom/truecaller/data/entity/Style;

    if-eqz v4, :cond_13

    .line 190
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 192
    invoke-static {v4, v2}, Le/a/k3/j/f;->b(Lcom/truecaller/data/entity/RowEntity;Lcom/truecaller/data/entity/Contact;)Landroid/content/ContentValues;

    move-result-object v12

    .line 193
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Style;->getBackgroundColor()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Style;->getImageUrls()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xa

    .line 195
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    invoke-virtual {v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 197
    invoke-virtual {v4, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 198
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 199
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_13
    iget-object v4, v2, Lcom/truecaller/data/entity/Contact;->w:Lcom/truecaller/data/entity/NameFeedback;

    if-eqz v4, :cond_15

    .line 201
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 203
    invoke-static {v4, v2}, Le/a/k3/j/f;->b(Lcom/truecaller/data/entity/RowEntity;Lcom/truecaller/data/entity/Contact;)Landroid/content/ContentValues;

    move-result-object v12

    .line 204
    invoke-virtual {v4}, Lcom/truecaller/data/entity/NameFeedback;->getNameSource()Ljava/lang/Number;

    move-result-object v13

    if-eqz v13, :cond_14

    .line 205
    invoke-virtual {v4}, Lcom/truecaller/data/entity/NameFeedback;->getNameSource()Ljava/lang/Number;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    :cond_14
    invoke-virtual {v4}, Lcom/truecaller/data/entity/NameFeedback;->getNameElectionAlgo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb

    .line 207
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    invoke-virtual {v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 209
    invoke-virtual {v4, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 210
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 211
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_15
    iget-object v4, v2, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    if-eqz v4, :cond_1a

    .line 213
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 215
    invoke-static {v4, v2}, Le/a/k3/j/f;->b(Lcom/truecaller/data/entity/RowEntity;Lcom/truecaller/data/entity/Contact;)Landroid/content/ContentValues;

    move-result-object v12

    .line 216
    invoke-virtual {v4}, Lcom/truecaller/data/entity/SpamData;->getNumReports60days()Ljava/lang/Number;

    move-result-object v13

    if-eqz v13, :cond_16

    .line 217
    invoke-virtual {v4}, Lcom/truecaller/data/entity/SpamData;->getNumReports60days()Ljava/lang/Number;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    :cond_16
    invoke-virtual {v4}, Lcom/truecaller/data/entity/SpamData;->getNumCalls60days()Ljava/lang/Number;

    move-result-object v13

    if-eqz v13, :cond_17

    .line 219
    invoke-virtual {v4}, Lcom/truecaller/data/entity/SpamData;->getNumCalls60days()Ljava/lang/Number;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    :cond_17
    invoke-virtual {v4}, Lcom/truecaller/data/entity/SpamData;->getNumCalls60DaysPointerPosition()Ljava/lang/Number;

    move-result-object v13

    if-eqz v13, :cond_18

    .line 221
    invoke-virtual {v4}, Lcom/truecaller/data/entity/SpamData;->getNumCalls60DaysPointerPosition()Ljava/lang/Number;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v7, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    :cond_18
    invoke-virtual {v4}, Lcom/truecaller/data/entity/SpamData;->getNumCallsHourly()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v6, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v4}, Lcom/truecaller/data/entity/SpamData;->getSpamVersion()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_19

    .line 224
    invoke-virtual {v4}, Lcom/truecaller/data/entity/SpamData;->getSpamVersion()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_19
    const/16 v4, 0xc

    .line 225
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    invoke-virtual {v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 227
    invoke-virtual {v4, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 228
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 229
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_1a
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->Y()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/truecaller/data/entity/SearchWarning;

    .line 231
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 233
    invoke-static {v6, v2}, Le/a/k3/j/f;->b(Lcom/truecaller/data/entity/RowEntity;Lcom/truecaller/data/entity/Contact;)Landroid/content/ContentValues;

    move-result-object v12

    const/16 v13, 0xd

    .line 234
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    invoke-virtual {v6}, Lcom/truecaller/data/entity/SearchWarning;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v6}, Lcom/truecaller/data/entity/SearchWarning;->getRuleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v7, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v13, Le/a/k3/l/j;->b:Le/a/k3/l/j;

    invoke-virtual {v6}, Lcom/truecaller/data/entity/SearchWarning;->getFeatures()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v13, v6}, Le/a/k3/l/j;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1b

    .line 238
    invoke-virtual {v12, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_1b
    invoke-virtual {v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 240
    invoke-virtual {v6, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 241
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    .line 242
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 243
    :cond_1c
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->c0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/truecaller/data/entity/ContactSurvey;

    .line 244
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 246
    invoke-static {v6, v2}, Le/a/k3/j/f;->b(Lcom/truecaller/data/entity/RowEntity;Lcom/truecaller/data/entity/Contact;)Landroid/content/ContentValues;

    move-result-object v12

    const/16 v13, 0xe

    .line 247
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    invoke-virtual {v6}, Lcom/truecaller/data/entity/ContactSurvey;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v6}, Lcom/truecaller/data/entity/ContactSurvey;->getFrequency()Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 250
    invoke-virtual {v6}, Lcom/truecaller/data/entity/ContactSurvey;->getPassthroughData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 252
    invoke-virtual {v6, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 253
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    .line 254
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_1d
    :goto_b
    return-void
.end method

.method public k(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0, v1}, Le/a/k3/j/j;->e(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Le/a/k3/j/f;->a(Ljava/util/ArrayList;Ljava/util/List;)Z

    return-void
.end method

.method public varargs l(Ljava/lang/String;[I)Z
    .locals 9

    .line 1
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "At least one source is required"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isFalse(Z[Ljava/lang/String;)V

    .line 2
    array-length v0, p2

    add-int/2addr v0, v1

    new-array v7, v0, [Ljava/lang/String;

    .line 3
    aput-object p1, v7, v2

    const-string p1, "data1=? AND data_type=4 AND contact_source IN (?"

    .line 4
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 5
    aget v0, p2, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    move v0, v1

    .line 6
    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_1

    const-string v3, ",?"

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x1

    .line 8
    aget v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    move v0, v3

    goto :goto_1

    :cond_1
    const-string p2, ")"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v3, p0, Le/a/k3/j/f;->b:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/m0/a1$m;->b()Landroid/net/Uri;

    move-result-object v4

    const-string p2, "tc_id"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    .line 12
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 13
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 14
    :goto_2
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 16
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 17
    throw p2

    .line 18
    :cond_3
    :goto_3
    invoke-virtual {p0, p2}, Le/a/k3/j/j;->k(Ljava/util/List;)V

    .line 19
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method public m(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 6

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "is_super_primary"

    .line 4
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    .line 6
    iget-object v3, p0, Le/a/k3/j/f;->b:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7
    :cond_0
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "data_is_primary"

    .line 8
    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v1

    .line 10
    iget-object v2, p0, Le/a/k3/j/f;->b:Landroid/content/ContentResolver;

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const-string p1, "_id=?"

    invoke-virtual {v2, v1, p2, p1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
