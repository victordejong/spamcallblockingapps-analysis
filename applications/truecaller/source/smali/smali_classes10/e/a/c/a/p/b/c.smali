.class public final Le/a/c/a/p/b/c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Le/a/c/a/p/c/d;",
        "Le/a/c/a/p/c/d;",
        "Ls1/w/d<",
        "-",
        "Le/a/c/a/p/c/d;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.smartfeed.domain.GetInsightsSmartFeedUseCase$insertUpcomingSectionSeparators$1"
    f = "GetInsightsSmartFeedUseCase.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/util/Set;

.field public final synthetic h:Le/a/c/a/p/c/e;


# direct methods
.method public constructor <init>(Ljava/util/Set;Le/a/c/a/p/c/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/b/c;->g:Ljava/util/Set;

    iput-object p2, p0, Le/a/c/a/p/b/c;->h:Le/a/c/a/p/c/e;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Le/a/c/a/p/c/d;

    check-cast p2, Le/a/c/a/p/c/d;

    check-cast p3, Ls1/w/d;

    const-string v0, "continuation"

    .line 1
    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/c/a/p/b/c;->g:Ljava/util/Set;

    iget-object v1, p0, Le/a/c/a/p/b/c;->h:Le/a/c/a/p/c/e;

    .line 2
    invoke-interface {p3}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p3, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    new-instance p3, Le/a/c/a/p/c/d$b;

    const-string v2, "Upcoming"

    invoke-direct {p3, v2}, Le/a/c/a/p/c/d$b;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {p1, p3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    instance-of p3, p2, Le/a/c/a/p/c/d$b;

    if-eqz p3, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 7
    new-instance p1, Le/a/c/a/p/c/d$d;

    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    .line 8
    iget-object p3, v1, Le/a/c/a/p/c/e;->c:Ls1/z/b/l;

    .line 9
    invoke-direct {p1, p2, p3}, Le/a/c/a/p/c/d$d;-><init>(Ljava/util/List;Ls1/z/b/l;)V

    goto :goto_0

    .line 10
    :cond_0
    instance-of p1, p1, Le/a/c/a/p/c/d$e;

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    instance-of p1, p2, Le/a/c/a/p/c/d$b;

    if-eqz p1, :cond_2

    .line 11
    iget-boolean p1, v1, Le/a/c/a/p/c/e;->b:Z

    if-eqz p1, :cond_1

    .line 12
    new-instance p1, Le/a/c/a/p/c/d$c;

    .line 13
    iget-object p2, v1, Le/a/c/a/p/c/e;->c:Ls1/z/b/l;

    .line 14
    invoke-direct {p1, p2}, Le/a/c/a/p/c/d$c;-><init>(Ls1/z/b/l;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    .line 16
    new-instance p1, Le/a/c/a/p/c/d$d;

    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    .line 17
    iget-object p3, v1, Le/a/c/a/p/c/e;->c:Ls1/z/b/l;

    .line 18
    invoke-direct {p1, p2, p3}, Le/a/c/a/p/c/d$d;-><init>(Ljava/util/List;Ls1/z/b/l;)V

    goto :goto_0

    :cond_2
    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/a/p/b/c;->e:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/p/c/d;

    iget-object v0, p0, Le/a/c/a/p/b/c;->f:Ljava/lang/Object;

    check-cast v0, Le/a/c/a/p/c/d;

    .line 2
    new-instance v1, Le/a/c/a/p/c/d$b;

    const-string v2, "Upcoming"

    invoke-direct {v1, v2}, Le/a/c/a/p/c/d$b;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Le/a/c/a/p/c/d$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Le/a/c/a/p/b/c;->g:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4
    new-instance p1, Le/a/c/a/p/c/d$d;

    iget-object v0, p0, Le/a/c/a/p/b/c;->g:Ljava/util/Set;

    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Le/a/c/a/p/b/c;->h:Le/a/c/a/p/c/e;

    .line 5
    iget-object v1, v1, Le/a/c/a/p/c/e;->c:Ls1/z/b/l;

    .line 6
    invoke-direct {p1, v0, v1}, Le/a/c/a/p/c/d$d;-><init>(Ljava/util/List;Ls1/z/b/l;)V

    return-object p1

    .line 7
    :cond_0
    instance-of p1, p1, Le/a/c/a/p/c/d$e;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    instance-of p1, v0, Le/a/c/a/p/c/d$b;

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Le/a/c/a/p/b/c;->h:Le/a/c/a/p/c/e;

    .line 9
    iget-boolean v0, p1, Le/a/c/a/p/c/e;->b:Z

    if-eqz v0, :cond_1

    .line 10
    new-instance v1, Le/a/c/a/p/c/d$c;

    .line 11
    iget-object p1, p1, Le/a/c/a/p/c/e;->c:Ls1/z/b/l;

    .line 12
    invoke-direct {v1, p1}, Le/a/c/a/p/c/d$c;-><init>(Ls1/z/b/l;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Le/a/c/a/p/b/c;->g:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    .line 14
    new-instance v1, Le/a/c/a/p/c/d$d;

    iget-object p1, p0, Le/a/c/a/p/b/c;->g:Ljava/util/Set;

    invoke-static {p1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Le/a/c/a/p/b/c;->h:Le/a/c/a/p/c/e;

    .line 15
    iget-object v0, v0, Le/a/c/a/p/c/e;->c:Ls1/z/b/l;

    .line 16
    invoke-direct {v1, p1, v0}, Le/a/c/a/p/c/d$d;-><init>(Ljava/util/List;Ls1/z/b/l;)V

    :cond_2
    :goto_0
    return-object v1
.end method
