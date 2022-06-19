.class public final Le/a/y4/g/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;

.field public final b:Landroid/content/ContentResolver;

.field public final c:Lcom/truecaller/service/t9/T9DaoHelper;

.field public final d:Le/a/z4/f;

.field public final e:Le/a/b4/a/d;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/truecaller/service/t9/T9DaoHelper;Le/a/z4/f;Le/a/b4/a/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t9DaoHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languageManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t9KeyMapProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y4/g/g;->b:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/y4/g/g;->c:Lcom/truecaller/service/t9/T9DaoHelper;

    iput-object p3, p0, Le/a/y4/g/g;->d:Le/a/z4/f;

    iput-object p4, p0, Le/a/y4/g/g;->e:Le/a/b4/a/d;

    .line 2
    new-instance p1, Le/a/y4/g/g$e;

    invoke-direct {p1, p0}, Le/a/y4/g/g$e;-><init>(Le/a/y4/g/g;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/y4/g/g;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public final a([J)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    const-string v3, "rawContactIds"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, v1, Le/a/y4/g/g;->c:Lcom/truecaller/service/t9/T9DaoHelper;

    new-instance v4, Le/a/y4/g/f;

    .line 2
    iget-object v5, v1, Le/a/y4/g/g;->a:Ls1/g;

    invoke-interface {v5}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3
    iget-object v6, v1, Le/a/y4/g/g;->e:Le/a/b4/a/d;

    .line 4
    iget-object v7, v1, Le/a/y4/g/g;->a:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 5
    invoke-interface {v6, v7}, Le/a/b4/a/d;->a(Ljava/lang/String;)Le/a/b4/a/c;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/a/y4/g/f;-><init>(Ljava/lang/String;Le/a/b4/a/c;)V

    .line 6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "t9Mapper"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object v4, v3, Lcom/truecaller/service/t9/T9DaoHelper;->a:Le/a/y4/g/a;

    .line 8
    invoke-static {}, Le/a/m0/a1$k;->L()Landroid/net/Uri;

    move-result-object v3

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/16 v4, 0x12c

    .line 10
    invoke-static {v0, v4}, Le/q/f/a/d/a;->Z2([JI)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "("

    const-string v8, ")"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x39

    .line 11
    invoke-static/range {v5 .. v12}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "raw_contact_id IN "

    .line 12
    invoke-static {v5, v4}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 14
    iget-object v8, v1, Le/a/y4/g/g;->b:Landroid/content/ContentResolver;

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v5, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " items, took: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "ms\ndeleteWhere = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ls1/o;

    .line 17
    new-instance v6, Ls1/o;

    invoke-static {}, Le/a/m0/a1$m;->a()Landroid/net/Uri;

    move-result-object v8

    const-string v10, "_id IN "

    invoke-static {v10, v4}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Le/a/y4/g/g$b;->b:Le/a/y4/g/g$b;

    invoke-direct {v6, v8, v10, v11}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x0

    aput-object v6, v5, v8

    .line 18
    new-instance v6, Ls1/o;

    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v8

    const-string v10, "data_raw_contact_id IN "

    invoke-static {v10, v4}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v10, Le/a/y4/g/g$c;->b:Le/a/y4/g/g$c;

    invoke-direct {v6, v8, v4, v10}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v6, v5, v4

    .line 19
    invoke-static {v5}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 20
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 22
    check-cast v6, Ls1/o;

    .line 23
    iget-object v8, v6, Ls1/o;->a:Ljava/lang/Object;

    .line 24
    check-cast v8, Landroid/net/Uri;

    .line 25
    iget-object v10, v6, Ls1/o;->b:Ljava/lang/Object;

    .line 26
    move-object v15, v10

    check-cast v15, Ljava/lang/String;

    .line 27
    iget-object v6, v6, Ls1/o;->c:Ljava/lang/Object;

    .line 28
    check-cast v6, Ls1/z/b/l;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 30
    iget-object v10, v1, Le/a/y4/g/g;->b:Landroid/content/ContentResolver;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object v11, v8

    move-object v13, v15

    move-object/from16 v19, v15

    move-object/from16 v15, v18

    .line 31
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 32
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 33
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v6, v10}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 34
    :cond_0
    invoke-static {v10, v9}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 35
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v10, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_1
    move-object v11, v2

    .line 36
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v16

    .line 37
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "query for "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " returned "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "ms\nwhere = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v19

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    invoke-static {v5, v11}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto/16 :goto_0

    .line 39
    :cond_2
    invoke-static {v5}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 40
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 41
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/16 v7, 0xa

    if-eqz v6, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 42
    check-cast v6, Ls1/o;

    .line 43
    iget-object v14, v1, Le/a/y4/g/g;->c:Lcom/truecaller/service/t9/T9DaoHelper;

    .line 44
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "entityWithIdAndTimeStamp"

    invoke-static {v6, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v8, v6, Ls1/o;->a:Ljava/lang/Object;

    .line 46
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    .line 47
    iget-object v8, v6, Ls1/o;->b:Ljava/lang/Object;

    .line 48
    check-cast v8, Lcom/truecaller/data/entity/Entity;

    .line 49
    iget-object v6, v6, Ls1/o;->c:Ljava/lang/Object;

    .line 50
    check-cast v6, Ljava/lang/Long;

    .line 51
    instance-of v9, v8, Lcom/truecaller/data/entity/Address;

    const-string v13, "data_id"

    if-eqz v9, :cond_3

    .line 52
    move-object/from16 v17, v8

    check-cast v17, Lcom/truecaller/data/entity/Address;

    invoke-virtual/range {v17 .. v17}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 53
    invoke-virtual/range {v17 .. v17}, Lcom/truecaller/data/entity/Address;->getCountryName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2b2

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v21, 0x6

    move-object v8, v14

    move-object/from16 v22, v13

    move/from16 v13, v21

    invoke-static/range {v8 .. v13}, Lcom/truecaller/service/t9/T9DaoHelper;->b(Lcom/truecaller/service/t9/T9DaoHelper;Ljava/lang/String;ILcom/truecaller/service/t9/T9DaoHelper$MappingRule;ZI)Ljava/util/List;

    move-result-object v13

    .line 54
    invoke-virtual/range {v17 .. v17}, Lcom/truecaller/data/entity/Address;->getCity()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2bc

    move-object/from16 v11, v18

    move/from16 v12, v19

    move-object v14, v13

    move/from16 v13, v20

    invoke-static/range {v8 .. v13}, Lcom/truecaller/service/t9/T9DaoHelper;->b(Lcom/truecaller/service/t9/T9DaoHelper;Ljava/lang/String;ILcom/truecaller/service/t9/T9DaoHelper$MappingRule;ZI)Ljava/util/List;

    move-result-object v8

    .line 55
    invoke-static {v14, v8}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    .line 56
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v8, v7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 58
    check-cast v8, Landroid/content/ContentValues;

    .line 59
    invoke-virtual/range {v17 .. v17}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v13, v22

    .line 60
    invoke-virtual {v8, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 61
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 62
    :cond_3
    instance-of v9, v8, Lcom/truecaller/data/entity/Link;

    if-eqz v9, :cond_4

    .line 63
    move-object/from16 v17, v8

    check-cast v17, Lcom/truecaller/data/entity/Link;

    invoke-virtual/range {v17 .. v17}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 64
    invoke-virtual/range {v17 .. v17}, Lcom/truecaller/data/entity/Link;->getInfo()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xc8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x6

    move-object v8, v14

    move-object v14, v13

    move/from16 v13, v18

    invoke-static/range {v8 .. v13}, Lcom/truecaller/service/t9/T9DaoHelper;->b(Lcom/truecaller/service/t9/T9DaoHelper;Ljava/lang/String;ILcom/truecaller/service/t9/T9DaoHelper$MappingRule;ZI)Ljava/util/List;

    move-result-object v8

    .line 65
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v8, v7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 67
    check-cast v8, Landroid/content/ContentValues;

    .line 68
    invoke-virtual/range {v17 .. v17}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v10

    .line 69
    invoke-virtual {v8, v14, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    move-object v7, v13

    .line 71
    instance-of v9, v8, Lcom/truecaller/data/entity/Number;

    if-eqz v9, :cond_5

    .line 72
    move-object/from16 v17, v8

    check-cast v17, Lcom/truecaller/data/entity/Number;

    invoke-virtual/range {v17 .. v17}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 73
    invoke-virtual/range {v17 .. v17}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x384

    .line 74
    sget-object v11, Lcom/truecaller/service/t9/T9DaoHelper$MappingRule;->MATCH_IF_STARTS_WITH:Lcom/truecaller/service/t9/T9DaoHelper$MappingRule;

    const/4 v10, 0x1

    .line 75
    invoke-virtual {v14, v8, v9, v11, v10}, Lcom/truecaller/service/t9/T9DaoHelper;->a(Ljava/lang/String;ILcom/truecaller/service/t9/T9DaoHelper$MappingRule;Z)Ljava/util/List;

    move-result-object v13

    .line 76
    invoke-virtual/range {v17 .. v17}, Lcom/truecaller/data/entity/Number;->d()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x384

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/4 v12, 0x0

    move-object v8, v14

    move-object v0, v13

    move/from16 v13, v19

    invoke-static/range {v8 .. v13}, Lcom/truecaller/service/t9/T9DaoHelper;->b(Lcom/truecaller/service/t9/T9DaoHelper;Ljava/lang/String;ILcom/truecaller/service/t9/T9DaoHelper$MappingRule;ZI)Ljava/util/List;

    move-result-object v8

    .line 77
    invoke-static {v0, v8}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 78
    invoke-virtual/range {v17 .. v17}, Lcom/truecaller/data/entity/Number;->d()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x37a

    .line 79
    sget-object v19, Lcom/truecaller/service/t9/T9DaoHelper$MappingRule;->MATCH_ANYWHERE:Lcom/truecaller/service/t9/T9DaoHelper$MappingRule;

    const/16 v20, 0x0

    const/16 v21, 0x4

    const/4 v13, 0x4

    move-object v8, v14

    move-object/from16 v11, v19

    move/from16 v12, v18

    .line 80
    invoke-static/range {v8 .. v13}, Lcom/truecaller/service/t9/T9DaoHelper;->b(Lcom/truecaller/service/t9/T9DaoHelper;Ljava/lang/String;ILcom/truecaller/service/t9/T9DaoHelper$MappingRule;ZI)Ljava/util/List;

    move-result-object v8

    .line 81
    invoke-static {v0, v8}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-virtual/range {v17 .. v17}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x370

    move-object v8, v14

    move/from16 v12, v20

    move/from16 v13, v21

    invoke-static/range {v8 .. v13}, Lcom/truecaller/service/t9/T9DaoHelper;->b(Lcom/truecaller/service/t9/T9DaoHelper;Ljava/lang/String;ILcom/truecaller/service/t9/T9DaoHelper$MappingRule;ZI)Ljava/util/List;

    move-result-object v8

    .line 83
    invoke-static {v0, v8}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 84
    new-instance v9, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v0, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 86
    check-cast v8, Landroid/content/ContentValues;

    .line 87
    invoke-virtual/range {v17 .. v17}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v10

    .line 88
    invoke-virtual {v8, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 89
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 90
    :cond_5
    instance-of v0, v8, Lcom/truecaller/data/entity/Contact;

    if-eqz v0, :cond_8

    .line 91
    move-object v0, v8

    check-cast v0, Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3e8

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x6

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v13, 0x6

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v14

    invoke-static/range {v8 .. v13}, Lcom/truecaller/service/t9/T9DaoHelper;->b(Lcom/truecaller/service/t9/T9DaoHelper;Ljava/lang/String;ILcom/truecaller/service/t9/T9DaoHelper$MappingRule;ZI)Ljava/util/List;

    move-result-object v13

    .line 92
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->m()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3b6

    const/16 v22, 0x6

    move-object/from16 v11, v20

    move/from16 v12, v21

    move-object v7, v13

    move/from16 v13, v22

    invoke-static/range {v8 .. v13}, Lcom/truecaller/service/t9/T9DaoHelper;->b(Lcom/truecaller/service/t9/T9DaoHelper;Ljava/lang/String;ILcom/truecaller/service/t9/T9DaoHelper$MappingRule;ZI)Ljava/util/List;

    move-result-object v8

    .line 93
    invoke-static {v7, v8}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    .line 94
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->p()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x320

    move-object v8, v14

    move-object/from16 v11, v17

    move/from16 v12, v18

    move/from16 v13, v19

    invoke-static/range {v8 .. v13}, Lcom/truecaller/service/t9/T9DaoHelper;->b(Lcom/truecaller/service/t9/T9DaoHelper;Ljava/lang/String;ILcom/truecaller/service/t9/T9DaoHelper$MappingRule;ZI)Ljava/util/List;

    move-result-object v8

    .line 95
    invoke-static {v7, v8}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    .line 96
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->D()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x316

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v14

    const/4 v0, 0x6

    move v13, v0

    invoke-static/range {v8 .. v13}, Lcom/truecaller/service/t9/T9DaoHelper;->b(Lcom/truecaller/service/t9/T9DaoHelper;Ljava/lang/String;ILcom/truecaller/service/t9/T9DaoHelper$MappingRule;ZI)Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-static {v7, v0}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 98
    move-object v7, v0

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    move-object v9, v0

    if-eqz v9, :cond_7

    goto :goto_8

    .line 99
    :cond_7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    goto :goto_8

    :cond_8
    const/4 v9, 0x0

    :cond_9
    :goto_8
    if-eqz v9, :cond_a

    goto :goto_9

    :cond_a
    move-object v9, v2

    .line 100
    :goto_9
    new-instance v0, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v9, v7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 102
    check-cast v8, Landroid/content/ContentValues;

    .line 103
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "raw_contact_id"

    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "raw_contact_insert_timestamp"

    .line 104
    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 105
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 106
    :cond_b
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 107
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 109
    move-object v9, v8

    check-cast v9, Landroid/content/ContentValues;

    .line 110
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10, v9}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    const-string v9, "hit_priority"

    invoke-virtual {v10, v9}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v6, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 112
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 113
    :cond_d
    invoke-static {v5, v7}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move-object/from16 v0, p1

    goto/16 :goto_3

    .line 114
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v5, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 116
    check-cast v4, Landroid/content/ContentValues;

    .line 117
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 118
    invoke-virtual {v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 119
    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 120
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 121
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 122
    iget-object v2, v1, Le/a/y4/g/g;->b:Landroid/content/ContentResolver;

    sget-object v3, Le/a/m0/a1;->a:Landroid/net/Uri;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v4, "com.truecaller"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 124
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 126
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    return-void
.end method

.method public final b(Z)V
    .locals 14

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    :try_start_0
    iget-object v2, p0, Le/a/y4/g/g;->b:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/m0/a1$k;->L()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "\n                                raw_contact_id NOT IN (\n                                        SELECT _id FROM raw_contact)\n                                "

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-string v0, " sync() deletes from "

    .line 4
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Le/a/m0/a1$k;->L()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items, took: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_0

    move-object v9, v5

    goto :goto_0

    :cond_0
    const-string p1, "\n                                _id IN (\n                                    SELECT r._id\n                                        FROM raw_contact r\n                                        LEFT JOIN t9_mapping m\n                                            ON r._id = m.raw_contact_id\n                                            AND r.insert_timestamp = m.raw_contact_insert_timestamp\n                                        WHERE m.raw_contact_id IS NULL\n                                )\n                                "

    move-object v9, p1

    .line 5
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 6
    iget-object v6, p0, Le/a/y4/g/g;->b:Landroid/content/ContentResolver;

    .line 7
    invoke-static {}, Le/a/m0/a1$m;->a()Landroid/net/Uri;

    move-result-object v7

    const-string p1, "_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    :try_start_1
    new-instance v0, Le/a/y4/g/g$a;

    invoke-direct {v0, p1}, Le/a/y4/g/g$a;-><init>(Landroid/database/Cursor;)V

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->e1(Ls1/z/b/a;)Ls1/e0/k;

    move-result-object v0

    const/16 v4, 0x12c

    .line 9
    invoke-static {v0, v4}, Ls1/e0/x;->b(Ls1/e0/k;I)Ls1/e0/k;

    move-result-object v0

    .line 10
    sget-object v4, Le/a/y4/g/g$d;->b:Le/a/y4/g/g$d;

    invoke-static {v0, v4}, Ls1/e0/x;->f(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    .line 11
    check-cast v0, Ls1/e0/h;

    .line 12
    new-instance v4, Ls1/e0/h$a;

    invoke-direct {v4, v0}, Ls1/e0/h$a;-><init>(Ls1/e0/h;)V

    .line 13
    :catch_0
    :goto_1
    invoke-virtual {v4}, Ls1/e0/h$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ls1/e0/h$a;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    invoke-static {v0}, Ls1/u/i;->U0(Ljava/util/Collection;)[J

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/y4/g/g;->a([J)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_1
    :try_start_3
    const-string v0, "cursor"

    .line 15
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    invoke-static {p1, v5}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v5, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 17
    :cond_2
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v12

    const-string p1, " sync() fetches from "

    .line 18
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Le/a/m0/a1$m;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    :catch_1
    move-exception p1

    .line 19
    new-instance v0, Lcom/truecaller/log/UnmutedException$a;

    sget-object v1, Le/a/m0/a1;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const-string p1, "No message"

    :goto_3
    const-string v1, "com.truecaller"

    invoke-direct {v0, v1, p1}, Lcom/truecaller/log/UnmutedException$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    return-void
.end method
