.class public final Le/a/a/c/d4;
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
    c = "com.truecaller.messaging.conversation.ConversationHeaderPresenterImpl$showAvailabilityWithDelayOnce$1"
    f = "ConversationHeaderPresenter.kt"
    l = {
        0x14a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/c/c4;

.field public final synthetic g:J

.field public final synthetic h:Lcom/truecaller/data/entity/messaging/Participant;


# direct methods
.method public constructor <init>(Le/a/a/c/c4;JLcom/truecaller/data/entity/messaging/Participant;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/d4;->f:Le/a/a/c/c4;

    iput-wide p2, p0, Le/a/a/c/d4;->g:J

    iput-object p4, p0, Le/a/a/c/d4;->h:Lcom/truecaller/data/entity/messaging/Participant;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/a/c/d4;

    iget-object v1, p0, Le/a/a/c/d4;->f:Le/a/a/c/c4;

    iget-wide v2, p0, Le/a/a/c/d4;->g:J

    iget-object v4, p0, Le/a/a/c/d4;->h:Lcom/truecaller/data/entity/messaging/Participant;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/a/c/d4;-><init>(Le/a/a/c/c4;JLcom/truecaller/data/entity/messaging/Participant;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v5, p2

    check-cast v5, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {v5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/d4;

    iget-object v1, p0, Le/a/a/c/d4;->f:Le/a/a/c/c4;

    iget-wide v2, p0, Le/a/a/c/d4;->g:J

    iget-object v4, p0, Le/a/a/c/d4;->h:Lcom/truecaller/data/entity/messaging/Participant;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/a/a/c/d4;-><init>(Le/a/a/c/c4;JLcom/truecaller/data/entity/messaging/Participant;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/d4;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/d4;->e:I

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
    iget-object p1, p0, Le/a/a/c/d4;->f:Le/a/a/c/c4;

    .line 5
    iget-boolean p1, p1, Le/a/a/c/c4;->j:Z

    if-nez p1, :cond_3

    .line 6
    iget-wide v3, p0, Le/a/a/c/d4;->g:J

    iput v2, p0, Le/a/a/c/d4;->e:I

    invoke-static {v3, v4, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/a/c/d4;->f:Le/a/a/c/c4;

    .line 8
    iput-boolean v2, p1, Le/a/a/c/c4;->j:Z

    .line 9
    :cond_3
    iget-object p1, p0, Le/a/a/c/d4;->f:Le/a/a/c/c4;

    .line 10
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/e4;

    if-eqz v0, :cond_4

    .line 11
    iget-object p1, p1, Le/a/a/c/c4;->u:Le/a/l4/c;

    .line 12
    iget-object v1, p0, Le/a/a/c/d4;->h:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {p1, v1}, Le/a/c/p/a;->g(Le/a/l4/c;Lcom/truecaller/data/entity/messaging/Participant;)Le/a/l4/c$a;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/a/c/e4;->xs(Le/a/l4/c$a;)V

    .line 13
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
