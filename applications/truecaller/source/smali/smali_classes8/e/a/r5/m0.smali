.class public final Le/a/r5/m0;
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
    c = "com.truecaller.whoviewedme.WhoViewedMeRevealProfileViewAbTestManager$maybeLogConverted$1"
    f = "WhoViewedMeRevealProfileViewAbTestManager.kt"
    l = {
        0x23
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/r5/n0;


# direct methods
.method public constructor <init>(Le/a/r5/n0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r5/m0;->f:Le/a/r5/n0;

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

    new-instance p1, Le/a/r5/m0;

    iget-object v0, p0, Le/a/r5/m0;->f:Le/a/r5/n0;

    invoke-direct {p1, v0, p2}, Le/a/r5/m0;-><init>(Le/a/r5/n0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r5/m0;

    iget-object v0, p0, Le/a/r5/m0;->f:Le/a/r5/n0;

    invoke-direct {p1, v0, p2}, Le/a/r5/m0;-><init>(Le/a/r5/n0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r5/m0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/r5/m0;->e:I

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
    iget-object p1, p0, Le/a/r5/m0;->f:Le/a/r5/n0;

    .line 5
    iget-object p1, p1, Le/a/r5/n0;->b:Le/a/r5/i0;

    .line 6
    iput v2, p0, Le/a/r5/m0;->e:I

    invoke-interface {p1, p0}, Le/a/r5/i0;->g(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 7
    iget-object v0, p0, Le/a/r5/m0;->f:Le/a/r5/n0;

    .line 8
    iget-object v0, v0, Le/a/r5/n0;->a:Le/a/c0/h;

    .line 9
    iget-object v0, v0, Le/a/c0/h;->f:Le/a/c0/c;

    const/4 v1, 0x0

    .line 10
    new-instance v3, Le/a/r5/m0$a;

    invoke-direct {v3, p1}, Le/a/r5/m0$a;-><init>(Z)V

    const/4 p1, 0x0

    invoke-static {v0, v1, v3, v2, p1}, Le/a/c0/f;->d(Le/a/c0/f;ZLs1/z/b/a;ILjava/lang/Object;)V

    .line 11
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
