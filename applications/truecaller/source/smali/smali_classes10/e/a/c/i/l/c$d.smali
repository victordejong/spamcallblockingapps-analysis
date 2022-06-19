.class public final Le/a/c/i/l/c$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/i/l/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLe/a/c/i/l/f/f;Le/a/c/i/l/e/a;JZI)Z
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.core.smartnotifications.InsightsSmartNotificationParserImpl$mayBeShowSmartNotification$1"
    f = "InsightsSmartNotificationParser.kt"
    l = {
        0x66,
        0x6f,
        0x79
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/c/i/l/c;

.field public final synthetic h:Z

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:J

.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Le/a/c/i/l/f/f;

.field public final synthetic p:Le/a/c/i/l/e/a;

.field public final synthetic q:Z

.field public final synthetic r:Z


# direct methods
.method public constructor <init>(Le/a/c/i/l/c;ZLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;Le/a/c/i/l/f/f;Le/a/c/i/l/e/a;ZZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/i/l/c$d;->g:Le/a/c/i/l/c;

    iput-boolean p2, p0, Le/a/c/i/l/c$d;->h:Z

    iput-object p3, p0, Le/a/c/i/l/c$d;->i:Ljava/lang/String;

    iput-object p4, p0, Le/a/c/i/l/c$d;->j:Ljava/lang/String;

    iput-wide p5, p0, Le/a/c/i/l/c$d;->k:J

    iput p7, p0, Le/a/c/i/l/c$d;->l:I

    iput p8, p0, Le/a/c/i/l/c$d;->m:I

    iput-object p9, p0, Le/a/c/i/l/c$d;->n:Ljava/lang/String;

    iput-object p10, p0, Le/a/c/i/l/c$d;->o:Le/a/c/i/l/f/f;

    iput-object p11, p0, Le/a/c/i/l/c$d;->p:Le/a/c/i/l/e/a;

    iput-boolean p12, p0, Le/a/c/i/l/c$d;->q:Z

    iput-boolean p13, p0, Le/a/c/i/l/c$d;->r:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p14}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 17
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

    move-object/from16 v0, p0

    const-string v1, "completion"

    move-object/from16 v15, p2

    invoke-static {v15, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Le/a/c/i/l/c$d;

    iget-object v3, v0, Le/a/c/i/l/c$d;->g:Le/a/c/i/l/c;

    iget-boolean v4, v0, Le/a/c/i/l/c$d;->h:Z

    iget-object v5, v0, Le/a/c/i/l/c$d;->i:Ljava/lang/String;

    iget-object v6, v0, Le/a/c/i/l/c$d;->j:Ljava/lang/String;

    iget-wide v7, v0, Le/a/c/i/l/c$d;->k:J

    iget v9, v0, Le/a/c/i/l/c$d;->l:I

    iget v10, v0, Le/a/c/i/l/c$d;->m:I

    iget-object v11, v0, Le/a/c/i/l/c$d;->n:Ljava/lang/String;

    iget-object v12, v0, Le/a/c/i/l/c$d;->o:Le/a/c/i/l/f/f;

    iget-object v13, v0, Le/a/c/i/l/c$d;->p:Le/a/c/i/l/e/a;

    iget-boolean v14, v0, Le/a/c/i/l/c$d;->q:Z

    iget-boolean v2, v0, Le/a/c/i/l/c$d;->r:Z

    move/from16 v16, v2

    move-object v2, v1

    move/from16 v15, v16

    move-object/from16 v16, p2

    invoke-direct/range {v2 .. v16}, Le/a/c/i/l/c$d;-><init>(Le/a/c/i/l/c;ZLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;Le/a/c/i/l/f/f;Le/a/c/i/l/e/a;ZZLs1/w/d;)V

    return-object v1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/c/i/l/c$d;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/c/i/l/c$d;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/i/l/c$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v10, p0

    sget-object v11, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v0, v10, Le/a/c/i/l/c$d;->f:I

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v6, :cond_1

    if-ne v0, v7, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto/16 :goto_3

    :cond_2
    iget-object v0, v10, Le/a/c/i/l/c$d;->e:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v1, v0

    move-object/from16 v0, p1

    goto/16 :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v10, Le/a/c/i/l/c$d;->g:Le/a/c/i/l/c;

    .line 5
    iget-object v0, v0, Le/a/c/i/l/c;->d:Le/a/c/b/j;

    .line 6
    invoke-interface {v0}, Le/a/c/b/j;->B()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, v10, Le/a/c/i/l/c$d;->h:Z

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 7
    :goto_0
    iget-object v3, v10, Le/a/c/i/l/c$d;->g:Le/a/c/i/l/c;

    .line 8
    iget-object v3, v3, Le/a/c/i/l/c;->d:Le/a/c/b/j;

    .line 9
    invoke-interface {v3}, Le/a/c/b/j;->b0()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 10
    iget-object v3, v10, Le/a/c/i/l/c$d;->i:Ljava/lang/String;

    invoke-static {v3}, Le/a/c/c0/q;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_c

    .line 11
    :cond_5
    iget-object v0, v10, Le/a/c/i/l/c$d;->g:Le/a/c/i/l/c;

    .line 12
    new-instance v3, Le/a/c/h/m/c;

    const-wide/16 v13, -0x1

    .line 13
    iget-object v15, v10, Le/a/c/i/l/c$d;->i:Ljava/lang/String;

    .line 14
    iget-object v4, v10, Le/a/c/i/l/c$d;->j:Ljava/lang/String;

    .line 15
    new-instance v5, Ljava/util/Date;

    iget-wide v6, v10, Le/a/c/i/l/c$d;->k:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    const-wide/16 v18, -0x1

    .line 16
    iget v6, v10, Le/a/c/i/l/c$d;->l:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x7c0

    move-object v12, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move/from16 v20, v6

    .line 17
    invoke-direct/range {v12 .. v26}, Le/a/c/h/m/c;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;JILjava/lang/String;ILjava/lang/String;ZLjava/lang/String;I)V

    .line 18
    iget-object v4, v0, Le/a/c/i/l/c;->b:Le/a/c/i/i/a;

    invoke-interface {v4, v3}, Le/a/c/i/i/a;->o(Le/a/c/h/m/c;)Le/a/c/r/h/f$b;

    move-result-object v3

    .line 19
    iget-object v4, v3, Le/a/c/r/h/f$b;->d:Le/a/c/r/h/i;

    .line 20
    instance-of v4, v4, Le/a/c/r/h/i$b;

    if-eqz v4, :cond_6

    .line 21
    iget-object v0, v0, Le/a/c/i/l/c;->c:Le/a/c/r/h/b;

    invoke-interface {v0, v3}, Le/a/c/r/h/b;->d(Le/a/c/r/h/f$b;)Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    move-result-object v0

    .line 22
    invoke-static {v0, v8, v1}, Le/a/c/p/a;->W2(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/Long;Z)Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :cond_6
    move-object v6, v8

    :goto_1
    if-eqz v6, :cond_9

    .line 23
    iget-object v0, v10, Le/a/c/i/l/c$d;->g:Le/a/c/i/l/c;

    .line 24
    iget-object v0, v0, Le/a/c/i/l/c;->i:Le/a/c/w/o0/g;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 25
    iput-object v6, v10, Le/a/c/i/l/c$d;->e:Ljava/lang/Object;

    iput v2, v10, Le/a/c/i/l/c$d;->f:I

    move-object v1, v6

    move v2, v3

    move-object/from16 v3, p0

    invoke-static/range {v0 .. v5}, Le/a/c/p/a;->F(Le/a/c/w/o0/g;Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_7

    return-object v11

    :cond_7
    move-object v1, v6

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    iget-object v0, v10, Le/a/c/i/l/c$d;->g:Le/a/c/i/l/c;

    .line 27
    iget v2, v10, Le/a/c/i/l/c$d;->m:I

    .line 28
    iget-object v3, v10, Le/a/c/i/l/c$d;->n:Ljava/lang/String;

    .line 29
    iget-object v4, v10, Le/a/c/i/l/c$d;->o:Le/a/c/i/l/f/f;

    .line 30
    iget-object v5, v10, Le/a/c/i/l/c$d;->p:Le/a/c/i/l/e/a;

    .line 31
    iget-boolean v6, v10, Le/a/c/i/l/c$d;->q:Z

    .line 32
    iget-boolean v7, v10, Le/a/c/i/l/c$d;->h:Z

    .line 33
    iget-boolean v12, v10, Le/a/c/i/l/c$d;->r:Z

    iput-object v8, v10, Le/a/c/i/l/c$d;->e:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v10, Le/a/c/i/l/c$d;->f:I

    move v8, v12

    move-object/from16 v9, p0

    .line 34
    invoke-virtual/range {v0 .. v9}, Le/a/c/i/l/c;->b(Lcom/truecaller/insights/models/pdo/ExtendedPdo;ILjava/lang/String;Le/a/c/i/l/f/f;Le/a/c/i/l/e/a;ZZZLs1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_8

    return-object v11

    .line 35
    :cond_8
    :goto_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_5

    :cond_9
    move-object v1, v6

    .line 36
    :cond_a
    iget-object v0, v10, Le/a/c/i/l/c$d;->g:Le/a/c/i/l/c;

    .line 37
    iget-object v0, v0, Le/a/c/i/l/c;->j:Le/a/c/i/l/g/a;

    .line 38
    iget v2, v10, Le/a/c/i/l/c$d;->m:I

    .line 39
    iget-object v3, v10, Le/a/c/i/l/c$d;->o:Le/a/c/i/l/f/f;

    .line 40
    iget-boolean v4, v10, Le/a/c/i/l/c$d;->q:Z

    .line 41
    iget-object v5, v10, Le/a/c/i/l/c$d;->j:Ljava/lang/String;

    .line 42
    iget-object v6, v10, Le/a/c/i/l/c$d;->i:Ljava/lang/String;

    .line 43
    iget-boolean v7, v10, Le/a/c/i/l/c$d;->h:Z

    iput-object v8, v10, Le/a/c/i/l/c$d;->e:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v10, Le/a/c/i/l/c$d;->f:I

    .line 44
    check-cast v0, Le/a/c/i/l/g/b;

    move-object/from16 v8, p0

    invoke-virtual/range {v0 .. v8}, Le/a/c/i/l/g/b;->a(Lcom/truecaller/insights/models/pdo/ExtendedPdo;ILe/a/c/i/l/f/f;ZLjava/lang/String;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_b

    return-object v11

    .line 45
    :cond_b
    :goto_4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 46
    :cond_c
    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
