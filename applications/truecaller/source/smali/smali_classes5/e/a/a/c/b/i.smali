.class public final Le/a/a/c/b/i;
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
    c = "com.truecaller.messaging.conversation.search.SearchConversationPresenter$loadMessages$1"
    f = "SearchConversationPresenter.kt"
    l = {
        0xb9,
        0xbf
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/c/b/j;


# direct methods
.method public constructor <init>(Le/a/a/c/b/j;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/b/i;->f:Le/a/a/c/b/j;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/a/c/b/i;

    iget-object v0, p0, Le/a/a/c/b/i;->f:Le/a/a/c/b/j;

    invoke-direct {p1, v0, p2}, Le/a/a/c/b/i;-><init>(Le/a/a/c/b/j;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/b/i;

    iget-object v0, p0, Le/a/a/c/b/i;->f:Le/a/a/c/b/j;

    invoke-direct {p1, v0, p2}, Le/a/a/c/b/i;-><init>(Le/a/a/c/b/j;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/b/i;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/b/i;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

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

    const-wide/16 v4, 0x64

    .line 4
    iput v3, p0, Le/a/a/c/b/i;->e:I

    invoke-static {v4, v5, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 5
    :cond_3
    :goto_0
    iget-object p1, p0, Le/a/a/c/b/i;->f:Le/a/a/c/b/j;

    .line 6
    iget-object p1, p1, Le/a/a/c/b/j;->k:Lo3/a;

    .line 7
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Le/a/a/g/w;

    .line 8
    iget-object p1, p0, Le/a/a/c/b/i;->f:Le/a/a/c/b/j;

    .line 9
    iget-object v1, p1, Le/a/a/c/b/j;->h:Lcom/truecaller/messaging/data/types/Conversation;

    .line 10
    iget-wide v4, v1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    .line 11
    iget v6, p1, Le/a/a/c/b/j;->i:I

    .line 12
    iget v7, v1, Lcom/truecaller/messaging/data/types/Conversation;->t:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 13
    iput v2, p0, Le/a/a/c/b/i;->e:I

    move-object v10, p0

    .line 14
    invoke-interface/range {v3 .. v10}, Le/a/a/g/w;->G(JIIZLjava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 15
    :cond_4
    :goto_1
    check-cast p1, Le/a/a/g/j0/q;

    if-eqz p1, :cond_5

    .line 16
    iget-object v0, p0, Le/a/a/c/b/i;->f:Le/a/a/c/b/j;

    .line 17
    iget-object v0, v0, Le/a/a/c/b/j;->j:Le/a/a/c/w3;

    .line 18
    invoke-interface {v0, p1}, Le/a/a/c/w3;->e(Le/a/a/g/j0/q;)V

    .line 19
    iget-object p1, p0, Le/a/a/c/b/i;->f:Le/a/a/c/b/j;

    .line 20
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/b/h;

    if-eqz p1, :cond_5

    .line 21
    invoke-interface {p1}, Le/a/a/c/b/h;->A()V

    .line 22
    :cond_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
