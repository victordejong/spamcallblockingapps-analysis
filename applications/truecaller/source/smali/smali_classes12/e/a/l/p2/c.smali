.class public final Le/a/l/p2/c;
.super Le/a/y2/k;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Le/a/l/p2/d;


# direct methods
.method public constructor <init>(Le/a/l/p2/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contactsPremiumStatusManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Le/a/l/p2/c;->c:Le/a/l/p2/d;

    const-string p1, "ContactsPremiumStatusFetchWorkAction"

    .line 2
    iput-object p1, p0, Le/a/l/p2/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 22

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le/a/l/p2/c;->c:Le/a/l/p2/d;

    .line 2
    iget-object v2, v0, Le/a/l/p2/d;->b:Landroid/content/ContentResolver;

    .line 3
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "DISTINCT(data1)"

    .line 4
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 5
    iget-object v5, v0, Le/a/l/p2/d;->d:Le/a/u3/g;

    .line 6
    iget-object v6, v5, Le/a/u3/g;->H1:Le/a/u3/g$a;

    sget-object v7, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v8, 0x89

    aget-object v7, v7, v8

    invoke-virtual {v6, v5, v7}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v5

    .line 7
    invoke-interface {v5}, Le/a/u3/b;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "data_type = ? AND data8 = ?"

    goto :goto_0

    :cond_0
    const-string v5, "data_type = ? AND data_phonebook_id NOT NULL AND data8 = ?"

    :goto_0
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    const/4 v7, 0x4

    .line 8
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v6, v9

    sget-object v7, Le/m/f/a/j$d;->b:Le/m/f/a/j$d;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v6, v10

    const/4 v7, 0x0

    .line 9
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 10
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 12
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 13
    invoke-static {v2, v4}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 15
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_f

    .line 16
    :cond_2
    iget-object v2, v0, Le/a/l/p2/d;->c:Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/l4/h;

    invoke-interface {v2, v3}, Le/a/l4/h;->e(Ljava/util/Collection;)Le/a/r2/x;

    move-result-object v2

    invoke-virtual {v2}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_14

    const-string v3, "mutableCollection"

    .line 17
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 19
    invoke-static {}, Le/a/m0/a1$a;->b()Landroid/net/Uri;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Integer;

    .line 20
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    .line 21
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Le/a/l4/e;

    .line 23
    iget-object v11, v11, Le/a/l4/e;->i:Lcom/truecaller/api/services/presence/v1/models/Premium;

    if-eqz v11, :cond_4

    .line 24
    invoke-virtual {v11}, Lcom/truecaller/api/services/presence/v1/models/Premium;->getLevelValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_3

    :cond_4
    move-object v11, v4

    :goto_3
    invoke-static {v5, v11}, Le/q/f/a/d/a;->Q([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 25
    :cond_5
    iget-object v2, v0, Le/a/l/p2/d;->f:Le/a/l/p2/h;

    .line 26
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "updates"

    invoke-static {v6, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Le/a/l4/e;

    .line 29
    iget-object v13, v13, Le/a/l4/e;->i:Lcom/truecaller/api/services/presence/v1/models/Premium;

    if-eqz v13, :cond_7

    .line 30
    invoke-virtual {v13}, Lcom/truecaller/api/services/presence/v1/models/Premium;->getScopeValue()I

    move-result v13

    if-ne v8, v13, :cond_7

    move v13, v10

    goto :goto_5

    :cond_7
    move v13, v9

    :goto_5
    if-eqz v13, :cond_6

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 31
    :cond_8
    iget-object v8, v2, Le/a/l/p2/h;->e:Le/a/b0/o/a;

    const-string v11, "premiumAlreadyNotified"

    invoke-interface {v8, v11}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    const-string v11, ","

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x6

    invoke-static {v8, v11, v9, v9, v12}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v8

    goto :goto_6

    :cond_9
    sget-object v8, Ls1/u/s;->a:Ls1/u/s;

    .line 32
    :goto_6
    new-instance v11, Le/a/l/p2/g;

    invoke-direct {v11}, Le/a/l/p2/g;-><init>()V

    invoke-static {v7, v11}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v11

    .line 33
    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v11, v13}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 35
    check-cast v14, Le/a/l4/e;

    .line 36
    iget-object v14, v14, Le/a/l4/e;->a:Ljava/lang/String;

    .line 37
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 38
    :cond_a
    invoke-static {v12, v8}, Ls1/u/i;->G0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    .line 39
    invoke-static {v8, v13}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3e

    const-string v15, ","

    .line 40
    invoke-static/range {v14 .. v21}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v8

    .line 41
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v10

    if-eqz v7, :cond_b

    goto :goto_8

    :cond_b
    move-object v8, v4

    :goto_8
    if-eqz v8, :cond_c

    .line 42
    iget-object v2, v2, Le/a/l/p2/h;->e:Le/a/b0/o/a;

    const-string v7, "premiumFriendUpgradedPhoneNumber"

    invoke-interface {v2, v7, v8}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_c
    iget-object v2, v0, Le/a/l/p2/d;->g:Le/a/l/p2/k;

    .line 44
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v5, v2, Le/a/l/p2/k;->c:Le/a/l/c2;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-interface {v5, v7}, Le/a/l/c2;->N2(I)V

    const-string v5, "$this$shuffled"

    .line 46
    invoke-static {v6, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {v6}, Ls1/u/i;->Z0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 48
    invoke-static {v5, v13}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v5

    .line 49
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v5, v13}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 51
    check-cast v8, Le/a/l4/e;

    .line 52
    iget-object v8, v8, Le/a/l4/e;->a:Ljava/lang/String;

    .line 53
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 54
    :cond_d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .line 56
    iget-object v14, v2, Le/a/l/p2/k;->b:Le/a/k3/j/g;

    invoke-interface {v14, v12}, Le/a/k3/j/g;->c(Ljava/lang/String;)Ls1/k;

    move-result-object v12

    .line 57
    iget-object v12, v12, Ls1/k;->a:Ljava/lang/Object;

    .line 58
    check-cast v12, Lcom/truecaller/data/entity/Contact;

    if-eqz v12, :cond_f

    invoke-static {v12, v10}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object v12

    goto :goto_b

    :cond_f
    move-object v12, v4

    :goto_b
    if-eqz v12, :cond_10

    move v12, v10

    goto :goto_c

    :cond_10
    move v12, v9

    :goto_c
    if-eqz v12, :cond_e

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 59
    :cond_11
    invoke-static {v5, v7}, Ls1/u/i;->f1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    const/4 v7, 0x3

    .line 60
    invoke-static {v5, v7}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v14

    .line 61
    iget-object v15, v2, Le/a/l/p2/k;->a:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3e

    invoke-static/range {v14 .. v21}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v5

    .line 62
    iget-object v2, v2, Le/a/l/p2/k;->c:Le/a/l/c2;

    invoke-interface {v2, v5}, Le/a/l/c2;->Q0(Ljava/lang/String;)V

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v6, v13}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "contact_premium_scope"

    const-string v8, "contact_premium_level"

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 65
    check-cast v6, Le/a/l4/e;

    .line 66
    iget-object v11, v6, Le/a/l4/e;->i:Lcom/truecaller/api/services/presence/v1/models/Premium;

    if-eqz v11, :cond_12

    const-string v12, "====== handlePremiumStatusUpdates:: "

    .line 67
    invoke-static {v12}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 68
    iget-object v13, v6, Le/a/l4/e;->a:Ljava/lang/String;

    .line 69
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x2d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/truecaller/api/services/presence/v1/models/Premium;->getLevel()Lcom/truecaller/api/services/presence/v1/models/Premium$ProductLevel;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/truecaller/api/services/presence/v1/models/Premium;->getScope()Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    new-array v13, v10, [Ljava/lang/String;

    .line 71
    iget-object v6, v6, Le/a/l4/e;->a:Ljava/lang/String;

    aput-object v6, v13, v9

    const-string v6, "contact_default_number=?"

    .line 72
    invoke-virtual {v12, v6, v13}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 73
    invoke-virtual {v11}, Lcom/truecaller/api/services/presence/v1/models/Premium;->getLevel()Lcom/truecaller/api/services/presence/v1/models/Premium$ProductLevel;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/truecaller/data/entity/Contact$PremiumLevel;->fromRemote(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact$PremiumLevel;

    move-result-object v12

    const-string v13, "PremiumLevel.fromRemote(premium.level.toString())"

    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/truecaller/data/entity/Contact$PremiumLevel;->getLevel()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v8, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 74
    invoke-virtual {v11}, Lcom/truecaller/api/services/presence/v1/models/Premium;->getScope()Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/truecaller/premium/data/PremiumScope;->fromRemote(Ljava/lang/String;)Lcom/truecaller/premium/data/PremiumScope;

    move-result-object v8

    const-string v11, "PremiumScope.fromRemote(premium.scope.toString())"

    invoke-static {v8, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/premium/data/PremiumScope;->getScope()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 75
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    goto :goto_e

    :cond_12
    move-object v6, v4

    .line 76
    :goto_e
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 77
    :cond_13
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 79
    sget-object v6, Lcom/truecaller/data/entity/Contact$PremiumLevel;->NONE:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    invoke-virtual {v6}, Lcom/truecaller/data/entity/Contact$PremiumLevel;->getLevel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v6, Lcom/truecaller/premium/data/PremiumScope;->NONE:Lcom/truecaller/premium/data/PremiumScope;

    invoke-virtual {v6}, Lcom/truecaller/premium/data/PremiumScope;->getScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :try_start_1
    iget-object v6, v0, Le/a/l/p2/d;->b:Landroid/content/ContentResolver;

    invoke-virtual {v6, v3, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "contentUri"

    .line 82
    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 83
    iget-object v0, v0, Le/a/l/p2/d;->b:Landroid/content/ContentResolver;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    const-string v2, "contentResolver.applyBatch(this, updateOps)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_f

    :catch_0
    move-exception v0

    .line 84
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_f

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 85
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    .line 86
    :cond_14
    :goto_f
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v2, "ListenableWorker.Result.success()"

    .line 87
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/p2/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/l/p2/c;->c:Le/a/l/p2/d;

    .line 2
    iget-object v1, v0, Le/a/l/p2/d;->d:Le/a/u3/g;

    .line 3
    iget-object v2, v1, Le/a/u3/g;->G1:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x88

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, Le/a/l/p2/d;->e:Le/a/s4/a;

    const-string v3, "featureFriendsUpgraded_24757"

    invoke-interface {v1, v3, v2}, Le/a/s4/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    :cond_0
    iget-object v1, v0, Le/a/l/p2/d;->a:Le/a/o5/f0;

    invoke-interface {v1}, Le/a/o5/f0;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Le/a/l/p2/d;->a:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
