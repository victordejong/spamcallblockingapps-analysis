.class public final Le/a/c/c/a/e0;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x26

    const/16 v1, 0x27

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 21

    move-object/from16 v0, p1

    const-string v1, "database"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "SELECT * FROM sender_info"

    .line 1
    invoke-interface {v0, v1}, Ln3/e0/a/b;->U1(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "id"

    .line 4
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v6, "sender"

    .line 5
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v6, "getString(getColumnIndex\u2026able.COLUMN_NAME_SENDER))"

    invoke-static {v10, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "sender_name"

    .line 6
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v6, "sender_type"

    .line 7
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v6, "smart_features_status"

    .line 8
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 9
    invoke-static {v6}, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->valueOf(Ljava/lang/String;)Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    move-result-object v6

    move-object v13, v6

    goto :goto_1

    :cond_1
    move-object v13, v5

    :goto_1
    const-string v6, "grammars_enabled"

    .line 10
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(getColumnIndex\u2026N_NAME_GRAMMARS_ENABLED))"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, ","

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4, v4, v3}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v14

    const-string v6, "source_type"

    .line 11
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "it"

    .line 12
    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {v6}, Lcom/truecaller/insights/source/SourceType;->valueOf(Ljava/lang/String;)Lcom/truecaller/insights/source/SourceType;

    move-result-object v15

    const/16 v16, 0x0

    .line 14
    new-instance v6, Le/a/c/r/i/a;

    move-object v7, v6

    invoke-direct/range {v7 .. v16}, Le/a/c/r/i/a;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ljava/util/List;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 15
    :cond_2
    :goto_2
    invoke-static {v1, v5}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 19
    move-object v8, v6

    check-cast v8, Le/a/c/r/i/a;

    .line 20
    iget-object v8, v8, Le/a/c/r/i/a;->g:Lcom/truecaller/insights/source/SourceType;

    .line 21
    sget-object v9, Lcom/truecaller/insights/source/SourceType;->USER:Lcom/truecaller/insights/source/SourceType;

    if-ne v8, v9, :cond_3

    goto :goto_4

    :cond_3
    move v7, v4

    :goto_4
    if-eqz v7, :cond_4

    .line 22
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 23
    :cond_4
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 24
    :cond_5
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 25
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v6, "(this as java.lang.String).toUpperCase(locale)"

    const-string v8, "null cannot be cast to non-null type java.lang.String"

    const-string v9, "Locale.ROOT"

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 26
    move-object v10, v4

    check-cast v10, Le/a/c/r/i/a;

    .line 27
    iget-object v10, v10, Le/a/c/r/i/a;->b:Ljava/lang/String;

    .line 28
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v11, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_6

    .line 30
    invoke-static {v2, v8}, Le/d/c/a/a;->R(Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    :cond_6
    check-cast v6, Ljava/util/List;

    .line 31
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 32
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    .line 35
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 36
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_8

    goto :goto_7

    .line 37
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 38
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_9

    goto :goto_7

    .line 39
    :cond_9
    move-object v11, v5

    check-cast v11, Le/a/c/r/i/a;

    .line 40
    iget-wide v11, v11, Le/a/c/r/i/a;->a:J

    .line 41
    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 42
    move-object v14, v13

    check-cast v14, Le/a/c/r/i/a;

    .line 43
    iget-wide v14, v14, Le/a/c/r/i/a;->a:J

    cmp-long v16, v11, v14

    if-gez v16, :cond_b

    move-object v5, v13

    move-wide v11, v14

    .line 44
    :cond_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_a

    .line 45
    :goto_7
    move-object v10, v5

    check-cast v10, Le/a/c/r/i/a;

    if-eqz v10, :cond_c

    const-wide/16 v11, 0x0

    .line 46
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xfd

    invoke-static/range {v10 .. v20}, Le/a/c/r/i/a;->a(Le/a/c/r/i/a;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ljava/util/List;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;I)Le/a/c/r/i/a;

    move-result-object v4

    goto :goto_8

    :cond_c
    const/4 v4, 0x0

    :goto_8
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    goto :goto_6

    .line 47
    :cond_d
    invoke-static {v1}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 48
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 49
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 50
    move-object v5, v4

    check-cast v5, Le/a/c/r/i/a;

    .line 51
    iget-object v5, v5, Le/a/c/r/i/a;->b:Ljava/lang/String;

    .line 52
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v10, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v5, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_e

    .line 54
    invoke-static {v2, v5}, Le/d/c/a/a;->R(Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    :cond_e
    check-cast v10, Ljava/util/List;

    .line 55
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 56
    :cond_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 59
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 60
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_10

    const/4 v5, 0x0

    goto :goto_c

    .line 61
    :cond_10
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 62
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_11

    :goto_b
    move-object v5, v6

    goto :goto_c

    .line 63
    :cond_11
    move-object v8, v6

    check-cast v8, Le/a/c/r/i/a;

    .line 64
    iget-wide v8, v8, Le/a/c/r/i/a;->a:J

    .line 65
    :cond_12
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 66
    move-object v11, v10

    check-cast v11, Le/a/c/r/i/a;

    .line 67
    iget-wide v11, v11, Le/a/c/r/i/a;->a:J

    cmp-long v13, v8, v11

    if-gez v13, :cond_13

    move-object v6, v10

    move-wide v8, v11

    .line 68
    :cond_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_12

    goto :goto_b

    .line 69
    :goto_c
    move-object v8, v5

    check-cast v8, Le/a/c/r/i/a;

    if-eqz v8, :cond_14

    const-wide/16 v9, 0x0

    .line 70
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xfd

    invoke-static/range {v8 .. v18}, Le/a/c/r/i/a;->a(Le/a/c/r/i/a;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ljava/util/List;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;I)Le/a/c/r/i/a;

    move-result-object v4

    goto :goto_d

    :cond_14
    const/4 v4, 0x0

    :goto_d
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 71
    :cond_15
    invoke-static {v3}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 72
    invoke-static {v1, v2}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    const-string v2, "DELETE FROM sender_info"

    .line 73
    invoke-interface {v0, v2}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 74
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c/r/i/a;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    .line 75
    iget-wide v4, v2, Le/a/c/r/i/a;->a:J

    .line 76
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 77
    iget-object v4, v2, Le/a/c/r/i/a;->b:Ljava/lang/String;

    aput-object v4, v3, v7

    const/4 v4, 0x2

    .line 78
    iget-object v5, v2, Le/a/c/r/i/a;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 79
    iget-object v5, v2, Le/a/c/r/i/a;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 80
    iget-object v5, v2, Le/a/c/r/i/a;->e:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    if-eqz v5, :cond_16

    .line 81
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    :cond_16
    const/4 v5, 0x0

    :goto_f
    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 82
    iget-object v8, v2, Le/a/c/r/i/a;->f:Ljava/util/List;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3e

    const-string v9, ","

    .line 83
    invoke-static/range {v8 .. v15}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 84
    iget-object v2, v2, Le/a/c/r/i/a;->g:Lcom/truecaller/insights/source/SourceType;

    .line 85
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v3, v4

    const-string v2, "INSERT INTO sender_info (\n                    id,\n                    sender,\n                    sender_name,\n                    sender_type,\n                    smart_features_status,\n                    grammars_enabled,\n                    source_type\n                    )\n                    VALUES (\n                    ?,\n                    ?,\n                    ?,\n                    ?,\n                    ?,\n                    ?,\n                    ?\n                    )"

    .line 86
    invoke-interface {v0, v2, v3}, Ln3/e0/a/b;->c1(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    :cond_17
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 87
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method
