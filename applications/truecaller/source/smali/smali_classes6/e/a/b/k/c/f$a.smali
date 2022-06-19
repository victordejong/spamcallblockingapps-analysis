.class public final Le/a/b/k/c/f$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/k/c/f;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.truecaller.bizmon.covidDirectory.mvp.CovidDistrictListPresenter$checkAndLoadData$1$2"
    f = "CovidDistrictListMvp.kt"
    l = {
        0xaa,
        0xaa,
        0xab
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/b/k/c/f;


# direct methods
.method public constructor <init>(Le/a/b/k/c/f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/k/c/f$a;->f:Le/a/b/k/c/f;

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

    new-instance p1, Le/a/b/k/c/f$a;

    iget-object v0, p0, Le/a/b/k/c/f$a;->f:Le/a/b/k/c/f;

    invoke-direct {p1, v0, p2}, Le/a/b/k/c/f$a;-><init>(Le/a/b/k/c/f;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b/k/c/f$a;

    iget-object v0, p0, Le/a/b/k/c/f$a;->f:Le/a/b/k/c/f;

    invoke-direct {p1, v0, p2}, Le/a/b/k/c/f$a;-><init>(Le/a/b/k/c/f;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/b/k/c/f$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/b/k/c/f$a;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/b/k/c/f$a;->f:Le/a/b/k/c/f;

    iget-object v2, p1, Le/a/b/k/c/f;->f:Le/a/b/k/c/i;

    .line 5
    iget-object v2, v2, Le/a/b/k/c/i;->e:Le/a/b/k/a/a;

    .line 6
    iget-boolean p1, p1, Le/a/b/k/c/f;->g:Z

    iput v5, p0, Le/a/b/k/c/f$a;->e:I

    check-cast v2, Le/a/b/k/a/d;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v5, Le/a/b/k/a/c;

    const/4 v6, 0x0

    invoke-direct {v5, v2, p1, v6}, Le/a/b/k/a/c;-><init>(Le/a/b/k/a/d;ZLs1/w/d;)V

    invoke-static {v5, p0}, Ls1/a/a/a/v0/f/d;->o0(Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 9
    :cond_4
    :goto_0
    check-cast p1, Lq3/a/n0;

    iput v4, p0, Le/a/b/k/c/f$a;->e:I

    invoke-interface {p1, p0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 10
    iget-object p1, p0, Le/a/b/k/c/f$a;->f:Le/a/b/k/c/f;

    iget-object p1, p1, Le/a/b/k/c/f;->f:Le/a/b/k/c/i;

    iput v3, p0, Le/a/b/k/c/f$a;->e:I

    .line 11
    iget-object v2, p1, Le/a/b/k/c/i;->f:Le/a/b/k/b/a/c;

    invoke-interface {v2}, Le/a/b/k/b/a/c;->f()Lq3/a/x2/f;

    move-result-object v2

    .line 12
    new-instance v3, Le/a/b/k/c/g;

    invoke-direct {v3, p1}, Le/a/b/k/c/g;-><init>(Le/a/b/k/c/i;)V

    invoke-interface {v2, v3, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_2

    :cond_6
    move-object p1, v0

    :goto_2
    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    return-object v0
.end method
