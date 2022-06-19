.class public final Le/a/d/b/a/m;
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
    c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter$maybeSendWakeUpPushAsync$1"
    f = "LegacyVoipServicePresenter.kt"
    l = {
        0x19d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/b/a/b;


# direct methods
.method public constructor <init>(Le/a/d/b/a/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/a/m;->f:Le/a/d/b/a/b;

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

    new-instance p1, Le/a/d/b/a/m;

    iget-object v0, p0, Le/a/d/b/a/m;->f:Le/a/d/b/a/b;

    invoke-direct {p1, v0, p2}, Le/a/d/b/a/m;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/b/a/m;

    iget-object v0, p0, Le/a/d/b/a/m;->f:Le/a/d/b/a/b;

    invoke-direct {p1, v0, p2}, Le/a/d/b/a/m;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/b/a/m;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/b/a/m;->e:I

    const/4 v2, 0x1

    const/4 v3, 0x0

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
    iget-object p1, p0, Le/a/d/b/a/m;->f:Le/a/d/b/a/b;

    .line 5
    iget-object v1, p1, Le/a/d/b/a/b;->L:Le/a/d/c0/u1;

    .line 6
    invoke-static {p1}, Le/a/d/b/a/b;->Jj(Le/a/d/b/a/b;)Lcom/truecaller/voip/VoipUser;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/truecaller/voip/VoipUser;->b:Ljava/lang/String;

    .line 8
    iget-object v4, p0, Le/a/d/b/a/m;->f:Le/a/d/b/a/b;

    invoke-static {v4}, Le/a/d/b/a/b;->Ij(Le/a/d/b/a/b;)Ljava/lang/String;

    move-result-object v4

    iput v2, p0, Le/a/d/b/a/m;->e:I

    check-cast v1, Le/a/d/c0/v1;

    .line 9
    iget-object v2, v1, Le/a/d/c0/v1;->a:Ls1/w/f;

    new-instance v5, Le/a/d/c0/w1;

    invoke-direct {v5, v1, p1, v4, v3}, Le/a/d/c0/w1;-><init>(Le/a/d/c0/v1;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v2, v5, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 10
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 11
    iget-object v0, p0, Le/a/d/b/a/m;->f:Le/a/d/b/a/b;

    .line 12
    new-instance v1, Le/a/d/c0/e0;

    .line 13
    iget-boolean v2, v0, Le/a/d/b/a/b;->k:Z

    if-eqz v2, :cond_3

    .line 14
    sget-object v2, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->INCOMING:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    goto :goto_1

    .line 15
    :cond_3
    sget-object v2, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->OUTGOING:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    :goto_1
    move-object v5, v2

    .line 16
    iget-object v6, v0, Le/a/d/b/a/b;->e:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 17
    iget-object v2, v0, Le/a/d/b/a/b;->D:Le/a/d/x/r/n;

    invoke-interface {v2}, Le/a/d/x/r/n;->c()Ljava/lang/String;

    move-result-object v7

    .line 18
    iget-object v2, v0, Le/a/d/b/a/b;->u:Le/a/d/x/l;

    check-cast v2, Le/a/d/x/d;

    .line 19
    iget-object v2, v2, Le/a/d/x/d;->c:Le/a/d/x/j;

    if-eqz v2, :cond_4

    .line 20
    iget v2, v2, Le/a/d/x/j;->b:I

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v8, v2

    goto :goto_2

    :cond_4
    move-object v8, v3

    .line 22
    :goto_2
    iget-object v2, v0, Le/a/d/b/a/b;->f:Lcom/truecaller/voip/VoipUser;

    if-eqz v2, :cond_5

    .line 23
    iget-object v9, v2, Lcom/truecaller/voip/VoipUser;->a:Ljava/lang/String;

    .line 24
    iget-object v10, v2, Lcom/truecaller/voip/VoipUser;->h:Ljava/lang/Integer;

    .line 25
    iget-object v11, v0, Le/a/d/b/a/b;->o:Ljava/lang/String;

    const/4 v12, 0x0

    const/16 v13, 0x80

    move-object v4, v1

    .line 26
    invoke-direct/range {v4 .. v13}, Le/a/d/c0/e0;-><init>(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZI)V

    .line 27
    iget-object v4, v0, Le/a/d/b/a/b;->E:Le/a/d/c0/f0;

    sget-object v6, Lcom/truecaller/voip/util/VoipAnalyticsState;->WAKE_UP_SENT:Lcom/truecaller/voip/util/VoipAnalyticsState;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v5, v1

    invoke-static/range {v4 .. v9}, Le/a/p5/s0/g;->A0(Le/a/d/c0/f0;Le/a/d/c0/e0;Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;ILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    const-string p1, "voipUser"

    .line 28
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_6
    const-string p1, "channelId"

    .line 29
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 30
    :cond_7
    iget-object v0, p0, Le/a/d/b/a/m;->f:Le/a/d/b/a/b;

    sget-object v1, Lcom/truecaller/voip/VoipState;->FAILED:Lcom/truecaller/voip/VoipState;

    sget-object v2, Lcom/truecaller/voip/VoipStateReason;->INVITE_FAILED:Lcom/truecaller/voip/VoipStateReason;

    .line 31
    invoke-virtual {v0, v1, v2}, Le/a/d/b/a/b;->gk(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V

    .line 32
    :goto_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
