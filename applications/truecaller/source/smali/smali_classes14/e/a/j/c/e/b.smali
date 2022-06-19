.class public final Le/a/j/c/e/b;
.super Le/a/f4/b/h/h;
.source "SourceFile"

# interfaces
.implements Le/a/j/c/e/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/f4/b/h/h<",
        "Le/a/t2/a/i/c$b;",
        "Le/a/t2/a/i/c$a;",
        ">;",
        "Le/a/j/c/e/a;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/b0/e/l;Le/a/b0/e/h;Le/a/p5/g;Le/a/f4/b/g/b;Le/a/f4/b/b;Ljava/lang/String;Le/a/f4/b/h/c;Le/a/f4/b/f/b;Le/a/x3/c;)V
    .locals 15
    .param p7    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "grpc_user_agent"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "temporaryAuthTokenManager"

    move-object/from16 v5, p3

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    move-object/from16 v6, p4

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "edgeLocationsManager"

    move-object/from16 v9, p5

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainResolver"

    move-object/from16 v10, p6

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgent"

    move-object/from16 v11, p7

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelNetworkChangesHandler"

    move-object/from16 v8, p8

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainFrontingResolver"

    move-object/from16 v12, p9

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forcedUpdateManager"

    move-object/from16 v14, p10

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v3, Lcom/truecaller/common/network/util/KnownEndpoints;->SURVEYS_GRPC:Lcom/truecaller/common/network/util/KnownEndpoints;

    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3
    new-instance v13, Le/a/f4/b/a;

    sget-object v0, Le/a/j/c/e/b$a;->b:Le/a/j/c/e/b$a;

    invoke-direct {v13, v0}, Le/a/f4/b/a;-><init>(Ls1/z/b/a;)V

    move-object v1, p0

    .line 4
    invoke-direct/range {v1 .. v14}, Le/a/f4/b/h/h;-><init>(Landroid/content/Context;Lcom/truecaller/common/network/util/KnownEndpoints;Le/a/b0/e/l;Le/a/b0/e/h;Le/a/p5/g;Ljava/lang/Integer;Le/a/f4/b/h/c;Le/a/f4/b/g/b;Le/a/f4/b/b;Ljava/lang/String;Le/a/f4/b/f/b;Le/a/f4/b/a;Le/a/x3/c;)V

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
    new-instance v1, Le/a/t2/a/i/c$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Le/a/t2/a/i/c$a;-><init>(Lp3/a/d;Lp3/a/c;Le/a/t2/a/i/b;)V

    const-string p1, "PublicSurveyServiceGrpc.newBlockingStub(channel)"

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
    new-instance v1, Le/a/t2/a/i/c$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Le/a/t2/a/i/c$b;-><init>(Lp3/a/d;Lp3/a/c;Le/a/t2/a/i/b;)V

    const-string p1, "PublicSurveyServiceGrpc.newStub(channel)"

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
