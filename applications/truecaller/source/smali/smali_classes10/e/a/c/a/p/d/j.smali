.class public final Le/a/c/a/p/d/j;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/util/List<",
        "+",
        "Le/a/c/a/j/b/j;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.smartfeed.presentation.InsightsSmartFeedViewModel$getSenderFilters$3"
    f = "InsightsSmartFeedViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/d/j;->f:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a/p/d/j;

    iget-object v1, p0, Le/a/c/a/p/d/j;->f:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    invoke-direct {v0, v1, p2}, Le/a/c/a/p/d/j;-><init>(Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/p/d/j;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/c/a/p/d/j;->f:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    .line 4
    iget-boolean p2, v1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->b:Z

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string p2, "success"

    const/4 v2, 0x2

    invoke-static {v1, p2, p1, v2}, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->g(Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, v1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->b:Z

    :cond_1
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/a/p/d/j;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Le/a/c/a/p/d/j;->f:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    .line 3
    iget-boolean v0, v0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->b:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/c/a/p/d/j;->f:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "success"

    invoke-static {p1, v2, v0, v1}, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->g(Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;Ljava/lang/String;Ljava/lang/String;I)V

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/c/a/p/d/j;->f:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->b:Z

    .line 7
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
