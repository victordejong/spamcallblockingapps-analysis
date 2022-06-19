.class public final Le/a/c/g/y/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/g/y/k;


# instance fields
.field public final a:Ls1/g;

.field public final b:Le/a/c/b/e;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/c/g/f;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/q2/a;

.field public final e:Le/a/c/s/a/a;


# direct methods
.method public constructor <init>(Le/a/c/b/e;Lo3/a;Le/a/q2/a;Le/a/c/s/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/b/e;",
            "Lo3/a<",
            "Le/a/c/g/f;",
            ">;",
            "Le/a/q2/a;",
            "Le/a/c/s/a/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightsEnvironmentHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categorizer"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categorizerRestAdapter"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/g/y/l;->b:Le/a/c/b/e;

    iput-object p2, p0, Le/a/c/g/y/l;->c:Lo3/a;

    iput-object p3, p0, Le/a/c/g/y/l;->d:Le/a/q2/a;

    iput-object p4, p0, Le/a/c/g/y/l;->e:Le/a/c/s/a/a;

    .line 2
    new-instance p1, Le/a/c/g/y/l$a;

    invoke-direct {p1, p0}, Le/a/c/g/y/l$a;-><init>(Le/a/c/g/y/l;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/c/g/y/l;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/c/g/y/k$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    sget-object v2, Le/a/c/g/y/k$a$a;->a:Le/a/c/g/y/k$a$a;

    instance-of v3, v0, Le/a/c/g/y/l$c;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Le/a/c/g/y/l$c;

    iget v4, v3, Le/a/c/g/y/l$c;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/c/g/y/l$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/c/g/y/l$c;

    invoke-direct {v3, v1, v0}, Le/a/c/g/y/l$c;-><init>(Le/a/c/g/y/l;Ls1/w/d;)V

    :goto_0
    iget-object v0, v3, Le/a/c/g/y/l$c;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/c/g/y/l$c;->e:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget-wide v4, v3, Le/a/c/g/y/l$c;->j:J

    iget-object v6, v3, Le/a/c/g/y/l$c;->i:Ljava/lang/Object;

    check-cast v6, Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;

    iget-object v7, v3, Le/a/c/g/y/l$c;->h:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v3, v3, Le/a/c/g/y/l$c;->g:Ljava/lang/Object;

    check-cast v3, Le/a/c/g/y/l;

    :try_start_0
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v14, v4

    move-object v13, v7

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v5, v3, Le/a/c/g/y/l$c;->h:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v7, v3, Le/a/c/g/y/l$c;->g:Ljava/lang/Object;

    check-cast v7, Le/a/c/g/y/l;

    :try_start_1
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_5

    :cond_3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_2
    new-instance v0, Le/a/c/g/y/l$d;

    invoke-direct {v0, v1}, Le/a/c/g/y/l$d;-><init>(Le/a/c/g/y/l;)V

    iput-object v1, v3, Le/a/c/g/y/l$c;->g:Ljava/lang/Object;

    move-object/from16 v5, p1

    iput-object v5, v3, Le/a/c/g/y/l$c;->h:Ljava/lang/Object;

    iput v7, v3, Le/a/c/g/y/l$c;->e:I

    invoke-static {v0, v3}, Le/a/m0/a1$k;->t(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v0, v4, :cond_4

    return-object v4

    :cond_4
    move-object v7, v1

    :goto_1
    :try_start_3
    check-cast v0, Ls1/k;

    .line 5
    iget-object v9, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 6
    check-cast v9, Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;

    .line 7
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 8
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    .line 9
    invoke-static {v9}, Le/a/c/p/a;->E1(Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 10
    invoke-virtual {v9}, Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;->getData()Lcom/truecaller/insights/models/categorizerseed/Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/insights/models/categorizerseed/Data;->getVectors()Lcom/truecaller/insights/models/categorizerseed/Vectors;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 11
    invoke-virtual {v9}, Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;->getData()Lcom/truecaller/insights/models/categorizerseed/Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/insights/models/categorizerseed/Data;->getModelVersion()I

    move-result v0

    .line 12
    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 13
    invoke-virtual {v9}, Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;->getData()Lcom/truecaller/insights/models/categorizerseed/Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/insights/models/categorizerseed/Data;->getVectors()Lcom/truecaller/insights/models/categorizerseed/Vectors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/insights/models/categorizerseed/Vectors;->getMeta()Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-virtual {v9}, Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;->getData()Lcom/truecaller/insights/models/categorizerseed/Data;

    move-result-object v13

    invoke-virtual {v13}, Lcom/truecaller/insights/models/categorizerseed/Data;->getVectors()Lcom/truecaller/insights/models/categorizerseed/Vectors;

    move-result-object v13

    invoke-virtual {v13}, Lcom/truecaller/insights/models/categorizerseed/Vectors;->getProbabilities()Ljava/util/List;

    move-result-object v13

    .line 15
    new-instance v14, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v13, v15}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 17
    check-cast v15, Lcom/truecaller/insights/models/categorizerseed/Probability;

    .line 18
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v8, Le/a/c/g/y/m;

    invoke-direct {v8, v15}, Le/a/c/g/y/m;-><init>(Lcom/truecaller/insights/models/categorizerseed/Probability;)V

    .line 20
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_5
    new-instance v8, Ls1/o;

    invoke-direct {v8, v12, v0, v14}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    iput-object v7, v3, Le/a/c/g/y/l$c;->g:Ljava/lang/Object;

    iput-object v5, v3, Le/a/c/g/y/l$c;->h:Ljava/lang/Object;

    iput-object v9, v3, Le/a/c/g/y/l$c;->i:Ljava/lang/Object;

    iput-wide v10, v3, Le/a/c/g/y/l$c;->j:J

    iput v6, v3, Le/a/c/g/y/l$c;->e:I

    invoke-virtual {v7, v8, v3}, Le/a/c/g/y/l;->e(Ls1/o;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v0, v4, :cond_6

    return-object v4

    :cond_6
    move-object v13, v5

    move-object v3, v7

    move-object v6, v9

    move-wide v14, v10

    .line 23
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Le/a/c/g/y/l;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v16, v0

    goto :goto_4

    :cond_7
    const/16 v16, -0x1

    :goto_4
    invoke-virtual {v6}, Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;->getData()Lcom/truecaller/insights/models/categorizerseed/Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/insights/models/categorizerseed/Data;->getModelVersion()I

    move-result v17

    move-object v12, v3

    invoke-virtual/range {v12 .. v17}, Le/a/c/g/y/l;->d(Ljava/lang/String;JII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :cond_8
    :try_start_5
    const-string v0, "Valid response cannot have null vectors field"

    .line 24
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_5
    move-object v3, v7

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v3, v1

    .line 25
    :goto_6
    sget-object v4, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    const/4 v5, 0x0

    .line 26
    invoke-virtual {v4, v0, v5}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v3}, Le/a/c/g/y/l;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_7

    :cond_9
    const/4 v8, -0x1

    .line 28
    :goto_7
    invoke-static {}, Le/a/l5/a/f2;->a()Le/a/l5/a/f2$b;

    move-result-object v0

    const-string v4, "on_download_error"

    .line 29
    invoke-virtual {v0, v4}, Le/a/l5/a/f2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/f2$b;

    const-wide/16 v4, 0x0

    .line 30
    invoke-virtual {v0, v4, v5}, Le/a/l5/a/f2$b;->c(J)Le/a/l5/a/f2$b;

    const-string v4, "categorizer"

    .line 31
    invoke-virtual {v0, v4}, Le/a/l5/a/f2$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/f2$b;

    .line 32
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Le/a/l5/a/f2$b;->e(Ljava/lang/CharSequence;)Le/a/l5/a/f2$b;

    const-wide/16 v4, -0x1

    .line 33
    invoke-virtual {v0, v4, v5}, Le/a/l5/a/f2$b;->h(J)Le/a/l5/a/f2$b;

    .line 34
    iget-object v4, v3, Le/a/c/g/y/l;->b:Le/a/c/b/e;

    invoke-interface {v4}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Le/a/l5/a/f2$b;->f(Ljava/lang/CharSequence;)Le/a/l5/a/f2$b;

    const-string v4, "model"

    .line 35
    invoke-virtual {v0, v4}, Le/a/l5/a/f2$b;->g(Ljava/lang/CharSequence;)Le/a/l5/a/f2$b;

    .line 36
    invoke-virtual {v0}, Le/a/l5/a/f2$b;->a()Le/a/l5/a/f2;

    move-result-object v0

    .line 37
    iget-object v3, v3, Le/a/c/g/y/l;->d:Le/a/q2/a;

    const-string v4, "it"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    :cond_a
    :goto_8
    return-object v2
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Le/a/c/g/y/l;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/c/g/y/l;->b()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Le/a/c/g/y/l;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final d(Ljava/lang/String;JII)V
    .locals 1

    .line 1
    invoke-static {}, Le/a/l5/a/f2;->a()Le/a/l5/a/f2$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Le/a/l5/a/f2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/f2$b;

    .line 3
    invoke-virtual {v0, p2, p3}, Le/a/l5/a/f2$b;->c(J)Le/a/l5/a/f2$b;

    const-string p1, "categorizer"

    .line 4
    invoke-virtual {v0, p1}, Le/a/l5/a/f2$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/f2$b;

    .line 5
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/l5/a/f2$b;->e(Ljava/lang/CharSequence;)Le/a/l5/a/f2$b;

    int-to-long p1, p5

    .line 6
    invoke-virtual {v0, p1, p2}, Le/a/l5/a/f2$b;->h(J)Le/a/l5/a/f2$b;

    .line 7
    iget-object p1, p0, Le/a/c/g/y/l;->b:Le/a/c/b/e;

    invoke-interface {p1}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/l5/a/f2$b;->f(Ljava/lang/CharSequence;)Le/a/l5/a/f2$b;

    const-string p1, "model"

    .line 8
    invoke-virtual {v0, p1}, Le/a/l5/a/f2$b;->g(Ljava/lang/CharSequence;)Le/a/l5/a/f2$b;

    .line 9
    invoke-virtual {v0}, Le/a/l5/a/f2$b;->a()Le/a/l5/a/f2;

    move-result-object p1

    .line 10
    iget-object p2, p0, Le/a/c/g/y/l;->d:Le/a/q2/a;

    const-string p3, "it"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public final e(Ls1/o;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/o<",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;+",
            "Ljava/util/List<",
            "+",
            "Le/a/c/g/a0/m;",
            ">;>;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/g/y/l$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/g/y/l$b;

    iget v1, v0, Le/a/c/g/y/l$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/g/y/l$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/g/y/l$b;

    invoke-direct {v0, p0, p2}, Le/a/c/g/y/l$b;-><init>(Le/a/c/g/y/l;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/g/y/l$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/g/y/l$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le/a/c/g/y/l;->b()I

    move-result p2

    .line 5
    iget-object v2, p1, Ls1/o;->a:Ljava/lang/Object;

    .line 6
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ge p2, v2, :cond_3

    .line 7
    iget-object p2, p0, Le/a/c/g/y/l;->c:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/c/g/f;

    iput v3, v0, Le/a/c/g/y/l$b;->e:I

    invoke-interface {p2, p1, v0}, Le/a/c/g/f;->h(Ls1/o;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 8
    :cond_3
    sget-object p1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 9
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "The version from server is lower than the version in client, even after sending the offsetVersion"

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, p2, v0}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 11
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
