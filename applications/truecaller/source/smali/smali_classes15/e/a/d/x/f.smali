.class public final Le/a/d/x/f;
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
    c = "com.truecaller.voip.manager.AgoraVoipManager$listenAndHandleTokenExpiration$2"
    f = "VoipManager.kt"
    l = {
        0x1b0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/x/d;

.field public final synthetic h:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Le/a/d/x/d;Ls1/z/b/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/x/f;->g:Le/a/d/x/d;

    iput-object p2, p0, Le/a/d/x/f;->h:Ls1/z/b/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/x/f;

    iget-object v1, p0, Le/a/d/x/f;->g:Le/a/d/x/d;

    iget-object v2, p0, Le/a/d/x/f;->h:Ls1/z/b/l;

    invoke-direct {v0, v1, v2, p2}, Le/a/d/x/f;-><init>(Le/a/d/x/d;Ls1/z/b/l;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/x/f;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/x/f;

    iget-object v1, p0, Le/a/d/x/f;->g:Le/a/d/x/d;

    iget-object v2, p0, Le/a/d/x/f;->h:Ls1/z/b/l;

    invoke-direct {v0, v1, v2, p2}, Le/a/d/x/f;-><init>(Le/a/d/x/d;Ls1/z/b/l;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/x/f;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/x/f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/x/f;->f:I

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

    iget-object p1, p0, Le/a/d/x/f;->e:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/voip/manager/VoipMsg;

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/voip/manager/VoipMsg;->getAction()Lcom/truecaller/voip/manager/VoipMsgAction;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 v1, 0xc

    if-eq p1, v1, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget-object p1, p0, Le/a/d/x/f;->h:Ls1/z/b/l;

    iput v2, p0, Le/a/d/x/f;->f:I

    invoke-interface {p1, p0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 6
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 7
    iget-object v0, p0, Le/a/d/x/f;->g:Le/a/d/x/d;

    .line 8
    invoke-virtual {v0}, Le/a/d/x/d;->b()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0, p1}, Lio/agora/rtc/RtcEngine;->renewToken(Ljava/lang/String;)I

    move-result p1

    .line 10
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 11
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
