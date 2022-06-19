.class public final Le/a/d/v/k/l;
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
    c = "com.truecaller.voip.groupcall.action.ConnectGroupCallImpl$endCallWhenPeersLeft$1"
    f = "ConnectGroupCall.kt"
    l = {
        0x99
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/v/k/k;


# direct methods
.method public constructor <init>(Le/a/d/v/k/k;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/k/l;->f:Le/a/d/v/k/k;

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

    new-instance p1, Le/a/d/v/k/l;

    iget-object v0, p0, Le/a/d/v/k/l;->f:Le/a/d/v/k/k;

    invoke-direct {p1, v0, p2}, Le/a/d/v/k/l;-><init>(Le/a/d/v/k/k;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/v/k/l;

    iget-object v0, p0, Le/a/d/v/k/l;->f:Le/a/d/v/k/k;

    invoke-direct {p1, v0, p2}, Le/a/d/v/k/l;-><init>(Le/a/d/v/k/k;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/v/k/l;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/v/k/l;->e:I

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
    iget-object p1, p0, Le/a/d/v/k/l;->f:Le/a/d/v/k/k;

    .line 5
    iget-object p1, p1, Le/a/d/v/k/k;->d:Le/a/d/v/g;

    .line 6
    invoke-virtual {p1}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    iget-object p1, p0, Le/a/d/v/k/l;->f:Le/a/d/v/k/k;

    .line 9
    iget-object p1, p1, Le/a/d/v/k/k;->f:Le/a/d/v/k/p;

    .line 10
    sget-object v1, Le/a/d/v/h$b$g;->b:Le/a/d/v/h$b$g;

    invoke-interface {p1, v1}, Le/a/d/v/k/p;->k(Le/a/d/v/h$b;)Lq3/a/p1;

    return-object v0

    .line 11
    :cond_2
    iget-object v2, p0, Le/a/d/v/k/l;->f:Le/a/d/v/k/k;

    .line 12
    iget-object v2, v2, Le/a/d/v/k/k;->d:Le/a/d/v/g;

    .line 13
    invoke-static {v2, p1}, Le/a/p5/s0/g;->k(Lq3/a/x2/f;Ljava/util/Set;)Lq3/a/x2/f;

    move-result-object p1

    .line 14
    new-instance v2, Le/a/d/v/k/l$a;

    invoke-direct {v2, p0}, Le/a/d/v/k/l$a;-><init>(Le/a/d/v/k/l;)V

    iput v3, p0, Le/a/d/v/k/l;->e:I

    check-cast p1, Lq3/a/x2/a;

    invoke-virtual {p1, v2, p0}, Lq3/a/x2/a;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method
