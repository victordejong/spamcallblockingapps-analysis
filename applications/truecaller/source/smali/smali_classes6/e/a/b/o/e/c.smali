.class public final Le/a/b/o/e/c;
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
    c = "com.truecaller.bizmon.governmentServices.mvp.DistrictListPresenter$checkAndLoadData$1"
    f = "DistrictListMvp.kt"
    l = {
        0x89
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/b/o/e/d;


# direct methods
.method public constructor <init>(Le/a/b/o/e/d;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/o/e/c;->f:Le/a/b/o/e/d;

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

    new-instance p1, Le/a/b/o/e/c;

    iget-object v0, p0, Le/a/b/o/e/c;->f:Le/a/b/o/e/d;

    invoke-direct {p1, v0, p2}, Le/a/b/o/e/c;-><init>(Le/a/b/o/e/d;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b/o/e/c;

    iget-object v0, p0, Le/a/b/o/e/c;->f:Le/a/b/o/e/d;

    invoke-direct {p1, v0, p2}, Le/a/b/o/e/c;-><init>(Le/a/b/o/e/d;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/b/o/e/c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/b/o/e/c;->e:I

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
    iget-object p1, p0, Le/a/b/o/e/c;->f:Le/a/b/o/e/d;

    .line 5
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/o/e/b;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Le/a/b/o/e/b;->w3()V

    .line 7
    invoke-interface {p1}, Le/a/b/o/e/b;->e6()V

    .line 8
    :cond_2
    iget-object p1, p0, Le/a/b/o/e/c;->f:Le/a/b/o/e/d;

    .line 9
    iget-object p1, p1, Le/a/b/o/e/d;->m:Ls1/w/f;

    .line 10
    new-instance v1, Le/a/b/o/e/c$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Le/a/b/o/e/c$a;-><init>(Le/a/b/o/e/c;Ls1/w/d;)V

    iput v2, p0, Le/a/b/o/e/c;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 11
    :cond_3
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
