.class public final Le/a/a/c/b/j$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/b/j;->l5(Lcom/truecaller/data/entity/messaging/Participant;)V
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
    c = "com.truecaller.messaging.conversation.search.SearchConversationPresenter$onMemberSelected$1"
    f = "SearchConversationPresenter.kt"
    l = {
        0x95,
        0x99
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/c/b/j;

.field public final synthetic g:Lcom/truecaller/data/entity/messaging/Participant;


# direct methods
.method public constructor <init>(Le/a/a/c/b/j;Lcom/truecaller/data/entity/messaging/Participant;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/b/j$c;->f:Le/a/a/c/b/j;

    iput-object p2, p0, Le/a/a/c/b/j$c;->g:Lcom/truecaller/data/entity/messaging/Participant;

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

    new-instance p1, Le/a/a/c/b/j$c;

    iget-object v0, p0, Le/a/a/c/b/j$c;->f:Le/a/a/c/b/j;

    iget-object v1, p0, Le/a/a/c/b/j$c;->g:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/c/b/j$c;-><init>(Le/a/a/c/b/j;Lcom/truecaller/data/entity/messaging/Participant;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/b/j$c;

    iget-object v0, p0, Le/a/a/c/b/j$c;->f:Le/a/a/c/b/j;

    iget-object v1, p0, Le/a/a/c/b/j$c;->g:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/c/b/j$c;-><init>(Le/a/a/c/b/j;Lcom/truecaller/data/entity/messaging/Participant;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/b/j$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/b/j$c;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

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
    iget-object p1, p0, Le/a/a/c/b/j$c;->g:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 5
    iget-object v1, p0, Le/a/a/c/b/j$c;->f:Le/a/a/c/b/j;

    .line 6
    iget-object v1, v1, Le/a/a/c/b/j;->l:Le/a/a/i0;

    .line 7
    invoke-interface {v1}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8
    iget-object p1, p0, Le/a/a/c/b/j$c;->f:Le/a/a/c/b/j;

    .line 9
    iget-object p1, p1, Le/a/a/c/b/j;->k:Lo3/a;

    .line 10
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/w;

    iget-object v1, p0, Le/a/a/c/b/j$c;->f:Le/a/a/c/b/j;

    .line 11
    iget-object v1, v1, Le/a/a/c/b/j;->h:Lcom/truecaller/messaging/data/types/Conversation;

    .line 12
    iget-wide v1, v1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    iput v3, p0, Le/a/a/c/b/j$c;->e:I

    invoke-interface {p1, v1, v2, p0}, Le/a/a/g/w;->r(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Le/a/a/g/j0/q;

    if-eqz p1, :cond_4

    .line 13
    iget-object v0, p0, Le/a/a/c/b/j$c;->f:Le/a/a/c/b/j;

    iget-object v1, p0, Le/a/a/c/b/j$c;->g:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v1}, Le/a/a/i1/h;->d(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Le/a/a/c/b/j;->Ij(Le/a/a/c/b/j;Le/a/a/g/j0/q;Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_4
    iget-object p1, p0, Le/a/a/c/b/j$c;->f:Le/a/a/c/b/j;

    .line 15
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/b/h;

    if-eqz p1, :cond_8

    .line 16
    invoke-interface {p1}, Le/a/a/c/b/h;->m9()V

    goto :goto_2

    .line 17
    :cond_5
    iget-object v1, p0, Le/a/a/c/b/j$c;->f:Le/a/a/c/b/j;

    .line 18
    iget-object v1, v1, Le/a/a/c/b/j;->k:Lo3/a;

    .line 19
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/g/w;

    iget-object v3, p0, Le/a/a/c/b/j$c;->f:Le/a/a/c/b/j;

    .line 20
    iget-object v3, v3, Le/a/a/c/b/j;->h:Lcom/truecaller/messaging/data/types/Conversation;

    .line 21
    iget-wide v3, v3, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    const-string v5, "imPeerId"

    invoke-static {p1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput v2, p0, Le/a/a/c/b/j$c;->e:I

    invoke-interface {v1, v3, v4, p1, p0}, Le/a/a/g/w;->h(JLjava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    check-cast p1, Le/a/a/g/j0/q;

    if-eqz p1, :cond_7

    .line 22
    iget-object v0, p0, Le/a/a/c/b/j$c;->f:Le/a/a/c/b/j;

    iget-object v1, p0, Le/a/a/c/b/j$c;->g:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v1}, Le/a/a/i1/h;->d(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Le/a/a/c/b/j;->Ij(Le/a/a/c/b/j;Le/a/a/g/j0/q;Ljava/lang/String;)V

    goto :goto_2

    .line 23
    :cond_7
    iget-object p1, p0, Le/a/a/c/b/j$c;->f:Le/a/a/c/b/j;

    .line 24
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/b/h;

    if-eqz p1, :cond_8

    .line 25
    invoke-interface {p1}, Le/a/a/c/b/h;->m9()V

    .line 26
    :cond_8
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
