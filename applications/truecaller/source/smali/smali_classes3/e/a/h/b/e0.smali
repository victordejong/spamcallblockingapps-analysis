.class public final Le/a/h/b/e0;
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
    c = "com.truecaller.calling.dialer.DialerPresenter$refreshCallHistory$1"
    f = "DialerPresenter.kt"
    l = {
        0x4c1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/h/b/y;

.field public final synthetic g:Lcom/truecaller/callhistory/data/FilterType;

.field public final synthetic h:I

.field public final synthetic i:Z


# direct methods
.method public constructor <init>(Le/a/h/b/y;Lcom/truecaller/callhistory/data/FilterType;IZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/e0;->f:Le/a/h/b/y;

    iput-object p2, p0, Le/a/h/b/e0;->g:Lcom/truecaller/callhistory/data/FilterType;

    iput p3, p0, Le/a/h/b/e0;->h:I

    iput-boolean p4, p0, Le/a/h/b/e0;->i:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/h/b/e0;

    iget-object v1, p0, Le/a/h/b/e0;->f:Le/a/h/b/y;

    iget-object v2, p0, Le/a/h/b/e0;->g:Lcom/truecaller/callhistory/data/FilterType;

    iget v3, p0, Le/a/h/b/e0;->h:I

    iget-boolean v4, p0, Le/a/h/b/e0;->i:Z

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/h/b/e0;-><init>(Le/a/h/b/y;Lcom/truecaller/callhistory/data/FilterType;IZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/h/b/e0;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/h/b/e0;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/h/b/e0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/h/b/e0;->e:I

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
    iget-object p1, p0, Le/a/h/b/e0;->f:Le/a/h/b/y;

    .line 5
    iget-object v1, p1, Le/a/h/b/y;->V:Le/a/h/b/d/b/c;

    .line 6
    invoke-virtual {p1}, Le/a/h/b/y;->Mj()Z

    move-result p1

    .line 7
    iget-object v3, p0, Le/a/h/b/e0;->g:Lcom/truecaller/callhistory/data/FilterType;

    iget v4, p0, Le/a/h/b/e0;->h:I

    .line 8
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 9
    iput v2, p0, Le/a/h/b/e0;->e:I

    invoke-interface {v1, p1, v3, v5, p0}, Le/a/h/b/d/b/c;->e(ZLcom/truecaller/callhistory/data/FilterType;Ljava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 10
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 11
    iget-object v0, p0, Le/a/h/b/e0;->f:Le/a/h/b/y;

    invoke-static {v0, p1}, Le/a/h/b/y;->Ij(Le/a/h/b/y;Ljava/util/List;)V

    .line 12
    iget-boolean p1, p0, Le/a/h/b/e0;->i:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/a/h/b/e0;->f:Le/a/h/b/y;

    .line 13
    iget-object p1, p1, Le/a/h/b/y;->w:Ljava/util/List;

    .line 14
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/a/h/b/e0;->f:Le/a/h/b/y;

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2, v1}, Le/a/h/b/y;->Nj(Le/a/h/b/y;Lcom/truecaller/callhistory/data/FilterType;ZZI)V

    .line 15
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
