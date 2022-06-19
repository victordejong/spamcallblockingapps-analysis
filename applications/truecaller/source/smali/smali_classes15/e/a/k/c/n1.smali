.class public final Le/a/k/c/n1;
.super Le/a/f4/b/h/h;
.source "SourceFile"

# interfaces
.implements Le/a/k/c/k1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/f4/b/h/h<",
        "Le/a/t2/a/j/a/b$b;",
        "Le/a/t2/a/j/a/b$a;",
        ">;",
        "Le/a/k/c/k1;"
    }
.end annotation


# instance fields
.field public final o:Ls1/w/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/w/f;Le/a/b0/e/l;Le/a/b0/e/h;Le/a/p5/g;Le/a/f4/b/g/b;Le/a/f4/b/b;Ljava/lang/String;Le/a/f4/b/h/c;Le/a/f4/b/f/b;Le/a/f4/b/a;Le/a/x3/c;)V
    .locals 16
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "grpc_user_agent"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ioContext"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "accountManager"

    move-object/from16 v5, p3

    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "temporaryAuthTokenManager"

    move-object/from16 v6, p4

    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deviceInfoUtil"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "edgeLocationsManager"

    move-object/from16 v10, p6

    invoke-static {v10, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "domainResolver"

    move-object/from16 v11, p7

    invoke-static {v11, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "userAgent"

    move-object/from16 v12, p8

    invoke-static {v12, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "channelNetworkChangesHandler"

    move-object/from16 v9, p9

    invoke-static {v9, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "domainFrontingResolver"

    move-object/from16 v13, p10

    invoke-static {v13, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "crossDomainSupport"

    move-object/from16 v14, p11

    invoke-static {v14, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "forcedUpdateManager"

    move-object/from16 v15, p12

    invoke-static {v15, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v4, Lcom/truecaller/common/network/util/KnownEndpoints;->VIDEO_CALLER_ID:Lcom/truecaller/common/network/util/KnownEndpoints;

    const/16 v1, 0xa

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v2, p0

    .line 3
    invoke-direct/range {v2 .. v15}, Le/a/f4/b/h/h;-><init>(Landroid/content/Context;Lcom/truecaller/common/network/util/KnownEndpoints;Le/a/b0/e/l;Le/a/b0/e/h;Le/a/p5/g;Ljava/lang/Integer;Le/a/f4/b/h/c;Le/a/f4/b/g/b;Le/a/f4/b/b;Ljava/lang/String;Le/a/f4/b/f/b;Le/a/f4/b/a;Le/a/x3/c;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Le/a/k/c/n1;->o:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public f(Lp3/a/d;)Lp3/a/q1/c;
    .locals 3

    const-string v0, "channel"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lp3/a/c;->k:Lp3/a/c;

    .line 3
    sget-object v1, Lp3/a/q1/e;->b:Lp3/a/c$a;

    sget-object v2, Lp3/a/q1/e$f;->a:Lp3/a/q1/e$f;

    .line 4
    invoke-virtual {v0, v1, v2}, Lp3/a/c;->f(Lp3/a/c$a;Ljava/lang/Object;)Lp3/a/c;

    move-result-object v0

    .line 5
    new-instance v1, Le/a/t2/a/j/a/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Le/a/t2/a/j/a/b$a;-><init>(Lp3/a/d;Lp3/a/c;Le/a/t2/a/j/a/a;)V

    const-string p1, "VideoCallerIdGrpc.newBlockingStub(channel)"

    .line 6
    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public h(Lp3/a/d;)Lp3/a/q1/c;
    .locals 3

    const-string v0, "channel"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lp3/a/c;->k:Lp3/a/c;

    .line 3
    sget-object v1, Lp3/a/q1/e;->b:Lp3/a/c$a;

    sget-object v2, Lp3/a/q1/e$f;->c:Lp3/a/q1/e$f;

    .line 4
    invoke-virtual {v0, v1, v2}, Lp3/a/c;->f(Lp3/a/c$a;Ljava/lang/Object;)Lp3/a/c;

    move-result-object v0

    .line 5
    new-instance v1, Le/a/t2/a/j/a/b$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Le/a/t2/a/j/a/b$b;-><init>(Lp3/a/d;Lp3/a/c;Le/a/t2/a/j/a/a;)V

    const-string p1, "VideoCallerIdGrpc.newStub(channel)"

    .line 6
    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public j()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lp3/a/g;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    return-object v0
.end method

.method public l(Ljava/util/List;Ljava/lang/String;JJLs1/w/d;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "JJ",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v0, p7

    instance-of v1, v0, Le/a/k/c/n1$a;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/k/c/n1$a;

    iget v2, v1, Le/a/k/c/n1$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/k/c/n1$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/k/c/n1$a;

    invoke-direct {v1, p0, v0}, Le/a/k/c/n1$a;-><init>(Le/a/k/c/n1;Ls1/w/d;)V

    :goto_0
    move-object v10, v1

    iget-object v0, v10, Le/a/k/c/n1$a;->d:Ljava/lang/Object;

    sget-object v11, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v10, Le/a/k/c/n1$a;->e:I

    const/4 v12, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v12, :cond_1

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    new-instance v13, Le/a/k/c/n1$b;

    const/4 v8, 0x0

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p2

    move-object v3, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v8}, Le/a/k/c/n1$b;-><init>(Le/a/k/c/n1;Ljava/lang/String;Ljava/util/List;JJLs1/w/d;)V

    iput v12, v10, Le/a/k/c/n1$a;->e:I

    .line 4
    iget-object v0, v9, Le/a/k/c/n1;->o:Ls1/w/f;

    new-instance v1, Le/a/k/c/o1;

    const/4 v2, 0x0

    invoke-direct {v1, v13, v2}, Le/a/k/c/o1;-><init>(Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {v0, v1, v10}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_3

    return-object v11

    .line 5
    :cond_3
    :goto_1
    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 6
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
