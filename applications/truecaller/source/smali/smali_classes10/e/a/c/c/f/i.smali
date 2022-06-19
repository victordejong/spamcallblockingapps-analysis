.class public final Le/a/c/c/f/i;
.super Le/q/e/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/q/e/a/c<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Le/a/c/c/f/g;

.field public final f:Le/a/c/r/h/b;

.field public final g:Le/a/c/c/f/n;

.field public final h:Le/a/c/c0/o;

.field public final i:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/c/f/g;Le/a/c/r/h/b;Le/a/c/c/f/n;Le/a/c/c0/o;Ls1/w/f;)V
    .locals 1
    .param p5    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param

    const-string v0, "enrichmentUseCases"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsBinder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateUseCases"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightConfig"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/q/e/a/c;-><init>()V

    iput-object p1, p0, Le/a/c/c/f/i;->e:Le/a/c/c/f/g;

    iput-object p2, p0, Le/a/c/c/f/i;->f:Le/a/c/r/h/b;

    iput-object p3, p0, Le/a/c/c/f/i;->g:Le/a/c/c/f/n;

    iput-object p4, p0, Le/a/c/c/f/i;->h:Le/a/c/c0/o;

    iput-object p5, p0, Le/a/c/c/f/i;->i:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public f(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Le/q/e/b/a$c<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/f/i;->i:Ls1/w/f;

    new-instance v1, Le/a/c/c/f/i$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/c/c/f/i$b;-><init>(Le/a/c/c/f/i;Ljava/util/HashMap;Ls1/w/d;)V

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->b3(Ls1/w/f;Ls1/z/b/p;)Ljava/lang/Object;

    return-void
.end method

.method public final g(JLe/q/e/b/a$c;Ls1/w/d;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Le/q/e/b/a$c<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Le/a/c/c/f/i$a;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/c/c/f/i$a;

    iget v2, v1, Le/a/c/c/f/i$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/c/c/f/i$a;->e:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/c/c/f/i$a;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Le/a/c/c/f/i$a;-><init>(Le/a/c/c/f/i;Ls1/w/d;)V

    :goto_0
    iget-object v0, v1, Le/a/c/c/f/i$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v1, Le/a/c/c/f/i$a;->e:I

    const-string v5, "child"

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    iget-wide v7, v1, Le/a/c/c/f/i$a;->k:J

    iget-object v4, v1, Le/a/c/c/f/i$a;->j:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v9, v1, Le/a/c/c/f/i$a;->i:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    iget-object v10, v1, Le/a/c/c/f/i$a;->h:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v1, Le/a/c/c/f/i$a;->g:Ljava/lang/Object;

    check-cast v11, Le/a/c/c/f/i;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v13, v5

    move-object v14, v10

    move-object v15, v11

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    goto :goto_2

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v4, p3

    .line 5
    iget-object v4, v4, Le/q/e/b/a$c;->a:Ljava/util/List;

    .line 6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v14, v0

    move-object v15, v2

    move-object v13, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-wide/from16 v0, p1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Ljava/lang/Long;

    .line 7
    iget-object v7, v15, Le/a/c/c/f/i;->e:Le/a/c/c/f/g;

    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-object v15, v3, Le/a/c/c/f/i$a;->g:Ljava/lang/Object;

    iput-object v14, v3, Le/a/c/c/f/i$a;->h:Ljava/lang/Object;

    iput-object v12, v3, Le/a/c/c/f/i$a;->i:Ljava/lang/Object;

    iput-object v5, v3, Le/a/c/c/f/i$a;->j:Ljava/lang/Object;

    iput-wide v0, v3, Le/a/c/c/f/i$a;->k:J

    iput v6, v3, Le/a/c/c/f/i$a;->e:I

    move-wide v8, v0

    move-object/from16 v16, v12

    move-object v12, v3

    invoke-interface/range {v7 .. v12}, Le/a/c/c/f/g;->k(JJLs1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_3

    return-object v4

    :cond_3
    move-object/from16 v9, v16

    move-wide/from16 v17, v0

    move-object v0, v7

    move-wide/from16 v7, v17

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    invoke-static {v9, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move-wide v0, v7

    goto :goto_1

    .line 9
    :cond_5
    invoke-static {v14}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final h(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/util/List;ILjava/util/Set;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Le/a/c/c/f/i$c;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Le/a/c/c/f/i$c;

    iget v1, v0, Le/a/c/c/f/i$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/c/f/i$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/c/f/i$c;

    invoke-direct {v0, p0, p5}, Le/a/c/c/f/i$c;-><init>(Le/a/c/c/f/i;Ls1/w/d;)V

    :goto_0
    iget-object p5, v0, Le/a/c/c/f/i$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/c/f/i$c;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/c/c/f/i$c;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p2, v0, Le/a/c/c/f/i$c;->g:Ljava/lang/Object;

    check-cast p2, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget p3, v0, Le/a/c/c/f/i$c;->j:I

    iget-object p1, v0, Le/a/c/c/f/i$c;->i:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/util/List;

    iget-object p1, v0, Le/a/c/c/f/i$c;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    iget-object p4, v0, Le/a/c/c/f/i$c;->g:Ljava/lang/Object;

    check-cast p4, Le/a/c/c/f/i;

    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Le/a/c/c/f/i$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/c/f/i$c;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/c/f/i$c;->i:Ljava/lang/Object;

    iput p3, v0, Le/a/c/c/f/i$c;->j:I

    iput v4, v0, Le/a/c/c/f/i$c;->e:I

    .line 5
    iget-object p5, p0, Le/a/c/c/f/i;->e:Le/a/c/c/f/g;

    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {p2, v2}, Ls1/u/i;->f1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 8
    check-cast v5, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 9
    invoke-virtual {v5}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getSyntheticRecordId()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 10
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_5
    invoke-static {v4, p4}, Ls1/u/i;->f1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p4

    .line 12
    invoke-interface {p5, p4, v0}, Le/a/c/c/f/g;->p(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_6

    return-object v1

    :cond_6
    move-object p4, p0

    .line 13
    :goto_2
    check-cast p5, Ljava/util/List;

    .line 14
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 15
    new-instance p5, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    invoke-direct {p5}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;-><init>()V

    .line 16
    iget-object v2, p4, Le/a/c/c/f/i;->h:Le/a/c/c0/o;

    invoke-interface {v2}, Le/a/c/c0/o;->G()J

    move-result-wide v4

    invoke-virtual {p5, v4, v5}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMessageID(J)V

    .line 17
    invoke-virtual {p4, p5, p1, p2, p3}, Le/a/c/c/f/i;->k(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/util/List;I)V

    .line 18
    iget-object p3, p4, Le/a/c/c/f/i;->e:Le/a/c/c/f/g;

    iput-object p1, v0, Le/a/c/c/f/i$c;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/c/f/i$c;->h:Ljava/lang/Object;

    const/4 p4, 0x0

    iput-object p4, v0, Le/a/c/c/f/i$c;->i:Ljava/lang/Object;

    iput v3, v0, Le/a/c/c/f/i$c;->e:I

    invoke-interface {p3, p5, v0}, Le/a/c/c/f/g;->d(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_7

    return-object v1

    :cond_7
    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :goto_3
    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->longValue()J

    move-result-wide p3

    .line 19
    new-instance p5, Ljava/lang/Long;

    invoke-direct {p5, p3, p4}, Ljava/lang/Long;-><init>(J)V

    .line 20
    invoke-virtual {p5}, Ljava/lang/Number;->longValue()J

    move-result-wide p3

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_4

    .line 21
    :cond_8
    invoke-static {p5}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p5

    .line 22
    check-cast p5, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    invoke-virtual {p4, p5, p1, p2, p3}, Le/a/c/c/f/i;->k(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/util/List;I)V

    .line 23
    invoke-virtual {p5}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide p3

    .line 24
    new-instance p5, Ljava/lang/Long;

    invoke-direct {p5, p3, p4}, Ljava/lang/Long;-><init>(J)V

    .line 25
    invoke-virtual {p5}, Ljava/lang/Number;->longValue()J

    move-result-wide p3

    .line 26
    :goto_4
    new-instance p5, Ljava/lang/Long;

    invoke-direct {p5, p3, p4}, Ljava/lang/Long;-><init>(J)V

    .line 27
    invoke-virtual {p1, p5}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSyntheticRecordId(Ljava/lang/Long;)V

    .line 28
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 29
    new-instance p5, Ljava/lang/Long;

    invoke-direct {p5, p3, p4}, Ljava/lang/Long;-><init>(J)V

    .line 30
    invoke-virtual {p2, p5}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSyntheticRecordId(Ljava/lang/Long;)V

    goto :goto_5

    .line 31
    :cond_9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final i(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/util/List;ILjava/util/Set;Ls1/w/d;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v0, p5

    instance-of v1, v0, Le/a/c/c/f/i$d;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/c/c/f/i$d;

    iget v2, v1, Le/a/c/c/f/i$d;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/c/c/f/i$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/c/c/f/i$d;

    invoke-direct {v1, v6, v0}, Le/a/c/c/f/i$d;-><init>(Le/a/c/c/f/i;Ls1/w/d;)V

    :goto_0
    move-object v9, v1

    iget-object v0, v9, Le/a/c/c/f/i$d;->d:Ljava/lang/Object;

    sget-object v10, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v9, Le/a/c/c/f/i$d;->e:I

    const/4 v2, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v12, :cond_2

    if-eq v1, v2, :cond_2

    if-ne v1, v11, :cond_1

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v1, v9, Le/a/c/c/f/i$d;->i:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v9, Le/a/c/c/f/i$d;->h:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    iget-object v3, v9, Le/a/c/c/f/i$d;->g:Ljava/lang/Object;

    check-cast v3, Le/a/c/c/f/i;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bank"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 8
    move-object v4, v5

    check-cast v4, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 9
    iget-object v0, v6, Le/a/c/c/f/i;->f:Le/a/c/r/h/b;

    const-string v1, "model"

    .line 10
    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "insightsBinder"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v3, v6, Le/a/c/c/f/i;->f:Le/a/c/r/h/b;

    .line 12
    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {v0, v7}, Le/a/c/r/h/b;->c(Lcom/truecaller/insights/models/pdo/ParsedDataObject;)Le/a/c/r/h/h;

    move-result-object v1

    invoke-virtual {v1}, Le/a/c/r/h/h;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GRM_BANK"

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "trx_type"

    .line 16
    invoke-interface {v0}, Le/a/c/r/h/b;->getBinder()Lcom/truecaller/insights/models/pdo/PdoBinderType;

    move-result-object v1

    .line 17
    instance-of v1, v1, Lcom/truecaller/insights/models/pdo/PdoBinderType$PdoBinder;

    const-string v16, ""

    if-eqz v1, :cond_4

    const/16 v17, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object/from16 v1, p1

    move-object v11, v2

    move-object/from16 v2, v18

    move-object/from16 v21, v3

    move/from16 v3, v17

    move-object/from16 v17, v4

    move/from16 v4, v19

    move-object v12, v5

    move-object/from16 v5, v20

    .line 18
    invoke-static/range {v0 .. v5}, Le/a/c/p/a;->u3(Le/a/c/r/h/b;Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v11, v2

    move-object/from16 v21, v3

    move-object/from16 v17, v4

    move-object v12, v5

    move-object/from16 v0, v16

    .line 19
    :goto_2
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-interface/range {v21 .. v21}, Le/a/c/r/h/b;->getBinder()Lcom/truecaller/insights/models/pdo/PdoBinderType;

    move-result-object v0

    .line 21
    instance-of v0, v0, Lcom/truecaller/insights/models/pdo/PdoBinderType$PdoBinder;

    if-eqz v0, :cond_5

    const/16 v19, 0x0

    const/16 v20, 0x4

    const/4 v0, 0x0

    move-object/from16 v16, v21

    move-object/from16 v21, v0

    .line 22
    invoke-static/range {v16 .. v21}, Le/a/c/p/a;->u3(Le/a/c/r/h/b;Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    :cond_5
    move-object/from16 v0, v16

    .line 23
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "creditdebit"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "debitcredit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    move-object v12, v5

    :goto_3
    const/4 v0, 0x1

    .line 25
    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 28
    :cond_8
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    const/4 v11, 0x3

    const/4 v12, 0x1

    goto/16 :goto_1

    .line 29
    :cond_9
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_d

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DUPLICATE"

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const-string v1, "SELF_TRANSFER"

    if-eqz v0, :cond_a

    move-object v0, v1

    goto :goto_6

    :cond_a
    move-object v0, v2

    :goto_6
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setState(Ljava/lang/String;)V

    .line 31
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 32
    invoke-virtual {v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_b

    move-object v4, v1

    goto :goto_8

    :cond_b
    move-object v4, v2

    :goto_8
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setState(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    const/4 v5, 0x1

    goto :goto_9

    :cond_d
    move v5, v1

    .line 33
    :goto_9
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v5

    if-eqz v0, :cond_f

    .line 34
    iput-object v6, v9, Le/a/c/c/f/i$d;->g:Ljava/lang/Object;

    iput-object v7, v9, Le/a/c/c/f/i$d;->h:Ljava/lang/Object;

    iput-object v8, v9, Le/a/c/c/f/i$d;->i:Ljava/lang/Object;

    iput v5, v9, Le/a/c/c/f/i$d;->e:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Le/a/c/c/f/i;->h(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/util/List;ILjava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_f

    return-object v10

    .line 35
    :cond_e
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 36
    iput-object v6, v9, Le/a/c/c/f/i$d;->g:Ljava/lang/Object;

    iput-object v7, v9, Le/a/c/c/f/i$d;->h:Ljava/lang/Object;

    iput-object v8, v9, Le/a/c/c/f/i$d;->i:Ljava/lang/Object;

    iput v2, v9, Le/a/c/c/f/i$d;->e:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Le/a/c/c/f/i;->h(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/util/List;ILjava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_f

    return-object v10

    :cond_f
    move-object v3, v6

    move-object v2, v7

    move-object v1, v8

    .line 37
    :goto_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    invoke-virtual {v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    .line 38
    iget-object v0, v3, Le/a/c/c/f/i;->e:Le/a/c/c/f/g;

    const/4 v3, 0x0

    iput-object v3, v9, Le/a/c/c/f/i$d;->g:Ljava/lang/Object;

    iput-object v3, v9, Le/a/c/c/f/i$d;->h:Ljava/lang/Object;

    iput-object v3, v9, Le/a/c/c/f/i$d;->i:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v9, Le/a/c/c/f/i$d;->e:I

    invoke-interface {v0, v2, v1, v9}, Le/a/c/c/f/g;->j(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_10

    return-object v10

    .line 39
    :cond_10
    :goto_b
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method

.method public final j(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Lcom/truecaller/insights/models/pdo/ParsedDataObject;I)V
    .locals 9

    const-string v0, "parent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upi"

    const-string v1, ""

    const-string v2, "trx_subcategory"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, p3, :cond_1

    .line 1
    iget-object v6, p0, Le/a/c/c/f/i;->f:Le/a/c/r/h/b;

    invoke-interface {v6, p1, v2, v1}, Le/a/c/r/h/b;->f(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2
    iget-object v7, p0, Le/a/c/c/f/i;->f:Le/a/c/r/h/b;

    invoke-interface {v7, p2, v2, v1}, Le/a/c/r/h/b;->f(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3
    invoke-static {v6, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v8, "vendor"

    if-eqz v6, :cond_0

    .line 4
    iget-object v6, p0, Le/a/c/c/f/i;->f:Le/a/c/r/h/b;

    invoke-interface {v6, p2, v8, v1}, Le/a/c/r/h/b;->f(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Le/a/c/c/f/i;->f:Le/a/c/r/h/b;

    invoke-interface {v7, p1, v8, v1}, Le/a/c/r/h/b;->f(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-virtual {p0, v6, v7}, Le/a/c/c/f/i;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {v7, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7
    iget-object v6, p0, Le/a/c/c/f/i;->f:Le/a/c/r/h/b;

    invoke-interface {v6, p1, v8, v1}, Le/a/c/r/h/b;->f(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Le/a/c/c/f/i;->f:Le/a/c/r/h/b;

    invoke-interface {v7, p2, v8, v1}, Le/a/c/r/h/b;->f(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {p0, v6, v7}, Le/a/c/c/f/i;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getS()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    move v6, v5

    goto :goto_0

    :cond_2
    move v6, v4

    :goto_0
    if-eqz v6, :cond_3

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getS()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getS()Ljava/lang/String;

    move-result-object v6

    .line 10
    :goto_1
    invoke-virtual {p1, v6}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setS(Ljava/lang/String;)V

    if-ne v3, p3, :cond_5

    .line 11
    iget-object p3, p0, Le/a/c/c/f/i;->f:Le/a/c/r/h/b;

    invoke-interface {p3, p1, v2, v1}, Le/a/c/r/h/b;->f(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 12
    iget-object v3, p0, Le/a/c/c/f/i;->f:Le/a/c/r/h/b;

    invoke-interface {v3, p2, v2, v1}, Le/a/c/r/h/b;->f(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {p3, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    const-string v3, "vendor_norm"

    if-eqz p3, :cond_4

    .line 14
    iget-object p3, p0, Le/a/c/c/f/i;->f:Le/a/c/r/h/b;

    invoke-interface {p3, p2, v3, v1}, Le/a/c/r/h/b;->f(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Le/a/c/c/f/i;->f:Le/a/c/r/h/b;

    invoke-interface {v0, p1, v3, v1}, Le/a/c/r/h/b;->f(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p0, p3, v0}, Le/a/c/c/f/i;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    .line 16
    :cond_4
    invoke-static {v2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 17
    iget-object p3, p0, Le/a/c/c/f/i;->f:Le/a/c/r/h/b;

    invoke-interface {p3, p1, v3, v1}, Le/a/c/r/h/b;->f(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Le/a/c/c/f/i;->f:Le/a/c/r/h/b;

    invoke-interface {v0, p2, v3, v1}, Le/a/c/r/h/b;->f(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {p0, p3, v0}, Le/a/c/c/f/i;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    .line 19
    :cond_5
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal2()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_6

    move p3, v5

    goto :goto_2

    :cond_6
    move p3, v4

    :goto_2
    if-eqz p3, :cond_7

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal2()Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal2()Ljava/lang/String;

    move-result-object p3

    .line 20
    :goto_3
    invoke-virtual {p1, p3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal2(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_8

    move p3, v5

    goto :goto_4

    :cond_8
    move p3, v4

    :goto_4
    if-eqz p3, :cond_9

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setD(Ljava/lang/String;)V

    .line 22
    :cond_9
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getK()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_a

    move p3, v5

    goto :goto_5

    :cond_a
    move p3, v4

    :goto_5
    if-eqz p3, :cond_b

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getK()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setK(Ljava/lang/String;)V

    .line 23
    :cond_b
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getP()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_c

    move p3, v5

    goto :goto_6

    :cond_c
    move p3, v4

    :goto_6
    if-eqz p3, :cond_d

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getP()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setP(Ljava/lang/String;)V

    .line 24
    :cond_d
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getC()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_e

    move p3, v5

    goto :goto_7

    :cond_e
    move p3, v4

    :goto_7
    if-eqz p3, :cond_f

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getC()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setC(Ljava/lang/String;)V

    .line 25
    :cond_f
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getO()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_10

    move p3, v5

    goto :goto_8

    :cond_10
    move p3, v4

    :goto_8
    if-eqz p3, :cond_11

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getO()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setO(Ljava/lang/String;)V

    .line 26
    :cond_11
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getF()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_12

    move p3, v5

    goto :goto_9

    :cond_12
    move p3, v4

    :goto_9
    if-eqz p3, :cond_13

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getF()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setF(Ljava/lang/String;)V

    .line 27
    :cond_13
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getG()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_14

    move p3, v5

    goto :goto_a

    :cond_14
    move p3, v4

    :goto_a
    if-eqz p3, :cond_15

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getG()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setG(Ljava/lang/String;)V

    .line 28
    :cond_15
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal1()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_16

    move p3, v5

    goto :goto_b

    :cond_16
    move p3, v4

    :goto_b
    if-eqz p3, :cond_17

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal1()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal1(Ljava/lang/String;)V

    .line 29
    :cond_17
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal2()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_18

    move p3, v5

    goto :goto_c

    :cond_18
    move p3, v4

    :goto_c
    if-eqz p3, :cond_19

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal2()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal2(Ljava/lang/String;)V

    .line 30
    :cond_19
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal3()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_1a

    move p3, v5

    goto :goto_d

    :cond_1a
    move p3, v4

    :goto_d
    if-eqz p3, :cond_1b

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal3()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal3(Ljava/lang/String;)V

    .line 31
    :cond_1b
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal4()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_1c

    move p3, v5

    goto :goto_e

    :cond_1c
    move p3, v4

    :goto_e
    if-eqz p3, :cond_1d

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal4()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal4(Ljava/lang/String;)V

    .line 32
    :cond_1d
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal5()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_1e

    move p3, v5

    goto :goto_f

    :cond_1e
    move p3, v4

    :goto_f
    if-eqz p3, :cond_1f

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal5()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal5(Ljava/lang/String;)V

    .line 33
    :cond_1f
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDatetime()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_20

    move p3, v5

    goto :goto_10

    :cond_20
    move p3, v4

    :goto_10
    if-eqz p3, :cond_21

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDatetime()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDatetime(Ljava/lang/String;)V

    .line 34
    :cond_21
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_22

    move p3, v5

    goto :goto_11

    :cond_22
    move p3, v4

    :goto_11
    if-eqz p3, :cond_23

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAddress(Ljava/lang/String;)V

    .line 35
    :cond_23
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMsgDate()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_24

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMsgDate()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMsgDate(Ljava/util/Date;)V

    .line 36
    :cond_24
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDate()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_25

    move p3, v5

    goto :goto_12

    :cond_25
    move p3, v4

    :goto_12
    if-eqz p3, :cond_26

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDate()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDate(Ljava/lang/String;)V

    .line 37
    :cond_26
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal1()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_27

    move p3, v5

    goto :goto_13

    :cond_27
    move p3, v4

    :goto_13
    if-eqz p3, :cond_28

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal1()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal1(Ljava/lang/String;)V

    .line 38
    :cond_28
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal3()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_29

    move p3, v5

    goto :goto_14

    :cond_29
    move p3, v4

    :goto_14
    if-eqz p3, :cond_2a

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal3()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal3(Ljava/lang/String;)V

    .line 39
    :cond_2a
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal4()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_2b

    move p3, v5

    goto :goto_15

    :cond_2b
    move p3, v4

    :goto_15
    if-eqz p3, :cond_2c

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal4()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal4(Ljava/lang/String;)V

    .line 40
    :cond_2c
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal5()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_2d

    move v4, v5

    :cond_2d
    if-eqz v4, :cond_2e

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal5()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal5(Ljava/lang/String;)V

    .line 41
    :cond_2e
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getSpamCategory()I

    move-result p3

    if-eq p3, v5, :cond_2f

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getSpamCategory()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSpamCategory(I)V

    .line 42
    :cond_2f
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAccountModelId()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAccountModelId(Ljava/lang/Long;)V

    :cond_30
    return-void
.end method

.method public final k(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p4}, Le/a/c/c/f/i;->j(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Lcom/truecaller/insights/models/pdo/ParsedDataObject;I)V

    .line 2
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "SYNTHETIC"

    const-string v3, "MERGED"

    const-string v4, "SELF_TRANSFER"

    const-string v5, "MERGED_SELF_TRANSFER"

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 3
    invoke-virtual {p0, p1, v1, p4}, Le/a/c/c/f/i;->j(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Lcom/truecaller/insights/models/pdo/ParsedDataObject;I)V

    .line 4
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v3

    goto :goto_2

    :cond_2
    :goto_1
    move-object v6, v5

    :goto_2
    invoke-virtual {p2, v6}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setState(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    move-object v6, v3

    goto :goto_4

    :cond_4
    :goto_3
    move-object v6, v5

    :goto_4
    invoke-virtual {v1, v6}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setState(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const-string v2, "SYNTHETIC_SELF_TRANSFER"

    :cond_6
    invoke-virtual {p1, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setState(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_7

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 8
    :cond_7
    invoke-virtual {p2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setActive(Z)V

    .line 9
    :cond_8
    invoke-virtual {v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    :cond_9
    invoke-virtual {v1, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setActive(Z)V

    goto/16 :goto_0

    .line 11
    :cond_a
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_d

    .line 12
    invoke-virtual {p1, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setState(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getState()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getState()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    move-object v3, v5

    :cond_c
    invoke-virtual {p2, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setState(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public final m(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/util/List;ILjava/util/Set;Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Date;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p6, Le/a/c/c/f/i$e;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Le/a/c/c/f/i$e;

    iget v1, v0, Le/a/c/c/f/i$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/c/f/i$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/c/f/i$e;

    invoke-direct {v0, p0, p6}, Le/a/c/c/f/i$e;-><init>(Le/a/c/c/f/i;Ls1/w/d;)V

    :goto_0
    move-object v6, v0

    iget-object p6, v6, Le/a/c/c/f/i$e;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v6, Le/a/c/c/f/i$e;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v6, Le/a/c/c/f/i$e;->i:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p2, v6, Le/a/c/c/f/i$e;->h:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    iget-object p3, v6, Le/a/c/c/f/i$e;->g:Ljava/lang/Object;

    check-cast p3, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    invoke-static {p6}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p6}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    const/4 v3, 0x0

    if-eq p3, v1, :cond_3

    goto/16 :goto_4

    .line 5
    :cond_3
    invoke-static {p2, p1}, Ls1/u/i;->m0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const-string v5, "Bank"

    if-eqz v4, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 8
    invoke-virtual {v7}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v2

    if-eqz v7, :cond_5

    move v4, v2

    goto :goto_2

    :cond_6
    :goto_1
    move v4, v3

    :goto_2
    if-eqz v4, :cond_7

    goto :goto_5

    .line 9
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    .line 10
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 11
    invoke-virtual {v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getP()Ljava/lang/String;

    move-result-object v7

    const-string v8, "upi"

    invoke-static {v7, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v2

    goto :goto_3

    :cond_a
    move v4, v3

    :goto_3
    if-eqz v4, :cond_9

    :goto_4
    move v1, v2

    goto :goto_6

    :cond_b
    :goto_5
    move v1, v3

    :goto_6
    if-eqz v1, :cond_11

    .line 12
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 14
    invoke-virtual {v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getCreatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    if-lez v4, :cond_d

    move v4, v2

    goto :goto_8

    :cond_d
    move v4, v3

    .line 15
    :goto_8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 16
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 17
    :cond_e
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v2

    if-nez p2, :cond_f

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getCreatedAt()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p2

    if-lez p2, :cond_11

    .line 18
    :cond_f
    invoke-static {p4}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    iput-object p1, v6, Le/a/c/c/f/i$e;->g:Ljava/lang/Object;

    iput-object p6, v6, Le/a/c/c/f/i$e;->h:Ljava/lang/Object;

    iput-object v7, v6, Le/a/c/c/f/i$e;->i:Ljava/lang/Object;

    iput v2, v6, Le/a/c/c/f/i$e;->e:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Le/a/c/c/f/i;->i(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/util/List;ILjava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_10

    return-object v0

    :cond_10
    move-object p3, p1

    move-object p2, p6

    move-object p1, v7

    .line 19
    :goto_9
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p6, p2

    :cond_11
    return-object p6
.end method
