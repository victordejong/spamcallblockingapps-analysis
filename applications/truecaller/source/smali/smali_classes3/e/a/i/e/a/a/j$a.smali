.class public final Le/a/i/e/a/a/j$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e/a/a/j;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Le/a/i/e/c<",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.offline.adtype.leadgen.OfflineLeadGenPresenterImpl$submitForm$1$response$1"
    f = "OfflineLeadGenPresenter.kt"
    l = {
        0x105
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/i/e/a/a/j;


# direct methods
.method public constructor <init>(Le/a/i/e/a/a/j;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/e/a/a/j$a;->f:Le/a/i/e/a/a/j;

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

    new-instance p1, Le/a/i/e/a/a/j$a;

    iget-object v0, p0, Le/a/i/e/a/a/j$a;->f:Le/a/i/e/a/a/j;

    invoke-direct {p1, v0, p2}, Le/a/i/e/a/a/j$a;-><init>(Le/a/i/e/a/a/j;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/e/a/a/j$a;

    iget-object v0, p0, Le/a/i/e/a/a/j$a;->f:Le/a/i/e/a/a/j;

    invoke-direct {p1, v0, p2}, Le/a/i/e/a/a/j$a;-><init>(Le/a/i/e/a/a/j;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/e/a/a/j$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/i/e/a/a/j$a;->e:I

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
    iget-object p1, p0, Le/a/i/e/a/a/j$a;->f:Le/a/i/e/a/a/j;

    iget-object p1, p1, Le/a/i/e/a/a/j;->f:Le/a/i/e/a/a/g;

    .line 5
    iget-object v1, p1, Le/a/i/e/a/a/g;->q:Le/a/i/e/k/e;

    .line 6
    invoke-virtual {p1}, Le/a/i/e/a/a/g;->Jj()Z

    move-result p1

    .line 7
    iget-object v3, p0, Le/a/i/e/a/a/j$a;->f:Le/a/i/e/a/a/j;

    iget-object v3, v3, Le/a/i/e/a/a/j;->f:Le/a/i/e/a/a/g;

    .line 8
    iget-object v4, v3, Le/a/i/e/a/a/g;->h:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 9
    iget-object v3, v3, Le/a/i/e/a/a/g;->g:Ljava/util/Map;

    .line 10
    invoke-static {v3}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Le/a/p5/s0/g;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput v2, p0, Le/a/i/e/a/a/j$a;->e:I

    invoke-interface {v1, p1, v4, v3, p0}, Le/a/i/e/k/e;->d(ZLjava/lang/String;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1

    :cond_3
    const-string p1, "leadGenId"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
