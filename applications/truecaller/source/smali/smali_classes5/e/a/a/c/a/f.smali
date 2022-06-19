.class public final Le/a/a/c/a/f;
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
        "Ljava/util/List<",
        "+",
        "Le/a/c/y/f;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.conversation.smartcards.InfoCardManagerRevampImpl$getInfoCards$2"
    f = "InfoCardsManagerRevamp.kt"
    l = {
        0xd3,
        0xd6,
        0xd5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/a/c/a/e;

.field public final synthetic h:Le/a/c/i/g/c;


# direct methods
.method public constructor <init>(Le/a/a/c/a/e;Le/a/c/i/g/c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/a/f;->g:Le/a/a/c/a/e;

    iput-object p2, p0, Le/a/a/c/a/f;->h:Le/a/c/i/g/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/a/f;

    iget-object v0, p0, Le/a/a/c/a/f;->g:Le/a/a/c/a/e;

    iget-object v1, p0, Le/a/a/c/a/f;->h:Le/a/c/i/g/c;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/c/a/f;-><init>(Le/a/a/c/a/e;Le/a/c/i/g/c;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/a/f;

    iget-object v0, p0, Le/a/a/c/a/f;->g:Le/a/a/c/a/e;

    iget-object v1, p0, Le/a/a/c/a/f;->h:Le/a/c/i/g/c;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/c/a/f;-><init>(Le/a/a/c/a/e;Le/a/c/i/g/c;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/a/f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/c/a/f;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_2

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v2, v0, Le/a/a/c/a/f;->e:Ljava/lang/Object;

    check-cast v2, Le/a/a/c/a/e;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/a/c/a/f;->g:Le/a/a/c/a/e;

    .line 5
    iget-object v2, v2, Le/a/a/c/a/e;->m:Le/a/c/e/a;

    .line 6
    iget-object v6, v0, Le/a/a/c/a/f;->h:Le/a/c/i/g/c;

    .line 7
    iget-object v7, v6, Le/a/c/i/g/c;->b:Ljava/lang/String;

    .line 8
    iget-object v6, v6, Le/a/c/i/g/c;->c:Ljava/lang/String;

    .line 9
    invoke-interface {v2, v7, v6}, Le/a/c/e/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v2, Le/a/c/c0/q;->b:Le/a/c/c0/q;

    iget-object v6, v0, Le/a/a/c/a/f;->h:Le/a/c/i/g/c;

    .line 11
    iget-object v6, v6, Le/a/c/i/g/c;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v6}, Le/a/c/c0/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    iget-object v6, v0, Le/a/a/c/a/f;->g:Le/a/a/c/a/e;

    .line 14
    iget-object v6, v6, Le/a/a/c/a/e;->p:Le/a/c/w/o0/g;

    .line 15
    iput v3, v0, Le/a/a/c/a/f;->f:I

    invoke-interface {v6, v2, v0}, Le/a/c/w/o0/g;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_0
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    goto/16 :goto_10

    .line 16
    :cond_5
    iget-object v2, v0, Le/a/a/c/a/f;->g:Le/a/a/c/a/e;

    .line 17
    iget-object v6, v2, Le/a/a/c/a/e;->o:Le/a/c/p/d;

    .line 18
    iget-object v7, v0, Le/a/a/c/a/f;->h:Le/a/c/i/g/c;

    iput-object v2, v0, Le/a/a/c/a/f;->e:Ljava/lang/Object;

    iput v5, v0, Le/a/a/c/a/f;->f:I

    .line 19
    invoke-interface {v6, v7, v0}, Le/a/c/p/d;->a(Le/a/c/i/g/c;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_6

    return-object v1

    .line 20
    :cond_6
    :goto_1
    check-cast v5, Ljava/util/List;

    const/4 v6, 0x0

    iput-object v6, v0, Le/a/a/c/a/f;->e:Ljava/lang/Object;

    iput v4, v0, Le/a/a/c/a/f;->f:I

    .line 21
    invoke-virtual {v2, v5, v0}, Le/a/a/c/a/e;->l(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    return-object v1

    .line 22
    :cond_7
    :goto_2
    check-cast v2, Ljava/util/List;

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 25
    move-object v6, v5

    check-cast v6, Le/a/c/y/f;

    .line 26
    iget-object v5, v6, Le/a/c/y/f;->h:Le/a/c/r/j/p;

    .line 27
    sget-object v7, Le/a/c/r/j/p$b;->b:Le/a/c/r/j/p$b;

    invoke-static {v5, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 28
    iget-object v5, v6, Le/a/c/y/f;->c:Le/a/c/y/l;

    .line 29
    iget-object v5, v5, Le/a/c/y/l;->j:Ljava/util/List;

    .line 30
    instance-of v7, v5, Ljava/util/Collection;

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_6

    .line 31
    :cond_8
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/c/y/i;

    .line 32
    instance-of v8, v7, Le/a/c/y/i$c;

    if-nez v8, :cond_b

    instance-of v7, v7, Le/a/c/y/i$a;

    if-eqz v7, :cond_a

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    move v7, v3

    :goto_5
    if-eqz v7, :cond_9

    move v5, v3

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_d

    goto :goto_8

    :cond_d
    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_11

    .line 33
    iget-object v7, v6, Le/a/c/y/f;->c:Le/a/c/y/l;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    .line 34
    iget-object v3, v7, Le/a/c/y/l;->j:Ljava/util/List;

    .line 35
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Le/a/c/y/i;

    .line 37
    instance-of v15, v14, Le/a/c/y/i$c;

    if-nez v15, :cond_f

    instance-of v14, v14, Le/a/c/y/i$a;

    if-nez v14, :cond_f

    const/4 v14, 0x1

    goto :goto_a

    :cond_f
    const/4 v14, 0x0

    :goto_a
    if-eqz v14, :cond_e

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x3dff

    const/4 v3, 0x0

    const/4 v14, 0x0

    move-object v13, v3

    const/4 v15, 0x0

    move-object/from16 v17, v5

    .line 38
    invoke-static/range {v7 .. v22}, Le/a/c/y/l;->a(Le/a/c/y/l;Lcom/truecaller/insights/smartcards/SmartCardCategory;Lcom/truecaller/insights/smartcards/SmartCardStatus;Ljava/lang/String;Ljava/lang/String;ILe/a/c/r/j/b0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Le/a/c/y/i;ZLjava/lang/String;I)Le/a/c/y/l;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1fb

    const-wide/16 v9, 0x0

    const-wide/16 v7, 0x0

    .line 39
    invoke-static/range {v6 .. v18}, Le/a/c/y/f;->a(Le/a/c/y/f;JJLe/a/c/y/l;ZLe/a/c/r/j/h;Le/a/c/i/e/b;Lw3/b/a/b;Le/a/c/r/j/p;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;I)Le/a/c/y/f;

    move-result-object v6

    goto/16 :goto_f

    .line 40
    :cond_11
    iget-object v3, v6, Le/a/c/y/f;->h:Le/a/c/r/j/p;

    .line 41
    sget-object v5, Le/a/c/r/j/p$d;->b:Le/a/c/r/j/p$d;

    invoke-static {v3, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 42
    iget-object v3, v6, Le/a/c/y/f;->c:Le/a/c/y/l;

    .line 43
    iget-object v3, v3, Le/a/c/y/l;->j:Ljava/util/List;

    .line 44
    instance-of v5, v3, Ljava/util/Collection;

    if-eqz v5, :cond_12

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_b

    .line 45
    :cond_12
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/c/y/i;

    .line 46
    instance-of v5, v5, Le/a/c/y/i$b;

    if-eqz v5, :cond_13

    const/4 v3, 0x1

    goto :goto_c

    :cond_14
    :goto_b
    const/4 v3, 0x0

    :goto_c
    if-eqz v3, :cond_15

    const/4 v3, 0x1

    goto :goto_d

    :cond_15
    const/4 v3, 0x0

    :goto_d
    if-eqz v3, :cond_18

    const-wide/16 v7, 0x0

    .line 47
    iget-object v11, v6, Le/a/c/y/f;->c:Le/a/c/y/l;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 48
    iget-object v3, v11, Le/a/c/y/l;->j:Ljava/util/List;

    .line 49
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Le/a/c/y/i;

    .line 51
    instance-of v10, v10, Le/a/c/y/i$b;

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_16

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_17
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x3dff

    move-object/from16 v21, v5

    .line 52
    invoke-static/range {v11 .. v26}, Le/a/c/y/l;->a(Le/a/c/y/l;Lcom/truecaller/insights/smartcards/SmartCardCategory;Lcom/truecaller/insights/smartcards/SmartCardStatus;Ljava/lang/String;Ljava/lang/String;ILe/a/c/r/j/b0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Le/a/c/y/i;ZLjava/lang/String;I)Le/a/c/y/l;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1fb

    const-wide/16 v9, 0x0

    .line 53
    invoke-static/range {v6 .. v18}, Le/a/c/y/f;->a(Le/a/c/y/f;JJLe/a/c/y/l;ZLe/a/c/r/j/h;Le/a/c/i/e/b;Lw3/b/a/b;Le/a/c/r/j/p;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;I)Le/a/c/y/f;

    move-result-object v6

    .line 54
    :cond_18
    :goto_f
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_19
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "InfoCard Flow: InfoCardsManager: infocards fetched from repository - "

    .line 55
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "infocards after removing already paid: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 57
    invoke-static {v3}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    :goto_10
    return-object v1
.end method
