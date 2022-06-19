.class public final Le/a/a/h1/o/m;
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
    c = "com.truecaller.messaging.urgent.service.UrgentMessageServicePresenter$startExpiryTimer$1"
    f = "UrgentMessageServicePresenter.kt"
    l = {
        0xd3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/h1/o/l;

.field public final synthetic g:Lcom/truecaller/messaging/urgent/UrgentConversation;

.field public final synthetic h:J


# direct methods
.method public constructor <init>(Le/a/a/h1/o/l;Lcom/truecaller/messaging/urgent/UrgentConversation;JLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/h1/o/m;->f:Le/a/a/h1/o/l;

    iput-object p2, p0, Le/a/a/h1/o/m;->g:Lcom/truecaller/messaging/urgent/UrgentConversation;

    iput-wide p3, p0, Le/a/a/h1/o/m;->h:J

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

    new-instance p1, Le/a/a/h1/o/m;

    iget-object v1, p0, Le/a/a/h1/o/m;->f:Le/a/a/h1/o/l;

    iget-object v2, p0, Le/a/a/h1/o/m;->g:Lcom/truecaller/messaging/urgent/UrgentConversation;

    iget-wide v3, p0, Le/a/a/h1/o/m;->h:J

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/a/h1/o/m;-><init>(Le/a/a/h1/o/l;Lcom/truecaller/messaging/urgent/UrgentConversation;JLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v5, p2

    check-cast v5, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {v5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/h1/o/m;

    iget-object v1, p0, Le/a/a/h1/o/m;->f:Le/a/a/h1/o/l;

    iget-object v2, p0, Le/a/a/h1/o/m;->g:Lcom/truecaller/messaging/urgent/UrgentConversation;

    iget-wide v3, p0, Le/a/a/h1/o/m;->h:J

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/a/a/h1/o/m;-><init>(Le/a/a/h1/o/l;Lcom/truecaller/messaging/urgent/UrgentConversation;JLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/h1/o/m;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/h1/o/m;->e:I

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
    iget-object p1, p0, Le/a/a/h1/o/m;->f:Le/a/a/h1/o/l;

    .line 5
    iget-object v1, p1, Le/a/a/h1/o/l;->q:Le/a/a/h1/g;

    .line 6
    iget-object v3, p0, Le/a/a/h1/o/m;->g:Lcom/truecaller/messaging/urgent/UrgentConversation;

    .line 7
    iget-object p1, p1, Le/a/a/h1/o/l;->m:Le/a/p5/c;

    .line 8
    invoke-interface {p1}, Le/a/p5/c;->a()J

    move-result-wide v4

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "conversation"

    invoke-static {v3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-wide v6, v3, Lcom/truecaller/messaging/urgent/UrgentConversation;->c:J

    .line 11
    invoke-virtual {v1}, Le/a/a/h1/g;->a()J

    move-result-wide v8

    add-long/2addr v8, v6

    sub-long/2addr v8, v4

    const-wide/16 v3, 0x0

    .line 12
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 13
    iput v2, p0, Le/a/a/h1/o/m;->e:I

    invoke-static {v3, v4, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 14
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/a/h1/o/m;->f:Le/a/a/h1/o/l;

    .line 15
    iget-wide v0, p1, Le/a/a/h1/o/l;->i:J

    .line 16
    iget-wide v2, p0, Le/a/a/h1/o/m;->h:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {p1, v2, v3}, Le/a/a/h1/o/l;->Ij(J)V

    .line 18
    iget-object p1, p0, Le/a/a/h1/o/m;->f:Le/a/a/h1/o/l;

    .line 19
    iget-object p1, p1, Le/a/a/h1/o/l;->p:Le/a/q2/i0;

    const/4 v0, 0x0

    const-string v1, "miss"

    .line 20
    invoke-interface {p1, v1, v0}, Le/a/q2/i0;->j(Ljava/lang/String;Ljava/lang/Long;)V

    .line 21
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
