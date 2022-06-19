.class public final Le/a/d/c/u;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.ui.VoipPresenter$onAddPeersPositioned$1"
    f = "VoipPresenter.kt"
    l = {
        0x94
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/c/t;


# direct methods
.method public constructor <init>(Le/a/d/c/t;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/u;->f:Le/a/d/c/t;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/d/c/u;

    iget-object v0, p0, Le/a/d/c/u;->f:Le/a/d/c/t;

    invoke-direct {p1, v0, p2}, Le/a/d/c/u;-><init>(Le/a/d/c/t;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c/u;

    iget-object v0, p0, Le/a/d/c/u;->f:Le/a/d/c/t;

    invoke-direct {p1, v0, p2}, Le/a/d/c/u;-><init>(Le/a/d/c/t;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c/u;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c/u;->e:I

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

    const-wide/16 v3, 0xa

    .line 4
    iput v2, p0, Le/a/d/c/u;->e:I

    invoke-static {v3, v4, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/d/c/u;->f:Le/a/d/c/t;

    .line 6
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/l;

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p1}, Le/a/d/c/l;->a3()V

    .line 8
    :cond_3
    iget-object p1, p0, Le/a/d/c/u;->f:Le/a/d/c/t;

    .line 9
    iget-object v0, p1, Le/a/d/c/t;->o:Le/a/d/c0/g1;

    const-string v1, "voiceGroupToolTip"

    invoke-interface {v0, v1}, Le/a/d/c0/g1;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 10
    iget-object v1, p1, Le/a/d/c/t;->o:Le/a/d/c0/g1;

    const-string v3, "voiceGroupBadge"

    invoke-interface {v1, v3}, Le/a/d/c0/g1;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_6

    if-eqz v1, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/l;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le/a/d/c/l;->h3()V

    .line 12
    :cond_5
    iget-object p1, p1, Le/a/d/c/t;->o:Le/a/d/c0/g1;

    invoke-interface {p1, v3, v2}, Le/a/d/c0/g1;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    :cond_6
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
