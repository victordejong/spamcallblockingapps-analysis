.class public final Le/a/d/b/a/i;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lcom/truecaller/voip/manager/rtm/RtmMsg;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter$listenForRtmMessages$1"
    f = "LegacyVoipServicePresenter.kt"
    l = {
        0x1eb,
        0x1f5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/b/a/b;


# direct methods
.method public constructor <init>(Le/a/d/b/a/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/a/i;->g:Le/a/d/b/a/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/b/a/i;

    iget-object v1, p0, Le/a/d/b/a/i;->g:Le/a/d/b/a/b;

    invoke-direct {v0, v1, p2}, Le/a/d/b/a/i;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/b/a/i;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/b/a/i;

    iget-object v1, p0, Le/a/d/b/a/i;->g:Le/a/d/b/a/b;

    invoke-direct {v0, v1, p2}, Le/a/d/b/a/i;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/b/a/i;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/b/a/i;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/b/a/i;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

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
    iget-object v2, p0, Le/a/d/b/a/i;->e:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/voip/manager/rtm/RtmMsg;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/b/a/i;->e:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lcom/truecaller/voip/manager/rtm/RtmMsg;

    .line 4
    iget-object p1, p0, Le/a/d/b/a/i;->g:Le/a/d/b/a/b;

    .line 5
    iget-object p1, p1, Le/a/d/b/a/b;->n:Lq3/a/p1;

    if-eqz p1, :cond_3

    .line 6
    iput-object v2, p0, Le/a/d/b/a/i;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/d/b/a/i;->f:I

    invoke-interface {p1, p0}, Lq3/a/p1;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 7
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New rtm message:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8
    invoke-virtual {v2}, Lcom/truecaller/voip/manager/rtm/RtmMsg;->getSenderId()Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Le/a/d/b/a/i;->g:Le/a/d/b/a/b;

    invoke-static {v5}, Le/a/d/b/a/b;->Jj(Le/a/d/b/a/b;)Lcom/truecaller/voip/VoipUser;

    move-result-object v5

    .line 9
    iget-object v5, v5, Lcom/truecaller/voip/VoipUser;->a:Ljava/lang/String;

    .line 10
    invoke-static {p1, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v4

    if-eqz p1, :cond_4

    return-object v0

    .line 11
    :cond_4
    invoke-virtual {v2}, Lcom/truecaller/voip/manager/rtm/RtmMsg;->getAction()Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 12
    :pswitch_1
    iget-object p1, p0, Le/a/d/b/a/i;->g:Le/a/d/b/a/b;

    iput-object v2, p0, Le/a/d/b/a/i;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/d/b/a/i;->f:I

    invoke-virtual {p1, p0}, Le/a/d/b/a/b;->Rj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 13
    :pswitch_2
    iget-object p1, p0, Le/a/d/b/a/i;->g:Le/a/d/b/a/b;

    sget-object v1, Lcom/truecaller/voip/VoipState;->ENDED:Lcom/truecaller/voip/VoipState;

    sget-object v2, Lcom/truecaller/voip/VoipStateReason;->RECEIVED_END:Lcom/truecaller/voip/VoipStateReason;

    .line 14
    invoke-virtual {p1, v1, v2}, Le/a/d/b/a/b;->gk(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V

    goto :goto_1

    .line 15
    :pswitch_3
    iget-object p1, p0, Le/a/d/b/a/i;->g:Le/a/d/b/a/b;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Le/a/d/b/a/b;->Lj(Le/a/d/b/a/b;Z)V

    goto :goto_1

    .line 16
    :pswitch_4
    iget-object p1, p0, Le/a/d/b/a/i;->g:Le/a/d/b/a/b;

    invoke-static {p1, v4}, Le/a/d/b/a/b;->Lj(Le/a/d/b/a/b;Z)V

    goto :goto_1

    .line 17
    :pswitch_5
    iget-object p1, p0, Le/a/d/b/a/i;->g:Le/a/d/b/a/b;

    sget-object v1, Lcom/truecaller/voip/VoipState;->BUSY:Lcom/truecaller/voip/VoipState;

    invoke-static {p1, v1, v2, v3}, Le/a/d/b/a/b;->hk(Le/a/d/b/a/b;Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;I)V

    goto :goto_1

    .line 18
    :pswitch_6
    iget-object p1, p0, Le/a/d/b/a/i;->g:Le/a/d/b/a/b;

    sget-object v1, Lcom/truecaller/voip/VoipState;->REJECTED:Lcom/truecaller/voip/VoipState;

    invoke-static {p1, v1, v2, v3}, Le/a/d/b/a/b;->hk(Le/a/d/b/a/b;Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;I)V

    goto :goto_1

    .line 19
    :pswitch_7
    iget-object p1, p0, Le/a/d/b/a/i;->g:Le/a/d/b/a/b;

    .line 20
    iget-object v1, p1, Le/a/d/b/a/b;->i:Le/a/d/l;

    .line 21
    iget-object v1, v1, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    .line 22
    sget-object v3, Lcom/truecaller/voip/VoipState;->INVITED:Lcom/truecaller/voip/VoipState;

    if-eq v1, v3, :cond_5

    goto :goto_1

    .line 23
    :cond_5
    sget-object v1, Lcom/truecaller/voip/VoipState;->RINGING:Lcom/truecaller/voip/VoipState;

    .line 24
    invoke-virtual {p1, v1, v2}, Le/a/d/b/a/b;->gk(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V

    :cond_6
    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
