.class public final Le/a/d/b/b/m;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.legacy.incoming.LegacyIncomingVoipServicePresenter$loginRtmAsync$1"
    f = "LegacyIncomingVoipServicePresenter.kt"
    l = {
        0xaf
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/b/b/b;


# direct methods
.method public constructor <init>(Le/a/d/b/b/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/b/m;->f:Le/a/d/b/b/b;

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

    new-instance p1, Le/a/d/b/b/m;

    iget-object v0, p0, Le/a/d/b/b/m;->f:Le/a/d/b/b/b;

    invoke-direct {p1, v0, p2}, Le/a/d/b/b/m;-><init>(Le/a/d/b/b/b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/b/b/m;

    iget-object v0, p0, Le/a/d/b/b/m;->f:Le/a/d/b/b/b;

    invoke-direct {p1, v0, p2}, Le/a/d/b/b/m;-><init>(Le/a/d/b/b/b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/b/b/m;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/b/b/m;->e:I

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
    iget-object p1, p0, Le/a/d/b/b/m;->f:Le/a/d/b/b/b;

    .line 5
    iget-object v3, p1, Le/a/d/b/b/b;->q:Le/a/d/x/r/n;

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 6
    iput v2, p0, Le/a/d/b/b/m;->e:I

    move-object v6, p0

    invoke-static/range {v3 .. v8}, Le/a/p5/s0/g;->B0(Le/a/d/x/r/n;JLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Le/a/d/x/r/m;

    .line 8
    instance-of v0, p1, Le/a/d/x/r/p;

    if-eqz v0, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    instance-of v0, p1, Le/a/d/x/r/g;

    if-eqz v0, :cond_7

    .line 10
    check-cast p1, Le/a/d/x/r/g;

    .line 11
    iget-object p1, p1, Le/a/d/x/r/g;->a:Lcom/truecaller/voip/manager/rtm/FailedRtmLoginReason;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    .line 13
    :cond_4
    sget-object p1, Lcom/truecaller/voip/VoipStateReason;->LOGIN_RTM_FAILED:Lcom/truecaller/voip/VoipStateReason;

    goto :goto_1

    .line 14
    :cond_5
    sget-object p1, Lcom/truecaller/voip/VoipStateReason;->GET_RTM_TOKEN_FAILED:Lcom/truecaller/voip/VoipStateReason;

    goto :goto_1

    .line 15
    :cond_6
    sget-object p1, Lcom/truecaller/voip/VoipStateReason;->GET_VOIP_ID_FAILED:Lcom/truecaller/voip/VoipStateReason;

    .line 16
    :goto_1
    iget-object v0, p0, Le/a/d/b/b/m;->f:Le/a/d/b/b/b;

    sget-object v1, Lcom/truecaller/voip/VoipState;->FAILED:Lcom/truecaller/voip/VoipState;

    .line 17
    invoke-virtual {v0, v1, p1}, Le/a/d/b/b/b;->Pj(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V

    const/4 v2, 0x0

    .line 18
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 19
    :cond_7
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
