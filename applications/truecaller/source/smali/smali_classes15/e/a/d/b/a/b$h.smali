.class public final Le/a/d/b/a/b$h;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/b/a/b;->Uj(Lq3/a/n0;)Lq3/a/n0;
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
    c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter$initSettingsAndJoinChannelAsync$1"
    f = "LegacyVoipServicePresenter.kt"
    l = {
        0x1b8,
        0x1bb,
        0x1bd,
        0x1c2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/b/a/b;

.field public final synthetic g:Lq3/a/n0;


# direct methods
.method public constructor <init>(Le/a/d/b/a/b;Lq3/a/n0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/a/b$h;->f:Le/a/d/b/a/b;

    iput-object p2, p0, Le/a/d/b/a/b$h;->g:Lq3/a/n0;

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

    new-instance p1, Le/a/d/b/a/b$h;

    iget-object v0, p0, Le/a/d/b/a/b$h;->f:Le/a/d/b/a/b;

    iget-object v1, p0, Le/a/d/b/a/b$h;->g:Lq3/a/n0;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/b/a/b$h;-><init>(Le/a/d/b/a/b;Lq3/a/n0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/b/a/b$h;

    iget-object v0, p0, Le/a/d/b/a/b$h;->f:Le/a/d/b/a/b;

    iget-object v1, p0, Le/a/d/b/a/b$h;->g:Lq3/a/n0;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/b/a/b$h;-><init>(Le/a/d/b/a/b;Lq3/a/n0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/b/a/b$h;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/b/a/b$h;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/b/a/b$h;->f:Le/a/d/b/a/b;

    .line 5
    iget-object v1, p1, Le/a/d/b/a/b;->M:Le/a/d/c0/a2/a;

    iget-object p1, p1, Le/a/d/b/a/b;->f:Lcom/truecaller/voip/VoipUser;

    if-eqz p1, :cond_12

    .line 6
    iget-object p1, p1, Lcom/truecaller/voip/VoipUser;->a:Ljava/lang/String;

    .line 7
    invoke-interface {v1, p1}, Le/a/d/c0/a2/a;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 8
    iget-object p1, p0, Le/a/d/b/a/b$h;->f:Le/a/d/b/a/b;

    iget-object v1, p0, Le/a/d/b/a/b$h;->g:Lq3/a/n0;

    iput v6, p0, Le/a/d/b/a/b$h;->e:I

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_5

    .line 10
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 11
    :cond_5
    invoke-interface {v1, p0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-ne p1, v0, :cond_6

    return-object v0

    .line 12
    :cond_6
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    .line 13
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 14
    :cond_7
    iget-object p1, p0, Le/a/d/b/a/b$h;->f:Le/a/d/b/a/b;

    .line 15
    invoke-virtual {p1}, Le/a/d/b/a/b;->Pj()Le/a/d/x/p;

    move-result-object p1

    .line 16
    iget-boolean p1, p1, Le/a/d/x/p;->d:Z

    const-string v1, "channelId"

    if-eqz p1, :cond_a

    .line 17
    iget-object p1, p0, Le/a/d/b/a/b$h;->f:Le/a/d/b/a/b;

    .line 18
    iget-object v4, p1, Le/a/d/b/a/b;->u:Le/a/d/x/l;

    .line 19
    iget-object v7, p1, Le/a/d/b/a/b;->e:Ljava/lang/String;

    if-eqz v7, :cond_9

    .line 20
    invoke-static {p1}, Le/a/d/b/a/b;->Jj(Le/a/d/b/a/b;)Lcom/truecaller/voip/VoipUser;

    move-result-object p1

    .line 21
    iget-object p1, p1, Lcom/truecaller/voip/VoipUser;->b:Ljava/lang/String;

    .line 22
    iput v5, p0, Le/a/d/b/a/b$h;->e:I

    check-cast v4, Le/a/d/x/d;

    invoke-virtual {v4, v7, p1, p0}, Le/a/d/x/d;->e(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_2
    check-cast p1, Le/a/d/x/i;

    goto :goto_4

    .line 23
    :cond_9
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 24
    :cond_a
    iget-object p1, p0, Le/a/d/b/a/b$h;->f:Le/a/d/b/a/b;

    .line 25
    iget-object v5, p1, Le/a/d/b/a/b;->u:Le/a/d/x/l;

    .line 26
    iget-object p1, p1, Le/a/d/b/a/b;->e:Ljava/lang/String;

    if-eqz p1, :cond_11

    .line 27
    iput v4, p0, Le/a/d/b/a/b$h;->e:I

    check-cast v5, Le/a/d/x/d;

    invoke-virtual {v5, p1, p0}, Le/a/d/x/d;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    .line 28
    :cond_b
    :goto_3
    check-cast p1, Le/a/d/x/i;

    .line 29
    :goto_4
    instance-of v1, p1, Le/a/d/x/i$b;

    if-eqz v1, :cond_d

    .line 30
    iget-object p1, p0, Le/a/d/b/a/b$h;->f:Le/a/d/b/a/b;

    iput v3, p0, Le/a/d/b/a/b$h;->e:I

    invoke-virtual {p1, p0}, Le/a/d/b/a/b;->Tj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c

    return-object v0

    .line 31
    :cond_c
    :goto_5
    iget-object p1, p0, Le/a/d/b/a/b$h;->f:Le/a/d/b/a/b;

    .line 32
    invoke-virtual {p1}, Le/a/d/b/a/b;->ak()V

    goto :goto_7

    .line 33
    :cond_d
    instance-of v0, p1, Le/a/d/x/i$a;

    if-eqz v0, :cond_10

    .line 34
    check-cast p1, Le/a/d/x/i$a;

    .line 35
    iget-object p1, p1, Le/a/d/x/i$a;->a:Lcom/truecaller/voip/manager/FailedChannelJoinReason;

    .line 36
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_f

    if-ne p1, v6, :cond_e

    .line 37
    sget-object p1, Lcom/truecaller/voip/VoipStateReason;->JOIN_CHANNEL_FAILED:Lcom/truecaller/voip/VoipStateReason;

    goto :goto_6

    :cond_e
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 38
    :cond_f
    sget-object p1, Lcom/truecaller/voip/VoipStateReason;->GET_RTC_TOKEN_FAILED:Lcom/truecaller/voip/VoipStateReason;

    .line 39
    :goto_6
    iget-object v0, p0, Le/a/d/b/a/b$h;->f:Le/a/d/b/a/b;

    sget-object v1, Lcom/truecaller/voip/VoipState;->FAILED:Lcom/truecaller/voip/VoipState;

    .line 40
    invoke-virtual {v0, v1, p1}, Le/a/d/b/a/b;->gk(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V

    .line 41
    iget-object p1, p0, Le/a/d/b/a/b$h;->f:Le/a/d/b/a/b;

    invoke-static {p1}, Le/a/d/b/a/b;->Ij(Le/a/d/b/a/b;)Ljava/lang/String;

    const/4 v6, 0x0

    .line 42
    :goto_7
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 43
    :cond_10
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 44
    :cond_11
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_12
    const-string p1, "voipUser"

    .line 45
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
