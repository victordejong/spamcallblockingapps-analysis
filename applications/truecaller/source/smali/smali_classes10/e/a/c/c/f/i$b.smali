.class public final Le/a/c/c/f/i$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/f/i;->f(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.database.usecases.HardLinkUseCases$handleLinkedIds$1"
    f = "HardLinkUseCases.kt"
    l = {
        0x26,
        0x2d,
        0x2f,
        0x30,
        0x31,
        0x3b,
        0x41
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:J

.field public l:I

.field public final synthetic m:Le/a/c/c/f/i;

.field public final synthetic n:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Le/a/c/c/f/i;Ljava/util/HashMap;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/c/f/i$b;->m:Le/a/c/c/f/i;

    iput-object p2, p0, Le/a/c/c/f/i$b;->n:Ljava/util/HashMap;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/c/f/i$b;

    iget-object v0, p0, Le/a/c/c/f/i$b;->m:Le/a/c/c/f/i;

    iget-object v1, p0, Le/a/c/c/f/i$b;->n:Ljava/util/HashMap;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/c/f/i$b;-><init>(Le/a/c/c/f/i;Ljava/util/HashMap;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/c/f/i$b;

    iget-object v0, p0, Le/a/c/c/f/i$b;->m:Le/a/c/c/f/i;

    iget-object v1, p0, Le/a/c/c/f/i$b;->n:Ljava/util/HashMap;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/c/f/i$b;-><init>(Le/a/c/c/f/i;Ljava/util/HashMap;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/c/f/i$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/c/f/i$b;->l:I

    const-string v3, "childrenIds.linkingIds"

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :pswitch_0
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object v2, v0, Le/a/c/c/f/i$b;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v6, v0, Le/a/c/c/f/i$b;->g:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, v0, Le/a/c/c/f/i$b;->f:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v8, v0, Le/a/c/c/f/i$b;->e:Ljava/lang/Object;

    check-cast v8, Lcom/truecaller/insights/models/states/InsightState;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v9, v7

    move-object v10, v8

    move-object/from16 v8, p1

    move-object v7, v0

    goto/16 :goto_6

    :pswitch_2
    iget-object v2, v0, Le/a/c/c/f/i$b;->j:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    iget-object v6, v0, Le/a/c/c/f/i$b;->i:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v7, v0, Le/a/c/c/f/i$b;->h:Ljava/lang/Object;

    check-cast v7, Le/q/e/b/a$c;

    iget-object v8, v0, Le/a/c/c/f/i$b;->g:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v0, Le/a/c/c/f/i$b;->f:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v0, Le/a/c/c/f/i$b;->e:Ljava/lang/Object;

    check-cast v10, Lcom/truecaller/insights/models/states/InsightState;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v13, v6

    move-object v15, v10

    move-object v6, v0

    move-object v10, v7

    move-object v7, v8

    move-object/from16 v8, p1

    goto/16 :goto_5

    :pswitch_3
    iget-object v2, v0, Le/a/c/c/f/i$b;->j:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v6, v0, Le/a/c/c/f/i$b;->i:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v7, v0, Le/a/c/c/f/i$b;->h:Ljava/lang/Object;

    check-cast v7, Le/q/e/b/a$c;

    iget-object v8, v0, Le/a/c/c/f/i$b;->g:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v0, Le/a/c/c/f/i$b;->f:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v0, Le/a/c/c/f/i$b;->e:Ljava/lang/Object;

    check-cast v10, Lcom/truecaller/insights/models/states/InsightState;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v13, v2

    move-object v11, v9

    move-object v2, v0

    move-object v9, v8

    move-object v8, v6

    move-object/from16 v6, p1

    goto/16 :goto_4

    :pswitch_4
    iget-wide v6, v0, Le/a/c/c/f/i$b;->k:J

    iget-object v2, v0, Le/a/c/c/f/i$b;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v8, v0, Le/a/c/c/f/i$b;->h:Ljava/lang/Object;

    check-cast v8, Le/q/e/b/a$c;

    iget-object v9, v0, Le/a/c/c/f/i$b;->g:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v0, Le/a/c/c/f/i$b;->f:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v0, Le/a/c/c/f/i$b;->e:Ljava/lang/Object;

    check-cast v11, Lcom/truecaller/insights/models/states/InsightState;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v13, p1

    move-object v12, v11

    move-object v11, v10

    move-object v10, v8

    move-object v8, v2

    move-object v2, v0

    goto/16 :goto_3

    :pswitch_5
    iget-wide v6, v0, Le/a/c/c/f/i$b;->k:J

    iget-object v2, v0, Le/a/c/c/f/i$b;->h:Ljava/lang/Object;

    check-cast v2, Le/q/e/b/a$c;

    iget-object v8, v0, Le/a/c/c/f/i$b;->g:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v0, Le/a/c/c/f/i$b;->f:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v0, Le/a/c/c/f/i$b;->e:Ljava/lang/Object;

    check-cast v10, Lcom/truecaller/insights/models/states/InsightState;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-wide v11, v6

    move-object/from16 v7, p1

    move-object v6, v2

    move-object v2, v0

    goto/16 :goto_2

    :pswitch_6
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :pswitch_7
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/c/c/f/i$b;->n:Ljava/util/HashMap;

    if-eqz v2, :cond_9

    .line 5
    iget-object v2, v0, Le/a/c/c/f/i$b;->m:Le/a/c/c/f/i;

    .line 6
    iget-object v2, v2, Le/a/c/c/f/i;->g:Le/a/c/c/f/n;

    .line 7
    iput v4, v0, Le/a/c/c/f/i$b;->l:I

    const-string v6, "INSIGHTS.LINKING"

    invoke-interface {v2, v6, v0}, Le/a/c/c/f/n;->q(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_0

    return-object v1

    .line 8
    :cond_0
    :goto_0
    check-cast v2, Lcom/truecaller/insights/models/states/InsightState;

    .line 9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v7, v0, Le/a/c/c/f/i$b;->n:Ljava/util/HashMap;

    invoke-static {v7}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 11
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v10, v2

    move-object v9, v6

    move-object v8, v7

    move-object v2, v0

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/q/e/b/a$c;

    .line 12
    iget-object v7, v6, Le/q/e/b/a$c;->a:Ljava/util/List;

    .line 13
    invoke-static {v7, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v4

    if-eqz v7, :cond_2

    .line 14
    iget-object v7, v6, Le/q/e/b/a$c;->a:Ljava/util/List;

    .line 15
    new-instance v13, Ljava/lang/Long;

    invoke-direct {v13, v11, v12}, Ljava/lang/Long;-><init>(J)V

    .line 16
    invoke-interface {v7, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 17
    iget-object v7, v6, Le/q/e/b/a$c;->a:Ljava/util/List;

    .line 18
    new-instance v13, Ljava/lang/Long;

    invoke-direct {v13, v11, v12}, Ljava/lang/Long;-><init>(J)V

    .line 19
    invoke-interface {v7, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 20
    :cond_2
    iget-object v7, v2, Le/a/c/c/f/i$b;->m:Le/a/c/c/f/i;

    iput-object v10, v2, Le/a/c/c/f/i$b;->e:Ljava/lang/Object;

    iput-object v9, v2, Le/a/c/c/f/i$b;->f:Ljava/lang/Object;

    iput-object v8, v2, Le/a/c/c/f/i$b;->g:Ljava/lang/Object;

    iput-object v6, v2, Le/a/c/c/f/i$b;->h:Ljava/lang/Object;

    iput-wide v11, v2, Le/a/c/c/f/i$b;->k:J

    const/4 v13, 0x2

    iput v13, v2, Le/a/c/c/f/i$b;->l:I

    invoke-virtual {v7, v11, v12, v6, v2}, Le/a/c/c/f/i;->g(JLe/q/e/b/a$c;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_3

    return-object v1

    .line 21
    :cond_3
    :goto_2
    check-cast v7, Ljava/util/List;

    .line 22
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    xor-int/2addr v13, v4

    if-eqz v13, :cond_1

    .line 23
    iget-object v13, v2, Le/a/c/c/f/i$b;->m:Le/a/c/c/f/i;

    .line 24
    iget-object v13, v13, Le/a/c/c/f/i;->e:Le/a/c/c/f/g;

    .line 25
    iget-object v14, v6, Le/q/e/b/a$c;->a:Ljava/util/List;

    .line 26
    invoke-static {v14, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v10, v2, Le/a/c/c/f/i$b;->e:Ljava/lang/Object;

    iput-object v9, v2, Le/a/c/c/f/i$b;->f:Ljava/lang/Object;

    iput-object v8, v2, Le/a/c/c/f/i$b;->g:Ljava/lang/Object;

    iput-object v6, v2, Le/a/c/c/f/i$b;->h:Ljava/lang/Object;

    iput-object v7, v2, Le/a/c/c/f/i$b;->i:Ljava/lang/Object;

    iput-wide v11, v2, Le/a/c/c/f/i$b;->k:J

    const/4 v15, 0x3

    iput v15, v2, Le/a/c/c/f/i$b;->l:I

    invoke-interface {v13, v14, v2}, Le/a/c/c/f/g;->g(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v1, :cond_4

    return-object v1

    :cond_4
    move-object/from16 v17, v10

    move-object v10, v6

    move-object/from16 v18, v8

    move-object v8, v7

    move-wide v6, v11

    move-object v11, v9

    move-object/from16 v12, v17

    move-object/from16 v9, v18

    .line 27
    :goto_3
    check-cast v13, Ljava/util/List;

    .line 28
    iget-object v14, v2, Le/a/c/c/f/i$b;->m:Le/a/c/c/f/i;

    .line 29
    iget-object v14, v14, Le/a/c/c/f/i;->e:Le/a/c/c/f/g;

    .line 30
    iput-object v12, v2, Le/a/c/c/f/i$b;->e:Ljava/lang/Object;

    iput-object v11, v2, Le/a/c/c/f/i$b;->f:Ljava/lang/Object;

    iput-object v9, v2, Le/a/c/c/f/i$b;->g:Ljava/lang/Object;

    iput-object v10, v2, Le/a/c/c/f/i$b;->h:Ljava/lang/Object;

    iput-object v8, v2, Le/a/c/c/f/i$b;->i:Ljava/lang/Object;

    iput-object v13, v2, Le/a/c/c/f/i$b;->j:Ljava/lang/Object;

    const/4 v15, 0x4

    iput v15, v2, Le/a/c/c/f/i$b;->l:I

    invoke-interface {v14, v6, v7, v2}, Le/a/c/c/f/g;->h(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_5

    return-object v1

    :cond_5
    move-object v7, v10

    move-object v10, v12

    .line 31
    :goto_4
    check-cast v6, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 32
    iget-object v12, v2, Le/a/c/c/f/i$b;->m:Le/a/c/c/f/i;

    .line 33
    iget-object v12, v12, Le/a/c/c/f/i;->e:Le/a/c/c/f/g;

    .line 34
    iput-object v10, v2, Le/a/c/c/f/i$b;->e:Ljava/lang/Object;

    iput-object v11, v2, Le/a/c/c/f/i$b;->f:Ljava/lang/Object;

    iput-object v9, v2, Le/a/c/c/f/i$b;->g:Ljava/lang/Object;

    iput-object v7, v2, Le/a/c/c/f/i$b;->h:Ljava/lang/Object;

    iput-object v13, v2, Le/a/c/c/f/i$b;->i:Ljava/lang/Object;

    iput-object v6, v2, Le/a/c/c/f/i$b;->j:Ljava/lang/Object;

    const/4 v14, 0x5

    iput v14, v2, Le/a/c/c/f/i$b;->l:I

    invoke-interface {v12, v8, v2}, Le/a/c/c/f/g;->c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_6

    return-object v1

    :cond_6
    move-object v15, v10

    move-object v10, v7

    move-object v7, v9

    move-object v9, v11

    move-object/from16 v17, v6

    move-object v6, v2

    move-object/from16 v2, v17

    .line 35
    :goto_5
    check-cast v8, Ljava/util/List;

    .line 36
    invoke-static {v8, v2}, Ls1/u/i;->m0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 37
    new-instance v8, Le/a/c/c/f/i$b$a;

    invoke-direct {v8}, Le/a/c/c/f/i$b$a;-><init>()V

    invoke-static {v2, v8}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    .line 38
    invoke-static {v2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 39
    invoke-static {v2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2, v8}, Ls1/u/i;->a0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 40
    iget-object v2, v6, Le/a/c/c/f/i$b;->m:Le/a/c/c/f/i;

    .line 41
    iget v8, v10, Le/q/e/b/a$c;->b:I

    .line 42
    invoke-static {v13}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v14

    .line 43
    invoke-virtual {v15}, Lcom/truecaller/insights/models/states/InsightState;->getLastUpdatedAt()Ljava/util/Date;

    move-result-object v16

    iput-object v15, v6, Le/a/c/c/f/i$b;->e:Ljava/lang/Object;

    iput-object v9, v6, Le/a/c/c/f/i$b;->f:Ljava/lang/Object;

    iput-object v7, v6, Le/a/c/c/f/i$b;->g:Ljava/lang/Object;

    iput-object v9, v6, Le/a/c/c/f/i$b;->h:Ljava/lang/Object;

    iput-object v5, v6, Le/a/c/c/f/i$b;->i:Ljava/lang/Object;

    iput-object v5, v6, Le/a/c/c/f/i$b;->j:Ljava/lang/Object;

    const/4 v10, 0x6

    iput v10, v6, Le/a/c/c/f/i$b;->l:I

    move-object v10, v2

    move v13, v8

    move-object v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v6

    .line 44
    invoke-virtual/range {v10 .. v16}, Le/a/c/c/f/i;->m(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/util/List;ILjava/util/Set;Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_7

    return-object v1

    :cond_7
    move-object v10, v2

    move-object v2, v9

    move-object/from16 v17, v7

    move-object v7, v6

    move-object/from16 v6, v17

    .line 45
    :goto_6
    check-cast v8, Ljava/util/Collection;

    .line 46
    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v8, v6

    move-object v2, v7

    goto/16 :goto_1

    .line 47
    :cond_8
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v4

    if-eqz v3, :cond_9

    .line 48
    iget-object v3, v2, Le/a/c/c/f/i$b;->m:Le/a/c/c/f/i;

    .line 49
    iget-object v3, v3, Le/a/c/c/f/i;->e:Le/a/c/c/f/g;

    .line 50
    iput-object v5, v2, Le/a/c/c/f/i$b;->e:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/c/f/i$b;->f:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/c/f/i$b;->g:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/c/f/i$b;->h:Ljava/lang/Object;

    const/4 v4, 0x7

    iput v4, v2, Le/a/c/c/f/i$b;->l:I

    invoke-interface {v3, v9, v2}, Le/a/c/c/f/g;->n(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_9

    return-object v1

    .line 51
    :cond_9
    :goto_7
    sget-object v1, Ls1/s;->a:Ls1/s;

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
