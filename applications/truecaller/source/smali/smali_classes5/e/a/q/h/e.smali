.class public final Le/a/q/h/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q/h/c;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ln3/v/l0<",
            "Ljava/util/List<",
            "Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field public final c:Ls1/g;

.field public final d:Le/a/q/f/a;

.field public final e:Le/a/b0/o/a;

.field public final f:Le/a/u3/g;

.field public final g:Le/a/q/h/a;

.field public final h:Le/a/q/h/h;


# direct methods
.method public constructor <init>(Le/a/q/f/a;Le/a/b0/o/a;Le/a/u3/g;Le/a/q/h/a;Le/a/q/h/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "commentFeedbackGrpcApiManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voteCommentDelegate"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q/h/e;->d:Le/a/q/f/a;

    iput-object p2, p0, Le/a/q/h/e;->e:Le/a/b0/o/a;

    iput-object p3, p0, Le/a/q/h/e;->f:Le/a/u3/g;

    iput-object p4, p0, Le/a/q/h/e;->g:Le/a/q/h/a;

    iput-object p5, p0, Le/a/q/h/e;->h:Le/a/q/h/h;

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Le/a/q/h/e;->a:Ljava/util/Map;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Le/a/q/h/e;->b:Ljava/util/Map;

    .line 4
    new-instance p1, Le/a/q/h/d;

    invoke-direct {p1, p0}, Le/a/q/h/d;-><init>(Le/a/q/h/e;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/q/h/e;->c:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "contact"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "commentId"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/truecaller/contactfeedback/repo/SortType;->values()[Lcom/truecaller/contactfeedback/repo/SortType;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x3

    if-ge v5, v6, :cond_8

    .line 2
    aget-object v6, v4, v5

    .line 3
    invoke-virtual {v0, v1, v6}, Le/a/q/h/e;->f(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/contactfeedback/repo/SortType;)Ljava/lang/String;

    move-result-object v6

    .line 4
    iget-object v7, v0, Le/a/q/h/e;->a:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_7

    .line 5
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;

    .line 6
    invoke-virtual {v11}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_1

    :cond_1
    move-object v9, v10

    .line 7
    :goto_1
    move-object v11, v9

    check-cast v11, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;

    if-eqz v11, :cond_7

    .line 8
    invoke-virtual {v11}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getVoteStatus()Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eqz v8, :cond_6

    .line 9
    iget-object v8, v0, Le/a/q/h/e;->h:Le/a/q/h/h;

    invoke-virtual {v11}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getId()Ljava/lang/String;

    move-result-object v12

    .line 10
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "number"

    invoke-static {v9, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v8, v8, Le/a/q/h/h;->a:Landroid/content/Context;

    const-string v14, "context"

    .line 12
    invoke-static {v8, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    const-class v13, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const-string v15, "key_phone_number"

    .line 14
    invoke-virtual {v14, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "key_comment_id"

    .line 15
    invoke-virtual {v14, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "key_vote_type"

    const-string v15, "value_up_vote"

    .line 16
    invoke-virtual {v14, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v9, Ln3/m0/f;

    invoke-direct {v9, v14}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 18
    invoke-static {v9}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    const-string v14, "Data.Builder()\n         \u2026\n                .build()"

    .line 19
    invoke-static {v9, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v12}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 21
    invoke-static {v8}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v8

    .line 22
    sget-object v14, Ln3/m0/h;->a:Ln3/m0/h;

    .line 23
    new-instance v15, Ln3/m0/r$a;

    invoke-direct {v15, v13}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 24
    iget-object v13, v15, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v9, v13, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 25
    new-instance v9, Ln3/m0/d$a;

    invoke-direct {v9}, Ln3/m0/d$a;-><init>()V

    sget-object v13, Ln3/m0/q;->b:Ln3/m0/q;

    .line 26
    iput-object v13, v9, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 27
    new-instance v13, Ln3/m0/d;

    invoke-direct {v13, v9}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 28
    iget-object v9, v15, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v13, v9, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 29
    invoke-virtual {v15}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v9

    const-string v13, "OneTimeWorkRequest.Build\u2026\n                .build()"

    invoke-static {v9, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ln3/m0/r;

    .line 30
    invoke-virtual {v8, v12, v14, v9}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    .line 31
    invoke-virtual {v11}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getVoteStatus()Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    move-result-object v8

    sget-object v9, Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;->DOWNVOTED:Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    const/4 v12, 0x1

    if-ne v8, v9, :cond_5

    .line 32
    invoke-virtual {v11}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getDownVotes()I

    move-result v8

    sub-int/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-ltz v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_3

    move-object v10, v8

    :cond_3
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 33
    :cond_5
    invoke-virtual {v11}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getDownVotes()I

    move-result v8

    :goto_3
    move/from16 v21, v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 34
    invoke-virtual {v11}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getUpVotes()I

    move-result v8

    add-int/lit8 v20, v8, 0x1

    .line 35
    sget-object v22, Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;->UPVOTED:Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    const/16 v23, 0xff

    const/16 v24, 0x0

    .line 36
    invoke-static/range {v11 .. v24}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->copy$default(Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILcom/truecaller/contactfeedback/presentation/model/VoteStatus;ILjava/lang/Object;)Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;

    move-result-object v8

    goto :goto_4

    .line 37
    :cond_6
    invoke-virtual {v0, v11}, Le/a/q/h/e;->i(Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;)Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;

    move-result-object v8

    .line 38
    :goto_4
    invoke-virtual {v0, v8, v7}, Le/a/q/h/e;->j(Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;Ljava/util/List;)V

    .line 39
    invoke-virtual {v0, v6}, Le/a/q/h/e;->h(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public b(Le/a/q/h/b;)V
    .locals 2

    const-string v0, "observer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/q/h/b;->a:Lcom/truecaller/data/entity/Contact;

    .line 2
    iget-object v1, p1, Le/a/q/h/b;->b:Lcom/truecaller/contactfeedback/repo/SortType;

    .line 3
    invoke-virtual {p0, v0, v1}, Le/a/q/h/e;->f(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/contactfeedback/repo/SortType;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/a/q/h/e;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Le/a/q/h/b;->c:Ln3/v/l0;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c(Le/a/q/h/b;Ls1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q/h/b;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/q/h/e$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/q/h/e$c;

    iget v1, v0, Le/a/q/h/e$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/q/h/e$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/q/h/e$c;

    invoke-direct {v0, p0, p2}, Le/a/q/h/e$c;-><init>(Le/a/q/h/e;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/q/h/e$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/q/h/e$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/q/h/e$c;->g:Ljava/lang/Object;

    check-cast p1, Le/a/q/h/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p1, Le/a/q/h/b;->b:Lcom/truecaller/contactfeedback/repo/SortType;

    .line 5
    iget-object v2, p1, Le/a/q/h/b;->a:Lcom/truecaller/data/entity/Contact;

    .line 6
    invoke-virtual {p0, v2, p2}, Le/a/q/h/e;->f(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/contactfeedback/repo/SortType;)Ljava/lang/String;

    move-result-object v4

    .line 7
    iget-object v5, p0, Le/a/q/h/e;->b:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    sget-object v5, Ls1/u/s;->a:Ls1/u/s;

    .line 8
    :goto_1
    iget-object v6, p0, Le/a/q/h/e;->b:Ljava/util/Map;

    new-array v7, v3, [Ln3/v/l0;

    const/4 v8, 0x0

    .line 9
    iget-object v9, p1, Le/a/q/h/b;->c:Ln3/v/l0;

    aput-object v9, v7, v8

    .line 10
    invoke-static {v7}, Ls1/u/i;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iput-object p1, v0, Le/a/q/h/e$c;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/q/h/e$c;->e:I

    invoke-virtual {p0, v2, p2, v0}, Le/a/q/h/e;->g(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/contactfeedback/repo/SortType;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 12
    :cond_4
    :goto_2
    check-cast p2, Ljava/util/List;

    .line 13
    iget-object p1, p1, Le/a/q/h/b;->c:Ln3/v/l0;

    .line 14
    invoke-interface {p1, p2}, Ln3/v/l0;->onChanged(Ljava/lang/Object;)V

    .line 15
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public d(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/contactfeedback/repo/SortType;Ls1/z/b/l;)Le/a/q/h/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Lcom/truecaller/contactfeedback/repo/SortType;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;",
            ">;",
            "Ls1/s;",
            ">;)",
            "Le/a/q/h/b;"
        }
    .end annotation

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sortType"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Le/a/q/h/e;->f:Le/a/u3/g;

    .line 3
    iget-object v0, p2, Le/a/u3/g;->X2:Le/a/u3/g$a;

    sget-object v1, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v2, 0xcd

    aget-object v1, v1, v2

    invoke-virtual {v0, p2, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p2

    .line 4
    invoke-interface {p2}, Le/a/u3/b;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/truecaller/contactfeedback/repo/SortType;->BY_SCORE:Lcom/truecaller/contactfeedback/repo/SortType;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/truecaller/contactfeedback/repo/SortType;->BY_TIME:Lcom/truecaller/contactfeedback/repo/SortType;

    .line 5
    :goto_0
    new-instance v0, Le/a/q/h/b;

    new-instance v1, Le/a/q/h/e$a;

    invoke-direct {v1, p3}, Le/a/q/h/e$a;-><init>(Ls1/z/b/l;)V

    invoke-direct {v0, p1, p2, v1}, Le/a/q/h/b;-><init>(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/contactfeedback/repo/SortType;Ln3/v/l0;)V

    return-object v0
.end method

.method public e(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "contact"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "commentId"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/truecaller/contactfeedback/repo/SortType;->values()[Lcom/truecaller/contactfeedback/repo/SortType;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x3

    if-ge v6, v7, :cond_5

    .line 2
    aget-object v7, v4, v6

    .line 3
    invoke-virtual {v0, v1, v7}, Le/a/q/h/e;->f(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/contactfeedback/repo/SortType;)Ljava/lang/String;

    move-result-object v7

    .line 4
    iget-object v8, v0, Le/a/q/h/e;->a:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-eqz v8, :cond_4

    .line 5
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;

    .line 6
    invoke-virtual {v11}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 7
    :goto_1
    move-object v11, v10

    check-cast v11, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;

    if-eqz v11, :cond_4

    .line 8
    invoke-virtual {v11}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getVoteStatus()Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    .line 9
    iget-object v9, v0, Le/a/q/h/e;->h:Le/a/q/h/h;

    invoke-virtual {v11}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getId()Ljava/lang/String;

    move-result-object v12

    .line 10
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "number"

    invoke-static {v10, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v9, v9, Le/a/q/h/h;->a:Landroid/content/Context;

    const-string v14, "context"

    .line 12
    invoke-static {v9, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    const-class v13, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const-string v15, "key_phone_number"

    .line 14
    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "key_comment_id"

    .line 15
    invoke-virtual {v14, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "key_vote_type"

    const-string v15, "value_down_vote"

    .line 16
    invoke-virtual {v14, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v10, Ln3/m0/f;

    invoke-direct {v10, v14}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 18
    invoke-static {v10}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    const-string v14, "Data.Builder()\n         \u2026\n                .build()"

    .line 19
    invoke-static {v10, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v12}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 21
    invoke-static {v9}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v9

    .line 22
    sget-object v14, Ln3/m0/h;->a:Ln3/m0/h;

    .line 23
    new-instance v15, Ln3/m0/r$a;

    invoke-direct {v15, v13}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 24
    iget-object v13, v15, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v10, v13, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 25
    new-instance v10, Ln3/m0/d$a;

    invoke-direct {v10}, Ln3/m0/d$a;-><init>()V

    sget-object v13, Ln3/m0/q;->b:Ln3/m0/q;

    .line 26
    iput-object v13, v10, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 27
    new-instance v13, Ln3/m0/d;

    invoke-direct {v13, v10}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 28
    iget-object v10, v15, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v13, v10, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 29
    invoke-virtual {v15}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v10

    const-string v13, "OneTimeWorkRequest.Build\u2026\n                .build()"

    invoke-static {v10, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ln3/m0/r;

    .line 30
    invoke-virtual {v9, v12, v14, v10}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    .line 31
    invoke-virtual {v11}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getVoteStatus()Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    move-result-object v9

    sget-object v10, Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;->UPVOTED:Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    if-ne v9, v10, :cond_2

    invoke-virtual {v11}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getUpVotes()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_2

    :cond_2
    invoke-virtual {v11}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getUpVotes()I

    move-result v9

    :goto_2
    move/from16 v20, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 32
    invoke-virtual {v11}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getDownVotes()I

    move-result v9

    add-int/lit8 v21, v9, 0x1

    .line 33
    sget-object v22, Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;->DOWNVOTED:Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    const/16 v23, 0xff

    const/16 v24, 0x0

    .line 34
    invoke-static/range {v11 .. v24}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->copy$default(Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILcom/truecaller/contactfeedback/presentation/model/VoteStatus;ILjava/lang/Object;)Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;

    move-result-object v9

    goto :goto_3

    .line 35
    :cond_3
    invoke-virtual {v0, v11}, Le/a/q/h/e;->i(Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;)Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;

    move-result-object v9

    .line 36
    :goto_3
    invoke-virtual {v0, v9, v8}, Le/a/q/h/e;->j(Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;Ljava/util/List;)V

    .line 37
    invoke-virtual {v0, v7}, Le/a/q/h/e;->h(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public final f(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/contactfeedback/repo/SortType;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v0

    const-string p1, "contact.numbers"

    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3b

    invoke-static/range {v0 .. v7}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/contactfeedback/repo/SortType;Ls1/w/d;)Ljava/lang/Object;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Lcom/truecaller/contactfeedback/repo/SortType;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Le/a/q/h/e$b;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/q/h/e$b;

    iget v3, v2, Le/a/q/h/e$b;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/q/h/e$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/q/h/e$b;

    invoke-direct {v2, v0, v1}, Le/a/q/h/e$b;-><init>(Le/a/q/h/e;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/q/h/e$b;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/q/h/e$b;->e:I

    const-string v5, "number.normalizedNumber"

    const-string v6, "number"

    const/4 v7, 0x2

    const/16 v8, 0xa

    const/4 v9, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v9, :cond_1

    iget-object v4, v2, Le/a/q/h/e$b;->m:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    iget-object v10, v2, Le/a/q/h/e$b;->l:Ljava/lang/Object;

    check-cast v10, Lcom/truecaller/data/entity/Number;

    iget-object v11, v2, Le/a/q/h/e$b;->k:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v2, Le/a/q/h/e$b;->j:Ljava/lang/Object;

    check-cast v12, Ljava/util/Collection;

    iget-object v13, v2, Le/a/q/h/e$b;->i:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v2, Le/a/q/h/e$b;->h:Ljava/lang/Object;

    check-cast v14, Lcom/truecaller/contactfeedback/repo/SortType;

    iget-object v15, v2, Le/a/q/h/e$b;->g:Ljava/lang/Object;

    check-cast v15, Le/a/q/h/e;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v12

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual/range {p0 .. p2}, Le/a/q/h/e;->f(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/contactfeedback/repo/SortType;)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v4, v0, Le/a/q/h/e;->a:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_d

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v4

    const-string v10, "contact.numbers"

    invoke-static {v4, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v4, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v15, v0

    move-object v13, v1

    move-object v11, v4

    move-object v4, v10

    move-object/from16 v1, p2

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 9
    check-cast v10, Lcom/truecaller/data/entity/Number;

    .line 10
    iget-object v12, v15, Le/a/q/h/e;->d:Le/a/q/f/a;

    invoke-static {v10, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v8, v15, Le/a/q/h/e;->c:Ls1/g;

    invoke-interface {v8}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v19

    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eqz v8, :cond_5

    if-eq v8, v9, :cond_4

    if-ne v8, v7, :cond_3

    .line 13
    sget-object v8, Lcom/truecaller/api/services/comments/model/SortBy;->POST_TIME:Lcom/truecaller/api/services/comments/model/SortBy;

    goto :goto_2

    :cond_3
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    .line 14
    :cond_4
    sget-object v8, Lcom/truecaller/api/services/comments/model/SortBy;->POST_TIME:Lcom/truecaller/api/services/comments/model/SortBy;

    goto :goto_2

    .line 15
    :cond_5
    sget-object v8, Lcom/truecaller/api/services/comments/model/SortBy;->SCORE:Lcom/truecaller/api/services/comments/model/SortBy;

    :goto_2
    move-object/from16 v20, v8

    .line 16
    iput-object v15, v2, Le/a/q/h/e$b;->g:Ljava/lang/Object;

    iput-object v1, v2, Le/a/q/h/e$b;->h:Ljava/lang/Object;

    iput-object v13, v2, Le/a/q/h/e$b;->i:Ljava/lang/Object;

    iput-object v4, v2, Le/a/q/h/e$b;->j:Ljava/lang/Object;

    iput-object v11, v2, Le/a/q/h/e$b;->k:Ljava/lang/Object;

    iput-object v10, v2, Le/a/q/h/e$b;->l:Ljava/lang/Object;

    iput-object v4, v2, Le/a/q/h/e$b;->m:Ljava/lang/Object;

    iput v9, v2, Le/a/q/h/e$b;->e:I

    move-object v8, v12

    check-cast v8, Le/a/q/f/g;

    .line 17
    iget-object v12, v8, Le/a/q/f/g;->a:Ls1/w/f;

    new-instance v7, Le/a/q/f/c;

    const/16 v21, 0x0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v14

    invoke-direct/range {v16 .. v21}, Le/a/q/f/c;-><init>(Le/a/q/f/g;Ljava/lang/String;ILcom/truecaller/api/services/comments/model/SortBy;Ls1/w/d;)V

    invoke-static {v12, v7, v2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_6

    return-object v3

    :cond_6
    move-object v14, v1

    move-object v1, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    .line 18
    :goto_3
    check-cast v1, Ljava/lang/Iterable;

    const/16 v8, 0xa

    .line 19
    invoke-static {v1, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-static {v12}, Le/q/f/a/d/a;->Y1(I)I

    move-result v12

    const/16 v8, 0x10

    if-ge v12, v8, :cond_7

    move v12, v8

    .line 20
    :cond_7
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8, v12}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 22
    check-cast v12, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    .line 23
    invoke-virtual {v12}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->getId()Ljava/lang/String;

    move-result-object v9

    iget-object v0, v15, Le/a/q/h/e;->g:Le/a/q/h/a;

    invoke-static {v10, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p1, v1

    invoke-virtual {v10}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 p2, v2

    const-string v2, "comment"

    invoke-static {v12, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v2, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;

    move-object/from16 v17, v3

    .line 26
    invoke-virtual {v12}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->getId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v4

    const-string v4, "comment.id"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v12}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v6

    const-string v6, "comment.name"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v12}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->getText()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v7

    const-string v7, "comment.text"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v12}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->getAvatarUrl()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v21, v10

    const-string v10, "comment.avatarUrl"

    invoke-static {v7, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v12}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->getAnonymous()Z

    move-result v28

    .line 31
    iget-object v0, v0, Le/a/q/h/a;->a:Le/a/q/i/c;

    move-object/from16 v34, v11

    invoke-virtual {v12}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->getPostedOn()J

    move-result-wide v10

    .line 32
    iget-object v0, v0, Le/a/q/i/c;->a:Landroid/content/Context;

    move-object/from16 v35, v13

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v10, v11, v13}, Le/a/b0/q/m;->j(Landroid/content/Context;JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "DateTimeUtils.getRelativ\u2026econds, TimeUnit.SECONDS)"

    invoke-static {v0, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v12}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->getLanguage()Ljava/lang/String;

    move-result-object v10

    const-string v11, "comment.language"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v12}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->getNumUpvotes()I

    move-result v31

    .line 35
    invoke-virtual {v12}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->getNumDownvotes()I

    move-result v32

    .line 36
    invoke-virtual {v12}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->getRequestorVoteCase()Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;

    move-result-object v11

    const-string v12, "comment.requestorVoteCase"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-eqz v11, :cond_a

    const/4 v12, 0x1

    if-eq v11, v12, :cond_9

    const/4 v13, 0x2

    if-eq v11, v13, :cond_8

    .line 38
    sget-object v11, Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;->NOT_SELECTED:Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    goto :goto_5

    .line 39
    :cond_8
    sget-object v11, Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;->NOT_SELECTED:Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    goto :goto_5

    :cond_9
    const/4 v13, 0x2

    .line 40
    sget-object v11, Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;->DOWNVOTED:Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    goto :goto_5

    :cond_a
    const/4 v12, 0x1

    const/4 v13, 0x2

    .line 41
    sget-object v11, Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;->UPVOTED:Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    :goto_5
    move-object/from16 v33, v11

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v1

    move-object/from16 v25, v4

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v29, v0

    move-object/from16 v30, v10

    .line 42
    invoke-direct/range {v22 .. v33}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILcom/truecaller/contactfeedback/presentation/model/VoteStatus;)V

    .line 43
    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v9, v12

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v10, v21

    move-object/from16 v11, v34

    move-object/from16 v13, v35

    goto/16 :goto_4

    :cond_b
    move-object/from16 p2, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move v12, v9

    move-object/from16 v34, v11

    move-object/from16 v35, v13

    const/4 v13, 0x2

    .line 44
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 45
    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move v7, v13

    move-object v1, v14

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v13, v35

    const/16 v8, 0xa

    goto/16 :goto_1

    .line 46
    :cond_c
    check-cast v4, Ljava/util/List;

    .line 47
    invoke-static {v4}, Le/q/f/a/d/a;->w0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    .line 48
    iget-object v0, v15, Le/a/q/h/e;->a:Ljava/util/Map;

    invoke-interface {v0, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object v4
.end method

.method public final h(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/q/h/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/v/l0;

    .line 3
    iget-object v2, p0, Le/a/q/h/e;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Ln3/v/l0;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i(Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;)Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/q/h/e;->h:Le/a/q/h/h;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getId()Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "number"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "commentId"

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, v1, Le/a/q/h/h;->a:Landroid/content/Context;

    const-string v6, "context"

    .line 4
    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    const-class v4, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "key_phone_number"

    .line 6
    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "key_comment_id"

    .line 7
    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "key_vote_type"

    const-string v6, "value_remove_vote"

    .line 8
    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v2, Ln3/m0/f;

    invoke-direct {v2, v5}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 10
    invoke-static {v2}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    const-string v5, "Data.Builder()\n         \u2026\n                .build()"

    .line 11
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-static {v1}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v1

    .line 14
    sget-object v5, Ln3/m0/h;->a:Ln3/m0/h;

    .line 15
    new-instance v6, Ln3/m0/r$a;

    invoke-direct {v6, v4}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 16
    iget-object v4, v6, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v2, v4, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 17
    new-instance v2, Ln3/m0/d$a;

    invoke-direct {v2}, Ln3/m0/d$a;-><init>()V

    sget-object v4, Ln3/m0/q;->b:Ln3/m0/q;

    .line 18
    iput-object v4, v2, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 19
    new-instance v4, Ln3/m0/d;

    invoke-direct {v4, v2}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 20
    iget-object v2, v6, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v4, v2, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 21
    invoke-virtual {v6}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v2

    const-string v4, "OneTimeWorkRequest.Build\u2026\n                .build()"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ln3/m0/r;

    .line 22
    invoke-virtual {v1, v3, v5, v2}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getVoteStatus()Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    move-object/from16 v1, p1

    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getDownVotes()I

    move-result v12

    sub-int/2addr v12, v3

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    sget-object v13, Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;->NOT_SELECTED:Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    const/16 v14, 0x1ff

    const/4 v15, 0x0

    move-object/from16 v2, p1

    move-object v3, v1

    invoke-static/range {v2 .. v15}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->copy$default(Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILcom/truecaller/contactfeedback/presentation/model/VoteStatus;ILjava/lang/Object;)Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getUpVotes()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v12, 0x0

    sget-object v13, Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;->NOT_SELECTED:Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    const/16 v14, 0x2ff

    const/4 v15, 0x0

    move-object/from16 v2, p1

    move-object v3, v1

    invoke-static/range {v2 .. v15}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->copy$default(Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILcom/truecaller/contactfeedback/presentation/model/VoteStatus;ILjava/lang/Object;)Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public final j(Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;",
            "Ljava/util/List<",
            "Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2
    check-cast v3, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;

    .line 3
    invoke-virtual {v3}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 4
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 7
    invoke-interface {p2, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;

    :cond_4
    return-void
.end method
