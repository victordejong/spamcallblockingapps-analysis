.class public final Le/a/a/d/z;
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
    c = "com.truecaller.messaging.newconversation.NewConversationPresenter$prepareDrafts$1"
    f = "NewConversationPresenter.kt"
    l = {
        0x210
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/util/List;

.field public final synthetic j:Ljava/util/List;

.field public final synthetic k:Z

.field public final synthetic l:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/d/z;->f:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    iput-object p2, p0, Le/a/a/d/z;->g:Ljava/util/List;

    iput-object p3, p0, Le/a/a/d/z;->h:Ljava/lang/String;

    iput-object p4, p0, Le/a/a/d/z;->i:Ljava/util/List;

    iput-object p5, p0, Le/a/a/d/z;->j:Ljava/util/List;

    iput-boolean p6, p0, Le/a/a/d/z;->k:Z

    iput-boolean p7, p0, Le/a/a/d/z;->l:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 9
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

    new-instance p1, Le/a/a/d/z;

    iget-object v1, p0, Le/a/a/d/z;->f:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    iget-object v2, p0, Le/a/a/d/z;->g:Ljava/util/List;

    iget-object v3, p0, Le/a/a/d/z;->h:Ljava/lang/String;

    iget-object v4, p0, Le/a/a/d/z;->i:Ljava/util/List;

    iget-object v5, p0, Le/a/a/d/z;->j:Ljava/util/List;

    iget-boolean v6, p0, Le/a/a/d/z;->k:Z

    iget-boolean v7, p0, Le/a/a/d/z;->l:Z

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Le/a/a/d/z;-><init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/d/z;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/d/z;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/d/z;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/d/z;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

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
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/a/d/z;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v3

    .line 5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_6

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 9
    check-cast v6, Ls1/k;

    .line 10
    iget-object v6, v6, Ls1/k;->a:Ljava/lang/Object;

    .line 11
    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_3

    .line 12
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_4
    iget-object v2, v0, Le/a/a/d/z;->f:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 14
    iget-object v2, v2, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->r:Lo3/a;

    .line 15
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/w;

    iput v3, v0, Le/a/a/d/z;->e:I

    invoke-interface {v2, v5, v0}, Le/a/a/g/w;->i(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    .line 16
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 18
    check-cast v3, Lcom/truecaller/messaging/data/types/Conversation;

    .line 19
    iget-object v5, v0, Le/a/a/d/z;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ls1/k;

    .line 20
    iget-object v7, v7, Ls1/k;->a:Ljava/lang/Object;

    .line 21
    check-cast v7, Ljava/lang/Long;

    if-eqz v3, :cond_8

    iget-wide v8, v3, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    .line 22
    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v8, v9}, Ljava/lang/Long;-><init>(J)V

    goto :goto_5

    :cond_8
    move-object v10, v4

    .line 23
    :goto_5
    invoke-static {v7, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 24
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 25
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_6

    :cond_9
    move-object v6, v4

    :goto_6
    check-cast v6, Ls1/k;

    if-eqz v6, :cond_a

    .line 26
    iget-object v5, v6, Ls1/k;->b:Ljava/lang/Object;

    .line 27
    check-cast v5, Ljava/lang/Integer;

    goto :goto_7

    :cond_a
    move-object v5, v4

    :goto_7
    new-instance v6, Ls1/k;

    invoke-direct {v6, v3, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 28
    :cond_b
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/k;

    .line 30
    iget-object v3, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 31
    move-object v12, v3

    check-cast v12, Lcom/truecaller/messaging/data/types/Conversation;

    .line 32
    iget-object v2, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 33
    move-object v13, v2

    check-cast v13, Ljava/lang/Integer;

    .line 34
    iget-object v10, v0, Le/a/a/d/z;->f:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    const/4 v11, 0x0

    const/4 v14, 0x0

    iget-object v15, v0, Le/a/a/d/z;->h:Ljava/lang/String;

    const/16 v16, 0x9

    invoke-static/range {v10 .. v16}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Nj(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Lcom/truecaller/data/entity/messaging/Participant;Lcom/truecaller/messaging/data/types/Conversation;Ljava/lang/Integer;Lcom/truecaller/messaging/ForwardContentItem;Ljava/lang/String;I)Lcom/truecaller/messaging/data/types/Draft;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 35
    :cond_c
    iget-object v1, v0, Le/a/a/d/z;->i:Ljava/util/List;

    .line 36
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/k;

    .line 37
    iget-object v3, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 38
    move-object v11, v3

    check-cast v11, Lcom/truecaller/data/entity/messaging/Participant;

    .line 39
    iget-object v2, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 40
    move-object v13, v2

    check-cast v13, Ljava/lang/Integer;

    .line 41
    iget-object v10, v0, Le/a/a/d/z;->f:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    const/4 v12, 0x0

    const/4 v14, 0x0

    iget-object v15, v0, Le/a/a/d/z;->h:Ljava/lang/String;

    const/16 v16, 0xa

    invoke-static/range {v10 .. v16}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Nj(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Lcom/truecaller/data/entity/messaging/Participant;Lcom/truecaller/messaging/data/types/Conversation;Ljava/lang/Integer;Lcom/truecaller/messaging/ForwardContentItem;Ljava/lang/String;I)Lcom/truecaller/messaging/data/types/Draft;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 42
    :cond_d
    iget-object v1, v0, Le/a/a/d/z;->f:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 43
    iget-object v1, v1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->t:Le/a/e4/p;

    .line 44
    invoke-interface {v1}, Le/a/e4/p;->b()Ljava/lang/String;

    move-result-object v12

    const-string v1, "multisimManager.defaultSimToken"

    invoke-static {v12, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v1, v0, Le/a/a/d/z;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 46
    iget-object v1, v0, Le/a/a/d/z;->f:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 47
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/d/v;

    if-eqz v1, :cond_f

    .line 48
    iget-boolean v2, v0, Le/a/a/d/z;->k:Z

    iget-object v3, v0, Le/a/a/d/z;->h:Ljava/lang/String;

    invoke-interface {v1, v9, v2, v12, v3}, Le/a/a/d/v;->ba(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 49
    :cond_e
    iget-object v1, v0, Le/a/a/d/z;->f:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 50
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/d/v;

    if-eqz v1, :cond_f

    .line 51
    new-instance v2, Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    sget-object v8, Lcom/truecaller/messaging/conversation/draft/DraftMode;->SHARED_CONTENT:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    iget-object v10, v0, Le/a/a/d/z;->j:Ljava/util/List;

    iget-boolean v11, v0, Le/a/a/d/z;->k:Z

    iget-boolean v13, v0, Le/a/a/d/z;->l:Z

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/truecaller/messaging/conversation/draft/DraftArguments;-><init>(Lcom/truecaller/messaging/conversation/draft/DraftMode;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Z)V

    invoke-interface {v1, v2}, Le/a/a/d/v;->R4(Lcom/truecaller/messaging/conversation/draft/DraftArguments;)V

    .line 52
    :cond_f
    :goto_a
    iget-object v1, v0, Le/a/a/d/z;->f:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 53
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/d/v;

    if-eqz v1, :cond_10

    .line 54
    invoke-interface {v1}, Le/a/a/d/v;->C()V

    .line 55
    :cond_10
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
