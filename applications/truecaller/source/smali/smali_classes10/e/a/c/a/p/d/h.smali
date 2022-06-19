.class public final Le/a/c/a/p/d/h;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Lq3/a/x2/g<",
        "-",
        "Ljava/util/List<",
        "+",
        "Le/a/c/a/j/b/j;",
        ">;>;",
        "Le/a/c/a/j/b/i;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.smartfeed.presentation.InsightsSmartFeedViewModel$getSenderFilters$$inlined$flatMapLatest$1"
    f = "InsightsSmartFeedViewModel.kt"
    l = {
        0xdb
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;


# direct methods
.method public constructor <init>(Ls1/w/d;Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;)V
    .locals 0

    iput-object p2, p0, Le/a/c/a/p/d/h;->h:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lq3/a/x2/g;

    check-cast p3, Ls1/w/d;

    .line 1
    new-instance v0, Le/a/c/a/p/d/h;

    iget-object v1, p0, Le/a/c/a/p/d/h;->h:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    invoke-direct {v0, p3, v1}, Le/a/c/a/p/d/h;-><init>(Ls1/w/d;Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;)V

    iput-object p1, v0, Le/a/c/a/p/d/h;->f:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/a/p/d/h;->g:Ljava/lang/Object;

    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/a/p/d/h;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a/p/d/h;->e:I

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

    iget-object p1, p0, Le/a/c/a/p/d/h;->f:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    iget-object v1, p0, Le/a/c/a/p/d/h;->g:Ljava/lang/Object;

    .line 4
    check-cast v1, Le/a/c/a/j/b/i;

    .line 5
    iget-object v3, p0, Le/a/c/a/p/d/h;->h:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    .line 6
    iget-object v3, v3, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->r:Le/a/c/a/j/a/d;

    .line 7
    invoke-virtual {v3, v1}, Le/a/c/a/i/c;->c(Ljava/lang/Object;)Lq3/a/x2/f;

    move-result-object v1

    iput v2, p0, Le/a/c/a/p/d/h;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->H0(Lq3/a/x2/g;Lq3/a/x2/f;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
