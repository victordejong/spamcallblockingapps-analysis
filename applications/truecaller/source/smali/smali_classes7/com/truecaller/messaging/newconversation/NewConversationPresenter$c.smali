.class public final Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Sj(Ljava/util/List;Ljava/util/List;Z)V
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
    c = "com.truecaller.messaging.newconversation.NewConversationPresenter$initiateMessageForwarding$1"
    f = "NewConversationPresenter.kt"
    l = {
        0x246,
        0x24f,
        0x261
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

.field public final synthetic l:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

.field public final synthetic m:Ljava/util/List;

.field public final synthetic n:Ljava/util/List;

.field public final synthetic o:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ljava/util/List;Ljava/util/List;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->l:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    iput-object p2, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->m:Ljava/util/List;

    iput-object p3, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->n:Ljava/util/List;

    iput-boolean p4, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->o:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;

    iget-object v1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->l:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    iget-object v2, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->m:Ljava/util/List;

    iget-object v3, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->n:Ljava/util/List;

    iget-boolean v4, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->o:Z

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;-><init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ljava/util/List;Ljava/util/List;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    sget-object v1, Ls1/s;->a:Ls1/s;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->k:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v4, :cond_1

    if-ne v3, v6, :cond_0

    iget-object v3, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->j:Ljava/lang/Object;

    check-cast v3, Ls1/z/c/c0;

    iget-object v8, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->i:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    iget-object v9, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->h:Ljava/lang/Object;

    check-cast v9, Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v10, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->g:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->f:Ljava/lang/Object;

    check-cast v11, Ls1/z/c/c0;

    iget-object v12, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->e:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v13, p1

    move-object/from16 v18, v8

    move-object/from16 v16, v9

    move-object v9, v12

    move-object v8, v0

    goto/16 :goto_e

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v3, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->j:Ljava/lang/Object;

    check-cast v3, Ls1/z/c/c0;

    iget-object v8, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->i:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    iget-object v9, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->h:Ljava/lang/Object;

    check-cast v9, Lcom/truecaller/messaging/data/types/Conversation;

    iget-object v10, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->g:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->f:Ljava/lang/Object;

    check-cast v11, Ls1/z/c/c0;

    iget-object v12, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->e:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v13, p1

    move-object/from16 v18, v8

    move-object/from16 v17, v9

    move-object v8, v0

    goto/16 :goto_a

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v3, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v7

    .line 5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 6
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_0

    :cond_4
    move-object v3, v5

    :goto_0
    if-eqz v3, :cond_8

    .line 7
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 9
    check-cast v9, Ls1/k;

    .line 10
    iget-object v9, v9, Ls1/k;->a:Ljava/lang/Object;

    .line 11
    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_5

    .line 12
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_6
    iget-object v3, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->l:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 14
    iget-object v3, v3, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->r:Lo3/a;

    .line 15
    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/g/w;

    iput v7, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->k:I

    invoke-interface {v3, v8, v0}, Le/a/a/g/w;->i(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_7

    return-object v2

    :cond_7
    :goto_2
    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    sget-object v3, Ls1/u/s;->a:Ls1/u/s;

    .line 16
    :goto_3
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v3, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 18
    check-cast v9, Lcom/truecaller/messaging/data/types/Conversation;

    .line 19
    iget-object v10, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->m:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ls1/k;

    .line 20
    iget-object v12, v12, Ls1/k;->a:Ljava/lang/Object;

    .line 21
    check-cast v12, Ljava/lang/Long;

    if-eqz v9, :cond_a

    iget-wide v13, v9, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    .line 22
    new-instance v15, Ljava/lang/Long;

    invoke-direct {v15, v13, v14}, Ljava/lang/Long;-><init>(J)V

    goto :goto_5

    :cond_a
    move-object v15, v5

    .line 23
    :goto_5
    invoke-static {v12, v15}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 24
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 25
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_9

    goto :goto_6

    :cond_b
    move-object v11, v5

    :goto_6
    check-cast v11, Ls1/k;

    if-eqz v11, :cond_c

    .line 26
    iget-object v10, v11, Ls1/k;->b:Ljava/lang/Object;

    .line 27
    check-cast v10, Ljava/lang/Integer;

    goto :goto_7

    :cond_c
    move-object v10, v5

    :goto_7
    new-instance v11, Ls1/k;

    invoke-direct {v11, v9, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 28
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    new-instance v9, Ls1/z/c/c0;

    invoke-direct {v9}, Ls1/z/c/c0;-><init>()V

    .line 30
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v12, v3

    move-object v10, v8

    move-object v3, v9

    move-object v8, v0

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ls1/k;

    .line 31
    iget-object v11, v9, Ls1/k;->a:Ljava/lang/Object;

    .line 32
    check-cast v11, Lcom/truecaller/messaging/data/types/Conversation;

    .line 33
    iget-object v9, v9, Ls1/k;->b:Ljava/lang/Object;

    .line 34
    check-cast v9, Ljava/lang/Integer;

    .line 35
    iget-object v13, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->l:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 36
    iget-object v13, v13, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->w:Le/a/r2/f;

    .line 37
    invoke-interface {v13}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/o5/q0;

    iget-object v14, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->l:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    if-eqz v9, :cond_e

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_9

    :cond_e
    move v15, v6

    .line 38
    :goto_9
    invoke-virtual {v14, v15}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Pj(I)Ljava/util/ArrayList;

    move-result-object v14

    .line 39
    invoke-interface {v13, v14}, Le/a/o5/q0;->a(Ljava/util/ArrayList;)Le/a/r2/x;

    move-result-object v13

    iput-object v12, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->e:Ljava/lang/Object;

    iput-object v3, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->f:Ljava/lang/Object;

    iput-object v10, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->g:Ljava/lang/Object;

    iput-object v11, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->h:Ljava/lang/Object;

    iput-object v9, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->i:Ljava/lang/Object;

    iput-object v3, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->j:Ljava/lang/Object;

    iput v4, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->k:I

    invoke-static {v13, v8}, Le/a/e/a2;->g(Le/a/r2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v2, :cond_f

    return-object v2

    :cond_f
    move-object/from16 v18, v9

    move-object/from16 v17, v11

    move-object v11, v3

    .line 40
    :goto_a
    check-cast v13, Ljava/util/ArrayList;

    iput-object v13, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 41
    iget-object v3, v11, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object/from16 v19, v3

    check-cast v19, Ljava/util/ArrayList;

    if-nez v19, :cond_10

    .line 42
    iget-object v2, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->l:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 43
    invoke-virtual {v2, v12, v7}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Rj(Ljava/util/List;Z)V

    return-object v1

    :cond_10
    if-eqz v19, :cond_12

    .line 44
    iget-object v3, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->l:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    if-eqz v18, :cond_11

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_b

    :cond_11
    move v9, v6

    .line 45
    :goto_b
    invoke-virtual {v3, v9}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Pj(I)Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_12

    .line 46
    iget-object v14, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->l:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    const/16 v16, 0x0

    const/16 v20, 0x1

    invoke-static/range {v14 .. v20}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Uj(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ljava/util/ArrayList;Lcom/truecaller/data/entity/messaging/Participant;Lcom/truecaller/messaging/data/types/Conversation;Ljava/lang/Integer;Ljava/util/ArrayList;I)Ljava/util/List;

    move-result-object v3

    .line 47
    invoke-interface {v12, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_12
    move-object v3, v11

    goto :goto_8

    .line 48
    :cond_13
    iget-object v9, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->n:Ljava/util/List;

    .line 49
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v9

    move-object v9, v12

    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ls1/k;

    .line 50
    iget-object v12, v11, Ls1/k;->a:Ljava/lang/Object;

    .line 51
    check-cast v12, Lcom/truecaller/data/entity/messaging/Participant;

    .line 52
    iget-object v11, v11, Ls1/k;->b:Ljava/lang/Object;

    .line 53
    check-cast v11, Ljava/lang/Integer;

    .line 54
    iget-object v13, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->l:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 55
    iget-object v13, v13, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->w:Le/a/r2/f;

    .line 56
    invoke-interface {v13}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/o5/q0;

    iget-object v14, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->l:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    if-eqz v11, :cond_14

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_d

    :cond_14
    move v15, v6

    .line 57
    :goto_d
    invoke-virtual {v14, v15}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Pj(I)Ljava/util/ArrayList;

    move-result-object v14

    .line 58
    invoke-interface {v13, v14}, Le/a/o5/q0;->a(Ljava/util/ArrayList;)Le/a/r2/x;

    move-result-object v13

    iput-object v9, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->e:Ljava/lang/Object;

    iput-object v3, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->f:Ljava/lang/Object;

    iput-object v10, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->g:Ljava/lang/Object;

    iput-object v12, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->h:Ljava/lang/Object;

    iput-object v11, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->i:Ljava/lang/Object;

    iput-object v3, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->j:Ljava/lang/Object;

    iput v6, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->k:I

    invoke-static {v13, v8}, Le/a/e/a2;->g(Le/a/r2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v2, :cond_15

    return-object v2

    :cond_15
    move-object/from16 v18, v11

    move-object/from16 v16, v12

    move-object v11, v3

    .line 59
    :goto_e
    check-cast v13, Ljava/util/ArrayList;

    iput-object v13, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 60
    iget-object v3, v11, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object/from16 v19, v3

    check-cast v19, Ljava/util/ArrayList;

    if-nez v19, :cond_16

    .line 61
    iget-object v2, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->l:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 62
    invoke-virtual {v2, v9, v7}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Rj(Ljava/util/List;Z)V

    return-object v1

    :cond_16
    if-eqz v19, :cond_18

    .line 63
    iget-object v3, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->l:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    if-eqz v18, :cond_17

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_f

    :cond_17
    move v12, v6

    .line 64
    :goto_f
    invoke-virtual {v3, v12}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Pj(I)Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_18

    .line 65
    iget-object v14, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->l:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    const/16 v17, 0x0

    const/16 v20, 0x2

    invoke-static/range {v14 .. v20}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Uj(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ljava/util/ArrayList;Lcom/truecaller/data/entity/messaging/Participant;Lcom/truecaller/messaging/data/types/Conversation;Ljava/lang/Integer;Ljava/util/ArrayList;I)Ljava/util/List;

    move-result-object v3

    .line 66
    invoke-interface {v9, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_18
    move-object v3, v11

    goto :goto_c

    .line 67
    :cond_19
    iget-object v2, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->l:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    iget-boolean v3, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->o:Z

    .line 68
    iget-object v10, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v10, Le/a/a/d/v;

    const/4 v11, 0x0

    if-eqz v10, :cond_28

    .line 69
    iget-object v12, v2, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->t:Le/a/e4/p;

    invoke-interface {v12}, Le/a/e4/p;->b()Ljava/lang/String;

    move-result-object v13

    const-string v12, "multisimManager.defaultSimToken"

    invoke-static {v13, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    instance-of v12, v9, Ljava/util/Collection;

    if-eqz v12, :cond_1a

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1a

    goto :goto_11

    .line 71
    :cond_1a
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ls1/k;

    .line 72
    iget-object v14, v14, Ls1/k;->a:Ljava/lang/Object;

    .line 73
    check-cast v14, Lcom/truecaller/messaging/data/types/Draft;

    iget v14, v14, Lcom/truecaller/messaging/data/types/Draft;->n:I

    if-ne v14, v4, :cond_1c

    move v14, v7

    goto :goto_10

    :cond_1c
    move v14, v11

    :goto_10
    if-nez v14, :cond_1b

    move v14, v11

    goto :goto_12

    :cond_1d
    :goto_11
    move v14, v7

    .line 74
    :goto_12
    iget-object v11, v2, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->s:Le/a/a/c1/d;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v12, v9

    invoke-interface/range {v11 .. v16}, Le/a/a/c1/d;->c(Ljava/util/List;Ljava/lang/String;ZZZ)Le/a/a/c1/b;

    move-result-object v11

    .line 75
    instance-of v12, v11, Le/a/a/c1/b$e;

    if-nez v12, :cond_25

    .line 76
    instance-of v3, v11, Le/a/a/c1/b$d;

    if-eqz v3, :cond_1e

    const-string v2, "conversation-forwardAsSms"

    invoke-interface {v10, v2}, Le/a/a/c1/j;->j2(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 77
    :cond_1e
    instance-of v3, v11, Le/a/a/c1/b$c;

    if-eqz v3, :cond_21

    .line 78
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/a/d/v;

    if-eqz v2, :cond_28

    const-string v3, "android.permission.READ_SMS"

    .line 79
    invoke-interface {v2, v3}, Le/a/a/d/v;->k(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    const-string v3, "android.permission.SEND_SMS"

    .line 80
    invoke-interface {v2, v3}, Le/a/a/d/v;->k(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    const-string v3, "android.permission.RECEIVE_SMS"

    .line 81
    invoke-interface {v2, v3}, Le/a/a/d/v;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_13

    .line 82
    :cond_1f
    invoke-interface {v2}, Le/a/a/c1/j;->t0()V

    goto :goto_15

    .line 83
    :cond_20
    :goto_13
    invoke-interface {v2}, Le/a/a/d/v;->kj()V

    goto :goto_15

    .line 84
    :cond_21
    instance-of v2, v11, Le/a/a/c1/b$a;

    if-eqz v2, :cond_22

    check-cast v11, Le/a/a/c1/b$a;

    .line 85
    iget-wide v2, v11, Le/a/a/c1/b$a;->a:J

    .line 86
    invoke-interface {v10, v2, v3}, Le/a/a/c1/j;->L2(J)V

    goto :goto_15

    .line 87
    :cond_22
    instance-of v2, v11, Le/a/a/c1/b$g;

    if-eqz v2, :cond_23

    goto :goto_15

    :cond_23
    instance-of v2, v11, Le/a/a/c1/b$b;

    if-eqz v2, :cond_24

    goto :goto_15

    .line 88
    :cond_24
    instance-of v2, v11, Le/a/a/c1/b$f;

    goto :goto_15

    :cond_25
    if-eqz v3, :cond_26

    .line 89
    check-cast v11, Le/a/a/c1/b$e;

    .line 90
    iget-object v3, v11, Le/a/a/c1/b$e;->a:Ljava/util/List;

    .line 91
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/truecaller/messaging/data/types/Draft;

    .line 92
    iget-object v11, v2, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->P:Lo3/a;

    invoke-interface {v11}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/a/r2/f;

    invoke-interface {v11}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/a/a/g/m;

    const-string v12, "forwardMessages"

    invoke-interface {v11, v10, v12}, Le/a/a/g/m;->B(Lcom/truecaller/messaging/data/types/Draft;Ljava/lang/String;)Le/a/r2/x;

    move-result-object v10

    invoke-virtual {v10}, Le/a/r2/x;->g()V

    goto :goto_14

    .line 93
    :cond_26
    iget-object v2, v2, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->s:Le/a/a/c1/d;

    .line 94
    move-object v12, v11

    check-cast v12, Le/a/a/c1/b$e;

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x0

    const-string v14, "forwardMessages"

    move-object v11, v2

    .line 95
    invoke-static/range {v11 .. v18}, Le/a/c/p/a;->y2(Le/a/a/c1/d;Le/a/a/c1/b$e;ZLjava/lang/String;JILjava/lang/Object;)Le/a/r2/x;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Le/a/r2/x;->g()V

    :cond_27
    move v2, v7

    goto :goto_16

    :cond_28
    :goto_15
    const/4 v2, 0x0

    :goto_16
    if-eqz v2, :cond_6a

    .line 97
    iget-object v2, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->l:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 98
    invoke-virtual {v2, v6}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Pj(I)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_66

    .line 99
    iget-object v6, v2, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->z:Le/a/a/d/s;

    .line 100
    instance-of v9, v6, Le/a/a/d/s$c;

    if-eqz v9, :cond_29

    const-string v6, "MessageForward"

    goto :goto_17

    .line 101
    :cond_29
    instance-of v6, v6, Le/a/a/d/s$b;

    if-eqz v6, :cond_66

    const-string v6, "MessageShare"

    .line 102
    :goto_17
    iget-object v9, v2, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->x:Le/a/a/d/n;

    invoke-virtual {v9}, Le/a/a/d/n;->A()Ljava/util/List;

    move-result-object v9

    .line 103
    instance-of v10, v9, Ljava/util/Collection;

    if-eqz v10, :cond_2a

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2a

    const/4 v9, 0x0

    goto :goto_1a

    .line 104
    :cond_2a
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :cond_2b
    :goto_18
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/a/a/g/l0/f;

    if-eqz v11, :cond_2c

    .line 105
    invoke-virtual {v2, v11}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Qj(Le/a/a/g/l0/f;)I

    move-result v11

    if-ne v11, v4, :cond_2c

    move v11, v7

    goto :goto_19

    :cond_2c
    const/4 v11, 0x0

    :goto_19
    if-eqz v11, :cond_2b

    add-int/lit8 v10, v10, 0x1

    if-ltz v10, :cond_2d

    goto :goto_18

    :cond_2d
    invoke-static {}, Ls1/u/i;->M0()V

    throw v5

    :cond_2e
    move v9, v10

    .line 106
    :goto_1a
    iget-object v10, v2, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->x:Le/a/a/d/n;

    invoke-virtual {v10}, Le/a/a/d/n;->A()Ljava/util/List;

    move-result-object v10

    .line 107
    instance-of v11, v10, Ljava/util/Collection;

    if-eqz v11, :cond_2f

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2f

    const/4 v5, 0x0

    goto :goto_1d

    .line 108
    :cond_2f
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :cond_30
    :goto_1b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_33

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/a/a/g/l0/f;

    if-eqz v12, :cond_31

    .line 109
    invoke-virtual {v2, v12}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Qj(Le/a/a/g/l0/f;)I

    move-result v12

    if-nez v12, :cond_31

    move v12, v7

    goto :goto_1c

    :cond_31
    const/4 v12, 0x0

    :goto_1c
    if-eqz v12, :cond_30

    add-int/lit8 v11, v11, 0x1

    if-ltz v11, :cond_32

    goto :goto_1b

    :cond_32
    invoke-static {}, Ls1/u/i;->M0()V

    throw v5

    :cond_33
    move v5, v11

    :goto_1d
    const-string v10, "$this$toAnalyticsMediaType"

    .line 110
    invoke-static {v3, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_34

    goto :goto_20

    .line 112
    :cond_34
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_35
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_38

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/truecaller/messaging/ForwardContentItem;

    .line 113
    iget-object v12, v11, Lcom/truecaller/messaging/ForwardContentItem;->a:Ljava/lang/String;

    .line 114
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_36

    move v12, v7

    goto :goto_1e

    :cond_36
    const/4 v12, 0x0

    :goto_1e
    if-eqz v12, :cond_37

    .line 115
    iget-object v11, v11, Lcom/truecaller/messaging/ForwardContentItem;->c:Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-nez v11, :cond_37

    move v11, v7

    goto :goto_1f

    :cond_37
    const/4 v11, 0x0

    :goto_1f
    if-nez v11, :cond_35

    const/4 v10, 0x0

    goto :goto_21

    :cond_38
    :goto_20
    move v10, v7

    :goto_21
    const-string v11, "mixed"

    if-eqz v10, :cond_39

    const-string v7, "text"

    goto/16 :goto_31

    .line 116
    :cond_39
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3a

    goto :goto_24

    .line 117
    :cond_3a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/truecaller/messaging/ForwardContentItem;

    .line 118
    iget-object v13, v12, Lcom/truecaller/messaging/ForwardContentItem;->c:Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v13, :cond_3d

    .line 119
    invoke-virtual {v13}, Lcom/truecaller/messaging/data/types/BinaryEntity;->l()Z

    move-result v13

    if-ne v13, v7, :cond_3d

    .line 120
    iget-object v12, v12, Lcom/truecaller/messaging/ForwardContentItem;->a:Ljava/lang/String;

    .line 121
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_3c

    move v12, v7

    goto :goto_22

    :cond_3c
    const/4 v12, 0x0

    :goto_22
    if-eqz v12, :cond_3d

    move v12, v7

    goto :goto_23

    :cond_3d
    const/4 v12, 0x0

    :goto_23
    if-nez v12, :cond_3b

    const/4 v10, 0x0

    goto :goto_25

    :cond_3e
    :goto_24
    move v10, v7

    :goto_25
    if-eqz v10, :cond_3f

    const-string v7, "image"

    goto/16 :goto_31

    .line 122
    :cond_3f
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_40

    goto :goto_28

    .line 123
    :cond_40
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_41
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_44

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/truecaller/messaging/ForwardContentItem;

    .line 124
    iget-object v13, v12, Lcom/truecaller/messaging/ForwardContentItem;->c:Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v13, :cond_43

    .line 125
    invoke-virtual {v13}, Lcom/truecaller/messaging/data/types/BinaryEntity;->w()Z

    move-result v13

    if-ne v13, v7, :cond_43

    .line 126
    iget-object v12, v12, Lcom/truecaller/messaging/ForwardContentItem;->a:Ljava/lang/String;

    .line 127
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_42

    move v12, v7

    goto :goto_26

    :cond_42
    const/4 v12, 0x0

    :goto_26
    if-eqz v12, :cond_43

    move v12, v7

    goto :goto_27

    :cond_43
    const/4 v12, 0x0

    :goto_27
    if-nez v12, :cond_41

    const/4 v10, 0x0

    goto :goto_29

    :cond_44
    :goto_28
    move v10, v7

    :goto_29
    if-eqz v10, :cond_45

    const-string v7, "video"

    goto/16 :goto_31

    .line 128
    :cond_45
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_46

    goto :goto_2c

    .line 129
    :cond_46
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_47
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/truecaller/messaging/ForwardContentItem;

    .line 130
    iget-object v13, v12, Lcom/truecaller/messaging/ForwardContentItem;->c:Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v13, :cond_49

    .line 131
    invoke-virtual {v13}, Lcom/truecaller/messaging/data/types/BinaryEntity;->e()Z

    move-result v13

    if-ne v13, v7, :cond_49

    .line 132
    iget-object v12, v12, Lcom/truecaller/messaging/ForwardContentItem;->a:Ljava/lang/String;

    .line 133
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_48

    move v12, v7

    goto :goto_2a

    :cond_48
    const/4 v12, 0x0

    :goto_2a
    if-eqz v12, :cond_49

    move v12, v7

    goto :goto_2b

    :cond_49
    const/4 v12, 0x0

    :goto_2b
    if-nez v12, :cond_47

    const/4 v10, 0x0

    goto :goto_2d

    :cond_4a
    :goto_2c
    move v10, v7

    :goto_2d
    if-eqz v10, :cond_4b

    const-string v7, "audio"

    goto :goto_31

    .line 134
    :cond_4b
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4c

    goto :goto_30

    .line 135
    :cond_4c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_50

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/truecaller/messaging/ForwardContentItem;

    .line 136
    iget-object v13, v12, Lcom/truecaller/messaging/ForwardContentItem;->c:Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v13, :cond_4f

    .line 137
    invoke-virtual {v13}, Lcom/truecaller/messaging/data/types/BinaryEntity;->t()Z

    move-result v13

    if-ne v13, v7, :cond_4f

    .line 138
    iget-object v12, v12, Lcom/truecaller/messaging/ForwardContentItem;->a:Ljava/lang/String;

    .line 139
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_4e

    move v12, v7

    goto :goto_2e

    :cond_4e
    const/4 v12, 0x0

    :goto_2e
    if-eqz v12, :cond_4f

    move v12, v7

    goto :goto_2f

    :cond_4f
    const/4 v12, 0x0

    :goto_2f
    if-nez v12, :cond_4d

    const/4 v7, 0x0

    :cond_50
    :goto_30
    if-eqz v7, :cond_51

    const-string v7, "vcard"

    goto :goto_31

    :cond_51
    move-object v7, v11

    :goto_31
    const-string v10, "type"

    .line 140
    invoke-static {v6, v10}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v10

    .line 141
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 142
    iget-object v12, v2, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->x:Le/a/a/d/n;

    invoke-virtual {v12}, Le/a/a/d/n;->A()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    int-to-double v12, v12

    .line 143
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    const-string v14, "value"

    invoke-interface {v15, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "mediaType"

    const-string v13, "name"

    .line 144
    invoke-static {v12, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-interface {v10, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "imPeers"

    .line 146
    invoke-static {v7, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p1, v11

    int-to-double v11, v9

    .line 147
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v15, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "smsPeers"

    .line 148
    invoke-static {v3}, Le/a/c/p/a;->b1(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_52

    const/4 v9, 0x0

    goto :goto_32

    :cond_52
    move v9, v5

    .line 149
    :goto_32
    invoke-static {v7, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v11, v9

    .line 150
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v15, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "mmsPeers"

    .line 151
    invoke-static {v3}, Le/a/c/p/a;->b1(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_53

    goto :goto_33

    :cond_53
    const/4 v5, 0x0

    .line 152
    :goto_33
    invoke-static {v7, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v11, v5

    .line 153
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v15, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v5, v2, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->z:Le/a/a/d/s;

    instance-of v5, v5, Le/a/a/d/s$c;

    if-eqz v5, :cond_65

    const-string v5, "numMessages"

    .line 155
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 156
    invoke-static {v5, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v11, v7

    .line 157
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v15, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "sourceMessageType"

    const-string v5, "$this$toAnalyticsSourceMessageType"

    .line 158
    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_54

    goto :goto_35

    .line 160
    :cond_54
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_55
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/truecaller/messaging/ForwardContentItem;

    .line 161
    iget v7, v7, Lcom/truecaller/messaging/ForwardContentItem;->d:I

    if-ne v7, v4, :cond_56

    const/4 v7, 0x1

    goto :goto_34

    :cond_56
    const/4 v7, 0x0

    :goto_34
    if-nez v7, :cond_55

    const/4 v4, 0x0

    goto :goto_36

    :cond_57
    :goto_35
    const/4 v4, 0x1

    :goto_36
    if-eqz v4, :cond_58

    const-string v11, "im"

    :goto_37
    move-object/from16 v18, v11

    goto :goto_40

    .line 162
    :cond_58
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_59

    goto :goto_3a

    .line 163
    :cond_59
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/messaging/ForwardContentItem;

    .line 164
    iget v5, v5, Lcom/truecaller/messaging/ForwardContentItem;->d:I

    if-eqz v5, :cond_5c

    const/4 v7, 0x4

    if-ne v5, v7, :cond_5b

    goto :goto_38

    :cond_5b
    const/4 v5, 0x0

    goto :goto_39

    :cond_5c
    :goto_38
    const/4 v5, 0x1

    :goto_39
    if-nez v5, :cond_5a

    const/4 v4, 0x0

    goto :goto_3b

    :cond_5d
    :goto_3a
    const/4 v4, 0x1

    :goto_3b
    if-eqz v4, :cond_5e

    const-string v11, "sms"

    goto :goto_37

    .line 165
    :cond_5e
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5f

    goto :goto_3e

    .line 166
    :cond_5f
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/messaging/ForwardContentItem;

    .line 167
    iget v4, v4, Lcom/truecaller/messaging/ForwardContentItem;->d:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_62

    const/4 v5, 0x7

    if-ne v4, v5, :cond_61

    goto :goto_3c

    :cond_61
    const/4 v4, 0x0

    goto :goto_3d

    :cond_62
    :goto_3c
    const/4 v4, 0x1

    :goto_3d
    if-nez v4, :cond_60

    const/4 v3, 0x0

    goto :goto_3f

    :cond_63
    :goto_3e
    const/4 v3, 0x1

    :goto_3f
    if-eqz v3, :cond_64

    const-string v11, "mms"

    goto :goto_37

    :cond_64
    move-object/from16 v18, p1

    :goto_40
    move-object/from16 v12, v17

    move-object v3, v14

    move-object/from16 v14, v18

    move-object v4, v15

    move-object v15, v3

    move-object/from16 v16, v10

    .line 168
    invoke-static/range {v12 .. v18}, Le/d/c/a/a;->K0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :cond_65
    move-object v4, v15

    .line 169
    :goto_41
    iget-object v2, v2, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->q:Le/a/q2/i0;

    const-string v3, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 170
    invoke-static {v6, v4, v10, v3, v2}, Le/d/c/a/a;->O0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/i0;)V

    .line 171
    :cond_66
    iget-object v2, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->l:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 172
    iget-object v2, v2, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->x:Le/a/a/d/n;

    .line 173
    invoke-virtual {v2}, Le/a/a/d/n;->A()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_67

    .line 174
    iget-object v2, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->l:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 175
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/a/d/v;

    if-eqz v2, :cond_6b

    .line 176
    invoke-interface {v2}, Le/a/a/d/v;->C()V

    goto :goto_44

    .line 177
    :cond_67
    iget-object v2, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->l:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 178
    iget-object v3, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->n:Ljava/util/List;

    invoke-static {v3}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/k;

    if-eqz v3, :cond_68

    .line 179
    iget-object v3, v3, Ls1/k;->a:Ljava/lang/Object;

    .line 180
    check-cast v3, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v3, :cond_68

    invoke-static {v3}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_42

    :cond_68
    const/4 v3, 0x0

    :goto_42
    iget-object v4, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->m:Ljava/util/List;

    invoke-static {v4}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/k;

    if-eqz v4, :cond_69

    .line 181
    iget-object v4, v4, Ls1/k;->a:Ljava/lang/Object;

    .line 182
    check-cast v4, Ljava/lang/Long;

    goto :goto_43

    :cond_69
    const/4 v4, 0x0

    .line 183
    :goto_43
    invoke-virtual {v2, v4, v3}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Vj(Ljava/lang/Long;Ljava/util/List;)V

    goto :goto_44

    .line 184
    :cond_6a
    iget-object v2, v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;->l:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    const/4 v3, 0x0

    .line 185
    invoke-virtual {v2, v9, v3}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Rj(Ljava/util/List;Z)V

    :cond_6b
    :goto_44
    return-object v1
.end method
