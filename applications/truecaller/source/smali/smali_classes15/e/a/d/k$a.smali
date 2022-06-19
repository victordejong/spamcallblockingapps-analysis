.class public final Le/a/d/k$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/k;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.VoipImpl$listenInviteMessageAfterPush$1$inviteReceived$1"
    f = "Voip.kt"
    l = {
        0x1fd,
        0x203
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/k;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lq3/a/w2/z;


# direct methods
.method public constructor <init>(Le/a/d/k;Ljava/lang/String;Lq3/a/w2/z;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/k$a;->g:Le/a/d/k;

    iput-object p2, p0, Le/a/d/k$a;->h:Ljava/lang/String;

    iput-object p3, p0, Le/a/d/k$a;->i:Lq3/a/w2/z;

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

    new-instance p1, Le/a/d/k$a;

    iget-object v0, p0, Le/a/d/k$a;->g:Le/a/d/k;

    iget-object v1, p0, Le/a/d/k$a;->h:Ljava/lang/String;

    iget-object v2, p0, Le/a/d/k$a;->i:Lq3/a/w2/z;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/k$a;-><init>(Le/a/d/k;Ljava/lang/String;Lq3/a/w2/z;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/k$a;

    iget-object v0, p0, Le/a/d/k$a;->g:Le/a/d/k;

    iget-object v1, p0, Le/a/d/k$a;->h:Ljava/lang/String;

    iget-object v2, p0, Le/a/d/k$a;->i:Lq3/a/w2/z;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/k$a;-><init>(Le/a/d/k;Ljava/lang/String;Lq3/a/w2/z;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/k$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/k$a;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Le/a/d/k$a;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/w2/l;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_2

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
    iget-object p1, p0, Le/a/d/k$a;->g:Le/a/d/k;

    iget-object p1, p1, Le/a/d/k;->g:Le/a/d/j;

    .line 5
    iget-object p1, p1, Le/a/d/j;->j:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/x/r/o;

    iget-object v2, p0, Le/a/d/k$a;->h:Ljava/lang/String;

    new-instance v5, Lcom/truecaller/voip/manager/rtm/RtmMsg;

    sget-object v6, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;->ONLINE:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Lcom/truecaller/voip/manager/rtm/RtmMsg;-><init>(Lcom/truecaller/voip/manager/rtm/RtmMsgAction;Ljava/lang/String;)V

    iput v3, p0, Le/a/d/k$a;->f:I

    invoke-interface {p1, v2, v5, p0}, Le/a/d/x/r/o;->b(Ljava/lang/String;Lcom/truecaller/voip/manager/rtm/RtmMsg;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    return-object v0

    .line 7
    :cond_4
    iget-object p1, p0, Le/a/d/k$a;->i:Lq3/a/w2/z;

    invoke-interface {p1}, Lq3/a/w2/z;->iterator()Lq3/a/w2/l;

    move-result-object p1

    move-object v2, p1

    move-object p1, p0

    :goto_1
    iput-object v2, p1, Le/a/d/k$a;->e:Ljava/lang/Object;

    iput v4, p1, Le/a/d/k$a;->f:I

    invoke-interface {v2, p1}, Lq3/a/w2/l;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_5

    return-object v1

    :cond_5
    move-object v8, v0

    move-object v0, p1

    move-object p1, v5

    move-object v5, v2

    move-object v2, v1

    move-object v1, v8

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v5}, Lq3/a/w2/l;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/voip/manager/rtm/RtmMsg;

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/voip/manager/rtm/RtmMsg;->getSenderId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Le/a/d/k$a;->g:Le/a/d/k;

    iget-object v7, v7, Le/a/d/k;->h:Lcom/truecaller/voip/VoipPushNotification;

    .line 9
    iget-object v7, v7, Lcom/truecaller/voip/VoipPushNotification;->c:Ljava/lang/String;

    .line 10
    invoke-static {v6, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_6

    goto :goto_3

    .line 11
    :cond_6
    invoke-virtual {p1}, Lcom/truecaller/voip/manager/rtm/RtmMsg;->getAction()Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_7

    :goto_3
    move-object p1, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_1

    .line 12
    :cond_7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_8
    return-object v1
.end method
