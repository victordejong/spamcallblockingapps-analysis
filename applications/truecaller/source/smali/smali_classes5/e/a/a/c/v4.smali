.class public final Le/a/a/c/v4;
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
    c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$identifyLanguages$1"
    f = "ConversationMessagesPresenter.kt"
    l = {
        0x3c7,
        0x3ca,
        0x3cc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/a/c/t4;

.field public final synthetic i:Lcom/truecaller/messaging/data/types/Conversation;


# direct methods
.method public constructor <init>(Le/a/a/c/t4;Lcom/truecaller/messaging/data/types/Conversation;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/v4;->h:Le/a/a/c/t4;

    iput-object p2, p0, Le/a/a/c/v4;->i:Lcom/truecaller/messaging/data/types/Conversation;

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

    new-instance p1, Le/a/a/c/v4;

    iget-object v0, p0, Le/a/a/c/v4;->h:Le/a/a/c/t4;

    iget-object v1, p0, Le/a/a/c/v4;->i:Lcom/truecaller/messaging/data/types/Conversation;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/c/v4;-><init>(Le/a/a/c/t4;Lcom/truecaller/messaging/data/types/Conversation;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/v4;

    iget-object v0, p0, Le/a/a/c/v4;->h:Le/a/a/c/t4;

    iget-object v1, p0, Le/a/a/c/v4;->i:Lcom/truecaller/messaging/data/types/Conversation;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/c/v4;-><init>(Le/a/a/c/t4;Lcom/truecaller/messaging/data/types/Conversation;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/v4;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/v4;->g:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/a/c/v4;->f:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/c0;

    iget-object v3, p0, Le/a/a/c/v4;->e:Ljava/lang/Object;

    check-cast v3, Ls1/z/c/c0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/c/v4;->h:Le/a/a/c/t4;

    .line 5
    iget-object v5, p1, Le/a/a/c/t4;->r0:Le/a/a/c/h7;

    .line 6
    iget-object v1, p0, Le/a/a/c/v4;->i:Lcom/truecaller/messaging/data/types/Conversation;

    iget-wide v6, v1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    .line 7
    iget-object v8, p1, Le/a/a/c/t4;->h:Ljava/lang/Integer;

    .line 8
    iget v9, p1, Le/a/a/c/t4;->w:I

    .line 9
    iget v10, v1, Lcom/truecaller/messaging/data/types/Conversation;->t:I

    iput v4, p0, Le/a/a/c/v4;->g:I

    move-object v11, p0

    invoke-interface/range {v5 .. v11}, Le/a/a/c/h7;->d(JLjava/lang/Integer;IILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 10
    :cond_4
    :goto_0
    new-instance v1, Ls1/z/c/c0;

    invoke-direct {v1}, Ls1/z/c/c0;-><init>()V

    .line 11
    iget-object p1, p0, Le/a/a/c/v4;->h:Le/a/a/c/t4;

    .line 12
    iget-object v4, p1, Le/a/a/c/t4;->r0:Le/a/a/c/h7;

    .line 13
    iget-object v5, p0, Le/a/a/c/v4;->i:Lcom/truecaller/messaging/data/types/Conversation;

    iget-wide v6, v5, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    .line 14
    iget p1, p1, Le/a/a/c/t4;->w:I

    .line 15
    iget v8, v5, Lcom/truecaller/messaging/data/types/Conversation;->t:I

    iput-object v1, p0, Le/a/a/c/v4;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/a/c/v4;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/a/c/v4;->g:I

    move-wide v5, v6

    move v7, p1

    move-object v9, p0

    invoke-interface/range {v4 .. v9}, Le/a/a/c/h7;->a(JIILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v3, v1

    .line 16
    :goto_1
    check-cast p1, Ljava/lang/Long;

    iput-object p1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Le/a/a/c/v4;->h:Le/a/a/c/t4;

    .line 18
    iget-object p1, p1, Le/a/a/c/t4;->v:Ls1/w/f;

    .line 19
    new-instance v1, Le/a/a/c/v4$a;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Le/a/a/c/v4$a;-><init>(Le/a/a/c/v4;Ls1/z/c/c0;Ls1/w/d;)V

    iput-object v4, p0, Le/a/a/c/v4;->e:Ljava/lang/Object;

    iput-object v4, p0, Le/a/a/c/v4;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/a/c/v4;->g:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 20
    :cond_6
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
