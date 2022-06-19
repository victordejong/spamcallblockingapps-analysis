.class public final Le/a/c/a/p/d/g;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/x2/g<",
        "-",
        "Le/a/c/a/j/b/f;",
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
    c = "com.truecaller.insights.ui.smartfeed.presentation.InsightsSmartFeedViewModel$getQuickFilters$3"
    f = "InsightsSmartFeedViewModel.kt"
    l = {
        0x12b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/d/g;->g:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

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

    new-instance v0, Le/a/c/a/p/d/g;

    iget-object v1, p0, Le/a/c/a/p/d/g;->g:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    invoke-direct {v0, v1, p2}, Le/a/c/a/p/d/g;-><init>(Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/p/d/g;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a/p/d/g;

    iget-object v1, p0, Le/a/c/a/p/d/g;->g:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    invoke-direct {v0, v1, p2}, Le/a/c/a/p/d/g;-><init>(Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/p/d/g;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/a/p/d/g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a/p/d/g;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/a/p/d/g;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    .line 4
    iget-object v1, p0, Le/a/c/a/p/d/g;->g:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    const/4 v3, 0x4

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 7
    new-instance v5, Le/a/c/a/j/b/e;

    add-int/lit8 v6, v4, 0x64

    invoke-direct {v5, v6}, Le/a/c/a/j/b/e;-><init>(I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_2
    new-instance v3, Le/a/c/a/j/b/f;

    invoke-direct {v3, v1, v2}, Le/a/c/a/j/b/f;-><init>(Ljava/util/List;Z)V

    .line 9
    iput v2, p0, Le/a/c/a/p/d/g;->f:I

    invoke-interface {p1, v3, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 10
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
