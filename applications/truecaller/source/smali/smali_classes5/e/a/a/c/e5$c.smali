.class public final Le/a/a/c/e5$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/e5;->ek()V
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
    c = "com.truecaller.messaging.conversation.ConversationPresenterImpl$loadDraft$1"
    f = "ConversationPresenterImpl.kt"
    l = {
        0x1f4,
        0x1f9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/c/e5;

.field public final synthetic g:[Lcom/truecaller/data/entity/messaging/Participant;

.field public final synthetic h:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Le/a/a/c/e5;[Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/Long;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/e5$c;->f:Le/a/a/c/e5;

    iput-object p2, p0, Le/a/a/c/e5$c;->g:[Lcom/truecaller/data/entity/messaging/Participant;

    iput-object p3, p0, Le/a/a/c/e5$c;->h:Ljava/lang/Long;

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

    new-instance p1, Le/a/a/c/e5$c;

    iget-object v0, p0, Le/a/a/c/e5$c;->f:Le/a/a/c/e5;

    iget-object v1, p0, Le/a/a/c/e5$c;->g:[Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v2, p0, Le/a/a/c/e5$c;->h:Ljava/lang/Long;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/c/e5$c;-><init>(Le/a/a/c/e5;[Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/Long;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/e5$c;

    iget-object v0, p0, Le/a/a/c/e5$c;->f:Le/a/a/c/e5;

    iget-object v1, p0, Le/a/a/c/e5$c;->g:[Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v2, p0, Le/a/a/c/e5$c;->h:Ljava/lang/Long;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/c/e5$c;-><init>(Le/a/a/c/e5;[Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/Long;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/e5$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/e5$c;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

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

    .line 4
    iget-object p1, p0, Le/a/a/c/e5$c;->f:Le/a/a/c/e5;

    .line 5
    iput-boolean v4, p1, Le/a/a/c/e5;->q:Z

    .line 6
    iget-object v1, p0, Le/a/a/c/e5$c;->g:[Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v1, :cond_4

    .line 7
    iget-object p1, p1, Le/a/a/c/e5;->E:Lo3/a;

    .line 8
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/w;

    iget-object v1, p0, Le/a/a/c/e5$c;->g:[Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v3, p0, Le/a/a/c/e5$c;->f:Le/a/a/c/e5;

    .line 9
    iget v3, v3, Le/a/a/c/e5;->y:I

    .line 10
    iput v4, p0, Le/a/a/c/e5$c;->e:I

    invoke-interface {p1, v1, v3, p0}, Le/a/a/g/w;->u([Lcom/truecaller/data/entity/messaging/Participant;ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 11
    :cond_3
    :goto_0
    check-cast p1, Lcom/truecaller/messaging/data/types/Draft;

    .line 12
    iget-object v0, p0, Le/a/a/c/e5$c;->f:Le/a/a/c/e5;

    .line 13
    iput-boolean v2, v0, Le/a/a/c/e5;->q:Z

    .line 14
    invoke-virtual {v0, p1}, Le/a/a/c/e5;->p(Lcom/truecaller/messaging/data/types/Draft;)V

    goto :goto_2

    .line 15
    :cond_4
    iget-object v1, p0, Le/a/a/c/e5$c;->h:Ljava/lang/Long;

    if-eqz v1, :cond_7

    .line 16
    iget-object p1, p1, Le/a/a/c/e5;->E:Lo3/a;

    .line 17
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/w;

    iget-object v1, p0, Le/a/a/c/e5$c;->h:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput v3, p0, Le/a/a/c/e5$c;->e:I

    invoke-interface {p1, v4, v5, p0}, Le/a/a/g/w;->j(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 18
    :cond_5
    :goto_1
    check-cast p1, Lcom/truecaller/messaging/data/types/Conversation;

    .line 19
    iget-object v0, p0, Le/a/a/c/e5$c;->f:Le/a/a/c/e5;

    .line 20
    iput-boolean v2, v0, Le/a/a/c/e5;->q:Z

    if-nez p1, :cond_6

    .line 21
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/k5;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Le/a/a/c/k5;->finish()V

    goto :goto_2

    .line 22
    :cond_6
    iget-object v1, p1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    iput-object v1, v0, Le/a/a/c/e5;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 23
    iget-object v2, v0, Le/a/a/c/e5;->T:Le/a/a/c/n5;

    invoke-interface {v2, v1}, Le/a/a/c/n5;->f([Lcom/truecaller/data/entity/messaging/Participant;)V

    .line 24
    iget-object v1, v0, Le/a/a/c/e5;->T:Le/a/a/c/n5;

    invoke-interface {v1, p1}, Le/a/a/c/n5;->d(Lcom/truecaller/messaging/data/types/Conversation;)V

    .line 25
    invoke-virtual {v0}, Le/a/a/c/e5;->ek()V

    .line 26
    invoke-virtual {v0}, Le/a/a/c/e5;->rk()V

    .line 27
    invoke-virtual {v0}, Le/a/a/c/e5;->hk()V

    goto :goto_2

    :cond_7
    const-string p1, "At least one of conversation ID or participants list has to be not null"

    .line 28
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->fail([Ljava/lang/String;)V

    .line 29
    :cond_8
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
