.class public final Le/a/c/a/p/d/d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Ljava/util/Set<",
        "+",
        "Le/a/c/w/o0/k/e;",
        ">;",
        "Ljava/lang/Boolean;",
        "Ls1/w/d<",
        "-",
        "Le/a/c/a/j/b/a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.smartfeed.presentation.InsightsSmartFeedViewModel$getCategoryTags$1"
    f = "InsightsSmartFeedViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Z

.field public final synthetic g:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/d/d;->g:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/util/Set;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ls1/w/d;

    const-string v0, "currentFilters"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/c/a/p/d/d;->g:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    .line 2
    invoke-interface {p3}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p3, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    new-instance p3, Le/a/c/a/j/b/a;

    const/4 v1, 0x5

    .line 6
    iget-object v0, v0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->f:Ljava/util/Set;

    .line 7
    invoke-direct {p3, v1, p2, p1, v0}, Le/a/c/a/j/b/a;-><init>(IZLjava/util/Set;Ljava/util/Set;)V

    return-object p3
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/a/p/d/d;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    iget-boolean v0, p0, Le/a/c/a/p/d/d;->f:Z

    .line 2
    new-instance v1, Le/a/c/a/j/b/a;

    iget-object v2, p0, Le/a/c/a/p/d/d;->g:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    .line 3
    iget-object v2, v2, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->f:Ljava/util/Set;

    const/4 v3, 0x5

    .line 4
    invoke-direct {v1, v3, v0, p1, v2}, Le/a/c/a/j/b/a;-><init>(IZLjava/util/Set;Ljava/util/Set;)V

    return-object v1
.end method
