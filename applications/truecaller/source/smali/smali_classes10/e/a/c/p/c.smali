.class public final Le/a/c/p/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/p/b;


# instance fields
.field public final a:Le/a/c/n/d;

.field public final b:Le/a/c/f/h;

.field public final c:Le/a/b0/m/d/a;

.field public final d:Le/a/c/b/j;

.field public final e:Le/a/c/a0/x;

.field public final f:Landroid/content/Context;

.field public final g:Le/a/c/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/c/j/e<",
            "Le/a/c/j/f$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/c/n/d;Le/a/c/f/h;Le/a/b0/m/d/a;Le/a/c/b/j;Le/a/c/a0/x;Landroid/content/Context;Le/a/c/j/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/n/d;",
            "Le/a/c/f/h;",
            "Le/a/b0/m/d/a;",
            "Le/a/c/b/j;",
            "Le/a/c/a0/x;",
            "Landroid/content/Context;",
            "Le/a/c/j/e<",
            "Le/a/c/j/f$a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "feedbackRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderInfoManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pdoDataSource"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deepLinkFactory"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/p/c;->a:Le/a/c/n/d;

    iput-object p2, p0, Le/a/c/p/c;->b:Le/a/c/f/h;

    iput-object p3, p0, Le/a/c/p/c;->c:Le/a/b0/m/d/a;

    iput-object p4, p0, Le/a/c/p/c;->d:Le/a/c/b/j;

    iput-object p5, p0, Le/a/c/p/c;->e:Le/a/c/a0/x;

    iput-object p6, p0, Le/a/c/p/c;->f:Landroid/content/Context;

    iput-object p7, p0, Le/a/c/p/c;->g:Le/a/c/j/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Le/a/c/i/g/c;ZLs1/w/d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Le/a/c/i/g/c;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Le/a/c/p/f;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p4

    instance-of v3, v2, Le/a/c/p/c$b;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Le/a/c/p/c$b;

    iget v4, v3, Le/a/c/p/c$b;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/c/p/c$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/c/p/c$b;

    invoke-direct {v3, v1, v2}, Le/a/c/p/c$b;-><init>(Le/a/c/p/c;Ls1/w/d;)V

    :goto_0
    iget-object v2, v3, Le/a/c/p/c$b;->d:Ljava/lang/Object;

    sget-object v11, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v3, Le/a/c/p/c$b;->e:I

    const/4 v12, 0x2

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v5, :cond_2

    if-ne v4, v12, :cond_1

    iget-object v0, v3, Le/a/c/p/c$b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v3, v3, Le/a/c/p/c$b;->g:Ljava/lang/Object;

    check-cast v3, Le/a/c/p/c;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v10, v3

    goto :goto_3

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v0, v3, Le/a/c/p/c$b;->g:Ljava/lang/Object;

    check-cast v0, Le/a/c/p/c;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v1, Le/a/c/p/c;->e:Le/a/c/a0/x;

    .line 5
    iget-wide v6, v0, Le/a/c/i/g/c;->a:J

    const/16 v8, 0x14

    .line 6
    iget-object v9, v0, Le/a/c/i/g/c;->d:Le/a/c/a0/r;

    .line 7
    iput-object v1, v3, Le/a/c/p/c$b;->g:Ljava/lang/Object;

    iput v5, v3, Le/a/c/p/c$b;->e:I

    .line 8
    move-object v4, v2

    check-cast v4, Le/a/c/a0/y;

    move-object/from16 v5, p1

    move-object v10, v3

    invoke-virtual/range {v4 .. v10}, Le/a/c/a0/y;->a(Ljava/util/List;JILe/a/c/a0/r;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v11, :cond_4

    return-object v11

    :cond_4
    move-object v0, v1

    .line 9
    :goto_1
    check-cast v2, Ljava/util/List;

    .line 10
    iget-object v4, v0, Le/a/c/p/c;->a:Le/a/c/n/d;

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 13
    check-cast v7, Lcom/truecaller/insights/models/InsightsDomain;

    .line 14
    invoke-virtual {v7}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgId()J

    move-result-wide v7

    .line 15
    new-instance v9, Ljava/lang/Long;

    invoke-direct {v9, v7, v8}, Ljava/lang/Long;-><init>(J)V

    .line 16
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_5
    iput-object v0, v3, Le/a/c/p/c$b;->g:Ljava/lang/Object;

    iput-object v2, v3, Le/a/c/p/c$b;->h:Ljava/lang/Object;

    iput v12, v3, Le/a/c/p/c$b;->e:I

    .line 18
    invoke-interface {v4, v5, v3}, Le/a/c/n/d;->i(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v11, :cond_6

    return-object v11

    :cond_6
    move-object v10, v0

    move-object v0, v2

    move-object v2, v3

    .line 19
    :goto_3
    check-cast v2, Ljava/util/Map;

    .line 20
    new-instance v11, Ls1/z/c/y;

    invoke-direct {v11}, Ls1/z/c/y;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v11, Ls1/z/c/y;->a:Z

    .line 21
    new-instance v12, Ls1/z/c/y;

    invoke-direct {v12}, Ls1/z/c/y;-><init>()V

    iput-boolean v3, v12, Ls1/z/c/y;->a:Z

    .line 22
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v15, v3, 0x1

    const/4 v9, 0x0

    if-ltz v3, :cond_8

    .line 24
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 25
    check-cast v0, Lcom/truecaller/insights/models/InsightsDomain;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 26
    new-instance v8, Le/a/c/p/c$a;

    move-object v3, v8

    move-object v4, v0

    move-object v6, v10

    move-object v7, v11

    move-object v0, v8

    move-object v8, v2

    move-object v1, v9

    move-object v9, v12

    invoke-direct/range {v3 .. v9}, Le/a/c/p/c$a;-><init>(Lcom/truecaller/insights/models/InsightsDomain;ILe/a/c/p/c;Ls1/z/c/y;Ljava/util/Map;Ls1/z/c/y;)V

    .line 27
    sget-object v3, Le/a/c/o/a;->a:Lkotlinx/coroutines/CoroutineExceptionHandler;

    const-string v3, "block"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    :try_start_0
    invoke-virtual {v0}, Le/a/c/p/c$a;->invoke()Ljava/lang/Object;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 29
    sget-object v0, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 30
    invoke-virtual {v0, v3, v1}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v9, v1

    .line 31
    :goto_5
    check-cast v9, Ls1/k;

    if-eqz v9, :cond_7

    .line 32
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object/from16 v1, p0

    move v3, v15

    goto :goto_4

    :cond_8
    move-object v1, v9

    .line 33
    invoke-static {}, Ls1/u/i;->N0()V

    throw v1

    .line 34
    :cond_9
    invoke-static {v13}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    iget-boolean v1, v11, Ls1/z/c/y;->a:Z

    .line 35
    new-instance v2, Le/a/c/p/f;

    invoke-direct {v2, v0, v1}, Le/a/c/p/f;-><init>(Ljava/util/Map;Z)V

    return-object v2
.end method

.method public final b(Z)Le/a/c/r/j/h;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Le/a/c/r/j/h$c;->d:Le/a/c/r/j/h$c;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Le/a/c/r/j/h$e;->d:Le/a/c/r/j/h$e;

    :goto_0
    return-object p1
.end method

.method public final c(Z)Lcom/truecaller/insights/repository/filters/InfoCardType;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/truecaller/insights/repository/filters/InfoCardType;->INFOCARD:Lcom/truecaller/insights/repository/filters/InfoCardType;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/truecaller/insights/repository/filters/InfoCardType;->SEMICARD:Lcom/truecaller/insights/repository/filters/InfoCardType;

    :goto_0
    return-object p1
.end method
