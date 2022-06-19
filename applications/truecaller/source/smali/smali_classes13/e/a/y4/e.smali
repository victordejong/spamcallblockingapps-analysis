.class public Le/a/y4/e;
.super Le/a/y2/k;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public b:Le/a/c3/a;

.field public c:Le/a/b0/o/a;

.field public d:Le/a/b0/e/f;

.field public e:Le/a/p5/a0;

.field public f:Le/a/b0/e/l;

.field public g:Landroid/content/Context;

.field public h:Le/a/q2/a;

.field public i:Le/a/z4/d;

.field public final j:Le/a/n5/c;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/c3/a;Le/a/b0/o/a;Le/a/b0/e/f;Le/a/p5/a0;Le/a/b0/e/l;Landroid/content/Context;Le/a/z4/d;Le/a/q2/a;Le/a/n5/c;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/y4/e;->b:Le/a/c3/a;

    .line 3
    iput-object p3, p0, Le/a/y4/e;->c:Le/a/b0/o/a;

    .line 4
    iput-object p4, p0, Le/a/y4/e;->d:Le/a/b0/e/f;

    .line 5
    iput-object p5, p0, Le/a/y4/e;->e:Le/a/p5/a0;

    .line 6
    iput-object p6, p0, Le/a/y4/e;->f:Le/a/b0/e/l;

    .line 7
    iput-object p7, p0, Le/a/y4/e;->g:Landroid/content/Context;

    .line 8
    iput-object p8, p0, Le/a/y4/e;->i:Le/a/z4/d;

    .line 9
    iput-object p9, p0, Le/a/y4/e;->h:Le/a/q2/a;

    .line 10
    iput-object p10, p0, Le/a/y4/e;->j:Le/a/n5/c;

    return-void
.end method

.method public static f(Le/a/j4/b/c/e;Ljava/lang/String;Le/a/j4/b/a/d;Le/a/j4/b/a/j;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    iget-wide v4, v1, Le/a/j4/b/c/e;->h:J

    .line 2
    iget v6, v1, Le/a/j4/b/c/e;->a:I

    .line 3
    const-class v7, Le/a/j4/b/b/c;

    invoke-virtual/range {p2 .. p2}, Le/a/j4/b/a/a;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v8, 0x1

    .line 4
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Le/a/j4/b/a/d;->i()Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    .line 5
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v3, v7, v10}, Le/a/j4/b/a/a;->d(Ljava/lang/Class;I)Le/a/j4/b/b/d;

    move-result-object v10

    check-cast v10, Le/a/j4/b/b/c;

    :cond_0
    if-eqz v10, :cond_1

    .line 6
    iput-object v2, v10, Le/a/j4/b/b/c;->m:Ljava/lang/String;

    .line 7
    iput v6, v10, Le/a/j4/b/b/c;->n:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    check-cast v0, Le/a/m0/c1/b0;

    :try_start_1
    invoke-virtual {v0}, Le/a/m0/c1/b0;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 9
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10}, Le/a/j4/b/b/c;->b()Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    check-cast v0, Le/a/m0/c1/b0$e;

    :try_start_2
    invoke-virtual {v0, v9, v10}, Le/a/m0/c1/b0$e;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10
    invoke-virtual {v0}, Le/a/m0/c1/b0$e;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 11
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 12
    :cond_1
    invoke-virtual/range {p2 .. p2}, Le/a/j4/b/a/a;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 13
    check-cast v0, Le/a/m0/c1/b0;

    const-string v9, "size"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Le/a/m0/c1/b0;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 14
    invoke-virtual {v0}, Le/a/m0/c1/b0;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-int/2addr v11, v8

    const v12, 0x7fffffff

    .line 15
    rem-int v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 16
    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v14, 0x200

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 17
    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "\u00a7"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ""

    .line 18
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14, v15, v14, v14}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {v13, v14, v15, v14, v15}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {v13, v14, v15, v14, v2}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v13, v14, v15, v14, v15}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {v13, v14, v15, v14, v15}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {v13, v14, v14, v14, v14}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 28
    check-cast v0, Le/a/m0/c1/b0$e;

    invoke-virtual {v0, v12, v2}, Le/a/m0/c1/b0$e;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    invoke-virtual {v0, v9, v11}, Le/a/m0/c1/b0$e;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 30
    invoke-virtual {v0}, Le/a/m0/c1/b0$e;->apply()V

    new-array v0, v10, [Ljava/lang/String;

    .line 31
    invoke-static {v8, v0}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    .line 32
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Le/a/j4/b/a/a;->e()I

    move-result v0

    .line 33
    invoke-virtual {v3, v7, v0}, Le/a/j4/b/a/a;->d(Ljava/lang/Class;I)Le/a/j4/b/b/d;

    move-result-object v0

    check-cast v0, Le/a/j4/b/b/c;

    .line 34
    iget-wide v11, v0, Le/a/j4/b/b/c;->a:J

    cmp-long v0, v11, v4

    if-nez v0, :cond_2

    move v0, v8

    goto :goto_0

    :cond_2
    move v0, v10

    :goto_0
    new-array v2, v10, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    .line 35
    invoke-virtual/range {p2 .. p2}, Le/a/j4/b/a/a;->e()I

    move-result v0

    invoke-virtual {v3, v7, v0}, Le/a/j4/b/a/a;->d(Ljava/lang/Class;I)Le/a/j4/b/b/d;

    move-result-object v0

    check-cast v0, Le/a/j4/b/b/c;

    iget-wide v6, v0, Le/a/j4/b/b/c;->a:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_3

    move v0, v8

    goto :goto_1

    :cond_3
    move v0, v10

    :goto_1
    new-array v2, v10, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 36
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    new-array v0, v10, [Ljava/lang/String;

    .line 37
    invoke-static {v10, v0}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    .line 38
    :goto_2
    iget-object v0, v3, Le/a/j4/b/a/d;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 39
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Le/a/j4/b/a/a;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_4
    :goto_3
    iget-object v0, v1, Le/a/j4/b/c/e;->f:Ljava/lang/String;

    .line 41
    invoke-virtual/range {p3 .. p3}, Le/a/j4/b/a/a;->g()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 42
    check-cast v1, Le/a/m0/c1/b0;

    invoke-virtual {v1}, Le/a/m0/c1/b0;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 43
    check-cast v1, Le/a/m0/c1/b0$e;

    invoke-virtual {v1, v0, v8}, Le/a/m0/c1/b0$e;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-virtual {v1}, Le/a/m0/c1/b0$e;->apply()V

    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {p0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    const-wide/16 v1, 0xf

    .line 2
    invoke-static {v1, v2}, Le/m/d/y/n;->G0(J)Ls1/k;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    const-string v1, "UGCWorkAction"

    move-object v2, p0

    .line 3
    invoke-static/range {v0 .. v5}, Le/a/y2/q/c;->c(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;I)Ln3/m0/s;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 19

    move-object/from16 v1, p0

    .line 1
    new-instance v2, Le/a/q2/g$b;

    const-string v0, "EnhancedSearch"

    invoke-direct {v2, v0}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    .line 3
    iget-object v3, v1, Le/a/y4/e;->f:Le/a/b0/e/l;

    invoke-interface {v3}, Le/a/b0/e/l;->d()Z

    move-result v3

    const-string v4, "Result"

    if-eqz v3, :cond_24

    iget-object v3, v1, Le/a/y4/e;->e:Le/a/p5/a0;

    const-string v5, "android.permission.READ_CONTACTS"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-interface {v3, v5}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, v1, Le/a/y4/e;->d:Le/a/b0/e/f;

    .line 5
    invoke-interface {v3}, Le/a/b0/e/f;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_12

    .line 6
    :cond_0
    iget-object v3, v1, Le/a/y4/e;->c:Le/a/b0/o/a;

    const-string v5, "featureUgcDisabled"

    invoke-interface {v3, v5}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Disabled"

    .line 7
    invoke-virtual {v2, v4, v3}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    goto/16 :goto_13

    :cond_1
    const-string v0, "Proceeded"

    .line 8
    invoke-virtual {v2, v4, v0}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 9
    iget-object v3, v1, Le/a/y4/e;->g:Landroid/content/Context;

    .line 10
    new-instance v4, Le/a/b0/p/b;

    iget-object v0, v1, Le/a/y4/e;->g:Landroid/content/Context;

    invoke-direct {v4, v0}, Le/a/b0/p/b;-><init>(Landroid/content/Context;)V

    const-string v5, "Type"

    const-string v0, "Normal"

    .line 11
    invoke-virtual {v2, v5, v0}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    const-string v6, "tagsPhonebookForcedUpload"

    const/4 v7, 0x0

    .line 12
    invoke-static {v6, v7}, Le/a/n/g0;->B(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v7

    goto :goto_2

    .line 13
    :cond_2
    new-instance v9, Le/a/j4/b/a/d;

    iget-object v0, v1, Le/a/y4/e;->g:Landroid/content/Context;

    invoke-direct {v9, v0}, Le/a/j4/b/a/d;-><init>(Landroid/content/Context;)V

    .line 14
    const-class v0, Le/a/j4/b/b/c;

    .line 15
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-virtual {v9}, Le/a/j4/b/a/a;->h()I

    move-result v11

    .line 17
    invoke-virtual {v9}, Le/a/j4/b/a/a;->e()I

    move-result v12

    move v13, v7

    :goto_0
    if-ge v13, v11, :cond_3

    sub-int v14, v12, v13

    .line 18
    :try_start_0
    invoke-virtual {v9, v0, v14}, Le/a/j4/b/a/a;->d(Ljava/lang/Class;I)Le/a/j4/b/b/d;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v11, "In Dao - getAllForSuggestions exception"

    .line 19
    invoke-static {v0, v11}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 21
    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v11, v7

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/a/j4/b/b/c;

    .line 22
    iget v13, v12, Le/a/j4/b/b/c;->n:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    .line 23
    iput v14, v12, Le/a/j4/b/b/c;->n:I

    const/4 v11, 0x1

    goto :goto_1

    :cond_5
    if-eqz v11, :cond_6

    .line 24
    invoke-virtual {v9, v7}, Le/a/j4/b/a/d;->c(Z)V

    .line 25
    invoke-virtual {v9, v10}, Le/a/j4/b/a/d;->a(Ljava/util/List;)V

    .line 26
    :cond_6
    invoke-static {v6, v7}, Le/a/n/g0;->v0(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_7

    const-string v0, "TagReset"

    .line 27
    invoke-virtual {v2, v5, v0}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 28
    :cond_7
    new-instance v0, Le/a/m0/c1/a0;

    const-string v6, "TC.ugc.2.00"

    invoke-direct {v0, v3, v6}, Le/a/m0/c1/a0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    new-instance v9, Le/a/m0/c1/b0;

    invoke-direct {v9, v3, v6, v0}, Le/a/m0/c1/b0;-><init>(Landroid/content/Context;Ljava/lang/String;Le/a/m0/c1/b0$m;)V

    .line 30
    iget-object v10, v9, Le/a/m0/c1/b0;->e:Ljava/util/WeakHashMap;

    sget-object v11, Le/a/m0/c1/b0;->l:Ljava/lang/Object;

    invoke-virtual {v10, v0, v11}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "TC.settings.3.0.beta5"

    .line 31
    invoke-static {v3, v10}, Le/a/m0/c1/b0;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 32
    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 33
    invoke-static {v0, v9}, Le/a/m0/c1/b0;->a(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 35
    :cond_8
    invoke-virtual {v9}, Le/a/m0/c1/b0;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "Initial"

    .line 36
    invoke-virtual {v2, v5, v0}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 37
    :cond_9
    iget-object v5, v1, Le/a/y4/e;->g:Landroid/content/Context;

    .line 38
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 39
    new-instance v11, Le/a/j4/b/a/d;

    invoke-direct {v11, v5}, Le/a/j4/b/a/d;-><init>(Landroid/content/Context;)V

    const-string v0, "1"

    .line 40
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v16

    const-string v15, "_id"

    const-string v14, "display_name"

    .line 41
    filled-new-array {v15, v14}, [Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/16 v17, 0x0

    const-string v18, "has_phone_number = ? "

    move-object v8, v14

    move-object v14, v0

    move-object v7, v15

    move-object/from16 v15, v18

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 43
    :goto_3
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 44
    new-instance v13, Le/a/j4/b/c/b;

    invoke-direct {v13}, Le/a/j4/b/c/b;-><init>()V

    .line 45
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    iput-wide v14, v13, Le/a/j4/b/c/b;->j:J

    .line 46
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Le/a/j4/b/c/b;->k:Ljava/lang/String;

    .line 47
    iget-wide v14, v13, Le/a/j4/b/c/b;->j:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v5, v0}, Le/a/o5/q;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v13, Le/a/j4/b/c/b;->m:Ljava/util/List;

    .line 49
    iget-wide v14, v13, Le/a/j4/b/c/b;->j:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v5, v0}, Le/a/o5/q;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v13, Le/a/j4/b/c/b;->n:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :try_start_2
    iget-wide v14, v13, Le/a/j4/b/c/b;->j:J

    invoke-virtual {v11, v14, v15}, Le/a/j4/b/a/d;->j(J)Le/a/j4/b/b/c;

    move-result-object v0

    iput-object v0, v13, Le/a/j4/b/c/b;->l:Le/a/j4/b/b/c;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 52
    :try_start_3
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 54
    :goto_4
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    .line 55
    :try_start_4
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 57
    :goto_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 58
    throw v0

    :cond_a
    if-eqz v12, :cond_b

    .line 59
    :goto_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 60
    :cond_b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 61
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "Total"

    .line 62
    invoke-virtual {v2, v7, v0}, Le/a/q2/g$b;->b(Ljava/lang/String;I)Le/a/q2/g$b;

    .line 63
    iget-object v7, v1, Le/a/y4/e;->j:Le/a/n5/c;

    invoke-interface {v7}, Le/a/n5/c;->c()Z

    move-result v7

    const-string v8, "featureEmailSource"

    const/4 v11, 0x0

    .line 64
    invoke-static {v8, v11}, Le/a/n/g0;->B(Ljava/lang/String;Z)Z

    move-result v8

    .line 65
    iget-object v11, v1, Le/a/y4/e;->b:Le/a/c3/a;

    invoke-interface {v11}, Le/a/c3/a;->c()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Full"

    .line 66
    invoke-virtual {v2, v12, v7}, Le/a/q2/g$b;->e(Ljava/lang/String;Z)Le/a/q2/g$b;

    if-nez v11, :cond_c

    const-string v11, "<null>"

    goto :goto_7

    :cond_c
    const-string v12, ""

    .line 67
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const-string v11, "<empty>"

    :cond_d
    :goto_7
    const-string v12, "InstallerPackage"

    .line 68
    invoke-virtual {v2, v12, v11}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 69
    iget-object v11, v1, Le/a/y4/e;->b:Le/a/c3/a;

    invoke-interface {v11}, Le/a/c3/a;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "BuildName"

    invoke-virtual {v2, v12, v11}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 70
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/j4/b/c/b;

    .line 71
    iget-object v14, v13, Le/a/j4/b/c/b;->m:Ljava/util/List;

    if-eqz v14, :cond_18

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_e

    goto/16 :goto_d

    .line 72
    :cond_e
    iget-object v14, v1, Le/a/y4/e;->c:Le/a/b0/o/a;

    const-string v15, "featureUgcContactsWithoutIdentity"

    move-object/from16 v16, v9

    const/4 v9, 0x1

    invoke-interface {v14, v15, v9}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_13

    .line 73
    iget-object v9, v13, Le/a/j4/b/c/b;->n:Ljava/util/List;

    if-eqz v9, :cond_f

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_f

    goto :goto_9

    .line 74
    :cond_f
    iget-object v9, v13, Le/a/j4/b/c/b;->l:Le/a/j4/b/b/c;

    if-eqz v9, :cond_10

    iget-object v9, v9, Le/a/j4/b/b/c;->f:Ljava/lang/String;

    invoke-static {v9}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11

    iget-object v9, v13, Le/a/j4/b/c/b;->l:Le/a/j4/b/b/c;

    iget-object v9, v9, Le/a/j4/b/b/c;->c:Ljava/lang/String;

    invoke-static {v9}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10

    goto :goto_9

    .line 75
    :cond_10
    iget-object v9, v13, Le/a/j4/b/c/b;->k:Ljava/lang/String;

    if-eqz v9, :cond_12

    if-eqz v7, :cond_12

    :cond_11
    :goto_9
    const/4 v9, 0x1

    goto :goto_a

    :cond_12
    const/4 v9, 0x0

    :goto_a
    if-nez v9, :cond_13

    move-object/from16 v17, v4

    move/from16 v18, v7

    goto/16 :goto_e

    .line 76
    :cond_13
    new-instance v9, Le/a/j4/b/c/e;

    invoke-direct {v9, v13, v4, v7, v8}, Le/a/j4/b/c/e;-><init>(Le/a/j4/b/c/b;Le/a/b0/p/b;ZZ)V

    .line 77
    iget v13, v9, Le/a/j4/b/c/e;->b:I

    iget v14, v9, Le/a/j4/b/c/e;->a:I

    if-eq v13, v14, :cond_14

    const/4 v13, 0x1

    goto :goto_b

    :cond_14
    const/4 v13, 0x0

    :goto_b
    if-nez v13, :cond_16

    .line 78
    iget-object v13, v9, Le/a/j4/b/c/e;->f:Ljava/lang/String;

    .line 79
    new-instance v14, Le/a/m0/c1/a0;

    invoke-direct {v14, v3, v6}, Le/a/m0/c1/a0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    new-instance v15, Le/a/m0/c1/b0;

    invoke-direct {v15, v3, v6, v14}, Le/a/m0/c1/b0;-><init>(Landroid/content/Context;Ljava/lang/String;Le/a/m0/c1/b0$m;)V

    move-object/from16 v17, v4

    .line 81
    iget-object v4, v15, Le/a/m0/c1/b0;->e:Ljava/util/WeakHashMap;

    move/from16 v18, v7

    sget-object v7, Le/a/m0/c1/b0;->l:Ljava/lang/Object;

    invoke-virtual {v4, v14, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {v3, v10}, Le/a/m0/c1/b0;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x0

    .line 83
    invoke-virtual {v3, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 84
    invoke-static {v7, v15}, Le/a/m0/c1/b0;->a(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 85
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    :cond_15
    invoke-virtual {v15, v13}, Le/a/m0/c1/b0;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v9, 0x0

    goto :goto_c

    :cond_16
    move-object/from16 v17, v4

    move/from16 v18, v7

    :cond_17
    :goto_c
    if-eqz v9, :cond_19

    .line 87
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v7, v1, Le/a/y4/e;->i:Le/a/z4/d;

    const-string v9, "backupBatchSize"

    const/4 v13, 0x0

    invoke-interface {v7, v9, v13}, Le/a/z4/d;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v4, v7, :cond_1a

    .line 89
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 90
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v11

    .line 91
    invoke-virtual {v1, v5}, Le/a/y4/e;->g(Ljava/util/ArrayList;)I

    move-result v7

    add-int/2addr v7, v12

    move v11, v4

    move v12, v7

    goto :goto_f

    :cond_18
    :goto_d
    move-object/from16 v17, v4

    move/from16 v18, v7

    move-object/from16 v16, v9

    :cond_19
    :goto_e
    const/4 v13, 0x0

    :cond_1a
    :goto_f
    move-object/from16 v9, v16

    move-object/from16 v4, v17

    move/from16 v7, v18

    goto/16 :goto_8

    .line 92
    :cond_1b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1c

    .line 93
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v11, v3

    .line 94
    invoke-virtual {v1, v5}, Le/a/y4/e;->g(Ljava/util/ArrayList;)I

    move-result v3

    add-int/2addr v12, v3

    :cond_1c
    const-string v3, "Count"

    .line 95
    invoke-virtual {v2, v3, v11}, Le/a/q2/g$b;->b(Ljava/lang/String;I)Le/a/q2/g$b;

    const-string v3, "Successful"

    .line 96
    invoke-virtual {v2, v3, v12}, Le/a/q2/g$b;->b(Ljava/lang/String;I)Le/a/q2/g$b;

    if-nez v0, :cond_1d

    goto :goto_10

    :cond_1d
    mul-int/lit8 v11, v11, 0x64

    .line 97
    div-int/2addr v11, v0

    const/4 v3, 0x1

    if-gt v11, v3, :cond_1e

    :goto_10
    const-string v0, "0-1"

    goto :goto_11

    :cond_1e
    const/4 v0, 0x5

    if-gt v11, v0, :cond_1f

    const-string v0, "2-5"

    goto :goto_11

    :cond_1f
    const/16 v0, 0xa

    if-gt v11, v0, :cond_20

    const-string v0, "6-10"

    goto :goto_11

    :cond_20
    const/16 v0, 0x14

    if-gt v11, v0, :cond_21

    const-string v0, "11-20"

    goto :goto_11

    :cond_21
    const/16 v0, 0x32

    if-gt v11, v0, :cond_22

    const-string v0, "21-50"

    goto :goto_11

    :cond_22
    const/16 v0, 0x4b

    if-gt v11, v0, :cond_23

    const-string v0, "51-75"

    goto :goto_11

    :cond_23
    const-string v0, "76-100"

    :goto_11
    const-string v3, "CountRatio"

    .line 98
    invoke-virtual {v2, v3, v0}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    int-to-double v3, v12

    .line 99
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 100
    iput-object v0, v2, Le/a/q2/g$b;->c:Ljava/lang/Double;

    .line 101
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    goto :goto_13

    :cond_24
    :goto_12
    const-string v3, "Skipped"

    .line 102
    invoke-virtual {v2, v4, v3}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 103
    :goto_13
    iget-object v3, v1, Le/a/y4/e;->h:Le/a/q2/a;

    invoke-virtual {v2}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object v2

    invoke-interface {v3, v2}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "UGCWorkAction"

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/y4/e;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/b0/g/a;

    .line 2
    invoke-virtual {v0}, Le/a/b0/g/a;->W()Z

    move-result v0

    return v0
.end method

.method public final d(Le/m/e/t;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/y4/e;->b:Le/a/c3/a;

    invoke-interface {v0}, Le/a/c3/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/y4/e;->b:Le/a/c3/a;

    invoke-interface {v1}, Le/a/c3/a;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Le/a/y4/e;->b:Le/a/c3/a;

    invoke-interface {v2}, Le/a/c3/a;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "installerPackageName"

    .line 4
    invoke-virtual {p0, v3, v0, p1}, Le/a/y4/e;->e(Ljava/lang/String;Ljava/lang/String;Le/m/e/t;)V

    const-string v0, "buildName"

    .line 5
    invoke-virtual {p0, v0, v1, p1}, Le/a/y4/e;->e(Ljava/lang/String;Ljava/lang/String;Le/m/e/t;)V

    const-string v0, "preloadPartnerName"

    .line 6
    invoke-virtual {p0, v0, v2, p1}, Le/a/y4/e;->e(Ljava/lang/String;Ljava/lang/String;Le/m/e/t;)V

    .line 7
    new-instance v0, Le/m/e/w;

    iget-object v1, p0, Le/a/y4/e;->j:Le/a/n5/c;

    invoke-interface {v1}, Le/a/n5/c;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Le/m/e/w;-><init>(Ljava/lang/Boolean;)V

    .line 8
    iget-object v1, p1, Le/m/e/t;->a:Le/m/e/e0/s;

    const-string v2, "isEnhancedBuild"

    invoke-virtual {v1, v2, v0}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v0, Le/m/e/w;

    iget-object v1, p0, Le/a/y4/e;->j:Le/a/n5/c;

    invoke-interface {v1}, Le/a/n5/c;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Le/m/e/w;-><init>(Ljava/lang/Boolean;)V

    .line 10
    iget-object p1, p1, Le/m/e/t;->a:Le/m/e/e0/s;

    const-string v1, "enhancedSearchEnabled"

    invoke-virtual {p1, v1, v0}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Le/m/e/t;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Le/m/e/w;

    invoke-direct {v0, p2}, Le/m/e/w;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p2, p3, Le/m/e/t;->a:Le/m/e/e0/s;

    invoke-virtual {p2, p1, v0}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final g(Ljava/util/ArrayList;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Le/a/j4/b/c/e;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    .line 2
    :try_start_0
    new-instance v4, Le/m/e/n;

    invoke-direct {v4}, Le/m/e/n;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/j4/b/c/e;

    .line 4
    invoke-virtual {v6}, Le/a/j4/b/c/e;->c()Le/m/e/t;

    move-result-object v6

    .line 5
    iget-object v7, v4, Le/m/e/n;->a:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v4}, Le/m/e/n;->size()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_4

    .line 7
    :cond_1
    new-instance v5, Le/m/e/t;

    invoke-direct {v5}, Le/m/e/t;-><init>()V

    const-string v6, "data"

    .line 8
    iget-object v7, v5, Le/m/e/t;->a:Le/m/e/e0/s;

    invoke-virtual {v7, v6, v4}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0, v5}, Le/a/y4/e;->d(Le/m/e/t;)V

    .line 10
    invoke-virtual {v5}, Le/m/e/q;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v0

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    const-string v6, "Serialized data is empty"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    new-instance v5, Le/a/b0/b/a/b;

    invoke-direct {v5}, Le/a/b0/b/a/b;-><init>()V

    sget-object v6, Lcom/truecaller/common/network/util/KnownEndpoints;->PHONEBOOK:Lcom/truecaller/common/network/util/KnownEndpoints;

    .line 14
    invoke-virtual {v5, v6}, Le/a/b0/b/a/b;->a(Lcom/truecaller/common/network/util/KnownEndpoints;)Le/a/b0/b/a/b;

    new-instance v6, Le/a/b0/b/j/b;

    invoke-direct {v6}, Le/a/b0/b/j/b;-><init>()V

    .line 15
    invoke-virtual {v5, v6}, Le/a/b0/b/a/b;->e(Lu3/b0;)Le/a/b0/b/a/b;

    const-class v6, Le/a/f4/h/b;

    .line 16
    invoke-virtual {v5, v6}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/f4/h/b;

    sget-object v6, Le/a/b0/b/a/c;->a:Lu3/c0;

    .line 17
    sget-object v7, Lu3/j0;->a:Lu3/j0$a;

    invoke-virtual {v7, v6, v4}, Lu3/j0$a;->c(Lu3/c0;Ljava/lang/String;)Lu3/j0;

    move-result-object v4

    .line 18
    invoke-interface {v5, v4}, Le/a/f4/h/b;->a(Lu3/j0;)Lx3/b;

    move-result-object v4

    .line 19
    invoke-interface {v4}, Lx3/b;->execute()Lx3/a0;

    move-result-object v4

    .line 20
    iget-object v4, v4, Lx3/a0;->b:Ljava/lang/Object;

    .line 21
    check-cast v4, Le/a/f4/h/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v2

    if-eqz v4, :cond_6

    .line 23
    iget-object v5, v4, Le/a/f4/h/a;->a:Le/a/f4/h/a$a;

    if-eqz v5, :cond_6

    iget-object v5, v5, Le/a/f4/h/a$a;->a:Ljava/util/List;

    if-eqz v5, :cond_6

    .line 24
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 25
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 26
    iget-object v4, v4, Le/a/f4/h/a;->a:Le/a/f4/h/a$a;

    iget-object v4, v4, Le/a/f4/h/a$a;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/f4/h/a$b;

    .line 27
    iget-boolean v7, v6, Le/a/f4/h/a$b;->c:Z

    if-eqz v7, :cond_3

    iget-object v7, v6, Le/a/f4/h/a$b;->a:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 28
    iget-object v6, v6, Le/a/f4/h/a$b;->b:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 29
    :cond_4
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    .line 30
    new-instance v4, Le/a/j4/b/a/d;

    iget-object v6, p0, Le/a/y4/e;->g:Landroid/content/Context;

    invoke-direct {v4, v6}, Le/a/j4/b/a/d;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v7, Le/a/j4/b/a/j;

    invoke-direct {v7, v6}, Le/a/j4/b/a/j;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v8, v1

    :cond_5
    :goto_3
    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/j4/b/c/e;

    .line 33
    iget-object v10, v9, Le/a/j4/b/c/e;->f:Ljava/lang/String;

    .line 34
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 35
    invoke-static {v9, v10, v4, v7}, Le/a/y4/e;->f(Le/a/j4/b/c/e;Ljava/lang/String;Le/a/j4/b/a/d;Le/a/j4/b/a/j;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_6
    move v0, v1

    goto :goto_7

    :catchall_0
    move-exception v0

    .line 36
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 37
    throw v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 38
    :cond_7
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 39
    invoke-virtual {p0, v2, v3, v1}, Le/a/y4/e;->i(JZ)V

    return v1

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    :goto_5
    move v8, v1

    :goto_6
    :try_start_5
    const-string v4, "Error uploading UGC"

    .line 40
    invoke-static {v0, v4}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v0, v1

    :cond_8
    move v1, v8

    .line 41
    :goto_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 42
    invoke-virtual {p0, v2, v3, v0}, Le/a/y4/e;->i(JZ)V

    return v1

    .line 43
    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 44
    invoke-virtual {p0, v2, v3, v1}, Le/a/y4/e;->i(JZ)V

    .line 45
    throw v0
.end method

.method public final i(JZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/y4/e;->i:Le/a/z4/d;

    const-string v1, "backupBatchSize"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/z4/d;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p3, :cond_2

    const-wide/16 v2, 0x2710

    cmp-long p3, p1, v2

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1388

    cmp-long p1, p1, v2

    if-gez p1, :cond_4

    mul-int/lit16 v0, v0, 0x85

    .line 2
    div-int/lit8 v0, v0, 0x64

    .line 3
    iget-object p1, p0, Le/a/y4/e;->i:Le/a/z4/d;

    const/16 p2, 0xc8

    if-le v0, p2, :cond_1

    move v0, p2

    :cond_1
    invoke-interface {p1, v1, v0}, Le/a/z4/d;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    :goto_0
    mul-int/lit8 v0, v0, 0x42

    .line 4
    div-int/lit8 v0, v0, 0x64

    .line 5
    iget-object p1, p0, Le/a/y4/e;->i:Le/a/z4/d;

    const/16 p2, 0x32

    if-ge v0, p2, :cond_3

    move v0, p2

    :cond_3
    invoke-interface {p1, v1, v0}, Le/a/z4/d;->putInt(Ljava/lang/String;I)V

    :cond_4
    :goto_1
    return-void
.end method
