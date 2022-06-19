.class public final Lcom/truecaller/contactfeedback/workers/VoteCommentWorker;
.super Landroidx/work/CoroutineWorker;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B%\u0008\u0001\u0012\u0008\u0008\u0001\u0010\r\u001a\u00020\u000c\u0012\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0013\u0010\u0003\u001a\u00020\u0002H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0013\u0010\u0006\u001a\u00020\u0002*\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u000b\u001a\u00020\u00088\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/truecaller/contactfeedback/workers/VoteCommentWorker;",
        "Landroidx/work/CoroutineWorker;",
        "Landroidx/work/ListenableWorker$a;",
        "n",
        "(Ls1/w/d;)Ljava/lang/Object;",
        "",
        "o",
        "(Z)Landroidx/work/ListenableWorker$a;",
        "Le/a/q/f/a;",
        "d",
        "Le/a/q/f/a;",
        "commentFeedbackGrpcApiManager",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/q/f/a;)V",
        "contact-feedback_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final d:Le/a/q/f/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/q/f/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commentFeedbackGrpcApiManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p3, p0, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker;->d:Le/a/q/f/a;

    return-void
.end method


# virtual methods
.method public n(Ls1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Landroidx/work/ListenableWorker$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker$a;

    iget v1, v0, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker$a;

    invoke-direct {v0, p0, p1}, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker$a;-><init>(Lcom/truecaller/contactfeedback/workers/VoteCommentWorker;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker$a;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker$a;->g:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v0, v0, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker$a;->g:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-object v0, v0, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker$a;->g:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object p1

    const-string v2, "key_phone_number"

    invoke-virtual {p1, v2}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    const-string v2, "inputData.getString(KEY_\u2026Unknown data for number\")"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v2

    const-string v6, "key_comment_id"

    invoke-virtual {v2, v6}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string v6, "inputData.getString(KEY_\u2026own data for comment id\")"

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v6

    const-string v7, "key_vote_type"

    invoke-virtual {v6, v7}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    const-string v7, "inputData.getString(KEY_\u2026nown data for vote type\")"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x5360ec09

    const/4 v9, 0x0

    if-eq v7, v8, :cond_8

    const v3, -0x295650e7

    if-eq v7, v3, :cond_6

    const v3, 0x4e1a1d40    # 6.4640205E8f

    if-ne v7, v3, :cond_a

    const-string v3, "value_up_vote"

    .line 8
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 9
    iget-object v3, p0, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker;->d:Le/a/q/f/a;

    iput-object p0, v0, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker$a;->g:Ljava/lang/Object;

    iput v5, v0, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker$a;->e:I

    check-cast v3, Le/a/q/f/g;

    .line 10
    iget-object v4, v3, Le/a/q/f/g;->a:Ls1/w/f;

    new-instance v5, Le/a/q/f/e;

    invoke-direct {v5, v3, p1, v2, v9}, Le/a/q/f/e;-><init>(Le/a/q/f/g;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v4, v5, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, p0

    .line 11
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker;->o(Z)Landroidx/work/ListenableWorker$a;

    move-result-object p1

    goto :goto_4

    :cond_6
    const-string v3, "value_down_vote"

    .line 12
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 13
    iget-object v3, p0, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker;->d:Le/a/q/f/a;

    iput-object p0, v0, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker$a;->g:Ljava/lang/Object;

    iput v4, v0, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker$a;->e:I

    check-cast v3, Le/a/q/f/g;

    .line 14
    iget-object v4, v3, Le/a/q/f/g;->a:Ls1/w/f;

    new-instance v5, Le/a/q/f/b;

    invoke-direct {v5, v3, p1, v2, v9}, Le/a/q/f/b;-><init>(Le/a/q/f/g;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v4, v5, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v0, p0

    .line 15
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker;->o(Z)Landroidx/work/ListenableWorker$a;

    move-result-object p1

    goto :goto_4

    :cond_8
    const-string v4, "value_remove_vote"

    .line 16
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 17
    iget-object v4, p0, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker;->d:Le/a/q/f/a;

    iput-object p0, v0, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker$a;->g:Ljava/lang/Object;

    iput v3, v0, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker$a;->e:I

    check-cast v4, Le/a/q/f/g;

    .line 18
    iget-object v3, v4, Le/a/q/f/g;->a:Ls1/w/f;

    new-instance v5, Le/a/q/f/d;

    invoke-direct {v5, v4, p1, v2, v9}, Le/a/q/f/d;-><init>(Le/a/q/f/g;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v3, v5, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    move-object v0, p0

    .line 19
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker;->o(Z)Landroidx/work/ListenableWorker$a;

    move-result-object p1

    :goto_4
    return-object p1

    .line 20
    :cond_a
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Unknown vote type"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_b
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Unknown data for vote type"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_c
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Unknown data for comment id"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_d
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Unknown data for number"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(Z)Landroidx/work/ListenableWorker$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    :goto_0
    const-string v0, "if (this) Result.success() else Result.retry()"

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
