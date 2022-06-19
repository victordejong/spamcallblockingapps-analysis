.class public final Le/a/a/c/a/h$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/a/h;->o(Ljava/util/List;Ljava/lang/String;Ls1/z/b/a;)V
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
    c = "com.truecaller.messaging.conversation.smartcards.SmartCardManagerImpl$updateRowFeedBackState$1"
    f = "SmartCardsManager.kt"
    l = {
        0x123
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Le/a/a/c/a/h;

.field public final synthetic k:Ljava/util/List;

.field public final synthetic l:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Le/a/a/c/a/h;Ljava/util/List;Ls1/z/b/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/a/h$e;->j:Le/a/a/c/a/h;

    iput-object p2, p0, Le/a/a/c/a/h$e;->k:Ljava/util/List;

    iput-object p3, p0, Le/a/a/c/a/h$e;->l:Ls1/z/b/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/a/c/a/h$e;

    iget-object v0, p0, Le/a/a/c/a/h$e;->j:Le/a/a/c/a/h;

    iget-object v1, p0, Le/a/a/c/a/h$e;->k:Ljava/util/List;

    iget-object v2, p0, Le/a/a/c/a/h$e;->l:Ls1/z/b/a;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/c/a/h$e;-><init>(Le/a/a/c/a/h;Ljava/util/List;Ls1/z/b/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/a/h$e;

    iget-object v0, p0, Le/a/a/c/a/h$e;->j:Le/a/a/c/a/h;

    iget-object v1, p0, Le/a/a/c/a/h$e;->k:Ljava/util/List;

    iget-object v2, p0, Le/a/a/c/a/h$e;->l:Ls1/z/b/a;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/c/a/h$e;-><init>(Le/a/a/c/a/h;Ljava/util/List;Ls1/z/b/a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/a/h$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Ls1/s;->a:Ls1/s;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v0, Le/a/a/c/a/h$e;->i:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Le/a/a/c/a/h$e;->h:Ljava/lang/Object;

    check-cast v3, Le/a/c/i/e/b;

    iget-object v5, v0, Le/a/a/c/a/h$e;->g:Ljava/lang/Object;

    check-cast v5, Ls1/o;

    iget-object v6, v0, Le/a/a/c/a/h$e;->f:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, v0, Le/a/a/c/a/h$e;->e:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v14, v4

    move-object/from16 v19, v5

    move-object v5, v0

    move-object/from16 v0, v19

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v3, v0, Le/a/a/c/a/h$e;->j:Le/a/a/c/a/h;

    .line 5
    iget v3, v3, Le/a/a/c/a/h;->b:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    return-object v1

    :cond_2
    const-string v3, "reported_not_spam"

    goto :goto_0

    :cond_3
    const-string v3, "reported_spam"

    .line 6
    :goto_0
    iget-object v5, v0, Le/a/a/c/a/h$e;->k:Ljava/util/List;

    .line 7
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v5

    move-object v5, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Ls1/o;

    .line 8
    iget-object v7, v15, Ls1/o;->a:Ljava/lang/Object;

    .line 9
    check-cast v7, Le/a/c/i/e/a;

    sget-object v14, Lcom/truecaller/insights/models/feedback/FeedbackType;->ROW_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    const-string v8, "$this$toInsightFeedback"

    .line 10
    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "userFeedback"

    invoke-static {v3, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "feedbackType"

    invoke-static {v14, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v13, Le/a/c/i/e/b;

    .line 12
    iget-object v8, v7, Le/a/c/i/e/a;->b:Ljava/lang/String;

    .line 13
    iget-boolean v9, v7, Le/a/c/i/e/a;->f:Z

    if-eqz v8, :cond_4

    .line 14
    invoke-static {v8}, Le/a/c/c0/q;->c(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-nez v9, :cond_5

    const-string v8, "10_digit"

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    .line 15
    :cond_5
    :goto_2
    iget-object v9, v7, Le/a/c/i/e/a;->a:Ljava/lang/String;

    .line 16
    iget-object v10, v7, Le/a/c/i/e/a;->d:Lw3/b/a/b;

    .line 17
    iget-object v11, v7, Le/a/c/i/e/a;->c:Ljava/lang/String;

    .line 18
    iget-object v12, v7, Le/a/c/i/e/a;->e:Le/a/c/r/j/p;

    .line 19
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x0

    .line 20
    iget-boolean v7, v7, Le/a/c/i/e/a;->f:Z

    const/16 v17, 0x80

    move/from16 v18, v7

    move-object v7, v13

    move-object v4, v13

    move-object v13, v3

    move-object v0, v15

    move-object/from16 v15, v16

    move/from16 v16, v18

    .line 21
    invoke-direct/range {v7 .. v17}, Le/a/c/i/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lw3/b/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/feedback/FeedbackType;Le/a/c/b0/c;ZI)V

    .line 22
    iget-object v7, v5, Le/a/a/c/a/h$e;->j:Le/a/a/c/a/h;

    .line 23
    iget-object v7, v7, Le/a/a/c/a/h;->u:Le/a/c/i/e/c;

    .line 24
    iget-object v8, v0, Ls1/o;->b:Ljava/lang/Object;

    .line 25
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 26
    iget-object v10, v0, Ls1/o;->c:Ljava/lang/Object;

    .line 27
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    iput-object v3, v5, Le/a/a/c/a/h$e;->e:Ljava/lang/Object;

    iput-object v6, v5, Le/a/a/c/a/h$e;->f:Ljava/lang/Object;

    iput-object v0, v5, Le/a/a/c/a/h$e;->g:Ljava/lang/Object;

    iput-object v4, v5, Le/a/a/c/a/h$e;->h:Ljava/lang/Object;

    const/4 v14, 0x1

    iput v14, v5, Le/a/a/c/a/h$e;->i:I

    move-object v10, v4

    move-object v13, v5

    invoke-interface/range {v7 .. v13}, Le/a/c/i/e/c;->g(JLe/a/c/i/e/b;JLs1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_6

    return-object v2

    :cond_6
    move-object v7, v3

    move-object v3, v4

    .line 28
    :goto_3
    iget-object v4, v5, Le/a/a/c/a/h$e;->j:Le/a/a/c/a/h;

    .line 29
    iget-object v4, v4, Le/a/a/c/a/h;->h:Ljava/util/Map;

    if-eqz v4, :cond_7

    .line 30
    iget-object v0, v0, Ls1/o;->b:Ljava/lang/Object;

    .line 31
    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/i/e/b;

    :cond_7
    move-object/from16 v0, p0

    move-object v3, v7

    move v4, v14

    goto/16 :goto_1

    .line 32
    :cond_8
    iget-object v0, v5, Le/a/a/c/a/h$e;->l:Ls1/z/b/a;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    return-object v1
.end method
