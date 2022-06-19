.class public final Le/a/a/a1/c;
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
    c = "com.truecaller.messaging.quickreply.QuickReplyManager$onConversationLoaded$1"
    f = "QuickReplyManager.kt"
    l = {
        0x40
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/a1/e;

.field public final synthetic g:Lcom/truecaller/messaging/data/types/Conversation;


# direct methods
.method public constructor <init>(Le/a/a/a1/e;Lcom/truecaller/messaging/data/types/Conversation;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/a1/c;->f:Le/a/a/a1/e;

    iput-object p2, p0, Le/a/a/a1/c;->g:Lcom/truecaller/messaging/data/types/Conversation;

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

    new-instance p1, Le/a/a/a1/c;

    iget-object v0, p0, Le/a/a/a1/c;->f:Le/a/a/a1/e;

    iget-object v1, p0, Le/a/a/a1/c;->g:Lcom/truecaller/messaging/data/types/Conversation;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/a1/c;-><init>(Le/a/a/a1/e;Lcom/truecaller/messaging/data/types/Conversation;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/a1/c;

    iget-object v0, p0, Le/a/a/a1/c;->f:Le/a/a/a1/e;

    iget-object v1, p0, Le/a/a/a1/c;->g:Lcom/truecaller/messaging/data/types/Conversation;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/a1/c;-><init>(Le/a/a/a1/e;Lcom/truecaller/messaging/data/types/Conversation;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/a1/c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/a1/c;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/a1/c;->f:Le/a/a/a1/e;

    .line 5
    iget-object p1, p1, Le/a/a/a1/e;->f:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/w;

    iget-object v1, p0, Le/a/a/a1/c;->g:Lcom/truecaller/messaging/data/types/Conversation;

    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v3, "conversation.participants"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Le/a/a/a1/c;->g:Lcom/truecaller/messaging/data/types/Conversation;

    iget v3, v3, Lcom/truecaller/messaging/data/types/Conversation;->r:I

    iput v2, p0, Le/a/a/a1/c;->e:I

    invoke-interface {p1, v1, v3, p0}, Le/a/a/g/w;->u([Lcom/truecaller/data/entity/messaging/Participant;ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Lcom/truecaller/messaging/data/types/Draft;

    .line 8
    iget-object v0, p0, Le/a/a/a1/c;->f:Le/a/a/a1/e;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_3

    goto :goto_3

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Draft;->b()Lcom/truecaller/messaging/data/types/Draft$b;

    move-result-object p1

    .line 11
    iget-object v1, v0, Le/a/a/a1/e;->a:Ljava/lang/String;

    .line 12
    iput-object v1, p1, Lcom/truecaller/messaging/data/types/Draft$b;->e:Ljava/lang/String;

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p1, Lcom/truecaller/messaging/data/types/Draft$b;->k:Z

    .line 14
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Draft$b;->c()Lcom/truecaller/messaging/data/types/Draft;

    move-result-object p1

    const-string v3, "messageDraft.buildUpon()\u2026lse)\n            .build()"

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v4, v0, Le/a/a/a1/e;->k:Le/a/a/c1/d;

    const/4 v3, 0x0

    const/4 v5, 0x2

    .line 16
    invoke-static {p1, v3, v5}, Le/a/c/p/a;->Z(Lcom/truecaller/messaging/data/types/Draft;Ljava/util/Collection;I)Ljava/util/List;

    move-result-object p1

    .line 17
    iget-object v6, v0, Le/a/a/a1/e;->i:Le/a/a/x0/a;

    .line 18
    iget-object v6, v6, Le/a/a/x0/a;->e:Ljava/lang/String;

    const-string v7, "multiSimHelper.selectedSimToken"

    .line 19
    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget v7, v0, Le/a/a/a1/e;->c:I

    if-ne v7, v5, :cond_4

    move v7, v2

    goto :goto_1

    :cond_4
    move v7, v1

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v5, p1

    .line 21
    invoke-interface/range {v4 .. v9}, Le/a/a/c1/d;->c(Ljava/util/List;Ljava/lang/String;ZZZ)Le/a/a/c1/b;

    move-result-object p1

    instance-of v1, p1, Le/a/a/c1/b$e;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, p1

    :goto_2
    move-object v5, v3

    check-cast v5, Le/a/a/c1/b$e;

    if-eqz v5, :cond_6

    .line 22
    iget-object v4, v0, Le/a/a/a1/e;->k:Le/a/a/c1/d;

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    const-string v7, "quickReply"

    invoke-static/range {v4 .. v11}, Le/a/c/p/a;->y2(Le/a/a/c1/d;Le/a/a/c1/b$e;ZLjava/lang/String;JILjava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    .line 23
    iget-object v1, v0, Le/a/a/a1/e;->g:Le/a/r2/j;

    new-instance v2, Le/a/a/a1/d;

    invoke-direct {v2, v0}, Le/a/a/a1/d;-><init>(Le/a/a/a1/e;)V

    invoke-virtual {p1, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    .line 24
    :cond_6
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
