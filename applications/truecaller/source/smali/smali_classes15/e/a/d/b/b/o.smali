.class public final Le/a/d/b/b/o;
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
    c = "com.truecaller.voip.legacy.incoming.LegacyIncomingVoipServicePresenter$rejectAnotherIncomingCall$1"
    f = "LegacyIncomingVoipServicePresenter.kt"
    l = {
        0x81,
        0x85
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/b/b/b;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/d/b/b/b;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/b/o;->g:Le/a/d/b/b/b;

    iput-object p2, p0, Le/a/d/b/b/o;->h:Ljava/lang/String;

    iput-object p3, p0, Le/a/d/b/b/o;->i:Ljava/lang/String;

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

    new-instance p1, Le/a/d/b/b/o;

    iget-object v0, p0, Le/a/d/b/b/o;->g:Le/a/d/b/b/b;

    iget-object v1, p0, Le/a/d/b/b/o;->h:Ljava/lang/String;

    iget-object v2, p0, Le/a/d/b/b/o;->i:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/b/b/o;-><init>(Le/a/d/b/b/b;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/b/b/o;

    iget-object v0, p0, Le/a/d/b/b/o;->g:Le/a/d/b/b/b;

    iget-object v1, p0, Le/a/d/b/b/o;->h:Ljava/lang/String;

    iget-object v2, p0, Le/a/d/b/b/o;->i:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/b/b/o;-><init>(Le/a/d/b/b/b;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/b/b/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/b/b/o;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Le/a/d/b/b/o;->e:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/voip/VoipUser;

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
    iget-object p1, p0, Le/a/d/b/b/o;->g:Le/a/d/b/b/b;

    .line 5
    iget-object p1, p1, Le/a/d/b/b/b;->n:Le/a/d/c0/q1;

    .line 6
    iget-object v2, p0, Le/a/d/b/b/o;->h:Ljava/lang/String;

    sget-object v5, Lcom/truecaller/voip/util/VoipSearchDirection;->INCOMING:Lcom/truecaller/voip/util/VoipSearchDirection;

    iput v4, p0, Le/a/d/b/b/o;->f:I

    check-cast p1, Le/a/d/c0/r1;

    invoke-virtual {p1, v2, v5, p0}, Le/a/d/c0/r1;->a(Ljava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    check-cast p1, Lcom/truecaller/voip/VoipUser;

    if-eqz p1, :cond_6

    .line 7
    iget-boolean v2, p1, Lcom/truecaller/voip/VoipUser;->e:Z

    if-eqz v2, :cond_4

    .line 8
    iget-object v1, p0, Le/a/d/b/b/o;->g:Le/a/d/b/b/b;

    .line 9
    iget-object p1, p1, Lcom/truecaller/voip/VoipUser;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, p1}, Le/a/d/b/b/b;->Lj(Ljava/lang/String;)V

    goto :goto_2

    .line 11
    :cond_4
    iget-object v2, p0, Le/a/d/b/b/o;->g:Le/a/d/b/b/b;

    .line 12
    iget-object v2, v2, Le/a/d/b/b/b;->m:Le/a/d/x/r/o;

    .line 13
    new-instance v4, Lcom/truecaller/voip/manager/rtm/RtmMsg;

    sget-object v5, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;->BUSY:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    iget-object v6, p0, Le/a/d/b/b/o;->i:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/truecaller/voip/manager/rtm/RtmMsg;-><init>(Lcom/truecaller/voip/manager/rtm/RtmMsgAction;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/d/b/b/o;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/d/b/b/o;->f:I

    invoke-interface {v2, p1, v4, p0}, Le/a/d/x/r/o;->a(Lcom/truecaller/voip/VoipUser;Lcom/truecaller/voip/manager/rtm/RtmMsg;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v1, p1

    .line 14
    :goto_1
    iget-object p1, p0, Le/a/d/b/b/o;->g:Le/a/d/b/b/b;

    .line 15
    invoke-virtual {p1, v1}, Le/a/d/b/b/b;->Mj(Lcom/truecaller/voip/VoipUser;)V

    :cond_6
    :goto_2
    return-object v0
.end method
