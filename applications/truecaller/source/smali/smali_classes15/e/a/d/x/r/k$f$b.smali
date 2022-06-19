.class public final Le/a/d/x/r/k$f$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/x/r/k$f;->onMessageReceived(Lio/agora/rtm/RtmMessage;Lio/agora/rtm/RtmChannelMember;)V
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
    c = "com.truecaller.voip.manager.rtm.RtmChannelImpl$joinChannel$2$channel$1$onMessageReceived$1"
    f = "RtmChannel.kt"
    l = {
        0xcb
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/x/r/k$f;

.field public final synthetic g:Lio/agora/rtm/RtmMessage;

.field public final synthetic h:Lio/agora/rtm/RtmChannelMember;


# direct methods
.method public constructor <init>(Le/a/d/x/r/k$f;Lio/agora/rtm/RtmMessage;Lio/agora/rtm/RtmChannelMember;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/x/r/k$f$b;->f:Le/a/d/x/r/k$f;

    iput-object p2, p0, Le/a/d/x/r/k$f$b;->g:Lio/agora/rtm/RtmMessage;

    iput-object p3, p0, Le/a/d/x/r/k$f$b;->h:Lio/agora/rtm/RtmChannelMember;

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

    new-instance p1, Le/a/d/x/r/k$f$b;

    iget-object v0, p0, Le/a/d/x/r/k$f$b;->f:Le/a/d/x/r/k$f;

    iget-object v1, p0, Le/a/d/x/r/k$f$b;->g:Lio/agora/rtm/RtmMessage;

    iget-object v2, p0, Le/a/d/x/r/k$f$b;->h:Lio/agora/rtm/RtmChannelMember;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/x/r/k$f$b;-><init>(Le/a/d/x/r/k$f;Lio/agora/rtm/RtmMessage;Lio/agora/rtm/RtmChannelMember;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/x/r/k$f$b;

    iget-object v0, p0, Le/a/d/x/r/k$f$b;->f:Le/a/d/x/r/k$f;

    iget-object v1, p0, Le/a/d/x/r/k$f$b;->g:Lio/agora/rtm/RtmMessage;

    iget-object v2, p0, Le/a/d/x/r/k$f$b;->h:Lio/agora/rtm/RtmChannelMember;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/x/r/k$f$b;-><init>(Le/a/d/x/r/k$f;Lio/agora/rtm/RtmMessage;Lio/agora/rtm/RtmChannelMember;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/x/r/k$f$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/x/r/k$f$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

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
    iget-object p1, p0, Le/a/d/x/r/k$f$b;->f:Le/a/d/x/r/k$f;

    iget-object p1, p1, Le/a/d/x/r/k$f;->a:Le/a/d/x/r/k;

    iget-object v2, p0, Le/a/d/x/r/k$f$b;->g:Lio/agora/rtm/RtmMessage;

    iget-object v4, p0, Le/a/d/x/r/k$f$b;->h:Lio/agora/rtm/RtmChannelMember;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :try_start_0
    iget-object p1, p1, Le/a/d/x/r/k;->i:Le/m/e/k;

    invoke-virtual {v2}, Lio/agora/rtm/RtmMessage;->getText()Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcom/truecaller/voip/manager/rtm/RtmMsg;

    invoke-virtual {p1, v2, v5}, Le/m/e/k;->f(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/voip/manager/rtm/RtmMsg;

    .line 7
    invoke-virtual {v4}, Lio/agora/rtm/RtmChannelMember;->getUserId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "member.userId"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/truecaller/voip/manager/rtm/RtmMsg;->setSenderId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 8
    iget-object v2, p0, Le/a/d/x/r/k$f$b;->f:Le/a/d/x/r/k$f;

    iget-object v2, v2, Le/a/d/x/r/k$f;->a:Le/a/d/x/r/k;

    .line 9
    iget-object v2, v2, Le/a/d/x/r/k;->d:Lq3/a/w2/h;

    .line 10
    iput v3, p0, Le/a/d/x/r/k$f$b;->e:I

    invoke-interface {v2, p1, p0}, Lq3/a/w2/d0;->v(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_1
    return-object v0
.end method
