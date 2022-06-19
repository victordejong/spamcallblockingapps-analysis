.class public final Le/a/c/g/b0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/g/b0/g;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001f\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\nJ\u0016\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0008H\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000cH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/truecaller/insights/categorizer/multiClass/MultiClassProbCalculatorImpl;",
        "Lcom/truecaller/insights/categorizer/multiClass/MultiClassProbCalculator;",
        "multiClassMetadataRepository",
        "Lcom/truecaller/insights/categorizer/datasource/MultiClassMetadataRepository;",
        "(Lcom/truecaller/insights/categorizer/datasource/MultiClassMetadataRepository;)V",
        "calculateClassProbabilities",
        "Lcom/truecaller/insights/categorizer/multiClass/AllKeyWordsAndClassProbs;",
        "words",
        "",
        "",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "calculateNumberOfTokensConsideringMultiWord",
        "",
        "probabilities",
        "Lcom/truecaller/insights/categorizer/multiClass/ClassProbability;",
        "getDefaultProbForClass",
        "",
        "classIdentifier",
        "insights-categorizer"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Le/a/c/g/y/n;


# direct methods
.method public constructor <init>(Le/a/c/g/y/n;)V
    .locals 1

    const-string v0, "multiClassMetadataRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/c/g/b0/h;->a:Le/a/c/g/y/n;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Le/a/c/g/b0/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Le/a/c/g/b0/h$a;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/c/g/b0/h$a;

    iget v2, v1, Le/a/c/g/b0/h$a;->m:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/c/g/b0/h$a;->m:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/c/g/b0/h$a;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Le/a/c/g/b0/h$a;-><init>(Le/a/c/g/b0/h;Ls1/w/d;)V

    :goto_0
    iget-object v0, v1, Le/a/c/g/b0/h$a;->k:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v1, Le/a/c/g/b0/h$a;->m:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    iget-wide v10, v1, Le/a/c/g/b0/h$a;->j:D

    iget v4, v1, Le/a/c/g/b0/h$a;->i:I

    iget-object v12, v1, Le/a/c/g/b0/h$a;->h:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v13, v1, Le/a/c/g/b0/h$a;->g:Ljava/lang/Object;

    check-cast v13, Ljava/util/Iterator;

    iget-object v14, v1, Le/a/c/g/b0/h$a;->f:Ljava/lang/Object;

    check-cast v14, Ljava/util/Collection;

    iget-object v15, v1, Le/a/c/g/b0/h$a;->e:Ljava/lang/Object;

    check-cast v15, Ljava/util/List;

    iget-object v9, v1, Le/a/c/g/b0/h$a;->d:Ljava/lang/Object;

    check-cast v9, Le/a/c/g/b0/h;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v4, v1, Le/a/c/g/b0/h$a;->h:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v9, v1, Le/a/c/g/b0/h$a;->g:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v1, Le/a/c/g/b0/h$a;->f:Ljava/lang/Object;

    check-cast v10, Ljava/util/Collection;

    iget-object v11, v1, Le/a/c/g/b0/h$a;->e:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v1, Le/a/c/g/b0/h$a;->d:Ljava/lang/Object;

    check-cast v12, Le/a/c/g/b0/h;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    iget-object v4, v1, Le/a/c/g/b0/h$a;->f:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v9, v1, Le/a/c/g/b0/h$a;->e:Ljava/lang/Object;

    check-cast v9, Ljava/util/Collection;

    iget-object v10, v1, Le/a/c/g/b0/h$a;->d:Ljava/lang/Object;

    check-cast v10, Le/a/c/g/b0/h;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v9, v0

    move-object v10, v2

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/String;

    .line 7
    iget-object v11, v10, Le/a/c/g/b0/h;->a:Le/a/c/g/y/n;

    iput-object v10, v1, Le/a/c/g/b0/h$a;->d:Ljava/lang/Object;

    iput-object v9, v1, Le/a/c/g/b0/h$a;->e:Ljava/lang/Object;

    iput-object v4, v1, Le/a/c/g/b0/h$a;->f:Ljava/lang/Object;

    iput v8, v1, Le/a/c/g/b0/h$a;->m:I

    invoke-interface {v11, v0, v1}, Le/a/c/g/y/n;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_6

    return-object v3

    :cond_6
    :goto_2
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 8
    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_7
    check-cast v9, Ljava/util/List;

    .line 10
    invoke-static {v9}, Le/q/f/a/d/a;->w0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 11
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    move-object v9, v0

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 13
    move-object v12, v11

    check-cast v12, Le/a/c/g/b0/b;

    .line 14
    iget v12, v12, Le/a/c/g/b0/b;->a:I

    .line 15
    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v12}, Ljava/lang/Integer;-><init>(I)V

    .line 16
    invoke-virtual {v4, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_8

    .line 17
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {v4, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_8
    check-cast v12, Ljava/util/List;

    .line 20
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 21
    :cond_9
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v15, v0

    move-object v13, v4

    move-object v14, v9

    move-object v9, v10

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/List;

    .line 24
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v12, v10}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 27
    move-object/from16 v8, v16

    check-cast v8, Le/a/c/g/b0/b;

    .line 28
    iget-object v8, v8, Le/a/c/g/b0/b;->c:Ljava/lang/String;

    if-nez v8, :cond_a

    move v7, v5

    goto :goto_6

    :cond_a
    const-string v16, " "

    .line 29
    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v10

    const/4 v7, 0x6

    invoke-static {v8, v10, v5, v5, v7}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    :goto_6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/16 v10, 0xa

    goto :goto_5

    :cond_b
    invoke-static {v0}, Ls1/u/i;->I0(Ljava/lang/Iterable;)I

    move-result v0

    if-gt v0, v6, :cond_15

    .line 30
    iget-object v0, v9, Le/a/c/g/b0/h;->a:Le/a/c/g/y/n;

    iput-object v9, v1, Le/a/c/g/b0/h$a;->d:Ljava/lang/Object;

    iput-object v15, v1, Le/a/c/g/b0/h$a;->e:Ljava/lang/Object;

    iput-object v14, v1, Le/a/c/g/b0/h$a;->f:Ljava/lang/Object;

    iput-object v13, v1, Le/a/c/g/b0/h$a;->g:Ljava/lang/Object;

    iput-object v12, v1, Le/a/c/g/b0/h$a;->h:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v1, Le/a/c/g/b0/h$a;->m:I

    invoke-interface {v0, v1}, Le/a/c/g/y/n;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_c

    return-object v3

    :cond_c
    move-object v4, v12

    move-object v10, v14

    move-object v11, v15

    move-object v12, v9

    move-object v9, v13

    :goto_7
    check-cast v0, Le/a/c/g/a0/d;

    if-nez v0, :cond_d

    const/4 v8, 0x0

    goto :goto_8

    :cond_d
    invoke-interface {v0}, Le/a/c/g/a0/d;->getClassId()I

    move-result v0

    .line 31
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    :goto_8
    if-nez v8, :cond_e

    move-object v13, v9

    move-object v14, v10

    move-object v15, v11

    move-object v9, v12

    const/4 v0, 0x0

    goto/16 :goto_12

    .line 32
    :cond_e
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 33
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Le/a/c/g/b0/b;

    .line 34
    iget v14, v14, Le/a/c/g/b0/b;->a:I

    .line 35
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v14, v15, :cond_10

    const/4 v14, 0x1

    goto :goto_9

    :cond_10
    move v14, v5

    :goto_9
    if-eqz v14, :cond_f

    goto :goto_a

    :cond_11
    const/4 v13, 0x0

    :goto_a
    check-cast v13, Le/a/c/g/b0/b;

    .line 36
    new-instance v0, Le/a/c/g/b0/b;

    .line 37
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-wide/16 v14, 0x1

    if-nez v13, :cond_12

    goto :goto_b

    .line 38
    :cond_12
    iget-object v13, v13, Le/a/c/g/b0/b;->b:Ljava/lang/Double;

    if-nez v13, :cond_13

    goto :goto_b

    .line 39
    :cond_13
    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 40
    :goto_b
    new-instance v13, Ljava/lang/Double;

    invoke-direct {v13, v14, v15}, Ljava/lang/Double;-><init>(D)V

    .line 41
    invoke-static {v4}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c/g/b0/b;

    if-nez v4, :cond_14

    const/4 v4, 0x0

    goto :goto_c

    .line 42
    :cond_14
    iget-object v4, v4, Le/a/c/g/b0/b;->c:Ljava/lang/String;

    .line 43
    :goto_c
    invoke-direct {v0, v8, v13, v4}, Le/a/c/g/b0/b;-><init>(ILjava/lang/Double;Ljava/lang/String;)V

    move-object v13, v9

    move-object v14, v10

    move-object v15, v11

    move-object v9, v12

    goto/16 :goto_12

    :cond_15
    const/4 v7, 0x2

    .line 44
    new-instance v0, Le/a/c/g/b0/h$b;

    invoke-direct {v0}, Le/a/c/g/b0/h$b;-><init>()V

    invoke-static {v12, v0}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    const/16 v8, 0xa

    .line 45
    invoke-static {v0, v8}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    .line 46
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v0, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 48
    check-cast v8, Le/a/c/g/b0/b;

    .line 49
    iget-object v8, v8, Le/a/c/g/b0/b;->b:Ljava/lang/Double;

    if-nez v8, :cond_16

    const/4 v11, 0x0

    goto :goto_e

    .line 50
    :cond_16
    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    .line 51
    new-instance v11, Ljava/lang/Double;

    invoke-direct {v11, v7, v8}, Ljava/lang/Double;-><init>(D)V

    :goto_e
    if-nez v11, :cond_17

    const-wide/16 v7, 0x0

    goto :goto_f

    .line 52
    :cond_17
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 53
    :goto_f
    new-instance v11, Ljava/lang/Double;

    invoke-direct {v11, v7, v8}, Ljava/lang/Double;-><init>(D)V

    .line 54
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x2

    goto :goto_d

    .line 55
    :cond_18
    invoke-static {v10}, Ls1/u/i;->H0(Ljava/lang/Iterable;)D

    move-result-wide v10

    .line 56
    iget-object v0, v9, Le/a/c/g/b0/h;->a:Le/a/c/g/y/n;

    iput-object v9, v1, Le/a/c/g/b0/h$a;->d:Ljava/lang/Object;

    iput-object v15, v1, Le/a/c/g/b0/h$a;->e:Ljava/lang/Object;

    iput-object v14, v1, Le/a/c/g/b0/h$a;->f:Ljava/lang/Object;

    iput-object v13, v1, Le/a/c/g/b0/h$a;->g:Ljava/lang/Object;

    iput-object v12, v1, Le/a/c/g/b0/h$a;->h:Ljava/lang/Object;

    iput v4, v1, Le/a/c/g/b0/h$a;->i:I

    iput-wide v10, v1, Le/a/c/g/b0/h$a;->j:D

    iput v6, v1, Le/a/c/g/b0/h$a;->m:I

    invoke-interface {v0, v4, v1}, Le/a/c/g/y/n;->c(ILs1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_19

    return-object v3

    :cond_19
    :goto_10
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    add-double/2addr v7, v10

    .line 57
    new-instance v0, Le/a/c/g/b0/b;

    .line 58
    new-instance v10, Ljava/lang/Double;

    invoke-direct {v10, v7, v8}, Ljava/lang/Double;-><init>(D)V

    .line 59
    invoke-static {v12}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/c/g/b0/b;

    if-nez v7, :cond_1a

    const/4 v7, 0x0

    goto :goto_11

    .line 60
    :cond_1a
    iget-object v7, v7, Le/a/c/g/b0/b;->c:Ljava/lang/String;

    .line 61
    :goto_11
    invoke-direct {v0, v4, v10, v7}, Le/a/c/g/b0/b;-><init>(ILjava/lang/Double;Ljava/lang/String;)V

    :goto_12
    if-eqz v0, :cond_1b

    .line 62
    invoke-interface {v14, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1b
    const/4 v7, 0x2

    const/4 v8, 0x1

    goto/16 :goto_4

    .line 63
    :cond_1c
    check-cast v14, Ljava/util/List;

    .line 64
    new-instance v0, Le/a/c/g/b0/a;

    invoke-direct {v0, v15, v14}, Le/a/c/g/b0/a;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
