.class public final Le/a/c/a0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a0/a;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/c/r/e/a/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Le/a/c/a0/b;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/c/a0/b;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a0/a$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/c/a0/a$a;->b:Le/a/c/a0/b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Le/a/c/a0/a$a$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/c/a0/a$a$a;

    iget v3, v2, Le/a/c/a0/a$a$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/a0/a$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/a0/a$a$a;

    invoke-direct {v2, v0, v1}, Le/a/c/a0/a$a$a;-><init>(Le/a/c/a0/a$a;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/c/a0/a$a$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/c/a0/a$a$a;->e:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v4, v2, Le/a/c/a0/a$a$a;->k:Ljava/lang/Object;

    iget-object v7, v2, Le/a/c/a0/a$a$a;->j:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v8, v2, Le/a/c/a0/a$a$a;->i:Ljava/lang/Object;

    check-cast v8, Ljava/util/Collection;

    iget-object v9, v2, Le/a/c/a0/a$a$a;->h:Ljava/lang/Object;

    check-cast v9, Lq3/a/x2/g;

    iget-object v10, v2, Le/a/c/a0/a$a$a;->f:Ljava/lang/Object;

    check-cast v10, Le/a/c/a0/a$a;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v15, v10

    goto :goto_2

    :cond_3
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/c/a0/a$a;->a:Lq3/a/x2/g;

    .line 5
    move-object/from16 v4, p1

    check-cast v4, Ljava/util/List;

    .line 6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v15, v0

    move-object/from16 v18, v4

    move-object v4, v1

    move-object v1, v7

    move-object/from16 v7, v18

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v8, v14

    check-cast v8, Le/a/c/r/e/a/a;

    .line 8
    iget-object v9, v15, Le/a/c/a0/a$a;->b:Le/a/c/a0/b;

    .line 9
    iget-object v9, v9, Le/a/c/a0/b;->b:Le/a/c/w/o0/b;

    .line 10
    iget-object v10, v8, Le/a/c/r/e/a/a;->a:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x6

    const/16 v16, 0x0

    .line 11
    iput-object v15, v2, Le/a/c/a0/a$a$a;->f:Ljava/lang/Object;

    iput-object v4, v2, Le/a/c/a0/a$a$a;->h:Ljava/lang/Object;

    iput-object v1, v2, Le/a/c/a0/a$a$a;->i:Ljava/lang/Object;

    iput-object v7, v2, Le/a/c/a0/a$a$a;->j:Ljava/lang/Object;

    iput-object v14, v2, Le/a/c/a0/a$a$a;->k:Ljava/lang/Object;

    iput v6, v2, Le/a/c/a0/a$a$a;->e:I

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v2

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    invoke-static/range {v8 .. v14}, Le/a/c/p/a;->U0(Le/a/c/w/o0/b;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/ModelType;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_4

    return-object v3

    :cond_4
    move-object v9, v4

    move-object/from16 v4, v17

    move-object/from16 v18, v8

    move-object v8, v1

    move-object/from16 v1, v18

    .line 12
    :goto_2
    check-cast v1, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    if-eqz v1, :cond_6

    .line 13
    sget-object v10, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->BLOCKED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    if-eq v1, v10, :cond_5

    move v1, v6

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 14
    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 15
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_4

    :cond_6
    move v1, v6

    .line 16
    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v8, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object v1, v8

    move-object v4, v9

    goto :goto_1

    .line 18
    :cond_8
    check-cast v1, Ljava/util/List;

    const/4 v6, 0x0

    .line 19
    iput-object v6, v2, Le/a/c/a0/a$a$a;->f:Ljava/lang/Object;

    iput-object v6, v2, Le/a/c/a0/a$a$a;->h:Ljava/lang/Object;

    iput-object v6, v2, Le/a/c/a0/a$a$a;->i:Ljava/lang/Object;

    iput-object v6, v2, Le/a/c/a0/a$a$a;->j:Ljava/lang/Object;

    iput-object v6, v2, Le/a/c/a0/a$a$a;->k:Ljava/lang/Object;

    iput v5, v2, Le/a/c/a0/a$a$a;->e:I

    invoke-interface {v4, v1, v2}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_9

    return-object v3

    :cond_9
    :goto_5
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
