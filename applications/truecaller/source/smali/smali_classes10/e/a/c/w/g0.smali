.class public final Le/a/c/w/g0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/c/r/h/a;",
        "Ls1/w/d<",
        "-",
        "Ls1/l<",
        "+",
        "Lcom/truecaller/insights/models/InsightsDomain;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.repository.SmsBackupRepositoryImpl$applyFilters$1"
    f = "SmsBackupRepository.kt"
    l = {
        0x3d,
        0x3e,
        0x42
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/c/w/f0;


# direct methods
.method public constructor <init>(Le/a/c/w/f0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/w/g0;->h:Le/a/c/w/f0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/w/g0;

    iget-object v1, p0, Le/a/c/w/g0;->h:Le/a/c/w/f0;

    invoke-direct {v0, v1, p2}, Le/a/c/w/g0;-><init>(Le/a/c/w/f0;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/w/g0;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/w/g0;

    iget-object v1, p0, Le/a/c/w/g0;->h:Le/a/c/w/f0;

    invoke-direct {v0, v1, p2}, Le/a/c/w/g0;-><init>(Le/a/c/w/f0;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/w/g0;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/w/g0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v1, p0

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v1, Le/a/c/w/g0;->g:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v2, p1

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v2, v1, Le/a/c/w/g0;->e:Ljava/lang/Object;

    check-cast v2, Le/a/c/r/h/a;

    :try_start_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v4, p1

    goto :goto_1

    :cond_2
    iget-object v2, v1, Le/a/c/w/g0;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v1, Le/a/c/w/g0;->e:Ljava/lang/Object;

    check-cast v5, Le/a/c/r/h/a;

    :try_start_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v8, v2

    move-object v2, v5

    move-object/from16 v5, p1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v2, v1, Le/a/c/w/g0;->e:Ljava/lang/Object;

    check-cast v2, Le/a/c/r/h/a;

    .line 4
    :try_start_3
    iget-object v7, v2, Le/a/c/r/h/a;->a:Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    .line 5
    invoke-virtual {v7}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 6
    iget-object v8, v1, Le/a/c/w/g0;->h:Le/a/c/w/f0;

    .line 7
    iget-object v8, v8, Le/a/c/w/f0;->d:Le/a/c/b/e;

    .line 8
    invoke-interface {v8}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Le/a/c/c0/q;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 9
    iget-object v9, v1, Le/a/c/w/g0;->h:Le/a/c/w/f0;

    .line 10
    iget-object v9, v9, Le/a/c/w/f0;->b:Le/a/c/w/o0/g;

    .line 11
    iput-object v2, v1, Le/a/c/w/g0;->e:Ljava/lang/Object;

    iput-object v8, v1, Le/a/c/w/g0;->f:Ljava/lang/Object;

    iput v5, v1, Le/a/c/w/g0;->g:I

    invoke-interface {v9, v7, v1}, Le/a/c/w/o0/g;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_b

    .line 12
    iget-object v5, v1, Le/a/c/w/g0;->h:Le/a/c/w/f0;

    .line 13
    iget-object v5, v5, Le/a/c/w/f0;->c:Le/a/c/h/e;

    .line 14
    iput-object v2, v1, Le/a/c/w/g0;->e:Ljava/lang/Object;

    iput-object v6, v1, Le/a/c/w/g0;->f:Ljava/lang/Object;

    iput v4, v1, Le/a/c/w/g0;->g:I

    invoke-interface {v5, v8, v1}, Le/a/c/h/e;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    check-cast v4, Lcom/truecaller/insights/commons/model/InsightsFilterType;

    invoke-static {v4}, Le/a/m0/a1$k;->t0(Lcom/truecaller/insights/commons/model/InsightsFilterType;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 15
    iget-object v4, v2, Le/a/c/r/h/a;->a:Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    .line 16
    iget-object v5, v1, Le/a/c/w/g0;->h:Le/a/c/w/f0;

    .line 17
    iget-object v5, v5, Le/a/c/w/f0;->b:Le/a/c/w/o0/g;

    const-string v7, "$this$toActionStateEntity"

    .line 18
    invoke-static {v2, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v7, v2, Le/a/c/r/h/a;->b:Ljava/lang/Integer;

    if-nez v7, :cond_6

    move-object v7, v6

    goto :goto_3

    .line 20
    :cond_6
    new-instance v7, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;

    const-wide/16 v9, 0x0

    .line 21
    iget-object v8, v2, Le/a/c/r/h/a;->a:Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    .line 22
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v11

    .line 23
    iget-object v8, v2, Le/a/c/r/h/a;->a:Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    .line 24
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v13

    .line 25
    iget-object v8, v2, Le/a/c/r/h/a;->b:Ljava/lang/Integer;

    .line 26
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 27
    iget-object v2, v2, Le/a/c/r/h/a;->c:Ljava/lang/String;

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    const-string v2, ""

    :goto_2
    move-object/from16 v18, v2

    const/16 v19, 0x71

    const/16 v20, 0x0

    move-object v8, v7

    .line 28
    invoke-direct/range {v8 .. v20}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;-><init>(JJLjava/lang/String;ILjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;ILs1/z/c/f;)V

    .line 29
    :goto_3
    iput-object v6, v1, Le/a/c/w/g0;->e:Ljava/lang/Object;

    iput v3, v1, Le/a/c/w/g0;->g:I

    .line 30
    invoke-static {v4, v5, v7, v1}, Le/a/m0/a1$k;->G1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Le/a/c/w/o0/g;Lcom/truecaller/insights/models/smartcards/ActionStateEntity;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_8

    return-object v0

    .line 31
    :cond_8
    :goto_4
    check-cast v2, Lcom/truecaller/insights/models/InsightsDomain;

    if-eqz v2, :cond_9

    goto :goto_5

    .line 32
    :cond_9
    sget-object v0, Le/a/c/w/f0$a;->a:Le/a/c/w/f0$a;

    throw v0

    .line 33
    :cond_a
    sget-object v0, Le/a/c/w/f0$a;->a:Le/a/c/w/f0$a;

    throw v0

    .line 34
    :cond_b
    sget-object v0, Le/a/c/w/f0$a;->a:Le/a/c/w/f0$a;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 35
    invoke-static {v0}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    .line 36
    :goto_5
    new-instance v0, Ls1/l;

    invoke-direct {v0, v2}, Ls1/l;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
