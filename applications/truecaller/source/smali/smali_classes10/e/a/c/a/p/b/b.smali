.class public final Le/a/c/a/p/b/b;
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
    c = "com.truecaller.insights.ui.smartfeed.domain.GetInsightsSmartFeedUseCase$insertSectionHeaderSeparators$1"
    f = "GetInsightsSmartFeedUseCase.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ls1/w/d;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Le/a/c/a/p/c/d;

    check-cast p2, Le/a/c/a/p/c/d;

    check-cast p3, Ls1/w/d;

    const-string v0, "continuation"

    .line 1
    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a/p/b/b;

    invoke-direct {v0, p3}, Le/a/c/a/p/b/b;-><init>(Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/p/b/b;->e:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/a/p/b/b;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/a/p/b/b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/a/p/b/b;->e:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/p/c/d;

    iget-object v0, p0, Le/a/c/a/p/b/b;->f:Ljava/lang/Object;

    check-cast v0, Le/a/c/a/p/c/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 2
    instance-of v2, v0, Le/a/c/a/p/c/d$e;

    if-eqz v2, :cond_1

    .line 3
    new-instance v1, Le/a/c/a/p/c/d$b;

    const-string p1, "Upcoming"

    invoke-direct {v1, p1}, Le/a/c/a/p/c/d$b;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    instance-of v2, p1, Le/a/c/a/p/c/d$e;

    if-eqz v2, :cond_3

    :cond_2
    instance-of v2, v0, Le/a/c/a/p/c/d$a;

    if-eqz v2, :cond_3

    .line 5
    new-instance v1, Le/a/c/a/p/c/d$b;

    check-cast v0, Le/a/c/a/p/c/c;

    invoke-static {v0}, Le/a/c/p/a;->z0(Le/a/c/a/p/c/c;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Le/a/c/a/p/c/d$b;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_5

    .line 6
    instance-of v2, p1, Le/a/c/a/p/c/d$a;

    if-eqz v2, :cond_5

    const-string v2, "$this$isSmartFeedFromDifferentMonth"

    .line 7
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    instance-of v2, p1, Le/a/c/a/p/c/c;

    if-eqz v2, :cond_4

    instance-of v2, v0, Le/a/c/a/p/c/c;

    if-eqz v2, :cond_4

    .line 9
    check-cast p1, Le/a/c/a/p/c/c;

    invoke-interface {p1}, Le/a/c/a/p/c/c;->a()Lw3/b/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lw3/b/a/b;->A()Lw3/b/a/b$a;

    move-result-object p1

    .line 10
    move-object v2, v0

    check-cast v2, Le/a/c/a/p/c/c;

    invoke-interface {v2}, Le/a/c/a/p/c/c;->a()Lw3/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lw3/b/a/b;->A()Lw3/b/a/b$a;

    move-result-object v2

    .line 11
    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    .line 12
    instance-of p1, v0, Le/a/c/a/p/c/d$a;

    if-eqz p1, :cond_5

    .line 13
    new-instance v1, Le/a/c/a/p/c/d$b;

    check-cast v0, Le/a/c/a/p/c/c;

    invoke-static {v0}, Le/a/c/p/a;->z0(Le/a/c/a/p/c/c;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Le/a/c/a/p/c/d$b;-><init>(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-object v1
.end method
