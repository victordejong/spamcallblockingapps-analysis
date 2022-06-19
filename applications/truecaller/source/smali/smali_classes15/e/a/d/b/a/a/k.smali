.class public final Le/a/d/b/a/a/k;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/d/x/p;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.legacy.incall.ui.LegacyVoipPresenter$listenVoipServiceSettings$1"
    f = "LegacyVoipPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/d/b/a/a/j;


# direct methods
.method public constructor <init>(Le/a/d/b/a/a/j;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/a/a/k;->f:Le/a/d/b/a/a/j;

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

    new-instance v0, Le/a/d/b/a/a/k;

    iget-object v1, p0, Le/a/d/b/a/a/k;->f:Le/a/d/b/a/a/j;

    invoke-direct {v0, v1, p2}, Le/a/d/b/a/a/k;-><init>(Le/a/d/b/a/a/j;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/b/a/a/k;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/d/b/a/a/k;->f:Le/a/d/b/a/a/j;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Le/a/d/x/p;

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New voip setting is received. Setting: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    iget-object p2, p1, Le/a/d/x/p;->e:Le/a/d/c0/x1/b;

    .line 6
    iget-object v2, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/d/b/a/a/i;

    if-eqz v2, :cond_0

    .line 7
    iget-boolean p1, p1, Le/a/d/x/p;->b:Z

    .line 8
    invoke-interface {v2, p1}, Le/a/d/b/a/a/i;->v3(Z)V

    .line 9
    :cond_0
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p2, Le/a/d/c0/x1/b;->b:Ljava/util/List;

    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p2, Le/a/d/c0/x1/b;->a:Le/a/d/c0/x1/a;

    .line 13
    instance-of p2, p1, Le/a/d/c0/x1/a$b;

    if-eqz p2, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    instance-of p1, p1, Le/a/d/c0/x1/a$d;

    if-eqz p1, :cond_2

    :goto_0
    const/4 v2, 0x0

    .line 15
    :cond_2
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/a/a/i;

    if-eqz p1, :cond_4

    .line 16
    sget p2, Lcom/truecaller/voip/R$drawable;->tcx_selector_voip_toggle_speaker:I

    .line 17
    invoke-interface {p1, p2, v2}, Le/a/d/b/a/a/i;->D1(IZ)V

    goto :goto_1

    .line 18
    :cond_3
    iget-object p1, p2, Le/a/d/c0/x1/b;->a:Le/a/d/c0/x1/a;

    .line 19
    invoke-static {p1}, Le/a/p5/s0/g;->K1(Le/a/d/c0/x1/a;)I

    move-result p1

    .line 20
    iget-object p2, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/d/b/a/a/i;

    if-eqz p2, :cond_4

    invoke-interface {p2, p1, v2}, Le/a/d/b/a/a/i;->D1(IZ)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/b/a/a/k;->e:Ljava/lang/Object;

    check-cast p1, Le/a/d/x/p;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New voip setting is received. Setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    iget-object v0, p1, Le/a/d/x/p;->e:Le/a/d/c0/x1/b;

    .line 4
    iget-object v1, p0, Le/a/d/b/a/a/k;->f:Le/a/d/b/a/a/j;

    .line 5
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/a/i;

    if-eqz v1, :cond_0

    .line 6
    iget-boolean p1, p1, Le/a/d/x/p;->b:Z

    .line 7
    invoke-interface {v1, p1}, Le/a/d/b/a/a/i;->v3(Z)V

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/d/b/a/a/k;->f:Le/a/d/b/a/a/j;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, v0, Le/a/d/c0/x1/b;->b:Ljava/util/List;

    .line 11
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 12
    iget-object v0, v0, Le/a/d/c0/x1/b;->a:Le/a/d/c0/x1/a;

    .line 13
    instance-of v1, v0, Le/a/d/c0/x1/a$b;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    instance-of v0, v0, Le/a/d/c0/x1/a$d;

    if-eqz v0, :cond_2

    :goto_0
    const/4 v2, 0x0

    .line 15
    :cond_2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/a/a/i;

    if-eqz p1, :cond_4

    .line 16
    sget v0, Lcom/truecaller/voip/R$drawable;->tcx_selector_voip_toggle_speaker:I

    .line 17
    invoke-interface {p1, v0, v2}, Le/a/d/b/a/a/i;->D1(IZ)V

    goto :goto_1

    .line 18
    :cond_3
    iget-object v0, v0, Le/a/d/c0/x1/b;->a:Le/a/d/c0/x1/a;

    .line 19
    invoke-static {v0}, Le/a/p5/s0/g;->K1(Le/a/d/c0/x1/a;)I

    move-result v0

    .line 20
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/a/a/i;

    if-eqz p1, :cond_4

    invoke-interface {p1, v0, v2}, Le/a/d/b/a/a/i;->D1(IZ)V

    .line 21
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
