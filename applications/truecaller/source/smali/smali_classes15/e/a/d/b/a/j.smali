.class public final Le/a/d/b/a/j;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lcom/truecaller/voip/manager/VoipMsg;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter$listenForVoipMessages$1"
    f = "LegacyVoipServicePresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/d/b/a/b;


# direct methods
.method public constructor <init>(Le/a/d/b/a/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/a/j;->f:Le/a/d/b/a/b;

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

    new-instance v0, Le/a/d/b/a/j;

    iget-object v1, p0, Le/a/d/b/a/j;->f:Le/a/d/b/a/b;

    invoke-direct {v0, v1, p2}, Le/a/d/b/a/j;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/b/a/j;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/b/a/j;

    iget-object v1, p0, Le/a/d/b/a/j;->f:Le/a/d/b/a/b;

    invoke-direct {v0, v1, p2}, Le/a/d/b/a/j;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/b/a/j;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/b/a/j;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/b/a/j;->e:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/voip/manager/VoipMsg;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New voip message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/voip/manager/VoipMsg;->getAction()Lcom/truecaller/voip/manager/VoipMsgAction;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    iget-object v0, p0, Le/a/d/b/a/j;->f:Le/a/d/b/a/b;

    .line 5
    iget-object v1, v0, Le/a/d/b/a/b;->i:Le/a/d/l;

    .line 6
    iget-object v1, v1, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    .line 7
    sget-object v2, Lcom/truecaller/voip/VoipState;->ONGOING:Lcom/truecaller/voip/VoipState;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/voip/manager/VoipMsg;->getExtras()Lcom/truecaller/voip/manager/VoipMsgExtras;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/voip/manager/VoipMsgExtras;->getUserCount()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 8
    sget-object p1, Lcom/truecaller/voip/VoipState;->ENDED:Lcom/truecaller/voip/VoipState;

    sget-object v1, Lcom/truecaller/voip/VoipStateReason;->EMPTY_CHANNEL:Lcom/truecaller/voip/VoipStateReason;

    invoke-virtual {v0, p1, v1}, Le/a/d/b/a/b;->gk(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V

    goto/16 :goto_0

    .line 9
    :pswitch_1
    iget-object p1, p0, Le/a/d/b/a/j;->f:Le/a/d/b/a/b;

    sget-object v0, Lcom/truecaller/voip/VoipState;->ENDED:Lcom/truecaller/voip/VoipState;

    sget-object v1, Lcom/truecaller/voip/VoipStateReason;->PEER_LEFT_CHANNEL:Lcom/truecaller/voip/VoipStateReason;

    .line 10
    invoke-virtual {p1, v0, v1}, Le/a/d/b/a/b;->gk(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V

    goto/16 :goto_0

    .line 11
    :pswitch_2
    iget-object v0, p0, Le/a/d/b/a/j;->f:Le/a/d/b/a/b;

    invoke-virtual {p1}, Lcom/truecaller/voip/manager/VoipMsg;->getExtras()Lcom/truecaller/voip/manager/VoipMsgExtras;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/voip/manager/VoipMsgExtras;->getMuted()Z

    move-result v3

    .line 12
    iget-object v1, v0, Le/a/d/b/a/b;->j:Le/a/d/x/p;

    .line 13
    iget-boolean p1, v1, Le/a/d/x/p;->b:Z

    if-ne v3, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1d

    .line 14
    invoke-static/range {v1 .. v7}, Le/a/d/x/p;->a(Le/a/d/x/p;ZZZZLe/a/d/c0/x1/b;I)Le/a/d/x/p;

    move-result-object p1

    iput-object p1, v0, Le/a/d/b/a/b;->j:Le/a/d/x/p;

    .line 15
    invoke-virtual {v0}, Le/a/d/b/a/b;->bk()V

    goto :goto_0

    .line 16
    :pswitch_3
    iget-object p1, p0, Le/a/d/b/a/j;->f:Le/a/d/b/a/b;

    sget-object v0, Lcom/truecaller/voip/ConnectionState;->DISCONNECTED:Lcom/truecaller/voip/ConnectionState;

    invoke-static {p1, v0}, Le/a/d/b/a/b;->Kj(Le/a/d/b/a/b;Lcom/truecaller/voip/ConnectionState;)V

    goto :goto_0

    .line 17
    :pswitch_4
    iget-object p1, p0, Le/a/d/b/a/j;->f:Le/a/d/b/a/b;

    sget-object v0, Lcom/truecaller/voip/ConnectionState;->CONNECTED:Lcom/truecaller/voip/ConnectionState;

    invoke-static {p1, v0}, Le/a/d/b/a/b;->Kj(Le/a/d/b/a/b;Lcom/truecaller/voip/ConnectionState;)V

    goto :goto_0

    .line 18
    :pswitch_5
    iget-object p1, p0, Le/a/d/b/a/j;->f:Le/a/d/b/a/b;

    sget-object v0, Lcom/truecaller/voip/ConnectionState;->INTERRUPTED:Lcom/truecaller/voip/ConnectionState;

    invoke-static {p1, v0}, Le/a/d/b/a/b;->Kj(Le/a/d/b/a/b;Lcom/truecaller/voip/ConnectionState;)V

    goto :goto_0

    .line 19
    :pswitch_6
    iget-object v0, p0, Le/a/d/b/a/j;->f:Le/a/d/b/a/b;

    invoke-static {v0}, Le/a/d/b/a/b;->Jj(Le/a/d/b/a/b;)Lcom/truecaller/voip/VoipUser;

    move-result-object v1

    invoke-virtual {p1}, Lcom/truecaller/voip/manager/VoipMsg;->getExtras()Lcom/truecaller/voip/manager/VoipMsgExtras;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/voip/manager/VoipMsgExtras;->getUid()Ljava/lang/Integer;

    move-result-object v10

    .line 20
    iget-object v3, v1, Lcom/truecaller/voip/VoipUser;->a:Ljava/lang/String;

    iget-object v4, v1, Lcom/truecaller/voip/VoipUser;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/truecaller/voip/VoipUser;->c:Ljava/lang/String;

    iget-object v6, v1, Lcom/truecaller/voip/VoipUser;->d:Ljava/lang/String;

    iget-boolean v7, v1, Lcom/truecaller/voip/VoipUser;->e:Z

    iget-object v8, v1, Lcom/truecaller/voip/VoipUser;->f:Ljava/lang/Integer;

    iget-object v9, v1, Lcom/truecaller/voip/VoipUser;->g:Lcom/truecaller/voip/VoipUserBadge;

    iget-boolean v11, v1, Lcom/truecaller/voip/VoipUser;->i:Z

    iget-boolean v12, v1, Lcom/truecaller/voip/VoipUser;->j:Z

    .line 21
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "id"

    invoke-static {v3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "number"

    invoke-static {v4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "name"

    invoke-static {v5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "badge"

    invoke-static {v9, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/voip/VoipUser;

    move-object v2, p1

    invoke-direct/range {v2 .. v12}, Lcom/truecaller/voip/VoipUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Lcom/truecaller/voip/VoipUserBadge;Ljava/lang/Integer;ZZ)V

    .line 22
    invoke-virtual {v0, p1}, Le/a/d/b/a/b;->ik(Lcom/truecaller/voip/VoipUser;)V

    .line 23
    iget-object p1, p0, Le/a/d/b/a/j;->f:Le/a/d/b/a/b;

    sget-object v0, Lcom/truecaller/voip/VoipState;->ONGOING:Lcom/truecaller/voip/VoipState;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Le/a/d/b/a/b;->hk(Le/a/d/b/a/b;Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;I)V

    .line 24
    iget-object p1, p0, Le/a/d/b/a/j;->f:Le/a/d/b/a/b;

    .line 25
    invoke-virtual {p1}, Le/a/d/b/a/b;->Pj()Le/a/d/x/p;

    move-result-object p1

    .line 26
    iget-boolean p1, p1, Le/a/d/x/p;->c:Z

    if-eqz p1, :cond_1

    .line 27
    iget-object p1, p0, Le/a/d/b/a/j;->f:Le/a/d/b/a/b;

    .line 28
    invoke-virtual {p1}, Le/a/d/b/a/b;->ek()Lq3/a/p1;

    .line 29
    :cond_1
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
