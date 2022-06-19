.class public final Le/a/d/z/b/f;
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
    c = "com.truecaller.voip.service.call.CallServicePresenter$onNewIncomingCall$1"
    f = "CallServicePresenter.kt"
    l = {
        0x14b,
        0x5d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/z/b/c;


# direct methods
.method public constructor <init>(Le/a/d/z/b/c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/z/b/f;->f:Le/a/d/z/b/c;

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

    new-instance p1, Le/a/d/z/b/f;

    iget-object v0, p0, Le/a/d/z/b/f;->f:Le/a/d/z/b/c;

    invoke-direct {p1, v0, p2}, Le/a/d/z/b/f;-><init>(Le/a/d/z/b/c;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/z/b/f;

    iget-object v0, p0, Le/a/d/z/b/f;->f:Le/a/d/z/b/c;

    invoke-direct {p1, v0, p2}, Le/a/d/z/b/f;-><init>(Le/a/d/z/b/c;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/z/b/f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/z/b/f;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

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

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/z/b/f;->f:Le/a/d/z/b/c;

    .line 5
    invoke-virtual {p1}, Le/a/d/z/b/c;->Nj()Lq3/a/p1;

    .line 6
    iget-object p1, p0, Le/a/d/z/b/f;->f:Le/a/d/z/b/c;

    .line 7
    iget-object p1, p1, Le/a/d/z/b/c;->f:Le/a/d/v/d;

    .line 8
    invoke-interface {p1}, Le/a/d/v/d;->getState()Lq3/a/x2/i1;

    move-result-object p1

    .line 9
    new-instance v1, Le/a/d/z/b/f$a;

    invoke-direct {v1, p1}, Le/a/d/z/b/f$a;-><init>(Lq3/a/x2/f;)V

    .line 10
    iput v3, p0, Le/a/d/z/b/f;->e:I

    .line 11
    invoke-static {v1, p0}, Ls1/a/a/a/v0/f/d;->O0(Lq3/a/x2/f;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 12
    :cond_3
    :goto_0
    check-cast p1, Le/a/d/v/f$a;

    if-eqz p1, :cond_4

    .line 13
    iget-object v1, p0, Le/a/d/z/b/f;->f:Le/a/d/z/b/c;

    .line 14
    iget-object p1, p1, Le/a/d/v/f$a;->a:Le/a/d/v/b;

    .line 15
    iput v2, p0, Le/a/d/z/b/f;->e:I

    invoke-virtual {v1, p1, p0}, Le/a/d/z/b/c;->Qj(Le/a/d/v/b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 16
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
