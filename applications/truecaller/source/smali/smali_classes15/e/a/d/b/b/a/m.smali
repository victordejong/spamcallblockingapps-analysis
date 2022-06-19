.class public final Le/a/d/b/b/a/m;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lcom/truecaller/voip/VoipUser;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.legacy.incoming.ui.LegacyIncomingVoipPresenter$listenUserUpdates$1"
    f = "LegacyIncomingVoipPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/d/b/b/a/l;


# direct methods
.method public constructor <init>(Le/a/d/b/b/a/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/b/a/m;->f:Le/a/d/b/b/a/l;

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

    new-instance v0, Le/a/d/b/b/a/m;

    iget-object v1, p0, Le/a/d/b/b/a/m;->f:Le/a/d/b/b/a/l;

    invoke-direct {v0, v1, p2}, Le/a/d/b/b/a/m;-><init>(Le/a/d/b/b/a/l;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/b/b/a/m;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/b/b/a/m;

    iget-object v1, p0, Le/a/d/b/b/a/m;->f:Le/a/d/b/b/a/l;

    invoke-direct {v0, v1, p2}, Le/a/d/b/b/a/m;-><init>(Le/a/d/b/b/a/l;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/b/b/a/m;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/b/b/a/m;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/b/b/a/m;->e:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/voip/VoipUser;

    .line 2
    iget-object v0, p0, Le/a/d/b/b/a/m;->f:Le/a/d/b/b/a/l;

    .line 3
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/b/a/k;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p1, Lcom/truecaller/voip/VoipUser;->c:Ljava/lang/String;

    .line 5
    invoke-interface {v0, v1}, Le/a/d/b/b/a/k;->setProfileName(Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/d/b/b/a/m;->f:Le/a/d/b/b/a/l;

    .line 7
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/b/a/k;

    if-eqz v0, :cond_1

    invoke-static {p1}, Le/a/p5/s0/g;->H(Lcom/truecaller/voip/VoipUser;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/d/b/b/a/k;->setAvatarConfig(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/d/b/b/a/m;->f:Le/a/d/b/b/a/l;

    .line 9
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/b/a/k;

    if-eqz v0, :cond_2

    invoke-static {p1}, Le/a/p5/s0/g;->G0(Lcom/truecaller/voip/VoipUser;)Le/a/d/c/a/o;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/d/b/b/a/k;->D(Le/a/d/c/a/o;)V

    .line 10
    :cond_2
    iget-object v0, p0, Le/a/d/b/b/a/m;->f:Le/a/d/b/b/a/l;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, p1, Lcom/truecaller/voip/VoipUser;->f:Ljava/lang/Integer;

    .line 13
    iget-object v2, p1, Lcom/truecaller/voip/VoipUser;->g:Lcom/truecaller/voip/VoipUserBadge;

    .line 14
    iget-boolean v3, v2, Lcom/truecaller/voip/VoipUserBadge;->a:Z

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 15
    sget v1, Lcom/truecaller/voip/R$color;->tcx_voip_spam_color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 16
    :cond_3
    iget-boolean v1, v2, Lcom/truecaller/voip/VoipUserBadge;->e:Z

    if-eqz v1, :cond_4

    .line 17
    sget v1, Lcom/truecaller/voip/R$color;->tcx_voip_cred_ripple_color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 18
    :cond_4
    iget-boolean v1, v2, Lcom/truecaller/voip/VoipUserBadge;->c:Z

    if-eqz v1, :cond_5

    .line 19
    sget v1, Lcom/truecaller/themes/R$color;->tcx_goldTextPrimary:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 20
    :cond_5
    iget-boolean v1, v2, Lcom/truecaller/voip/VoipUserBadge;->d:Z

    if-eqz v1, :cond_6

    .line 21
    sget v1, Lcom/truecaller/voip/R$color;->tcx_voip_priority_color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 22
    :cond_6
    iget-boolean v1, p1, Lcom/truecaller/voip/VoipUser;->i:Z

    if-nez v1, :cond_7

    .line 23
    iget-boolean v1, p1, Lcom/truecaller/voip/VoipUser;->j:Z

    if-nez v1, :cond_7

    .line 24
    sget v1, Lcom/truecaller/voip/R$color;->tcx_voip_identified_color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_8

    .line 25
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/b/a/k;

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Le/a/d/b/b/a/k;->L0(I)V

    .line 26
    :cond_8
    iget-object v0, p0, Le/a/d/b/b/a/m;->f:Le/a/d/b/b/a/l;

    .line 27
    iget-object v0, v0, Le/a/d/b/b/a/l;->g:Le/a/b0/q/v;

    .line 28
    new-instance v1, Le/a/d/b/b/a/m$a;

    invoke-direct {v1, p0, p1}, Le/a/d/b/b/a/m$a;-><init>(Le/a/d/b/b/a/m;Lcom/truecaller/voip/VoipUser;)V

    .line 29
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "callback"

    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object p1, v0, Le/a/b0/q/v;->b:Ls1/z/b/a;

    if-eqz p1, :cond_9

    const-string p1, "Constructor-provided callback is not null. Use invoke()"

    .line 31
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 32
    :cond_9
    invoke-virtual {v0, v1}, Le/a/b0/q/v;->b(Ls1/z/b/a;)V

    .line 33
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
