.class public final Le/a/r/b/m;
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
    c = "com.truecaller.wizard.adschoices.BaseAdsChoicesPresenter$onAttachView$3"
    f = "BaseAdsChoicesPresenter.kt"
    l = {
        0x35
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/r/b/n;

.field public final synthetic g:Le/a/r/b/i;


# direct methods
.method public constructor <init>(Le/a/r/b/n;Le/a/r/b/i;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/b/m;->f:Le/a/r/b/n;

    iput-object p2, p0, Le/a/r/b/m;->g:Le/a/r/b/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/b/m;

    iget-object v0, p0, Le/a/r/b/m;->f:Le/a/r/b/n;

    iget-object v1, p0, Le/a/r/b/m;->g:Le/a/r/b/i;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/b/m;-><init>(Le/a/r/b/n;Le/a/r/b/i;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/b/m;

    iget-object v0, p0, Le/a/r/b/m;->f:Le/a/r/b/n;

    iget-object v1, p0, Le/a/r/b/m;->g:Le/a/r/b/i;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/b/m;-><init>(Le/a/r/b/n;Le/a/r/b/i;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r/b/m;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/r/b/m;->e:I

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
    invoke-static {p1}, Le/d/c/a/a;->d0(Ljava/lang/Object;)Ls1/z/c/c0;

    move-result-object p1

    .line 4
    iget-object v1, p0, Le/a/r/b/m;->f:Le/a/r/b/n;

    .line 5
    iget-object v1, v1, Le/a/r/b/n;->g:Le/a/b0/b/l/a;

    .line 6
    invoke-interface {v1}, Le/a/b0/b/l/a;->a()Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;

    move-result-object v1

    iput-object v1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Le/a/r/b/m;->f:Le/a/r/b/n;

    .line 8
    iget-object v1, v1, Le/a/r/b/n;->h:Ls1/w/f;

    .line 9
    new-instance v3, Le/a/r/b/m$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Le/a/r/b/m$a;-><init>(Le/a/r/b/m;Ls1/z/c/c0;Ls1/w/d;)V

    iput v2, p0, Le/a/r/b/m;->e:I

    invoke-static {v1, v3, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 10
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
