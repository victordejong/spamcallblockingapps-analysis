.class public final Le/a/d/z/c/k;
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
    c = "com.truecaller.voip.service.invitation.InvitationServicePresenter$showVoipScreenOnWaitingAnswer$1"
    f = "InvitationServicePresenter.kt"
    l = {
        0x14b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/z/c/e;


# direct methods
.method public constructor <init>(Le/a/d/z/c/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/z/c/k;->f:Le/a/d/z/c/e;

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

    new-instance p1, Le/a/d/z/c/k;

    iget-object v0, p0, Le/a/d/z/c/k;->f:Le/a/d/z/c/e;

    invoke-direct {p1, v0, p2}, Le/a/d/z/c/k;-><init>(Le/a/d/z/c/e;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/z/c/k;

    iget-object v0, p0, Le/a/d/z/c/k;->f:Le/a/d/z/c/e;

    invoke-direct {p1, v0, p2}, Le/a/d/z/c/k;-><init>(Le/a/d/z/c/e;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/z/c/k;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/z/c/k;->e:I

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

    .line 4
    iget-object p1, p0, Le/a/d/z/c/k;->f:Le/a/d/z/c/e;

    .line 5
    iget-object p1, p1, Le/a/d/z/c/e;->g:Le/a/d/w/d;

    .line 6
    invoke-interface {p1}, Le/a/d/w/d;->getState()Lq3/a/x2/i1;

    move-result-object p1

    .line 7
    new-instance v1, Le/a/d/z/c/k$d;

    invoke-direct {v1, p1}, Le/a/d/z/c/k$d;-><init>(Lq3/a/x2/f;)V

    const/4 p1, 0x0

    .line 8
    new-instance v3, Le/a/d/z/c/k$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Le/a/d/z/c/k$a;-><init>(Ls1/w/d;)V

    invoke-static {v1, p1, v3, v2, v4}, Ls1/a/a/a/v0/f/d;->S0(Lq3/a/x2/f;ILs1/z/b/p;ILjava/lang/Object;)Lq3/a/x2/f;

    move-result-object p1

    .line 9
    new-instance v1, Le/a/d/z/c/k$c;

    invoke-direct {v1, p1}, Le/a/d/z/c/k$c;-><init>(Lq3/a/x2/f;)V

    .line 10
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->F0(Lq3/a/x2/f;)Lq3/a/x2/f;

    move-result-object p1

    .line 11
    new-instance v1, Le/a/d/z/c/k$b;

    invoke-direct {v1, p0}, Le/a/d/z/c/k$b;-><init>(Le/a/d/z/c/k;)V

    iput v2, p0, Le/a/d/z/c/k;->e:I

    invoke-interface {p1, v1, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 12
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
