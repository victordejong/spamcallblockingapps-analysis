.class public final Le/a/q2/w0/f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.analytics.call.CallAnalyticsImpl$registerListeners$2$1"
    f = "CallAnalytics.kt"
    l = {
        0xfa,
        0xfc
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

.field public k:I

.field public final synthetic l:Le/a/q2/w0/g;


# direct methods
.method public constructor <init>(Le/a/q2/w0/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/q2/w0/f;->l:Le/a/q2/w0/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/q2/w0/f;

    iget-object v0, p0, Le/a/q2/w0/f;->l:Le/a/q2/w0/g;

    invoke-direct {p1, v0, p2}, Le/a/q2/w0/f;-><init>(Le/a/q2/w0/g;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/q2/w0/f;

    iget-object v0, p0, Le/a/q2/w0/f;->l:Le/a/q2/w0/g;

    invoke-direct {p1, v0, p2}, Le/a/q2/w0/f;-><init>(Le/a/q2/w0/g;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/q2/w0/f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Ls1/s;->a:Ls1/s;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v0, Le/a/q2/w0/f;->k:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v3, v0, Le/a/q2/w0/f;->j:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v5, v0, Le/a/q2/w0/f;->i:Ljava/lang/Object;

    check-cast v5, Lcom/truecaller/analytics/call/CallAnswered;

    iget-object v6, v0, Le/a/q2/w0/f;->h:Ljava/lang/Object;

    check-cast v6, Lcom/truecaller/analytics/call/CallProvider;

    iget-object v7, v0, Le/a/q2/w0/f;->g:Ljava/lang/Object;

    check-cast v7, Lcom/truecaller/analytics/call/CallDirection;

    iget-object v8, v0, Le/a/q2/w0/f;->f:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v0, Le/a/q2/w0/f;->e:Ljava/lang/Object;

    check-cast v9, Le/a/q2/w0/b;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v10, v3

    move-object v13, v5

    move-object v12, v6

    move-object v11, v7

    move-object v7, v9

    move-object/from16 v5, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v3, v0, Le/a/q2/w0/f;->l:Le/a/q2/w0/g;

    iget-object v9, v3, Le/a/q2/w0/g;->b:Le/a/q2/w0/b;

    .line 5
    iget-object v3, v3, Le/a/q2/w0/g;->c:Le/a/q2/w0/h/j;

    invoke-interface {v3}, Le/a/q2/w0/h/j;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 6
    iget-object v3, v0, Le/a/q2/w0/f;->l:Le/a/q2/w0/g;

    iget-object v3, v3, Le/a/q2/w0/g;->c:Le/a/q2/w0/h/j;

    invoke-interface {v3}, Le/a/q2/w0/h/j;->b()Lcom/truecaller/analytics/call/CallDirection;

    move-result-object v7

    .line 7
    sget-object v6, Lcom/truecaller/analytics/call/CallProvider;->INCALLUI:Lcom/truecaller/analytics/call/CallProvider;

    .line 8
    iget-object v3, v0, Le/a/q2/w0/f;->l:Le/a/q2/w0/g;

    iget-object v3, v3, Le/a/q2/w0/g;->c:Le/a/q2/w0/h/j;

    invoke-interface {v3}, Le/a/q2/w0/h/j;->d()Lcom/truecaller/analytics/call/CallAnswered;

    move-result-object v3

    .line 9
    iget-object v10, v0, Le/a/q2/w0/f;->l:Le/a/q2/w0/g;

    iget-object v10, v10, Le/a/q2/w0/g;->c:Le/a/q2/w0/h/j;

    invoke-interface {v10}, Le/a/q2/w0/h/j;->e()Ljava/lang/String;

    move-result-object v10

    .line 10
    iget-object v11, v0, Le/a/q2/w0/f;->l:Le/a/q2/w0/g;

    iget-object v11, v11, Le/a/q2/w0/g;->c:Le/a/q2/w0/h/j;

    iput-object v9, v0, Le/a/q2/w0/f;->e:Ljava/lang/Object;

    iput-object v8, v0, Le/a/q2/w0/f;->f:Ljava/lang/Object;

    iput-object v7, v0, Le/a/q2/w0/f;->g:Ljava/lang/Object;

    iput-object v6, v0, Le/a/q2/w0/f;->h:Ljava/lang/Object;

    iput-object v3, v0, Le/a/q2/w0/f;->i:Ljava/lang/Object;

    iput-object v10, v0, Le/a/q2/w0/f;->j:Ljava/lang/Object;

    iput v5, v0, Le/a/q2/w0/f;->k:I

    invoke-interface {v11, v0}, Le/a/q2/w0/h/j;->h(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_3

    return-object v2

    :cond_3
    move-object v13, v3

    move-object v12, v6

    move-object v11, v7

    move-object v7, v9

    :goto_0
    const/4 v9, 0x0

    .line 11
    move-object v14, v5

    check-cast v14, Lcom/truecaller/analytics/call/BlockingAction;

    .line 12
    iget-object v3, v0, Le/a/q2/w0/f;->l:Le/a/q2/w0/g;

    iget-object v3, v3, Le/a/q2/w0/g;->c:Le/a/q2/w0/h/j;

    invoke-interface {v3}, Le/a/q2/w0/h/j;->k()J

    move-result-wide v15

    .line 13
    iget-object v3, v0, Le/a/q2/w0/f;->l:Le/a/q2/w0/g;

    iget-object v3, v3, Le/a/q2/w0/g;->c:Le/a/q2/w0/h/j;

    invoke-interface {v3}, Le/a/q2/w0/h/j;->i()J

    move-result-wide v17

    const/4 v3, 0x0

    iput-object v3, v0, Le/a/q2/w0/f;->e:Ljava/lang/Object;

    iput-object v3, v0, Le/a/q2/w0/f;->f:Ljava/lang/Object;

    iput-object v3, v0, Le/a/q2/w0/f;->g:Ljava/lang/Object;

    iput-object v3, v0, Le/a/q2/w0/f;->h:Ljava/lang/Object;

    iput-object v3, v0, Le/a/q2/w0/f;->i:Ljava/lang/Object;

    iput-object v3, v0, Le/a/q2/w0/f;->j:Ljava/lang/Object;

    iput v4, v0, Le/a/q2/w0/f;->k:I

    .line 14
    iget-object v3, v7, Le/a/q2/w0/b;->c:Ls1/w/f;

    new-instance v4, Le/a/q2/w0/d;

    const/16 v19, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v19}, Le/a/q2/w0/d;-><init>(Le/a/q2/w0/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/analytics/call/CallDirection;Lcom/truecaller/analytics/call/CallProvider;Lcom/truecaller/analytics/call/CallAnswered;Lcom/truecaller/analytics/call/BlockingAction;JJLs1/w/d;)V

    invoke-static {v3, v4, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v1

    :goto_1
    if-ne v3, v2, :cond_5

    return-object v2

    :cond_5
    :goto_2
    return-object v1
.end method
