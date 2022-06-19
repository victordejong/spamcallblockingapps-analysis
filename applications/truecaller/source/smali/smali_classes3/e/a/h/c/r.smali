.class public final Le/a/h/c/r;
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
    c = "com.truecaller.calling.speeddial.SpeedDialPresenter$fetchSpeedDialAndResolveContact$1"
    f = "SpeedDialPresenter.kt"
    l = {
        0x32
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Le/a/h/c/s;

.field public final synthetic k:I


# direct methods
.method public constructor <init>(Le/a/h/c/s;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/c/r;->j:Le/a/h/c/s;

    iput p2, p0, Le/a/h/c/r;->k:I

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

    new-instance p1, Le/a/h/c/r;

    iget-object v0, p0, Le/a/h/c/r;->j:Le/a/h/c/s;

    iget v1, p0, Le/a/h/c/r;->k:I

    invoke-direct {p1, v0, v1, p2}, Le/a/h/c/r;-><init>(Le/a/h/c/s;ILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/h/c/r;

    iget-object v0, p0, Le/a/h/c/r;->j:Le/a/h/c/s;

    iget v1, p0, Le/a/h/c/r;->k:I

    invoke-direct {p1, v0, v1, p2}, Le/a/h/c/r;-><init>(Le/a/h/c/s;ILs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/h/c/r;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/h/c/r;->i:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v0, p0, Le/a/h/c/r;->f:I

    iget v1, p0, Le/a/h/c/r;->e:I

    iget-object v3, p0, Le/a/h/c/r;->h:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v4, p0, Le/a/h/c/r;->g:Ljava/lang/Object;

    check-cast v4, Le/a/h/c/h;

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
    iget p1, p0, Le/a/h/c/r;->k:I

    sub-int/2addr p1, v2

    .line 5
    iget-object v1, p0, Le/a/h/c/r;->j:Le/a/h/c/s;

    .line 6
    iget-object v1, v1, Le/a/h/c/s;->c:Ljava/util/List;

    .line 7
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Le/a/h/c/h;

    .line 8
    iget-object v1, p0, Le/a/h/c/r;->j:Le/a/h/c/s;

    .line 9
    iget-object v3, v1, Le/a/h/c/s;->c:Ljava/util/List;

    .line 10
    iget-object v1, v1, Le/a/h/c/s;->e:Ls1/w/f;

    .line 11
    new-instance v5, Le/a/h/c/r$a;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Le/a/h/c/r$a;-><init>(Le/a/h/c/r;Ls1/w/d;)V

    iput-object v4, p0, Le/a/h/c/r;->g:Ljava/lang/Object;

    iput-object v3, p0, Le/a/h/c/r;->h:Ljava/lang/Object;

    iput p1, p0, Le/a/h/c/r;->e:I

    iput p1, p0, Le/a/h/c/r;->f:I

    iput v2, p0, Le/a/h/c/r;->i:I

    invoke-static {v1, v5, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move v0, p1

    move-object p1, v1

    move v1, v0

    :goto_0
    invoke-interface {v3, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Le/a/h/c/r;->j:Le/a/h/c/s;

    .line 13
    iget-object p1, p1, Le/a/h/c/s;->c:Ljava/util/List;

    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/h/c/h;

    invoke-static {v4, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/a/h/c/r;->j:Le/a/h/c/s;

    .line 15
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/c/p;

    if-eqz p1, :cond_3

    .line 16
    invoke-interface {p1, v1}, Le/a/h/c/p;->a(I)V

    .line 17
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
