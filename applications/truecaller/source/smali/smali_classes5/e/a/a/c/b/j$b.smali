.class public final Le/a/a/c/b/j$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/b/j;->nb(Lw3/b/a/b;)V
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
    c = "com.truecaller.messaging.conversation.search.SearchConversationPresenter$onJumpToDate$1"
    f = "SearchConversationPresenter.kt"
    l = {
        0x6b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/c/b/j;

.field public final synthetic g:Lw3/b/a/b;


# direct methods
.method public constructor <init>(Le/a/a/c/b/j;Lw3/b/a/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/b/j$b;->f:Le/a/a/c/b/j;

    iput-object p2, p0, Le/a/a/c/b/j$b;->g:Lw3/b/a/b;

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

    new-instance p1, Le/a/a/c/b/j$b;

    iget-object v0, p0, Le/a/a/c/b/j$b;->f:Le/a/a/c/b/j;

    iget-object v1, p0, Le/a/a/c/b/j$b;->g:Lw3/b/a/b;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/c/b/j$b;-><init>(Le/a/a/c/b/j;Lw3/b/a/b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/b/j$b;

    iget-object v0, p0, Le/a/a/c/b/j$b;->f:Le/a/a/c/b/j;

    iget-object v1, p0, Le/a/a/c/b/j$b;->g:Lw3/b/a/b;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/c/b/j$b;-><init>(Le/a/a/c/b/j;Lw3/b/a/b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/b/j$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/b/j$b;->e:I

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
    iget-object p1, p0, Le/a/a/c/b/j$b;->f:Le/a/a/c/b/j;

    .line 5
    iget-object p1, p1, Le/a/a/c/b/j;->k:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Le/a/a/g/w;

    .line 7
    iget-object p1, p0, Le/a/a/c/b/j$b;->g:Lw3/b/a/b;

    .line 8
    iget-wide v4, p1, Lw3/b/a/e0/e;->a:J

    .line 9
    iget-object p1, p0, Le/a/a/c/b/j$b;->g:Lw3/b/a/b;

    const/16 v1, 0x18

    invoke-virtual {p1, v1}, Lw3/b/a/b;->E(I)Lw3/b/a/b;

    move-result-object p1

    const-string v1, "date.plusHours(24)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-wide v6, p1, Lw3/b/a/e0/e;->a:J

    .line 11
    iget-object p1, p0, Le/a/a/c/b/j$b;->f:Le/a/a/c/b/j;

    .line 12
    iget-object v1, p1, Le/a/a/c/b/j;->h:Lcom/truecaller/messaging/data/types/Conversation;

    .line 13
    iget-wide v8, v1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    .line 14
    iget v10, p1, Le/a/a/c/b/j;->i:I

    .line 15
    iget v11, v1, Lcom/truecaller/messaging/data/types/Conversation;->t:I

    iput v2, p0, Le/a/a/c/b/j$b;->e:I

    move-object v12, p0

    .line 16
    invoke-interface/range {v3 .. v12}, Le/a/a/g/w;->l(JJJIILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 17
    :cond_2
    :goto_0
    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    if-eqz p1, :cond_4

    .line 18
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 19
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 20
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Le/a/a/c/b/j$b;->f:Le/a/a/c/b/j;

    .line 21
    iget-object v2, v2, Le/a/a/c/b/j;->j:Le/a/a/c/w3;

    .line 22
    invoke-interface {v2, v0, v1}, Le/a/a/c/w3;->a(J)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Le/a/a/c/b/j$b;->f:Le/a/a/c/b/j;

    .line 24
    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/Message;->a:J

    const/4 p1, 0x0

    .line 25
    invoke-virtual {v1, v2, v3, v0, p1}, Le/a/a/c/b/j;->Nj(JIZ)V

    .line 26
    :cond_3
    iget-object p1, p0, Le/a/a/c/b/j$b;->f:Le/a/a/c/b/j;

    sget-object v0, Lcom/truecaller/messaging/conversation/search/SearchFilter;->DATE:Lcom/truecaller/messaging/conversation/search/SearchFilter;

    .line 27
    iget-object v1, p1, Le/a/a/c/b/j;->m:Le/a/a/c/l5;

    .line 28
    iget-object v2, p0, Le/a/a/c/b/j$b;->g:Lw3/b/a/b;

    invoke-interface {v1, v2}, Le/a/a/c/l5;->z(Lw3/b/a/b;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {p1, v0, v1}, Le/a/a/c/b/j;->Oj(Lcom/truecaller/messaging/conversation/search/SearchFilter;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Le/a/a/c/b/j$b;->f:Le/a/a/c/b/j;

    const/4 v0, 0x0

    const-string v1, "date"

    .line 31
    invoke-virtual {p1, v1, v0}, Le/a/a/c/b/j;->Kj(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 32
    :cond_4
    iget-object p1, p0, Le/a/a/c/b/j$b;->f:Le/a/a/c/b/j;

    .line 33
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/b/h;

    if-eqz p1, :cond_5

    .line 34
    invoke-interface {p1}, Le/a/a/c/b/h;->m9()V

    .line 35
    :cond_5
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
