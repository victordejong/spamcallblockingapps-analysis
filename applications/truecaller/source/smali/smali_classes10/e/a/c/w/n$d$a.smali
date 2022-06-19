.class public final Le/a/c/w/n$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/w/n$d;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Le/a/c/w/n;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/c/w/n;I)V
    .locals 0

    iput-object p1, p0, Le/a/c/w/n$d$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/c/w/n$d$a;->b:Le/a/c/w/n;

    iput p3, p0, Le/a/c/w/n$d$a;->c:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Le/a/c/w/n$d$a$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/c/w/n$d$a$a;

    iget v3, v2, Le/a/c/w/n$d$a$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/w/n$d$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/w/n$d$a$a;

    invoke-direct {v2, v0, v1}, Le/a/c/w/n$d$a$a;-><init>(Le/a/c/w/n$d$a;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/c/w/n$d$a$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/c/w/n$d$a$a;->e:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v9, :cond_4

    if-eq v4, v6, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v8, :cond_1

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v4, v2, Le/a/c/w/n$d$a$a;->l:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    iget-object v6, v2, Le/a/c/w/n$d$a$a;->k:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v9, v2, Le/a/c/w/n$d$a$a;->j:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v2, Le/a/c/w/n$d$a$a;->i:Ljava/lang/Object;

    check-cast v10, Ljava/util/Collection;

    iget-object v11, v2, Le/a/c/w/n$d$a$a;->h:Ljava/lang/Object;

    check-cast v11, Lq3/a/x2/g;

    iget-object v12, v2, Le/a/c/w/n$d$a$a;->f:Ljava/lang/Object;

    check-cast v12, Le/a/c/w/n$d$a;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    iget-object v4, v2, Le/a/c/w/n$d$a$a;->k:Ljava/lang/Object;

    iget-object v10, v2, Le/a/c/w/n$d$a$a;->j:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v2, Le/a/c/w/n$d$a$a;->i:Ljava/lang/Object;

    check-cast v11, Ljava/util/Collection;

    iget-object v12, v2, Le/a/c/w/n$d$a$a;->h:Ljava/lang/Object;

    check-cast v12, Lq3/a/x2/g;

    iget-object v13, v2, Le/a/c/w/n$d$a$a;->f:Ljava/lang/Object;

    check-cast v13, Le/a/c/w/n$d$a;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    iget-object v4, v2, Le/a/c/w/n$d$a$a;->l:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    iget-object v10, v2, Le/a/c/w/n$d$a$a;->k:Ljava/lang/Object;

    iget-object v11, v2, Le/a/c/w/n$d$a$a;->j:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v2, Le/a/c/w/n$d$a$a;->i:Ljava/lang/Object;

    check-cast v12, Ljava/util/Collection;

    iget-object v13, v2, Le/a/c/w/n$d$a$a;->h:Ljava/lang/Object;

    check-cast v13, Lq3/a/x2/g;

    iget-object v14, v2, Le/a/c/w/n$d$a$a;->f:Ljava/lang/Object;

    check-cast v14, Le/a/c/w/n$d$a;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/c/w/n$d$a;->a:Lq3/a/x2/g;

    .line 5
    move-object/from16 v4, p1

    check-cast v4, Ljava/util/List;

    .line 6
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v11, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    .line 8
    iget-object v14, v11, Le/a/c/w/n$d$a;->b:Le/a/c/w/n;

    .line 9
    iget-object v14, v14, Le/a/c/w/n;->f:Le/a/c/w/o0/g;

    .line 10
    iput-object v11, v2, Le/a/c/w/n$d$a$a;->f:Ljava/lang/Object;

    iput-object v1, v2, Le/a/c/w/n$d$a$a;->h:Ljava/lang/Object;

    iput-object v10, v2, Le/a/c/w/n$d$a$a;->i:Ljava/lang/Object;

    iput-object v4, v2, Le/a/c/w/n$d$a$a;->j:Ljava/lang/Object;

    iput-object v12, v2, Le/a/c/w/n$d$a$a;->k:Ljava/lang/Object;

    iput-object v13, v2, Le/a/c/w/n$d$a$a;->l:Ljava/lang/Object;

    iput v9, v2, Le/a/c/w/n$d$a$a;->e:I

    invoke-interface {v14, v13, v9, v2}, Le/a/c/w/o0/g;->g(Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v3, :cond_6

    return-object v3

    :cond_6
    move-object v15, v13

    move-object v13, v1

    move-object v1, v14

    move-object v14, v11

    move-object v11, v4

    move-object v4, v15

    move-object/from16 v16, v12

    move-object v12, v10

    move-object/from16 v10, v16

    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 11
    iget-object v1, v14, Le/a/c/w/n$d$a;->b:Le/a/c/w/n;

    .line 12
    iget-object v1, v1, Le/a/c/w/n;->i:Le/a/c/h/e;

    .line 13
    invoke-virtual {v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v14, v2, Le/a/c/w/n$d$a$a;->f:Ljava/lang/Object;

    iput-object v13, v2, Le/a/c/w/n$d$a$a;->h:Ljava/lang/Object;

    iput-object v12, v2, Le/a/c/w/n$d$a$a;->i:Ljava/lang/Object;

    iput-object v11, v2, Le/a/c/w/n$d$a$a;->j:Ljava/lang/Object;

    iput-object v10, v2, Le/a/c/w/n$d$a$a;->k:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/w/n$d$a$a;->l:Ljava/lang/Object;

    iput v6, v2, Le/a/c/w/n$d$a$a;->e:I

    invoke-interface {v1, v4, v2}, Le/a/c/h/e;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    return-object v3

    :cond_7
    move-object v4, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    :goto_3
    check-cast v1, Lcom/truecaller/insights/commons/model/InsightsFilterType;

    invoke-static {v1}, Le/a/m0/a1$k;->C0(Lcom/truecaller/insights/commons/model/InsightsFilterType;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v9

    move-object v14, v13

    move-object v13, v12

    goto :goto_4

    :cond_8
    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v4

    :cond_9
    const/4 v1, 0x0

    move-object v4, v10

    move-object v10, v11

    move-object v11, v12

    .line 14
    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v11, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_a
    move-object v4, v10

    move-object v10, v11

    move-object v1, v13

    move-object v11, v14

    goto/16 :goto_1

    .line 16
    :cond_b
    check-cast v10, Ljava/util/List;

    .line 17
    iget v4, v11, Le/a/c/w/n$d$a;->c:I

    invoke-static {v10, v4}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v4

    .line 18
    new-instance v6, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v4, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v9, v4

    move-object v12, v11

    move-object v11, v1

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 20
    move-object v4, v1

    check-cast v4, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    .line 21
    iget-object v1, v12, Le/a/c/w/n$d$a;->b:Le/a/c/w/n;

    .line 22
    iget-object v1, v1, Le/a/c/w/n;->f:Le/a/c/w/o0/g;

    .line 23
    invoke-virtual {v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v13

    iput-object v12, v2, Le/a/c/w/n$d$a$a;->f:Ljava/lang/Object;

    iput-object v11, v2, Le/a/c/w/n$d$a$a;->h:Ljava/lang/Object;

    iput-object v6, v2, Le/a/c/w/n$d$a$a;->i:Ljava/lang/Object;

    iput-object v9, v2, Le/a/c/w/n$d$a$a;->j:Ljava/lang/Object;

    iput-object v6, v2, Le/a/c/w/n$d$a$a;->k:Ljava/lang/Object;

    iput-object v4, v2, Le/a/c/w/n$d$a$a;->l:Ljava/lang/Object;

    iput v7, v2, Le/a/c/w/n$d$a$a;->e:I

    invoke-interface {v1, v10, v13, v2}, Le/a/c/w/o0/g;->k(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_c

    return-object v3

    :cond_c
    move-object v10, v6

    :goto_6
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 24
    invoke-static {v4, v1}, Le/a/m0/a1$k;->f1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Z)Lcom/truecaller/insights/models/InsightsDomain$a;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v6, v10

    goto :goto_5

    .line 25
    :cond_d
    check-cast v6, Ljava/util/List;

    .line 26
    iput-object v5, v2, Le/a/c/w/n$d$a$a;->f:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/w/n$d$a$a;->h:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/w/n$d$a$a;->i:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/w/n$d$a$a;->j:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/w/n$d$a$a;->k:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/w/n$d$a$a;->l:Ljava/lang/Object;

    iput v8, v2, Le/a/c/w/n$d$a$a;->e:I

    invoke-interface {v11, v6, v2}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_e

    return-object v3

    :cond_e
    :goto_7
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
