.class public final Le/a/d/b/a/a/l;
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
    c = "com.truecaller.voip.legacy.incall.ui.LegacyVoipPresenter$listenVoipUserUpdates$1"
    f = "LegacyVoipPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/d/b/a/a/j;

.field public final synthetic g:Le/a/d/b/a/d;


# direct methods
.method public constructor <init>(Le/a/d/b/a/a/j;Le/a/d/b/a/d;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/a/a/l;->f:Le/a/d/b/a/a/j;

    iput-object p2, p0, Le/a/d/b/a/a/l;->g:Le/a/d/b/a/d;

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

    new-instance v0, Le/a/d/b/a/a/l;

    iget-object v1, p0, Le/a/d/b/a/a/l;->f:Le/a/d/b/a/a/j;

    iget-object v2, p0, Le/a/d/b/a/a/l;->g:Le/a/d/b/a/d;

    invoke-direct {v0, v1, v2, p2}, Le/a/d/b/a/a/l;-><init>(Le/a/d/b/a/a/j;Le/a/d/b/a/d;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/b/a/a/l;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/b/a/a/l;

    iget-object v1, p0, Le/a/d/b/a/a/l;->f:Le/a/d/b/a/a/j;

    iget-object v2, p0, Le/a/d/b/a/a/l;->g:Le/a/d/b/a/d;

    invoke-direct {v0, v1, v2, p2}, Le/a/d/b/a/a/l;-><init>(Le/a/d/b/a/a/j;Le/a/d/b/a/d;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/b/a/a/l;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/b/a/a/l;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/b/a/a/l;->e:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/voip/VoipUser;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New voip user update is received. Voip user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    iget-object v0, p0, Le/a/d/b/a/a/l;->f:Le/a/d/b/a/a/j;

    .line 4
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/a/a/i;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p1, Lcom/truecaller/voip/VoipUser;->c:Ljava/lang/String;

    .line 6
    invoke-interface {v0, v1}, Le/a/d/b/a/a/i;->setProfileName(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v0, p0, Le/a/d/b/a/a/l;->f:Le/a/d/b/a/a/j;

    .line 8
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/a/a/i;

    if-eqz v0, :cond_1

    invoke-static {p1}, Le/a/p5/s0/g;->H(Lcom/truecaller/voip/VoipUser;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/d/b/a/a/i;->setAvatarConfig(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 9
    :cond_1
    iget-object v0, p0, Le/a/d/b/a/a/l;->f:Le/a/d/b/a/a/j;

    .line 10
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/a/a/i;

    if-eqz v0, :cond_2

    invoke-static {p1}, Le/a/p5/s0/g;->G0(Lcom/truecaller/voip/VoipUser;)Le/a/d/c/a/o;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/d/b/a/a/i;->D(Le/a/d/c/a/o;)V

    .line 11
    :cond_2
    iget-object v0, p0, Le/a/d/b/a/a/l;->f:Le/a/d/b/a/a/j;

    .line 12
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/a/a/i;

    if-eqz v0, :cond_3

    .line 13
    invoke-interface {v0}, Le/a/d/b/a/a/i;->Oy()V

    .line 14
    :cond_3
    iget-object v0, p0, Le/a/d/b/a/a/l;->f:Le/a/d/b/a/a/j;

    .line 15
    iget-object v0, v0, Le/a/d/b/a/a/j;->e:Le/a/b0/q/v;

    .line 16
    new-instance v1, Le/a/d/b/a/a/l$a;

    invoke-direct {v1, p0, p1}, Le/a/d/b/a/a/l$a;-><init>(Le/a/d/b/a/a/l;Lcom/truecaller/voip/VoipUser;)V

    .line 17
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "callback"

    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object p1, v0, Le/a/b0/q/v;->b:Ls1/z/b/a;

    if-eqz p1, :cond_4

    const-string p1, "Constructor-provided callback is not null. Use invoke()"

    .line 19
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 20
    :cond_4
    invoke-virtual {v0, v1}, Le/a/b0/q/v;->b(Ls1/z/b/a;)V

    .line 21
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
