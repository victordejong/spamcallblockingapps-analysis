.class public Le/a/g5/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g5/n;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/b0/p/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/b0/p/d;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/g5/o;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/a/g5/o;->b:Le/a/b0/p/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;I)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ljava/lang/String;",
            "I)",
            "Le/a/r2/x<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/Number;

    .line 3
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Le/a/g5/o;->b:Le/a/b0/p/d;

    invoke-interface {v1, v0, p2, p3}, Le/a/b0/p/d;->g(Ljava/util/List;Ljava/lang/String;I)V

    .line 7
    invoke-static {p1}, Le/a/k3/j/b;->o(Lcom/truecaller/data/entity/Contact;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 8
    new-instance p3, Le/a/k3/j/b;

    iget-object v0, p0, Le/a/g5/o;->a:Landroid/content/Context;

    invoke-direct {p3, v0}, Le/a/k3/j/b;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p3, p1}, Le/a/k3/j/b;->n(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object p3

    if-nez p3, :cond_2

    .line 10
    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    :cond_2
    move-object p1, p3

    .line 11
    :cond_3
    new-instance p3, Le/a/k3/j/i;

    iget-object v0, p0, Le/a/g5/o;->a:Landroid/content/Context;

    invoke-direct {p3, v0}, Le/a/k3/j/i;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p2, 0x0

    :cond_4
    invoke-virtual {p3, p1, p2}, Le/a/k3/j/i;->d(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    .line 12
    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/truecaller/data/entity/Contact;JJII)Le/a/r2/x;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "JJII)",
            "Le/a/r2/x<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/Number;

    .line 3
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    const-string v4, "\\+"

    const-string v5, ""

    .line 5
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, v1, Le/a/g5/o;->b:Le/a/b0/p/d;

    move-wide v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Le/a/b0/p/d;->j(Ljava/util/List;JJII)V

    .line 7
    invoke-static {p1}, Le/a/k3/j/b;->o(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 8
    new-instance v0, Le/a/k3/j/b;

    iget-object v3, v1, Le/a/g5/o;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Le/a/k3/j/b;-><init>(Landroid/content/Context;)V

    move-object v3, p1

    .line 9
    invoke-virtual {v0, p1}, Le/a/k3/j/b;->n(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    if-nez v0, :cond_2

    .line 10
    invoke-static {v2}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v3, v0

    goto :goto_1

    :cond_3
    move-object v3, p1

    .line 11
    :goto_1
    new-instance v4, Le/a/k3/j/k;

    iget-object v0, v1, Le/a/g5/o;->a:Landroid/content/Context;

    invoke-direct {v4, v0}, Le/a/k3/j/k;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-static {v3}, Le/a/k3/j/b;->o(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_6

    .line 13
    :try_start_1
    iget-object v0, v4, Le/a/k3/j/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 14
    invoke-static {}, Le/a/m0/a1$m;->a()Landroid/net/Uri;

    move-result-object v7

    const-string v6, "_id"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "aggregated_contact_id=? AND contact_source=16"

    const/4 v12, 0x1

    new-array v10, v12, [Ljava/lang/String;

    .line 15
    invoke-virtual {v3}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v5

    const/4 v11, 0x0

    move-object v6, v0

    .line 16
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 17
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    :goto_2
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 19
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "data_raw_contact_id=? AND data_type=6"

    new-array v10, v12, [Ljava/lang/String;

    .line 20
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 21
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    .line 22
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 23
    :cond_4
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 24
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 25
    sget-object v6, Le/a/m0/a1;->a:Landroid/net/Uri;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_1

    const-string v6, "com.truecaller"

    :try_start_4
    invoke-virtual {v0, v6, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 26
    array-length v6, v0

    :goto_3
    if-ge v5, v6, :cond_6

    aget-object v7, v0, v5

    .line 27
    iget-object v7, v7, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_5

    .line 28
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->I0()V

    goto :goto_5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 29
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 30
    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    .line 31
    :goto_4
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 32
    :cond_6
    :goto_5
    iget-object v0, v3, Lcom/truecaller/data/entity/Contact;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33
    iget-object v0, v3, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object v2, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->tags:Ljava/util/List;

    const-wide/16 v5, 0x0

    cmp-long v0, p2, v5

    const/16 v7, 0x10

    if-gtz v0, :cond_7

    const-wide/16 v8, -0x1

    cmp-long v0, p2, v8

    if-nez v0, :cond_8

    .line 34
    :cond_7
    new-instance v0, Lcom/truecaller/data/entity/Tag;

    invoke-direct {v0}, Lcom/truecaller/data/entity/Tag;-><init>()V

    .line 35
    invoke-virtual {v0, v7}, Lcom/truecaller/data/entity/RowEntity;->setSource(I)V

    .line 36
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/truecaller/data/entity/Tag;->setValue(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v4, v3, v0}, Le/a/k3/j/k;->c(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/data/entity/Tag;)Z

    .line 38
    invoke-virtual {v3, v0}, Lcom/truecaller/data/entity/Contact;->g(Lcom/truecaller/data/entity/Tag;)V

    :cond_8
    cmp-long v0, p4, v5

    if-lez v0, :cond_9

    .line 39
    new-instance v0, Lcom/truecaller/data/entity/Tag;

    invoke-direct {v0}, Lcom/truecaller/data/entity/Tag;-><init>()V

    .line 40
    invoke-virtual {v0, v7}, Lcom/truecaller/data/entity/RowEntity;->setSource(I)V

    .line 41
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/truecaller/data/entity/Tag;->setValue(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v4, v3, v0}, Le/a/k3/j/k;->c(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/data/entity/Tag;)Z

    .line 43
    invoke-virtual {v3, v0}, Lcom/truecaller/data/entity/Contact;->g(Lcom/truecaller/data/entity/Tag;)V

    .line 44
    :cond_9
    invoke-static {v2}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    return-object v0
.end method
