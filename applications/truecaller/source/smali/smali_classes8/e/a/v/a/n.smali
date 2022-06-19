.class public final Le/a/v/a/n;
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
    c = "com.truecaller.details_view.ui.DetailsPresenter$onRefreshRequested$1"
    f = "DetailsPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/v/a/q;


# direct methods
.method public constructor <init>(Le/a/v/a/q;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/n;->e:Le/a/v/a/q;

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

    new-instance p1, Le/a/v/a/n;

    iget-object v0, p0, Le/a/v/a/n;->e:Le/a/v/a/q;

    invoke-direct {p1, v0, p2}, Le/a/v/a/n;-><init>(Le/a/v/a/q;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/v/a/n;->e:Le/a/v/a/q;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/v/a/q;->e:Ljava/lang/Integer;

    const-string v1, "Search type is null"

    .line 5
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 7
    iget-object v1, v0, Le/a/v/a/q;->t:Le/a/v/p/l;

    .line 8
    invoke-static {v0}, Le/a/v/a/q;->Ij(Le/a/v/a/q;)Le/a/v/a/s;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, p2, v2, v3}, Le/a/v/p/l;->a(ILe/a/v/a/s;Z)V

    .line 9
    iget-object p2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/v/a/g;

    if-eqz p2, :cond_0

    .line 10
    invoke-interface {p2}, Le/a/v/a/g;->E()V

    :cond_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/v/a/n;->e:Le/a/v/a/q;

    .line 3
    iget-object p1, p1, Le/a/v/a/q;->e:Ljava/lang/Integer;

    const-string v0, "Search type is null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 6
    iget-object v0, p0, Le/a/v/a/n;->e:Le/a/v/a/q;

    .line 7
    iget-object v1, v0, Le/a/v/a/q;->t:Le/a/v/p/l;

    .line 8
    iget-object v0, v0, Le/a/v/a/q;->d:Le/a/v/a/s;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 9
    invoke-interface {v1, p1, v0, v2}, Le/a/v/p/l;->a(ILe/a/v/a/s;Z)V

    .line 10
    iget-object p1, p0, Le/a/v/a/n;->e:Le/a/v/a/q;

    .line 11
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/g;

    if-eqz p1, :cond_0

    .line 12
    invoke-interface {p1}, Le/a/v/a/g;->E()V

    .line 13
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_1
    const-string p1, "detailsViewModel"

    .line 14
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
