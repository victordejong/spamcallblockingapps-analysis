.class public final Le/a/d/b/a/b$j;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/b/a/b;->Vj(Z)V
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
    c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter$inviteToCall$1"
    f = "LegacyVoipServicePresenter.kt"
    l = {
        0x264
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/b/a/b;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Le/a/d/b/a/b;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/a/b$j;->f:Le/a/d/b/a/b;

    iput-boolean p2, p0, Le/a/d/b/a/b$j;->g:Z

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

    new-instance p1, Le/a/d/b/a/b$j;

    iget-object v0, p0, Le/a/d/b/a/b$j;->f:Le/a/d/b/a/b;

    iget-boolean v1, p0, Le/a/d/b/a/b$j;->g:Z

    invoke-direct {p1, v0, v1, p2}, Le/a/d/b/a/b$j;-><init>(Le/a/d/b/a/b;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/b/a/b$j;

    iget-object v0, p0, Le/a/d/b/a/b$j;->f:Le/a/d/b/a/b;

    iget-boolean v1, p0, Le/a/d/b/a/b$j;->g:Z

    invoke-direct {p1, v0, v1, p2}, Le/a/d/b/a/b$j;-><init>(Le/a/d/b/a/b;ZLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/b/a/b$j;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/b/a/b$j;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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

    .line 4
    iget-boolean p1, p0, Le/a/d/b/a/b$j;->g:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;->INVITE_SECURE:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;->INVITE:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    .line 5
    :goto_0
    new-instance v1, Lcom/truecaller/voip/manager/rtm/RtmMsg;

    iget-object v3, p0, Le/a/d/b/a/b$j;->f:Le/a/d/b/a/b;

    invoke-static {v3}, Le/a/d/b/a/b;->Ij(Le/a/d/b/a/b;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Lcom/truecaller/voip/manager/rtm/RtmMsg;-><init>(Lcom/truecaller/voip/manager/rtm/RtmMsgAction;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Le/a/d/b/a/b$j;->f:Le/a/d/b/a/b;

    .line 7
    iget-object v3, p1, Le/a/d/b/a/b;->v:Le/a/d/x/r/o;

    .line 8
    invoke-static {p1}, Le/a/d/b/a/b;->Jj(Le/a/d/b/a/b;)Lcom/truecaller/voip/VoipUser;

    move-result-object p1

    iput v2, p0, Le/a/d/b/a/b$j;->e:I

    invoke-interface {v3, p1, v1, p0}, Le/a/d/x/r/o;->a(Lcom/truecaller/voip/VoipUser;Lcom/truecaller/voip/manager/rtm/RtmMsg;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v2, :cond_4

    .line 9
    iget-object p1, p0, Le/a/d/b/a/b$j;->f:Le/a/d/b/a/b;

    sget-object v0, Lcom/truecaller/voip/VoipState;->INVITED:Lcom/truecaller/voip/VoipState;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Le/a/d/b/a/b;->hk(Le/a/d/b/a/b;Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;I)V

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    .line 10
    iget-object p1, p0, Le/a/d/b/a/b$j;->f:Le/a/d/b/a/b;

    sget-object v0, Lcom/truecaller/voip/VoipState;->FAILED:Lcom/truecaller/voip/VoipState;

    sget-object v1, Lcom/truecaller/voip/VoipStateReason;->INVITE_FAILED:Lcom/truecaller/voip/VoipStateReason;

    .line 11
    invoke-virtual {p1, v0, v1}, Le/a/d/b/a/b;->gk(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V

    .line 12
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
