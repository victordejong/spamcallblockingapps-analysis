.class public final Le/a/h/f/n0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/h/f/n0/a$b;,
        Le/a/h/f/n0/a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/f/n0/a;->b:Landroid/content/ContentResolver;

    const-string p1, "data_type = 4 OR data_type = 1 OR data_type IS NULL OR data_type = 7"

    .line 2
    iput-object p1, p0, Le/a/h/f/n0/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$ContactFullness;Ljava/lang/Integer;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)Ljava/util/List;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;",
            "Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$ContactFullness;",
            "Ljava/lang/Integer;",
            "Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    const-string v13, "ms"

    const-string v0, "sortingMode"

    move-object/from16 v5, p1

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullness"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Ls1/k;

    const-string v2, "sorting_key_2 IS NULL, sorting_key_2, contact_name"

    const-string v3, "sorting_group_2"

    invoke-direct {v0, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ls1/k;

    const-string v2, "sorting_key_1 IS NULL, sorting_key_1, contact_name"

    const-string v3, "sorting_group_1"

    invoke-direct {v0, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    :goto_0
    iget-object v2, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 7
    move-object/from16 v21, v2

    check-cast v21, Ljava/lang/String;

    .line 8
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 9
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 10
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_2

    .line 11
    new-instance v0, Ls1/k;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Le/a/m0/a1$e;->b()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 12
    :cond_3
    new-instance v0, Ls1/k;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    sget-object v4, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v6, "sorted_contacts_shallow"

    .line 14
    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 15
    invoke-direct {v0, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    :goto_1
    iget-object v3, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 17
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 18
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 19
    check-cast v0, Landroid/net/Uri;

    if-eqz v11, :cond_4

    .line 20
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "limit"

    invoke-virtual {v0, v6, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :cond_4
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 21
    iget-object v6, v9, Le/a/h/f/n0/a;->a:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x0

    aput-object v6, v4, v7

    if-nez v12, :cond_6

    goto :goto_3

    .line 22
    :cond_6
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_8

    if-eq v6, v1, :cond_7

    :goto_3
    const/4 v6, 0x0

    goto :goto_4

    :cond_7
    const-string v6, "contact_phonebook_id IS NOT NULL OR (contact_source & 32)=32"

    goto :goto_4

    :cond_8
    const-string v6, "contact_phonebook_id IS NULL AND (contact_source & 32)!=32"

    :goto_4
    aput-object v6, v4, v1

    .line 23
    invoke-static {v4}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    .line 24
    move-object/from16 v4, v22

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_9

    .line 25
    invoke-static/range {v22 .. v22}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_5

    :cond_9
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 26
    sget-object v28, Le/a/h/f/n0/a$f;->b:Le/a/h/f/n0/a$f;

    const/16 v29, 0x1e

    const-string v23, " AND "

    invoke-static/range {v22 .. v29}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v1

    .line 27
    :goto_5
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 28
    iget-object v4, v9, Le/a/h/f/n0/a;->b:Landroid/content/ContentResolver;

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v0

    move-object/from16 v19, v1

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v6, v16, v6

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllContactsSorted, uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", selection = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", query took: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v8, :cond_12

    .line 31
    new-instance v0, Le/a/k3/i;

    invoke-direct {v0, v8, v2}, Le/a/k3/i;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v1, "hidden_from_identified"

    .line 32
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eqz v3, :cond_a

    .line 33
    new-instance v7, Le/a/h/f/n0/a$d;

    invoke-direct {v7, v0}, Le/a/h/f/n0/a$d;-><init>(Le/a/k3/i;)V

    .line 34
    new-instance v0, Le/a/h/f/n0/a$e;

    invoke-direct {v0, v1}, Le/a/h/f/n0/a$e;-><init>(I)V

    .line 35
    new-instance v6, Le/a/h/f/n0/a$c;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_6

    move-object v1, v6

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v9, v6

    move-object/from16 v6, p2

    move-object/from16 v16, v13

    move-object v13, v7

    move-object/from16 v7, p3

    move-object v11, v8

    move-object/from16 v8, p4

    :try_start_1
    invoke-direct/range {v1 .. v8}, Le/a/h/f/n0/a$c;-><init>(Ljava/lang/String;ZLe/a/h/f/n0/a;Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$ContactFullness;Ljava/lang/Integer;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)V

    .line 36
    invoke-static {v11, v13, v0, v9}, Le/a/e/a2;->N(Landroid/database/Cursor;Ls1/z/b/l;Ls1/z/b/l;Ls1/z/b/q;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_c

    :cond_a
    move-object v11, v8

    move-object/from16 v16, v13

    .line 37
    new-instance v2, Le/a/k3/j/d;

    invoke-direct {v2, v11}, Le/a/k3/j/d;-><init>(Landroid/database/Cursor;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4

    .line 38
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 39
    :goto_6
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 40
    invoke-virtual {v2, v11}, Le/a/k3/j/d;->g(Landroid/database/Cursor;)Lcom/truecaller/data/entity/Contact;

    move-result-object v4

    .line 41
    invoke-static {v4}, Le/a/m0/a1$k;->u0(Lcom/truecaller/data/entity/Contact;)Z

    move-result v5

    if-eqz v5, :cond_d

    sget-object v5, Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;->NON_PHONEBOOK_ONLY:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    if-ne v12, v5, :cond_c

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_7

    :cond_b
    const/4 v5, 0x0

    :goto_7
    invoke-static {v5}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v5

    if-nez v5, :cond_d

    :cond_c
    const/4 v5, 0x1

    goto :goto_8

    :cond_d
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_e

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    :goto_9
    if-eqz v4, :cond_10

    .line 42
    new-instance v5, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;

    const-string v6, "it"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Le/a/k3/i;->a(Landroid/database/Cursor;)Le/a/k3/l/b;

    move-result-object v6

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-lez v7, :cond_f

    const/4 v7, 0x1

    goto :goto_a

    :cond_f
    const/4 v7, 0x0

    :goto_a
    invoke-direct {v5, v4, v6, v7}, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;-><init>(Lcom/truecaller/data/entity/Contact;Le/a/k3/l/b;Z)V

    goto :goto_b

    :cond_10
    const/4 v5, 0x0

    .line 43
    :goto_b
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :cond_11
    const/4 v1, 0x0

    .line 44
    :try_start_3
    invoke-static {v11, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 45
    :goto_c
    invoke-static {v0}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_12

    :catch_0
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_10

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v1, v0

    .line 46
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_5
    invoke-static {v11, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_e

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_10

    :catch_4
    move-exception v0

    goto :goto_d

    :catch_5
    move-exception v0

    goto :goto_f

    :cond_12
    move-object/from16 v16, v13

    const/4 v0, 0x0

    goto :goto_12

    :catch_6
    move-exception v0

    move-object/from16 v16, v13

    :goto_d
    const/4 v1, 0x0

    .line 47
    :goto_e
    new-instance v2, Lcom/truecaller/log/UnmutedException$f;

    const-string v3, "Error while reading contacts: "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/truecaller/log/UnmutedException$f;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-static {v2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_11

    :catch_7
    move-exception v0

    move-object/from16 v16, v13

    :goto_f
    const/4 v1, 0x0

    .line 49
    :goto_10
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_11
    move-object v0, v1

    :goto_12
    if-eqz v0, :cond_13

    goto :goto_13

    .line 50
    :cond_13
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    .line 51
    :goto_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v14

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContacts: fullness: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", phonebookFilter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", limit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " items, took: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;ZZ)Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;
    .locals 8

    const-string v0, "sortingMode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phonebookFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    const-string v2, "last_name"

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    const-string v2, "first_name"

    .line 4
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_3

    if-ne v4, v3, :cond_2

    const-string v3, "phonebook"

    goto :goto_1

    .line 5
    :cond_2
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_3
    const-string v3, "non_phonebook"

    .line 6
    :goto_1
    invoke-static {}, Le/a/m0/a1$e;->a()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "fast_scroll"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "sorting_mode"

    .line 7
    invoke-virtual {v4, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "phonebook_filter"

    .line 8
    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 9
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    const-string v3, "hidden_from_identified_filter"

    invoke-virtual {v2, v3, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 10
    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p4

    const-string v2, "identified_spam_score_filter"

    invoke-virtual {p3, v2, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 11
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string p3, "getFastScrollIndexingUri\u2026SpamIndexes\n            )"

    .line 12
    invoke-static {v3, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 13
    :try_start_0
    iget-object v2, p0, Le/a/h/f/n0/a;->b:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p4, :cond_5

    .line 14
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    :goto_2
    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 16
    new-instance v3, Le/a/h/f/n0/a$a;

    const-string v4, "group_label"

    .line 17
    invoke-interface {p4, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p4, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "label_count"

    .line 18
    invoke-interface {p4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 19
    invoke-direct {v3, v4, v5}, Le/a/h/f/n0/a$a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 20
    :cond_4
    :try_start_2
    invoke-static {p4, p3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    move-object p3, v2

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 21
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {p4, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p4

    .line 22
    invoke-static {p4}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    if-eqz p3, :cond_6

    goto :goto_4

    .line 23
    :cond_6
    sget-object p3, Ls1/u/s;->a:Ls1/u/s;

    .line 24
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 25
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFastScrollIndexes, sortingMode: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", phonebookFilter: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", took: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    new-instance p1, Le/a/h/f/n0/a$b;

    invoke-direct {p1, p3}, Le/a/h/f/n0/a$b;-><init>(Ljava/lang/Iterable;)V

    return-object p1
.end method

.method public c(Ljava/util/Set;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation

    const-string v0, "numbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    sget-object v7, Le/a/h/f/n0/a$g;->b:Le/a/h/f/n0/a$g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x1f

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    const-string p2, "NOT"

    :goto_0
    const-string v1, "(contact_phonebook_id IS NOT NULL OR (contact_source & 32)=32)"

    invoke-static {v0, p2, v1}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data1 IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data_type = 4"

    const-string v1, " AND "

    .line 5
    invoke-static {v0, v1, p2, v1, p1}, Le/d/c/a/a;->E2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "contact_name COLLATE NOCASE ASC, tc_id"

    .line 6
    invoke-static {}, Le/a/m0/a1$e;->b()Landroid/net/Uri;

    move-result-object v3

    const/4 p1, 0x0

    .line 7
    :try_start_0
    iget-object v2, p0, Le/a/h/f/n0/a;->b:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 8
    sget-object v0, Le/a/o5/v;->b:Le/a/o5/v;

    invoke-static {p2, p1, v0}, Le/a/e/a2;->M(Landroid/database/Cursor;Ls1/z/b/l;Ls1/z/b/p;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 9
    invoke-static {p2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :catch_1
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    .line 11
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    return-object p1
.end method
