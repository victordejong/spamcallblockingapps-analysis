.class public final Le/a/a/c/t4$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/t4;->Nj(Z)V
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
    c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$loadMessages$1"
    f = "ConversationMessagesPresenter.kt"
    l = {
        0x3e3,
        0x3ec
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/c/t4;

.field public final synthetic g:Lcom/truecaller/messaging/data/types/Conversation;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Le/a/a/c/t4;Lcom/truecaller/messaging/data/types/Conversation;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/t4$f;->f:Le/a/a/c/t4;

    iput-object p2, p0, Le/a/a/c/t4$f;->g:Lcom/truecaller/messaging/data/types/Conversation;

    iput-boolean p3, p0, Le/a/a/c/t4$f;->h:Z

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

    new-instance p1, Le/a/a/c/t4$f;

    iget-object v0, p0, Le/a/a/c/t4$f;->f:Le/a/a/c/t4;

    iget-object v1, p0, Le/a/a/c/t4$f;->g:Lcom/truecaller/messaging/data/types/Conversation;

    iget-boolean v2, p0, Le/a/a/c/t4$f;->h:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/c/t4$f;-><init>(Le/a/a/c/t4;Lcom/truecaller/messaging/data/types/Conversation;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/t4$f;

    iget-object v0, p0, Le/a/a/c/t4$f;->f:Le/a/a/c/t4;

    iget-object v1, p0, Le/a/a/c/t4$f;->g:Lcom/truecaller/messaging/data/types/Conversation;

    iget-boolean v2, p0, Le/a/a/c/t4$f;->h:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/c/t4$f;-><init>(Le/a/a/c/t4;Lcom/truecaller/messaging/data/types/Conversation;ZLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/t4$f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/t4$f;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/c/t4$f;->f:Le/a/a/c/t4;

    .line 5
    iget-object p1, p1, Le/a/a/c/t4;->J:Le/a/a/c/n5;

    .line 6
    invoke-interface {p1}, Le/a/a/c/m5;->G()Lcom/truecaller/messaging/conversation/ConversationMode;

    move-result-object p1

    sget-object v1, Lcom/truecaller/messaging/conversation/ConversationMode;->SCHEDULE:Lcom/truecaller/messaging/conversation/ConversationMode;

    if-ne p1, v1, :cond_4

    .line 7
    iget-object p1, p0, Le/a/a/c/t4$f;->f:Le/a/a/c/t4;

    .line 8
    iget-object p1, p1, Le/a/a/c/t4;->K:Lo3/a;

    .line 9
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Le/a/a/g/w;

    iget-object p1, p0, Le/a/a/c/t4$f;->g:Lcom/truecaller/messaging/data/types/Conversation;

    iget-wide v6, p1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    iget-object v1, p0, Le/a/a/c/t4$f;->f:Le/a/a/c/t4;

    .line 10
    iget v8, v1, Le/a/a/c/t4;->w:I

    .line 11
    iget v9, p1, Lcom/truecaller/messaging/data/types/Conversation;->t:I

    .line 12
    iget-object v10, v1, Le/a/a/c/t4;->h:Ljava/lang/Integer;

    .line 13
    iput v4, p0, Le/a/a/c/t4$f;->e:I

    move-object v11, p0

    invoke-interface/range {v5 .. v11}, Le/a/a/g/w;->A(JIILjava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Le/a/a/g/j0/q;

    goto :goto_5

    .line 14
    :cond_4
    iget-object p1, p0, Le/a/a/c/t4$f;->f:Le/a/a/c/t4;

    .line 15
    iget-boolean v1, p1, Le/a/a/c/t4;->B:Z

    if-nez v1, :cond_7

    .line 16
    iget-object v1, p1, Le/a/a/c/t4;->e:Le/a/a/g/f;

    if-eqz v1, :cond_6

    .line 17
    iget v5, v1, Le/a/a/g/f;->b:I

    if-lez v5, :cond_5

    .line 18
    invoke-virtual {p1, v1}, Le/a/a/c/t4;->Uj(Le/a/a/g/f;)Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v4

    goto :goto_1

    :cond_5
    move p1, v3

    .line 19
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    .line 20
    :goto_2
    invoke-static {p1}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_7

    move v10, v4

    goto :goto_3

    :cond_7
    move v10, v3

    .line 21
    :goto_3
    iget-object p1, p0, Le/a/a/c/t4$f;->f:Le/a/a/c/t4;

    .line 22
    iget-object p1, p1, Le/a/a/c/t4;->K:Lo3/a;

    .line 23
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Le/a/a/g/w;

    .line 24
    iget-object p1, p0, Le/a/a/c/t4$f;->g:Lcom/truecaller/messaging/data/types/Conversation;

    iget-wide v6, p1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    .line 25
    iget-object v1, p0, Le/a/a/c/t4$f;->f:Le/a/a/c/t4;

    .line 26
    iget v8, v1, Le/a/a/c/t4;->w:I

    .line 27
    iget v9, p1, Lcom/truecaller/messaging/data/types/Conversation;->t:I

    .line 28
    iget-object v11, v1, Le/a/a/c/t4;->h:Ljava/lang/Integer;

    .line 29
    iput v2, p0, Le/a/a/c/t4$f;->e:I

    move-object v12, p0

    .line 30
    invoke-interface/range {v5 .. v12}, Le/a/a/g/w;->G(JIIZLjava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 31
    :cond_8
    :goto_4
    check-cast p1, Le/a/a/g/j0/q;

    .line 32
    :goto_5
    iget-object v0, p0, Le/a/a/c/t4$f;->f:Le/a/a/c/t4;

    .line 33
    iput-boolean v3, v0, Le/a/a/c/t4;->f:Z

    .line 34
    iget-boolean v1, p0, Le/a/a/c/t4$f;->h:Z

    .line 35
    invoke-virtual {v0, p1, v1}, Le/a/a/c/t4;->Pj(Le/a/a/g/j0/q;Z)V

    .line 36
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
