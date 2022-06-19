.class public final Le/a/f/a/b/s;
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
    c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter$onResume$1"
    f = "OngoingCallPresenter.kt"
    l = {
        0x95
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/f/a/b/j;


# direct methods
.method public constructor <init>(Le/a/f/a/b/j;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/b/s;->f:Le/a/f/a/b/j;

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

    new-instance p1, Le/a/f/a/b/s;

    iget-object v0, p0, Le/a/f/a/b/s;->f:Le/a/f/a/b/j;

    invoke-direct {p1, v0, p2}, Le/a/f/a/b/s;-><init>(Le/a/f/a/b/j;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f/a/b/s;

    iget-object v0, p0, Le/a/f/a/b/s;->f:Le/a/f/a/b/j;

    invoke-direct {p1, v0, p2}, Le/a/f/a/b/s;-><init>(Le/a/f/a/b/j;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/f/a/b/s;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/f/a/b/s;->e:I

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
    iget-object p1, p0, Le/a/f/a/b/s;->f:Le/a/f/a/b/j;

    invoke-static {p1}, Le/a/f/a/b/j;->Pj(Le/a/f/a/b/j;)V

    .line 5
    iget-object p1, p0, Le/a/f/a/b/s;->f:Le/a/f/a/b/j;

    .line 6
    iget-object p1, p1, Le/a/f/a/b/j;->t:Le/a/f/w/c;

    .line 7
    invoke-interface {p1}, Le/a/f/w/c;->a()Lq3/a/w2/h;

    move-result-object p1

    invoke-static {p1}, Le/a/p5/s0/g;->R0(Lq3/a/w2/h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/f/w/f;

    if-eqz p1, :cond_3

    .line 8
    instance-of v1, p1, Le/a/f/w/f$b;

    if-nez v1, :cond_2

    const/4 p1, 0x0

    :cond_2
    check-cast p1, Le/a/f/w/f$b;

    if-eqz p1, :cond_3

    .line 9
    iget-object v1, p0, Le/a/f/a/b/s;->f:Le/a/f/a/b/j;

    .line 10
    iget-object p1, p1, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    .line 11
    iput v2, p0, Le/a/f/a/b/s;->e:I

    invoke-virtual {v1, p1, p0}, Le/a/f/a/b/j;->dk(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 12
    :cond_3
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
