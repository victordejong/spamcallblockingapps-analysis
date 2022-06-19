.class public final Le/a/c/w/c0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Lcom/truecaller/insights/models/InsightsDomain$e;",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/models/smartcards/ActionStateEntity;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Lcom/truecaller/insights/models/InsightsDomain$e;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.repository.OtpRepositoryImpl$getLatestValidOtp$1"
    f = "OtpRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ls1/w/d;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/truecaller/insights/models/InsightsDomain$e;

    check-cast p2, Ljava/util/List;

    check-cast p3, Ls1/w/d;

    const-string v0, "actionStates"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/w/c0;

    invoke-direct {v0, p3}, Le/a/c/w/c0;-><init>(Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/w/c0;->e:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/w/c0;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/w/c0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v1, v0, Le/a/c/w/c0;->e:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/truecaller/insights/models/InsightsDomain$e;

    iget-object v1, v0, Le/a/c/w/c0;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;

    invoke-virtual {v6}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getEntityId()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/truecaller/insights/models/InsightsDomain$e;->getMsgId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 3
    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 4
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    check-cast v4, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;

    if-eqz v4, :cond_4

    .line 5
    invoke-virtual {v4}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getState()I

    move-result v1

    if-eq v1, v5, :cond_3

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v4}, Le/a/c/p/a;->M2(Lcom/truecaller/insights/models/smartcards/ActionStateEntity;)Le/a/c/r/j/b;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x77f

    move-wide v3, v5

    move-wide v5, v7

    move-object v7, v1

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    invoke-static/range {v2 .. v16}, Lcom/truecaller/insights/models/InsightsDomain$e;->a(Lcom/truecaller/insights/models/InsightsDomain$e;JJLjava/lang/String;Lw3/b/a/b;Ljava/lang/String;ZLjava/lang/String;Le/a/c/r/j/b;Lcom/truecaller/insights/models/DomainOrigin;ZLjava/lang/String;I)Lcom/truecaller/insights/models/InsightsDomain$e;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v3

    :cond_4
    :goto_2
    move-object v3, v2

    :cond_5
    return-object v3
.end method
