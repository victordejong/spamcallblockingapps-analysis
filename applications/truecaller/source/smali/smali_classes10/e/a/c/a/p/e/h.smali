.class public final Le/a/c/a/p/e/h;
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
    c = "com.truecaller.insights.ui.smartfeed.view.InsightsSmartFeedFragment$collectQuickFilter$1"
    f = "InsightsSmartFeedFragment.kt"
    l = {
        0x90
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/a/p/e/f;


# direct methods
.method public constructor <init>(Le/a/c/a/p/e/f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/e/h;->f:Le/a/c/a/p/e/f;

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

    new-instance p1, Le/a/c/a/p/e/h;

    iget-object v0, p0, Le/a/c/a/p/e/h;->f:Le/a/c/a/p/e/f;

    invoke-direct {p1, v0, p2}, Le/a/c/a/p/e/h;-><init>(Le/a/c/a/p/e/f;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/p/e/h;

    iget-object v0, p0, Le/a/c/a/p/e/h;->f:Le/a/c/a/p/e/f;

    invoke-direct {p1, v0, p2}, Le/a/c/a/p/e/h;-><init>(Le/a/c/a/p/e/f;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/p/e/h;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a/p/e/h;->e:I

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
    iget-object p1, p0, Le/a/c/a/p/e/h;->f:Le/a/c/a/p/e/f;

    .line 5
    sget-object v1, Le/a/c/a/p/e/f;->m:[Ls1/a/l;

    .line 6
    invoke-virtual {p1}, Le/a/c/a/p/e/f;->RA()Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    move-result-object p1

    .line 7
    iget-object v1, p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->j:Lq3/a/x2/f;

    .line 8
    new-instance v3, Le/a/c/a/p/d/f;

    invoke-direct {v3, v1}, Le/a/c/a/p/d/f;-><init>(Lq3/a/x2/f;)V

    .line 9
    new-instance v1, Le/a/c/a/p/d/e;

    const/4 v4, 0x0

    invoke-direct {v1, v4, p1}, Le/a/c/a/p/d/e;-><init>(Ls1/w/d;Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;)V

    invoke-static {v3, v1}, Ls1/a/a/a/v0/f/d;->P3(Lq3/a/x2/f;Ls1/z/b/q;)Lq3/a/x2/f;

    move-result-object v1

    .line 10
    new-instance v3, Le/a/c/a/p/d/g;

    invoke-direct {v3, p1, v4}, Le/a/c/a/p/d/g;-><init>(Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;Ls1/w/d;)V

    .line 11
    new-instance p1, Lq3/a/x2/t;

    invoke-direct {p1, v3, v1}, Lq3/a/x2/t;-><init>(Ls1/z/b/p;Lq3/a/x2/f;)V

    .line 12
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->F0(Lq3/a/x2/f;)Lq3/a/x2/f;

    move-result-object p1

    .line 13
    new-instance v1, Le/a/c/a/p/e/h$a;

    invoke-direct {v1, p0, v4}, Le/a/c/a/p/e/h$a;-><init>(Le/a/c/a/p/e/h;Ls1/w/d;)V

    iput v2, p0, Le/a/c/a/p/e/h;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->g0(Lq3/a/x2/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 14
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
