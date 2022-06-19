.class public final Le/a/c/i/j/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/i/j/a;


# instance fields
.field public final a:Le/a/c/a0/z;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/c/b/l;


# direct methods
.method public constructor <init>(Le/a/c/a0/z;Lo3/a;Le/a/c/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/a0/z;",
            "Lo3/a<",
            "Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;",
            ">;",
            "Le/a/c/b/l;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "senderInfoDataSource"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderBlockListPreferencesLazy"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsVersionProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/i/j/b;->a:Le/a/c/a0/z;

    iput-object p2, p0, Le/a/c/i/j/b;->b:Lo3/a;

    iput-object p3, p0, Le/a/c/i/j/b;->c:Le/a/c/b/l;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/i/j/b$f;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/i/j/b$f;

    iget v1, v0, Le/a/c/i/j/b$f;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/j/b$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/j/b$f;

    invoke-direct {v0, p0, p1}, Le/a/c/i/j/b$f;-><init>(Le/a/c/i/j/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/i/j/b$f;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/j/b$f;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget v2, v0, Le/a/c/i/j/b$f;->i:I

    iget-object v4, v0, Le/a/c/i/j/b$f;->h:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;

    iget-object v5, v0, Le/a/c/i/j/b$f;->g:Ljava/lang/Object;

    check-cast v5, Le/a/c/i/j/b;

    :try_start_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :cond_3
    iget v2, v0, Le/a/c/i/j/b$f;->i:I

    iget-object v7, v0, Le/a/c/i/j/b$f;->h:Ljava/lang/Object;

    check-cast v7, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;

    iget-object v8, v0, Le/a/c/i/j/b$f;->g:Ljava/lang/Object;

    check-cast v8, Le/a/c/i/j/b;

    :try_start_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_3
    iget-object p1, p0, Le/a/c/i/j/b;->b:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;

    if-eqz p1, :cond_9

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;->getVersion()I

    move-result v2

    .line 6
    iget-object v7, p0, Le/a/c/i/j/b;->c:Le/a/c/b/l;

    iput-object p0, v0, Le/a/c/i/j/b$f;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/i/j/b$f;->h:Ljava/lang/Object;

    iput v2, v0, Le/a/c/i/j/b$f;->i:I

    iput v5, v0, Le/a/c/i/j/b$f;->e:I

    invoke-interface {v7, v0}, Le/a/c/b/l;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_5

    return-object v1

    :cond_5
    move-object v8, p0

    move-object v10, v7

    move-object v7, p1

    move-object p1, v10

    .line 7
    :goto_1
    check-cast p1, Le/a/c/b/n;

    .line 8
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_7

    .line 9
    iget-object v9, p1, Le/a/c/b/n;->a:Ljava/lang/Integer;

    if-eqz v9, :cond_7

    .line 10
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 11
    iget-object p1, p1, Le/a/c/b/n;->a:Ljava/lang/Integer;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge p1, v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :cond_7
    :goto_2
    if-eqz v5, :cond_9

    .line 13
    invoke-virtual {v7}, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;->getSenderPreferences()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Le/a/m0/a1$k;->C1(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    iput-object v8, v0, Le/a/c/i/j/b$f;->g:Ljava/lang/Object;

    iput-object v7, v0, Le/a/c/i/j/b$f;->h:Ljava/lang/Object;

    iput v2, v0, Le/a/c/i/j/b$f;->i:I

    iput v4, v0, Le/a/c/i/j/b$f;->e:I

    .line 14
    invoke-virtual {v8, p1, v2, v6, v0}, Le/a/c/i/j/b;->b(Ljava/util/Map;ILjava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    move-object v4, v7

    move-object v5, v8

    .line 15
    :goto_3
    iput-object v6, v0, Le/a/c/i/j/b$f;->g:Ljava/lang/Object;

    iput-object v6, v0, Le/a/c/i/j/b$f;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/c/i/j/b$f;->e:I

    invoke-virtual {v5, v4, v2, v0}, Le/a/c/i/j/b;->c(Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-ne p1, v1, :cond_9

    return-object v1

    :catch_0
    move-exception p1

    .line 16
    sget-object v0, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 17
    invoke-virtual {v0, p1, v6}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 18
    :cond_9
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final b(Ljava/util/Map;ILjava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;I",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    sget-object v1, Ls1/s;->a:Ls1/s;

    instance-of v2, v0, Le/a/c/i/j/b$a;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Le/a/c/i/j/b$a;

    iget v3, v2, Le/a/c/i/j/b$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/i/j/b$a;->e:I

    move-object/from16 v3, p0

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/i/j/b$a;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v0}, Le/a/c/i/j/b$a;-><init>(Le/a/c/i/j/b;Ls1/w/d;)V

    :goto_0
    iget-object v0, v2, Le/a/c/i/j/b$a;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v2, Le/a/c/i/j/b$a;->e:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_1
    iget v5, v2, Le/a/c/i/j/b$a;->o:I

    iget-object v6, v2, Le/a/c/i/j/b$a;->g:Ljava/lang/Object;

    check-cast v6, Le/a/c/i/j/b;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_2
    iget v5, v2, Le/a/c/i/j/b$a;->o:I

    iget-object v7, v2, Le/a/c/i/j/b$a;->j:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v8, v2, Le/a/c/i/j/b$a;->i:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v2, Le/a/c/i/j/b$a;->h:Ljava/lang/Object;

    check-cast v9, Ljava/util/Map;

    iget-object v10, v2, Le/a/c/i/j/b$a;->g:Ljava/lang/Object;

    check-cast v10, Le/a/c/i/j/b;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_10

    :pswitch_3
    iget v5, v2, Le/a/c/i/j/b$a;->o:I

    iget-object v6, v2, Le/a/c/i/j/b$a;->m:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v7, v2, Le/a/c/i/j/b$a;->l:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v8, v2, Le/a/c/i/j/b$a;->k:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v2, Le/a/c/i/j/b$a;->j:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v2, Le/a/c/i/j/b$a;->i:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v2, Le/a/c/i/j/b$a;->h:Ljava/lang/Object;

    check-cast v11, Ljava/util/Map;

    iget-object v12, v2, Le/a/c/i/j/b$a;->g:Ljava/lang/Object;

    check-cast v12, Le/a/c/i/j/b;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v0, v2

    move-object v15, v4

    move-object v3, v6

    move-object v4, v7

    move-object/from16 v21, v8

    move v8, v5

    move-object/from16 v5, v21

    move-object/from16 v22, v11

    move-object v11, v10

    move-object v10, v12

    move-object/from16 v12, v22

    goto/16 :goto_f

    :pswitch_4
    iget v5, v2, Le/a/c/i/j/b$a;->o:I

    iget-object v6, v2, Le/a/c/i/j/b$a;->n:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v7, v2, Le/a/c/i/j/b$a;->m:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v8, v2, Le/a/c/i/j/b$a;->l:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v9, v2, Le/a/c/i/j/b$a;->k:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v2, Le/a/c/i/j/b$a;->j:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v2, Le/a/c/i/j/b$a;->i:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Le/a/c/i/j/b$a;->h:Ljava/lang/Object;

    check-cast v12, Ljava/util/Map;

    iget-object v13, v2, Le/a/c/i/j/b$a;->g:Ljava/lang/Object;

    check-cast v13, Le/a/c/i/j/b;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_5
    iget v5, v2, Le/a/c/i/j/b$a;->o:I

    iget-object v6, v2, Le/a/c/i/j/b$a;->j:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, v2, Le/a/c/i/j/b$a;->i:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Le/a/c/i/j/b$a;->h:Ljava/lang/Object;

    check-cast v8, Ljava/util/Map;

    iget-object v9, v2, Le/a/c/i/j/b$a;->g:Ljava/lang/Object;

    check-cast v9, Le/a/c/i/j/b;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_6
    iget v5, v2, Le/a/c/i/j/b$a;->o:I

    iget-object v6, v2, Le/a/c/i/j/b$a;->l:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v7, v2, Le/a/c/i/j/b$a;->k:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Le/a/c/i/j/b$a;->j:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v2, Le/a/c/i/j/b$a;->i:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v2, Le/a/c/i/j/b$a;->h:Ljava/lang/Object;

    check-cast v10, Ljava/util/Map;

    iget-object v11, v2, Le/a/c/i/j/b$a;->g:Ljava/lang/Object;

    check-cast v11, Le/a/c/i/j/b;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v12, v5

    move-object v14, v7

    move-object v7, v10

    move-object v10, v6

    move-object v6, v11

    move-object v11, v4

    move-object/from16 v21, v9

    move-object v9, v8

    move-object/from16 v8, v21

    goto/16 :goto_2

    :pswitch_7
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v5, v1

    move-object v8, v3

    move v9, v6

    move-object v10, v7

    move/from16 v1, p2

    move-object v6, v2

    move-object v7, v4

    move-object/from16 v2, p3

    move-object v4, v0

    move-object/from16 v0, p1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 6
    iget-object v13, v8, Le/a/c/i/j/b;->a:Le/a/c/a0/z;

    sget-object v14, Lcom/truecaller/insights/source/SourceType;->FIREBASE:Lcom/truecaller/insights/source/SourceType;

    iput-object v8, v6, Le/a/c/i/j/b$a;->g:Ljava/lang/Object;

    iput-object v0, v6, Le/a/c/i/j/b$a;->h:Ljava/lang/Object;

    iput-object v2, v6, Le/a/c/i/j/b$a;->i:Ljava/lang/Object;

    iput-object v4, v6, Le/a/c/i/j/b$a;->j:Ljava/lang/Object;

    iput-object v12, v6, Le/a/c/i/j/b$a;->k:Ljava/lang/Object;

    iput-object v11, v6, Le/a/c/i/j/b$a;->l:Ljava/lang/Object;

    iput-object v10, v6, Le/a/c/i/j/b$a;->m:Ljava/lang/Object;

    iput-object v10, v6, Le/a/c/i/j/b$a;->n:Ljava/lang/Object;

    iput v1, v6, Le/a/c/i/j/b$a;->o:I

    iput v9, v6, Le/a/c/i/j/b$a;->e:I

    check-cast v13, Le/a/c/a0/a0;

    invoke-virtual {v13, v12, v14, v2, v6}, Le/a/c/a0/a0;->a(Ljava/lang/String;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v7, :cond_1

    return-object v7

    :cond_1
    move-object v10, v11

    move-object v14, v12

    move v12, v1

    move-object v1, v5

    move-object v11, v7

    move-object v7, v0

    move-object v0, v9

    move-object v9, v4

    move-object/from16 v21, v8

    move-object v8, v2

    move-object v2, v6

    move-object/from16 v6, v21

    .line 7
    :goto_2
    check-cast v0, Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    iget-object v0, v6, Le/a/c/i/j/b;->a:Le/a/c/a0/z;

    .line 10
    new-instance v4, Le/a/c/a0/b0;

    .line 11
    sget-object v17, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->BLOCKED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    .line 12
    sget-object v19, Lcom/truecaller/insights/source/SourceType;->FIREBASE:Lcom/truecaller/insights/source/SourceType;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v13, v4

    move-object/from16 v18, v10

    move-object/from16 v20, v8

    .line 13
    invoke-direct/range {v13 .. v20}, Le/a/c/a0/b0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ljava/util/List;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;)V

    .line 14
    iput-object v6, v2, Le/a/c/i/j/b$a;->g:Ljava/lang/Object;

    iput-object v7, v2, Le/a/c/i/j/b$a;->h:Ljava/lang/Object;

    iput-object v8, v2, Le/a/c/i/j/b$a;->i:Ljava/lang/Object;

    iput-object v9, v2, Le/a/c/i/j/b$a;->j:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v2, Le/a/c/i/j/b$a;->k:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/i/j/b$a;->l:Ljava/lang/Object;

    iput v12, v2, Le/a/c/i/j/b$a;->o:I

    const/4 v5, 0x2

    iput v5, v2, Le/a/c/i/j/b$a;->e:I

    check-cast v0, Le/a/c/a0/a0;

    invoke-virtual {v0, v4, v2}, Le/a/c/a0/a0;->b(Le/a/c/a0/b0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_2

    return-object v11

    :cond_2
    move-object v4, v11

    move v5, v12

    move-object/from16 v21, v9

    move-object v9, v6

    move-object/from16 v6, v21

    move-object/from16 v22, v8

    move-object v8, v7

    move-object/from16 v7, v22

    :goto_3
    const/4 v0, 0x1

    move-object/from16 v21, v9

    move v9, v0

    move-object v0, v8

    move-object/from16 v8, v21

    move/from16 v22, v5

    move-object v5, v1

    move/from16 v1, v22

    move-object/from16 v23, v6

    move-object v6, v2

    move-object v2, v7

    move-object v7, v4

    move-object/from16 v4, v23

    goto/16 :goto_11

    .line 15
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Le/a/c/a0/b0;

    .line 17
    iget-object v15, v15, Le/a/c/a0/b0;->d:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    move-object/from16 p1, v1

    .line 18
    sget-object v1, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->BLOCKED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    if-ne v15, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    .line 19
    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object/from16 v1, p1

    goto :goto_4

    :cond_6
    move-object/from16 p1, v1

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Le/a/c/a0/b0;

    .line 23
    iget-object v15, v15, Le/a/c/a0/b0;->d:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    .line 24
    sget-object v3, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->ALLOWED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    if-ne v15, v3, :cond_7

    const/4 v3, 0x1

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    .line 25
    :goto_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 26
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_8
    move-object/from16 v3, p0

    goto :goto_6

    .line 27
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Le/a/c/a0/b0;

    .line 29
    iget-object v15, v15, Le/a/c/a0/b0;->d:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    move-object/from16 p2, v4

    .line 30
    sget-object v4, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->PRE_FILLED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    if-ne v15, v4, :cond_a

    const/4 v4, 0x1

    goto :goto_9

    :cond_a
    const/4 v4, 0x0

    .line 31
    :goto_9
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 32
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object/from16 v4, p2

    goto :goto_8

    .line 33
    :cond_c
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Le/a/c/a0/b0;

    .line 35
    iget-object v15, v15, Le/a/c/a0/b0;->d:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    move-object/from16 p2, v0

    .line 36
    sget-object v0, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->INCORRECT_DATA:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    if-ne v15, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_b

    :cond_d
    const/4 v0, 0x0

    .line 37
    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v13, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_e
    move-object/from16 v0, p2

    goto :goto_a

    .line 39
    :cond_f
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_11

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    goto :goto_c

    :cond_10
    move-object/from16 v1, p1

    move-object v0, v2

    move-object v15, v11

    move-object v11, v8

    move-object v8, v13

    move-object v13, v6

    move/from16 v21, v12

    move-object v12, v7

    move/from16 v7, v21

    goto :goto_e

    .line 40
    :cond_11
    :goto_c
    iput-object v6, v2, Le/a/c/i/j/b$a;->g:Ljava/lang/Object;

    iput-object v7, v2, Le/a/c/i/j/b$a;->h:Ljava/lang/Object;

    iput-object v8, v2, Le/a/c/i/j/b$a;->i:Ljava/lang/Object;

    iput-object v9, v2, Le/a/c/i/j/b$a;->j:Ljava/lang/Object;

    iput-object v14, v2, Le/a/c/i/j/b$a;->k:Ljava/lang/Object;

    iput-object v10, v2, Le/a/c/i/j/b$a;->l:Ljava/lang/Object;

    iput-object v3, v2, Le/a/c/i/j/b$a;->m:Ljava/lang/Object;

    iput-object v13, v2, Le/a/c/i/j/b$a;->n:Ljava/lang/Object;

    iput v12, v2, Le/a/c/i/j/b$a;->o:I

    const/4 v0, 0x3

    iput v0, v2, Le/a/c/i/j/b$a;->e:I

    move-object v4, v6

    move-object v0, v6

    move-object v6, v14

    move-object v15, v7

    move-object v7, v10

    move-object/from16 v16, v8

    move-object v8, v1

    move-object v1, v9

    move-object/from16 v9, v16

    move-object/from16 v17, v10

    move-object v10, v2

    invoke-virtual/range {v4 .. v10}, Le/a/c/i/j/b;->f(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v11, :cond_12

    return-object v11

    :cond_12
    move-object v10, v1

    move-object v7, v3

    move-object v4, v11

    move v5, v12

    move-object v6, v13

    move-object v9, v14

    move-object v12, v15

    move-object/from16 v11, v16

    move-object/from16 v8, v17

    move-object/from16 v1, p1

    move-object v13, v0

    :goto_d
    move-object v0, v2

    move-object v15, v4

    move-object v3, v7

    move-object v14, v9

    move-object v9, v10

    move v7, v5

    move-object v10, v8

    move-object v8, v6

    .line 41
    :goto_e
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_13

    .line 42
    iput-object v13, v0, Le/a/c/i/j/b$a;->g:Ljava/lang/Object;

    iput-object v12, v0, Le/a/c/i/j/b$a;->h:Ljava/lang/Object;

    iput-object v11, v0, Le/a/c/i/j/b$a;->i:Ljava/lang/Object;

    iput-object v9, v0, Le/a/c/i/j/b$a;->j:Ljava/lang/Object;

    iput-object v14, v0, Le/a/c/i/j/b$a;->k:Ljava/lang/Object;

    iput-object v10, v0, Le/a/c/i/j/b$a;->l:Ljava/lang/Object;

    iput-object v8, v0, Le/a/c/i/j/b$a;->m:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v0, Le/a/c/i/j/b$a;->n:Ljava/lang/Object;

    iput v7, v0, Le/a/c/i/j/b$a;->o:I

    const/4 v2, 0x4

    iput v2, v0, Le/a/c/i/j/b$a;->e:I

    move-object v2, v13

    move-object v4, v10

    move-object v5, v14

    move-object v6, v11

    move/from16 v16, v7

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Le/a/c/i/j/b;->e(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_14

    return-object v15

    :cond_13
    move/from16 v16, v7

    :cond_14
    move-object v3, v8

    move-object v4, v10

    move-object v10, v13

    move-object v5, v14

    move/from16 v8, v16

    .line 43
    :goto_f
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v13, 0x1

    xor-int/2addr v2, v13

    if-eqz v2, :cond_15

    .line 44
    iput-object v10, v0, Le/a/c/i/j/b$a;->g:Ljava/lang/Object;

    iput-object v12, v0, Le/a/c/i/j/b$a;->h:Ljava/lang/Object;

    iput-object v11, v0, Le/a/c/i/j/b$a;->i:Ljava/lang/Object;

    iput-object v9, v0, Le/a/c/i/j/b$a;->j:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v0, Le/a/c/i/j/b$a;->k:Ljava/lang/Object;

    iput-object v2, v0, Le/a/c/i/j/b$a;->l:Ljava/lang/Object;

    iput-object v2, v0, Le/a/c/i/j/b$a;->m:Ljava/lang/Object;

    iput-object v2, v0, Le/a/c/i/j/b$a;->n:Ljava/lang/Object;

    iput v8, v0, Le/a/c/i/j/b$a;->o:I

    const/4 v2, 0x5

    iput v2, v0, Le/a/c/i/j/b$a;->e:I

    move-object v2, v10

    move-object v6, v11

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Le/a/c/i/j/b;->d(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_15

    return-object v15

    :cond_15
    move-object v2, v0

    move v5, v8

    move-object v7, v9

    move-object v8, v11

    move-object v9, v12

    move v6, v13

    move-object v4, v15

    :goto_10
    move-object v0, v9

    move v9, v6

    move-object v6, v2

    move-object v2, v8

    move-object v8, v10

    move/from16 v21, v5

    move-object v5, v1

    move/from16 v1, v21

    move-object/from16 v22, v7

    move-object v7, v4

    move-object/from16 v4, v22

    :goto_11
    const/4 v10, 0x0

    move-object/from16 v3, p0

    goto/16 :goto_1

    .line 45
    :cond_16
    iget-object v3, v8, Le/a/c/i/j/b;->a:Le/a/c/a0/z;

    .line 46
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v9

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_17
    sget-object v0, Lcom/truecaller/insights/source/SourceType;->FIREBASE:Lcom/truecaller/insights/source/SourceType;

    iput-object v8, v6, Le/a/c/i/j/b$a;->g:Ljava/lang/Object;

    const/4 v9, 0x0

    iput-object v9, v6, Le/a/c/i/j/b$a;->h:Ljava/lang/Object;

    iput-object v9, v6, Le/a/c/i/j/b$a;->i:Ljava/lang/Object;

    iput-object v9, v6, Le/a/c/i/j/b$a;->j:Ljava/lang/Object;

    iput-object v9, v6, Le/a/c/i/j/b$a;->k:Ljava/lang/Object;

    iput-object v9, v6, Le/a/c/i/j/b$a;->l:Ljava/lang/Object;

    iput-object v9, v6, Le/a/c/i/j/b$a;->m:Ljava/lang/Object;

    iput-object v9, v6, Le/a/c/i/j/b$a;->n:Ljava/lang/Object;

    iput v1, v6, Le/a/c/i/j/b$a;->o:I

    const/4 v9, 0x6

    iput v9, v6, Le/a/c/i/j/b$a;->e:I

    check-cast v3, Le/a/c/a0/a0;

    .line 49
    iget-object v3, v3, Le/a/c/a0/a0;->a:Le/a/c/c/d/f0;

    .line 50
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v4, v10}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 52
    check-cast v10, Ljava/lang/String;

    .line 53
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    const-string v12, "Locale.getDefault()"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v10, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_18
    invoke-interface {v3, v9, v0, v2}, Le/a/c/c/d/f0;->d(Ljava/util/List;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;)V

    if-ne v5, v7, :cond_19

    return-object v7

    :cond_19
    move-object v2, v6

    move-object v4, v7

    move-object v6, v8

    move-object/from16 v21, v5

    move v5, v1

    move-object/from16 v1, v21

    .line 54
    :goto_14
    iget-object v0, v6, Le/a/c/i/j/b;->c:Le/a/c/b/l;

    const/4 v3, 0x0

    iput-object v3, v2, Le/a/c/i/j/b$a;->g:Ljava/lang/Object;

    const/4 v3, 0x7

    iput v3, v2, Le/a/c/i/j/b$a;->e:I

    invoke-interface {v0, v5, v2}, Le/a/c/b/l;->d(ILs1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_1a

    return-object v4

    :cond_1a
    :goto_15
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;ILs1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;",
            "I",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/c/i/j/b$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/c/i/j/b$b;

    iget v1, v0, Le/a/c/i/j/b$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/j/b$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/j/b$b;

    invoke-direct {v0, p0, p3}, Le/a/c/i/j/b$b;-><init>(Le/a/c/i/j/b;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/c/i/j/b$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/j/b$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p2, v0, Le/a/c/i/j/b$b;->i:I

    iget-object p1, v0, Le/a/c/i/j/b$b;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Le/a/c/i/j/b$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/i/j/b;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;->getSenderPreferences()Ljava/util/List;

    move-result-object p1

    const-string p3, "$this$toCountrySpecificSenderGrammarMap"

    .line 5
    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/insights/core/senderinfo/SenderBlockList;

    .line 8
    invoke-virtual {v2}, Lcom/truecaller/insights/core/senderinfo/SenderBlockList;->getCountry()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v2}, Lcom/truecaller/insights/core/senderinfo/SenderBlockList;->getCountry()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 10
    invoke-virtual {v2}, Lcom/truecaller/insights/core/senderinfo/SenderBlockList;->getBlockedParserCategoryList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    sget-object v7, Lcom/truecaller/insights/source/ModelType;->PARSER:Lcom/truecaller/insights/source/ModelType;

    invoke-static {v6, v7}, Le/a/m0/a1$k;->B1(Ljava/util/List;Lcom/truecaller/insights/source/ModelType;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 11
    :cond_4
    invoke-virtual {v2}, Lcom/truecaller/insights/core/senderinfo/SenderBlockList;->getBlockedUpdatesCategoryList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_7

    sget-object v7, Lcom/truecaller/insights/source/ModelType;->UPDATE:Lcom/truecaller/insights/source/ModelType;

    invoke-static {v6, v7}, Le/a/m0/a1$k;->B1(Ljava/util/List;Lcom/truecaller/insights/source/ModelType;)Ljava/util/Map;

    move-result-object v6

    .line 12
    check-cast v6, Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 14
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v8, v9}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    .line 15
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 16
    :cond_6
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 17
    :cond_7
    invoke-virtual {v2}, Lcom/truecaller/insights/core/senderinfo/SenderBlockList;->getBlockedAllCategoryList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 18
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "ALL"

    .line 19
    invoke-static {v7}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 20
    :cond_8
    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 21
    :cond_9
    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, p0

    :cond_a
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object v2, v0, Le/a/c/i/j/b$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/i/j/b$b;->h:Ljava/lang/Object;

    iput p2, v0, Le/a/c/i/j/b$b;->i:I

    iput v3, v0, Le/a/c/i/j/b$b;->e:I

    invoke-virtual {v2, v4, p2, p3, v0}, Le/a/c/i/j/b;->b(Ljava/util/Map;ILjava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_a

    return-object v1

    .line 23
    :cond_b
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final d(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/a0/b0;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p5, Le/a/c/i/j/b$c;

    if-eqz v1, :cond_0

    move-object v1, p5

    check-cast v1, Le/a/c/i/j/b$c;

    iget v2, v1, Le/a/c/i/j/b$c;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/c/i/j/b$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/c/i/j/b$c;

    invoke-direct {v1, p0, p5}, Le/a/c/i/j/b$c;-><init>(Le/a/c/i/j/b;Ls1/w/d;)V

    :goto_0
    move-object v8, v1

    iget-object p5, v8, Le/a/c/i/j/b$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v8, Le/a/c/i/j/b$c;->e:I

    const/4 v9, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v9, :cond_1

    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v8, Le/a/c/i/j/b$c;->j:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p2, v8, Le/a/c/i/j/b$c;->i:Ljava/lang/Object;

    move-object p4, p2

    check-cast p4, Ljava/lang/String;

    iget-object p2, v8, Le/a/c/i/j/b$c;->h:Ljava/lang/Object;

    move-object p3, p2

    check-cast p3, Ljava/lang/String;

    iget-object p2, v8, Le/a/c/i/j/b$c;->g:Ljava/lang/Object;

    check-cast p2, Le/a/c/i/j/b;

    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    :goto_1
    move-object v5, p1

    move-object v3, p3

    move-object v7, p4

    goto :goto_3

    :cond_3
    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Le/a/c/a0/b0;

    .line 7
    iget-object v2, v2, Le/a/c/a0/b0;->e:Ljava/util/List;

    .line 8
    invoke-static {p5, v2}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_2

    .line 9
    :cond_4
    invoke-static {p5, p2}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 10
    iget-object p2, p0, Le/a/c/i/j/b;->a:Le/a/c/a0/z;

    sget-object v4, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->BLOCKED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    sget-object v5, Lcom/truecaller/insights/source/SourceType;->FIREBASE:Lcom/truecaller/insights/source/SourceType;

    iput-object p0, v8, Le/a/c/i/j/b$c;->g:Ljava/lang/Object;

    iput-object p3, v8, Le/a/c/i/j/b$c;->h:Ljava/lang/Object;

    iput-object p4, v8, Le/a/c/i/j/b$c;->i:Ljava/lang/Object;

    iput-object p1, v8, Le/a/c/i/j/b$c;->j:Ljava/lang/Object;

    iput v3, v8, Le/a/c/i/j/b$c;->e:I

    move-object v2, p2

    check-cast v2, Le/a/c/a0/a0;

    move-object v3, p3

    move-object v6, p4

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Le/a/c/a0/a0;->d(Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    move-object p2, p0

    goto :goto_1

    .line 11
    :goto_3
    iget-object p1, p2, Le/a/c/i/j/b;->a:Le/a/c/a0/z;

    sget-object v4, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->BLOCKED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    sget-object v6, Lcom/truecaller/insights/source/SourceType;->FIREBASE:Lcom/truecaller/insights/source/SourceType;

    const/4 p2, 0x0

    iput-object p2, v8, Le/a/c/i/j/b$c;->g:Ljava/lang/Object;

    iput-object p2, v8, Le/a/c/i/j/b$c;->h:Ljava/lang/Object;

    iput-object p2, v8, Le/a/c/i/j/b$c;->i:Ljava/lang/Object;

    iput-object p2, v8, Le/a/c/i/j/b$c;->j:Ljava/lang/Object;

    iput v9, v8, Le/a/c/i/j/b$c;->e:I

    move-object v2, p1

    check-cast v2, Le/a/c/a0/a0;

    invoke-virtual/range {v2 .. v8}, Le/a/c/a0/a0;->c(Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ljava/util/List;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    if-ne v0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_4
    return-object v0
.end method

.method public final e(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/a0/b0;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    sget-object v2, Ls1/s;->a:Ls1/s;

    instance-of v3, v0, Le/a/c/i/j/b$d;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Le/a/c/i/j/b$d;

    iget v4, v3, Le/a/c/i/j/b$d;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/c/i/j/b$d;->e:I

    move-object/from16 v4, p0

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/c/i/j/b$d;

    move-object/from16 v4, p0

    invoke-direct {v3, v4, v0}, Le/a/c/i/j/b$d;-><init>(Le/a/c/i/j/b;Ls1/w/d;)V

    :goto_0
    iget-object v0, v3, Le/a/c/i/j/b$d;->d:Ljava/lang/Object;

    .line 1
    iget v5, v3, Le/a/c/i/j/b$d;->e:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x4

    const/4 v10, 0x5

    if-eqz v5, :cond_5

    if-eq v5, v6, :cond_4

    if-eq v5, v7, :cond_3

    if-eq v5, v8, :cond_2

    if-eq v5, v9, :cond_3

    if-ne v5, v10, :cond_1

    iget-object v5, v3, Le/a/c/i/j/b$d;->k:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, v3, Le/a/c/i/j/b$d;->j:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v3, Le/a/c/i/j/b$d;->i:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v3, Le/a/c/i/j/b$d;->h:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v9, v3, Le/a/c/i/j/b$d;->g:Ljava/lang/Object;

    check-cast v9, Le/a/c/i/j/b;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v18, v1

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v5, v3, Le/a/c/i/j/b$d;->m:Ljava/lang/Object;

    check-cast v5, Ljava/util/Set;

    iget-object v6, v3, Le/a/c/i/j/b$d;->l:Ljava/lang/Object;

    check-cast v6, Le/a/c/a0/b0;

    iget-object v7, v3, Le/a/c/i/j/b$d;->k:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v8, v3, Le/a/c/i/j/b$d;->j:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v3, Le/a/c/i/j/b$d;->i:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v3, Le/a/c/i/j/b$d;->h:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v3, Le/a/c/i/j/b$d;->g:Ljava/lang/Object;

    check-cast v11, Le/a/c/i/j/b;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v15, v1

    move-object v12, v7

    move-object v7, v9

    move-object v9, v11

    goto/16 :goto_5

    :cond_3
    iget-object v5, v3, Le/a/c/i/j/b$d;->k:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, v3, Le/a/c/i/j/b$d;->j:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v3, Le/a/c/i/j/b$d;->i:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v3, Le/a/c/i/j/b$d;->h:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v9, v3, Le/a/c/i/j/b$d;->g:Ljava/lang/Object;

    check-cast v9, Le/a/c/i/j/b;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v15, v1

    goto/16 :goto_4

    :cond_4
    iget-object v5, v3, Le/a/c/i/j/b$d;->l:Ljava/lang/Object;

    check-cast v5, Le/a/c/a0/b0;

    iget-object v6, v3, Le/a/c/i/j/b$d;->k:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, v3, Le/a/c/i/j/b$d;->j:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v3, Le/a/c/i/j/b$d;->i:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v3, Le/a/c/i/j/b$d;->h:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v3, Le/a/c/i/j/b$d;->g:Ljava/lang/Object;

    check-cast v10, Le/a/c/i/j/b;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v15, v1

    move-object v13, v3

    move-object v12, v6

    move-object v0, v7

    move-object v11, v9

    move-object v14, v10

    move-object v10, v8

    goto/16 :goto_3

    :cond_5
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v12, v0

    move-object v15, v1

    move-object v14, v2

    move-object v13, v3

    move-object v11, v4

    move-object/from16 v0, p2

    move-object/from16 v2, p4

    move-object v3, v15

    move-object/from16 v1, p3

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Le/a/c/a0/b0;

    .line 5
    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    .line 6
    iget-object v7, v10, Le/a/c/a0/b0;->e:Ljava/util/List;

    .line 7
    invoke-static {v5, v7}, Ls1/u/i;->K(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v9

    .line 8
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 9
    iget-object v5, v10, Le/a/c/a0/b0;->e:Ljava/util/List;

    .line 10
    invoke-static {v5}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    invoke-static {v5, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 11
    iget-object v5, v11, Le/a/c/i/j/b;->a:Le/a/c/a0/z;

    .line 12
    iget-object v7, v10, Le/a/c/a0/b0;->a:Ljava/lang/String;

    .line 13
    iget-object v8, v10, Le/a/c/a0/b0;->c:Ljava/lang/String;

    .line 14
    sget-object v9, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->BLOCKED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    sget-object v16, Lcom/truecaller/insights/source/SourceType;->FIREBASE:Lcom/truecaller/insights/source/SourceType;

    iput-object v11, v13, Le/a/c/i/j/b$d;->g:Ljava/lang/Object;

    iput-object v0, v13, Le/a/c/i/j/b$d;->h:Ljava/lang/Object;

    iput-object v1, v13, Le/a/c/i/j/b$d;->i:Ljava/lang/Object;

    iput-object v2, v13, Le/a/c/i/j/b$d;->j:Ljava/lang/Object;

    iput-object v12, v13, Le/a/c/i/j/b$d;->k:Ljava/lang/Object;

    iput-object v10, v13, Le/a/c/i/j/b$d;->l:Ljava/lang/Object;

    iput v6, v13, Le/a/c/i/j/b$d;->e:I

    check-cast v5, Le/a/c/a0/a0;

    .line 15
    iget-object v5, v5, Le/a/c/a0/a0;->a:Le/a/c/c/d/f0;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v4, "Locale.getDefault()"

    invoke-static {v6, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v7, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v7, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v6, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v8

    move-object v8, v9

    move-object/from16 v9, v16

    move-object v4, v10

    move-object v10, v2

    move-object/from16 v16, v14

    move-object v14, v11

    move-object v11, v13

    invoke-interface/range {v5 .. v11}, Le/a/c/c/d/f0;->c(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v15, :cond_6

    goto :goto_2

    :cond_6
    move-object/from16 v5, v16

    :goto_2
    if-ne v5, v3, :cond_7

    return-object v3

    :cond_7
    move-object v11, v0

    move-object v10, v1

    move-object v0, v2

    move-object v1, v3

    move-object v5, v4

    move-object/from16 v2, v16

    .line 16
    :goto_3
    iget-object v3, v14, Le/a/c/i/j/b;->a:Le/a/c/a0/z;

    .line 17
    sget-object v6, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->BLOCKED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    .line 18
    iget-object v7, v5, Le/a/c/a0/b0;->e:Ljava/util/List;

    .line 19
    sget-object v8, Lcom/truecaller/insights/source/SourceType;->FIREBASE:Lcom/truecaller/insights/source/SourceType;

    .line 20
    iput-object v14, v13, Le/a/c/i/j/b$d;->g:Ljava/lang/Object;

    iput-object v11, v13, Le/a/c/i/j/b$d;->h:Ljava/lang/Object;

    iput-object v10, v13, Le/a/c/i/j/b$d;->i:Ljava/lang/Object;

    iput-object v0, v13, Le/a/c/i/j/b$d;->j:Ljava/lang/Object;

    iput-object v12, v13, Le/a/c/i/j/b$d;->k:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v13, Le/a/c/i/j/b$d;->l:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v13, Le/a/c/i/j/b$d;->e:I

    .line 21
    check-cast v3, Le/a/c/a0/a0;

    move-object v4, v10

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v0

    move-object v9, v13

    invoke-virtual/range {v3 .. v9}, Le/a/c/a0/a0;->c(Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ljava/util/List;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    if-ne v2, v1, :cond_8

    return-object v1

    :cond_8
    move-object v6, v0

    move-object v7, v10

    move-object v8, v11

    move-object v5, v12

    move-object v3, v13

    move-object v9, v14

    :goto_4
    move-object v14, v2

    move-object v13, v3

    move-object v12, v5

    move-object v2, v6

    move-object v0, v8

    move-object v11, v9

    move-object v3, v1

    move-object v1, v7

    goto/16 :goto_7

    :cond_9
    move-object v4, v10

    move-object/from16 v16, v14

    move-object v14, v11

    .line 22
    iget-object v5, v14, Le/a/c/i/j/b;->a:Le/a/c/a0/z;

    .line 23
    sget-object v7, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->PRE_FILLED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    .line 24
    iget-object v6, v4, Le/a/c/a0/b0;->e:Ljava/util/List;

    .line 25
    invoke-static {v6, v9}, Ls1/u/i;->Z(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    .line 26
    sget-object v10, Lcom/truecaller/insights/source/SourceType;->FIREBASE:Lcom/truecaller/insights/source/SourceType;

    .line 27
    iput-object v14, v13, Le/a/c/i/j/b$d;->g:Ljava/lang/Object;

    iput-object v0, v13, Le/a/c/i/j/b$d;->h:Ljava/lang/Object;

    iput-object v1, v13, Le/a/c/i/j/b$d;->i:Ljava/lang/Object;

    iput-object v2, v13, Le/a/c/i/j/b$d;->j:Ljava/lang/Object;

    iput-object v12, v13, Le/a/c/i/j/b$d;->k:Ljava/lang/Object;

    iput-object v4, v13, Le/a/c/i/j/b$d;->l:Ljava/lang/Object;

    iput-object v9, v13, Le/a/c/i/j/b$d;->m:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, v13, Le/a/c/i/j/b$d;->e:I

    .line 28
    check-cast v5, Le/a/c/a0/a0;

    move-object v6, v1

    move-object/from16 v17, v9

    move-object v9, v10

    move-object v10, v2

    move-object v11, v13

    invoke-virtual/range {v5 .. v11}, Le/a/c/a0/a0;->c(Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ljava/util/List;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-object/from16 v5, v16

    if-ne v5, v3, :cond_a

    return-object v3

    :cond_a
    move-object v10, v0

    move-object v7, v1

    move-object v8, v2

    move-object v1, v3

    move-object v6, v4

    move-object v2, v5

    move-object v3, v13

    move-object v9, v14

    move-object/from16 v5, v17

    .line 29
    :goto_5
    iget-object v0, v9, Le/a/c/i/j/b;->a:Le/a/c/a0/z;

    .line 30
    new-instance v4, Le/a/c/a0/b0;

    .line 31
    iget-object v11, v6, Le/a/c/a0/b0;->b:Ljava/lang/String;

    .line 32
    iget-object v6, v6, Le/a/c/a0/b0;->c:Ljava/lang/String;

    .line 33
    sget-object v20, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->BLOCKED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    .line 34
    invoke-static {v5, v10}, Ls1/u/i;->f1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v21

    .line 35
    sget-object v22, Lcom/truecaller/insights/source/SourceType;->FIREBASE:Lcom/truecaller/insights/source/SourceType;

    move-object/from16 v16, v4

    move-object/from16 v17, v7

    move-object/from16 v18, v11

    move-object/from16 v19, v6

    move-object/from16 v23, v8

    .line 36
    invoke-direct/range {v16 .. v23}, Le/a/c/a0/b0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ljava/util/List;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;)V

    iput-object v9, v3, Le/a/c/i/j/b$d;->g:Ljava/lang/Object;

    iput-object v10, v3, Le/a/c/i/j/b$d;->h:Ljava/lang/Object;

    iput-object v7, v3, Le/a/c/i/j/b$d;->i:Ljava/lang/Object;

    iput-object v8, v3, Le/a/c/i/j/b$d;->j:Ljava/lang/Object;

    iput-object v12, v3, Le/a/c/i/j/b$d;->k:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v3, Le/a/c/i/j/b$d;->l:Ljava/lang/Object;

    iput-object v5, v3, Le/a/c/i/j/b$d;->m:Ljava/lang/Object;

    const/4 v5, 0x4

    iput v5, v3, Le/a/c/i/j/b$d;->e:I

    .line 37
    check-cast v0, Le/a/c/a0/a0;

    invoke-virtual {v0, v4, v3}, Le/a/c/a0/a0;->b(Le/a/c/a0/b0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_b

    return-object v1

    :cond_b
    move-object v6, v8

    move-object v8, v10

    move-object v5, v12

    goto/16 :goto_4

    :cond_c
    move-object v4, v10

    move-object v5, v14

    move-object v14, v11

    .line 38
    iget-object v6, v14, Le/a/c/i/j/b;->a:Le/a/c/a0/z;

    .line 39
    new-instance v11, Le/a/c/a0/b0;

    .line 40
    iget-object v9, v4, Le/a/c/a0/b0;->b:Ljava/lang/String;

    .line 41
    iget-object v10, v4, Le/a/c/a0/b0;->c:Ljava/lang/String;

    .line 42
    sget-object v4, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->BLOCKED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    .line 43
    sget-object v16, Lcom/truecaller/insights/source/SourceType;->FIREBASE:Lcom/truecaller/insights/source/SourceType;

    move-object v7, v11

    move-object v8, v1

    move-object/from16 v17, v5

    move-object v5, v11

    move-object v11, v4

    move-object v4, v12

    move-object v12, v0

    move-object/from16 v18, v15

    move-object v15, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v3

    move-object v3, v14

    move-object v14, v2

    .line 44
    invoke-direct/range {v7 .. v14}, Le/a/c/a0/b0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ljava/util/List;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;)V

    iput-object v3, v15, Le/a/c/i/j/b$d;->g:Ljava/lang/Object;

    iput-object v0, v15, Le/a/c/i/j/b$d;->h:Ljava/lang/Object;

    iput-object v1, v15, Le/a/c/i/j/b$d;->i:Ljava/lang/Object;

    iput-object v2, v15, Le/a/c/i/j/b$d;->j:Ljava/lang/Object;

    iput-object v4, v15, Le/a/c/i/j/b$d;->k:Ljava/lang/Object;

    const/4 v7, 0x5

    iput v7, v15, Le/a/c/i/j/b$d;->e:I

    .line 45
    check-cast v6, Le/a/c/a0/a0;

    invoke-virtual {v6, v5, v15}, Le/a/c/a0/a0;->b(Le/a/c/a0/b0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v6, v17

    if-ne v5, v6, :cond_d

    return-object v6

    :cond_d
    move-object v8, v0

    move-object v7, v1

    move-object v9, v3

    move-object v5, v4

    move-object v1, v6

    move-object v3, v15

    move-object v6, v2

    move-object/from16 v2, v16

    :goto_6
    move-object/from16 v15, v18

    goto/16 :goto_4

    :goto_7
    const/4 v6, 0x1

    move-object/from16 v4, p0

    goto/16 :goto_1

    :cond_e
    move-object/from16 v16, v14

    return-object v16
.end method

.method public final f(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/a0/b0;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Le/a/c/a0/b0;",
            ">;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p6

    sget-object v1, Ls1/s;->a:Ls1/s;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    instance-of v3, v0, Le/a/c/i/j/b$e;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Le/a/c/i/j/b$e;

    iget v4, v3, Le/a/c/i/j/b$e;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/c/i/j/b$e;->e:I

    move-object/from16 v4, p0

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/c/i/j/b$e;

    move-object/from16 v4, p0

    invoke-direct {v3, v4, v0}, Le/a/c/i/j/b$e;-><init>(Le/a/c/i/j/b;Ls1/w/d;)V

    :goto_0
    iget-object v0, v3, Le/a/c/i/j/b$e;->d:Ljava/lang/Object;

    .line 1
    iget v5, v3, Le/a/c/i/j/b$e;->e:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v5, v3, Le/a/c/i/j/b$e;->k:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, v3, Le/a/c/i/j/b$e;->j:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v3, Le/a/c/i/j/b$e;->i:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v8, v3, Le/a/c/i/j/b$e;->h:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v3, Le/a/c/i/j/b$e;->g:Ljava/lang/Object;

    check-cast v9, Le/a/c/i/j/b;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v0, v6

    move-object v14, v7

    move-object v15, v8

    move-object v13, v9

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v5, v3, Le/a/c/i/j/b$e;->l:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, v3, Le/a/c/i/j/b$e;->k:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v3, Le/a/c/i/j/b$e;->j:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v8, v3, Le/a/c/i/j/b$e;->i:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v9, v3, Le/a/c/i/j/b$e;->h:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v3, Le/a/c/i/j/b$e;->g:Ljava/lang/Object;

    check-cast v10, Le/a/c/i/j/b;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v13, v1

    move-object v14, v2

    move-object v15, v14

    move-object v12, v3

    move-object v11, v5

    move-object v3, v6

    move-object v2, v7

    move-object v1, v8

    move-object v0, v9

    goto/16 :goto_3

    :cond_3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v11, v0

    move-object v13, v1

    move-object v14, v2

    move-object v15, v14

    move-object v12, v3

    move-object v10, v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/c/a0/b0;

    .line 5
    iget-object v6, v10, Le/a/c/i/j/b;->a:Le/a/c/a0/z;

    .line 6
    iget-object v9, v5, Le/a/c/a0/b0;->c:Ljava/lang/String;

    .line 7
    sget-object v16, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->BLOCKED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    .line 8
    sget-object v17, Lcom/truecaller/insights/source/SourceType;->FIREBASE:Lcom/truecaller/insights/source/SourceType;

    .line 9
    iput-object v10, v12, Le/a/c/i/j/b$e;->g:Ljava/lang/Object;

    iput-object v0, v12, Le/a/c/i/j/b$e;->h:Ljava/lang/Object;

    iput-object v1, v12, Le/a/c/i/j/b$e;->i:Ljava/lang/Object;

    iput-object v2, v12, Le/a/c/i/j/b$e;->j:Ljava/lang/Object;

    iput-object v3, v12, Le/a/c/i/j/b$e;->k:Ljava/lang/Object;

    iput-object v11, v12, Le/a/c/i/j/b$e;->l:Ljava/lang/Object;

    iput v7, v12, Le/a/c/i/j/b$e;->e:I

    .line 10
    check-cast v6, Le/a/c/a0/a0;

    .line 11
    iget-object v8, v6, Le/a/c/a0/a0;->a:Le/a/c/c/d/f0;

    .line 12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "Locale.getDefault()"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v7, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x3e

    const-string v6, ","

    move-object v5, v1

    move-object/from16 v24, v7

    move-object/from16 v7, v18

    move-object/from16 v18, v8

    move-object/from16 v8, v19

    move-object/from16 v19, v9

    move/from16 v9, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v21

    move-object/from16 v21, v11

    move-object/from16 v11, v22

    move-object/from16 v22, v12

    move/from16 v12, v23

    invoke-static/range {v5 .. v12}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v5, v18

    move-object/from16 v6, v24

    move-object/from16 v7, v19

    move-object/from16 v8, v16

    move-object/from16 v10, v17

    move-object v11, v3

    move-object/from16 v12, v22

    .line 13
    invoke-interface/range {v5 .. v12}, Le/a/c/c/d/f0;->f(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ljava/lang/String;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v15, :cond_4

    goto :goto_2

    :cond_4
    move-object v5, v13

    :goto_2
    if-ne v5, v14, :cond_5

    return-object v14

    :cond_5
    move-object/from16 v10, v20

    move-object/from16 v11, v21

    move-object/from16 v12, v22

    :goto_3
    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_6
    move-object/from16 v20, v10

    move-object/from16 v22, v12

    .line 14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v15, v0

    move-object v5, v2

    move-object v0, v3

    move-object v2, v14

    move-object/from16 v3, v22

    move-object v14, v1

    move-object v1, v13

    move-object/from16 v13, v20

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/c/a0/b0;

    .line 15
    iget-object v7, v6, Le/a/c/a0/b0;->e:Ljava/util/List;

    .line 16
    invoke-static {v14, v7}, Ls1/u/i;->Z(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v11

    .line 17
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7

    .line 18
    iget-object v12, v13, Le/a/c/i/j/b;->a:Le/a/c/a0/z;

    .line 19
    new-instance v10, Le/a/c/a0/b0;

    .line 20
    iget-object v8, v6, Le/a/c/a0/b0;->b:Ljava/lang/String;

    .line 21
    iget-object v9, v6, Le/a/c/a0/b0;->c:Ljava/lang/String;

    .line 22
    sget-object v16, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->BLOCKED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    .line 23
    sget-object v17, Lcom/truecaller/insights/source/SourceType;->FIREBASE:Lcom/truecaller/insights/source/SourceType;

    move-object v6, v10

    move-object v7, v15

    move-object v4, v10

    move-object/from16 v10, v16

    move-object/from16 v16, v12

    move-object/from16 v12, v17

    move-object/from16 p1, v1

    move-object v1, v13

    move-object v13, v0

    .line 24
    invoke-direct/range {v6 .. v13}, Le/a/c/a0/b0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ljava/util/List;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;)V

    iput-object v1, v3, Le/a/c/i/j/b$e;->g:Ljava/lang/Object;

    iput-object v15, v3, Le/a/c/i/j/b$e;->h:Ljava/lang/Object;

    iput-object v14, v3, Le/a/c/i/j/b$e;->i:Ljava/lang/Object;

    iput-object v0, v3, Le/a/c/i/j/b$e;->j:Ljava/lang/Object;

    iput-object v5, v3, Le/a/c/i/j/b$e;->k:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v3, Le/a/c/i/j/b$e;->l:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v3, Le/a/c/i/j/b$e;->e:I

    .line 25
    move-object/from16 v12, v16

    check-cast v12, Le/a/c/a0/a0;

    invoke-virtual {v12, v4, v3}, Le/a/c/a0/a0;->b(Le/a/c/a0/b0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_8

    return-object v2

    :cond_7
    move-object/from16 p1, v1

    move-object v1, v13

    :cond_8
    move-object v13, v1

    move-object/from16 v1, p1

    :goto_5
    move-object/from16 v4, p0

    goto :goto_4

    :cond_9
    move-object/from16 p1, v1

    return-object p1
.end method
