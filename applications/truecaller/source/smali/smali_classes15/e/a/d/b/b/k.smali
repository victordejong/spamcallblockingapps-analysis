.class public final Le/a/d/b/b/k;
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
    c = "com.truecaller.voip.legacy.incoming.LegacyIncomingVoipServicePresenter$listenForRtmMessages$1"
    f = "LegacyIncomingVoipServicePresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/d/b/b/b;


# direct methods
.method public constructor <init>(Le/a/d/b/b/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/b/k;->f:Le/a/d/b/b/b;

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

    new-instance v0, Le/a/d/b/b/k;

    iget-object v1, p0, Le/a/d/b/b/k;->f:Le/a/d/b/b/b;

    invoke-direct {v0, v1, p2}, Le/a/d/b/b/k;-><init>(Le/a/d/b/b/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/b/b/k;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/d/b/b/k;->f:Le/a/d/b/b/b;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Lcom/truecaller/voip/manager/rtm/RtmMsg;

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/voip/manager/rtm/RtmMsg;->getSenderId()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {v1}, Le/a/d/b/b/b;->Kj()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {p2, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/voip/manager/rtm/RtmMsg;->getAction()Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    sget-object p1, Lcom/truecaller/voip/VoipState;->ENDED:Lcom/truecaller/voip/VoipState;

    sget-object p2, Lcom/truecaller/voip/VoipStateReason;->RECEIVED_END:Lcom/truecaller/voip/VoipStateReason;

    .line 9
    invoke-virtual {v1, p1, p2}, Le/a/d/b/b/b;->Pj(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V

    :goto_0
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/b/b/k;->e:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/voip/manager/rtm/RtmMsg;

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/voip/manager/rtm/RtmMsg;->getSenderId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Le/a/d/b/b/k;->f:Le/a/d/b/b/b;

    .line 3
    invoke-virtual {v2}, Le/a/d/b/b/b;->Kj()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/voip/manager/rtm/RtmMsg;->getAction()Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Le/a/d/b/b/k;->f:Le/a/d/b/b/b;

    sget-object v1, Lcom/truecaller/voip/VoipState;->ENDED:Lcom/truecaller/voip/VoipState;

    sget-object v2, Lcom/truecaller/voip/VoipStateReason;->RECEIVED_END:Lcom/truecaller/voip/VoipStateReason;

    .line 7
    invoke-virtual {p1, v1, v2}, Le/a/d/b/b/b;->Pj(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V

    :goto_0
    return-object v0
.end method
