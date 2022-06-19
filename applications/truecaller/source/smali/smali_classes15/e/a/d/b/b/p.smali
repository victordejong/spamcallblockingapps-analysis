.class public final Le/a/d/b/b/p;
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
    c = "com.truecaller.voip.legacy.incoming.LegacyIncomingVoipServicePresenter$resolveCallerAsync$1"
    f = "LegacyIncomingVoipServicePresenter.kt"
    l = {
        0xbf
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/b/b/b;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/d/b/b/b;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/b/p;->f:Le/a/d/b/b/b;

    iput-object p2, p0, Le/a/d/b/b/p;->g:Ljava/lang/String;

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

    new-instance p1, Le/a/d/b/b/p;

    iget-object v0, p0, Le/a/d/b/b/p;->f:Le/a/d/b/b/b;

    iget-object v1, p0, Le/a/d/b/b/p;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/b/b/p;-><init>(Le/a/d/b/b/b;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/b/b/p;

    iget-object v0, p0, Le/a/d/b/b/p;->f:Le/a/d/b/b/b;

    iget-object v1, p0, Le/a/d/b/b/p;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/b/b/p;-><init>(Le/a/d/b/b/b;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/b/b/p;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/b/b/p;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

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
    iget-object p1, p0, Le/a/d/b/b/p;->f:Le/a/d/b/b/b;

    .line 5
    iget-object p1, p1, Le/a/d/b/b/b;->n:Le/a/d/c0/q1;

    .line 6
    iget-object v2, p0, Le/a/d/b/b/p;->g:Ljava/lang/String;

    if-eqz v2, :cond_5

    sget-object v4, Lcom/truecaller/voip/util/VoipSearchDirection;->INCOMING:Lcom/truecaller/voip/util/VoipSearchDirection;

    iput v3, p0, Le/a/d/b/b/p;->e:I

    check-cast p1, Le/a/d/c0/r1;

    invoke-virtual {p1, v2, v4, p0}, Le/a/d/c0/r1;->a(Ljava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Lcom/truecaller/voip/VoipUser;

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Le/a/d/b/b/p;->f:Le/a/d/b/b/b;

    sget-object v1, Lcom/truecaller/voip/VoipState;->FAILED:Lcom/truecaller/voip/VoipState;

    sget-object v2, Lcom/truecaller/voip/VoipStateReason;->GET_PHONE_FAILED:Lcom/truecaller/voip/VoipStateReason;

    .line 9
    invoke-virtual {p1, v1, v2}, Le/a/d/b/b/b;->Pj(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V

    return-object v0

    .line 10
    :cond_3
    iget-object v0, p0, Le/a/d/b/b/p;->f:Le/a/d/b/b/b;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-boolean v1, p1, Lcom/truecaller/voip/VoipUser;->e:Z

    if-eqz v1, :cond_4

    .line 13
    iget-object v0, v0, Le/a/d/b/b/b;->u:Le/a/s2/a;

    invoke-interface {v0}, Le/a/s2/a;->a()V

    goto :goto_1

    .line 14
    :cond_4
    iget-object v0, v0, Le/a/d/b/b/b;->u:Le/a/s2/a;

    const-string v1, "$this$toCallAnnouncementInfo"

    .line 15
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v1, Le/a/s2/f;

    .line 17
    iget-object v2, p1, Lcom/truecaller/voip/VoipUser;->c:Ljava/lang/String;

    .line 18
    iget-object v4, p1, Lcom/truecaller/voip/VoipUser;->a:Ljava/lang/String;

    .line 19
    iget-boolean v5, p1, Lcom/truecaller/voip/VoipUser;->i:Z

    .line 20
    invoke-direct {v1, v2, v4, v3, v5}, Le/a/s2/f;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 21
    invoke-interface {v0, v1}, Le/a/s2/a;->b(Le/a/s2/f;)V

    .line 22
    :goto_1
    iget-object v0, p0, Le/a/d/b/b/p;->f:Le/a/d/b/b/b;

    .line 23
    iput-object p1, v0, Le/a/d/b/b/b;->e:Lcom/truecaller/voip/VoipUser;

    .line 24
    iget-object v0, v0, Le/a/d/b/b/b;->k:Lq3/a/w2/h;

    .line 25
    invoke-interface {v0, p1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 26
    iget-object p1, p0, Le/a/d/b/b/p;->f:Le/a/d/b/b/b;

    .line 27
    iput-boolean v3, p1, Le/a/d/b/b/b;->g:Z

    .line 28
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_5
    return-object v0
.end method
