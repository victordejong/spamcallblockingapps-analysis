.class public final Le/a/c/a/c/h/b;
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
    c = "com.truecaller.insights.ui.important.presentation.BusinessInsightsViewModel$observeBannerItem$1"
    f = "BusinessInsightsViewModel.kt"
    l = {
        0x7d,
        0x10a,
        0x84
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

.field public final synthetic h:Landroidx/activity/result/ActivityResultRegistry;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;Landroidx/activity/result/ActivityResultRegistry;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/h/b;->g:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    iput-object p2, p0, Le/a/c/a/c/h/b;->h:Landroidx/activity/result/ActivityResultRegistry;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/c/h/b;

    iget-object v0, p0, Le/a/c/a/c/h/b;->g:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    iget-object v1, p0, Le/a/c/a/c/h/b;->h:Landroidx/activity/result/ActivityResultRegistry;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/a/c/h/b;-><init>(Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;Landroidx/activity/result/ActivityResultRegistry;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/c/h/b;

    iget-object v0, p0, Le/a/c/a/c/h/b;->g:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    iget-object v1, p0, Le/a/c/a/c/h/b;->h:Landroidx/activity/result/ActivityResultRegistry;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/a/c/h/b;-><init>(Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;Landroidx/activity/result/ActivityResultRegistry;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/c/h/b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/c/a/c/h/b;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v1, p0, Le/a/c/a/c/h/b;->e:Ljava/lang/Object;

    check-cast v1, Ln3/v/i0;

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

    goto :goto_2

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/a/c/h/b;->g:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    .line 5
    iget-object p1, p1, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->k:Le/a/c/a/c/f/o;

    .line 6
    iput v6, p0, Le/a/c/a/c/h/b;->f:I

    .line 7
    iget-object v2, p1, Le/a/c/a/i/k;->a:Ls1/w/f;

    new-instance v6, Le/a/c/a/i/k$a;

    invoke-direct {v6, p1, v0, v3}, Le/a/c/a/i/k$a;-><init>(Le/a/c/a/i/k;Ljava/lang/Object;Ls1/w/d;)V

    invoke-static {v2, v6, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 8
    :cond_4
    :goto_0
    check-cast p1, Landroidx/lifecycle/LiveData;

    if-eqz p1, :cond_5

    .line 9
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->W(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    const-string v2, "Transformations.distinctUntilChanged(this)"

    invoke-static {p1, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$this$asFlow"

    .line 10
    invoke-static {p1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v2, Ln3/v/o;

    invoke-direct {v2, p1, v3}, Ln3/v/o;-><init>(Landroidx/lifecycle/LiveData;Ls1/w/d;)V

    .line 12
    new-instance p1, Lq3/a/x2/d1;

    invoke-direct {p1, v2}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    .line 13
    new-instance v2, Le/a/c/a/c/h/b$b;

    invoke-direct {v2, p0}, Le/a/c/a/c/h/b$b;-><init>(Le/a/c/a/c/h/b;)V

    iput v5, p0, Le/a/c/a/c/h/b;->f:I

    invoke-virtual {p1, v2, p0}, Lq3/a/x2/a;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 14
    :cond_5
    iget-object p1, p0, Le/a/c/a/c/h/b;->g:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    .line 15
    iget-object p1, p1, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->l:Le/a/c/b/j;

    .line 16
    invoke-interface {p1}, Le/a/c/b/j;->m()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    iget-object p1, p0, Le/a/c/a/c/h/b;->g:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    .line 18
    iget-object v2, p1, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->b:Ln3/v/i0;

    .line 19
    iget-object p1, p1, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->t:Le/a/c/a/c/f/x;

    .line 20
    iget-object v3, p0, Le/a/c/a/c/h/b;->h:Landroidx/activity/result/ActivityResultRegistry;

    iput-object v2, p0, Le/a/c/a/c/h/b;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/c/a/c/h/b;->f:I

    invoke-virtual {p1, v3, p0}, Le/a/c/a/i/k;->c(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v1, v2

    :goto_1
    check-cast p1, Landroidx/lifecycle/LiveData;

    new-instance v2, Le/a/c/a/c/h/b$a;

    invoke-direct {v2, p0}, Le/a/c/a/c/h/b$a;-><init>(Le/a/c/a/c/h/b;)V

    invoke-virtual {v1, p1, v2}, Ln3/v/i0;->m(Landroidx/lifecycle/LiveData;Ln3/v/l0;)V

    :cond_7
    :goto_2
    return-object v0
.end method
