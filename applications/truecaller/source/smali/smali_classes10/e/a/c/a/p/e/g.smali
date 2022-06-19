.class public final Le/a/c/a/p/e/g;
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
    c = "com.truecaller.insights.ui.smartfeed.view.InsightsSmartFeedFragment$collectLatest$1"
    f = "InsightsSmartFeedFragment.kt"
    l = {
        0x8a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/a/p/e/f;


# direct methods
.method public constructor <init>(Le/a/c/a/p/e/f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/e/g;->f:Le/a/c/a/p/e/f;

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

    new-instance p1, Le/a/c/a/p/e/g;

    iget-object v0, p0, Le/a/c/a/p/e/g;->f:Le/a/c/a/p/e/f;

    invoke-direct {p1, v0, p2}, Le/a/c/a/p/e/g;-><init>(Le/a/c/a/p/e/f;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/p/e/g;

    iget-object v0, p0, Le/a/c/a/p/e/g;->f:Le/a/c/a/p/e/f;

    invoke-direct {p1, v0, p2}, Le/a/c/a/p/e/g;-><init>(Le/a/c/a/p/e/f;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/p/e/g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a/p/e/g;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_0

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
    iget-object p1, p0, Le/a/c/a/p/e/g;->f:Le/a/c/a/p/e/f;

    .line 5
    sget-object v1, Le/a/c/a/p/e/f;->m:[Ls1/a/l;

    .line 6
    invoke-virtual {p1}, Le/a/c/a/p/e/f;->RA()Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    move-result-object p1

    .line 7
    iget-object v1, p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->p:Le/a/c/a/p/b/g;

    .line 8
    new-instance v3, Le/a/c/a/p/c/e;

    .line 9
    new-instance v12, Ln3/z/a2;

    const/16 v5, 0x32

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x64

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x32

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Ln3/z/a2;-><init>(IIZIIII)V

    .line 10
    iget-boolean v4, p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->a:Z

    .line 11
    iget-object v5, p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->o:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel$a;

    .line 12
    iget-object v6, p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->f:Ljava/util/Set;

    invoke-static {v6}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    .line 13
    invoke-direct {v3, v12, v4, v5, v6}, Le/a/c/a/p/c/e;-><init>(Ln3/z/a2;ZLs1/z/b/l;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Le/a/c/a/i/c;->c(Ljava/lang/Object;)Lq3/a/x2/f;

    move-result-object v1

    .line 14
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->C0(Ln3/v/y0;)Lq3/a/i0;

    move-result-object v4

    const-string v3, "$this$cachedIn"

    .line 15
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "scope"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v3, Ln3/z/i;

    invoke-direct {v3, v1, v4}, Ln3/z/i;-><init>(Lq3/a/x2/f;Lq3/a/i0;)V

    .line 18
    new-instance v1, Ln3/z/l;

    const/4 v11, 0x0

    invoke-direct {v1, v11}, Ln3/z/l;-><init>(Ls1/w/d;)V

    .line 19
    sget-object v5, Ln3/z/e0;->a:Ljava/lang/Object;

    const-string v5, "$this$simpleRunningReduce"

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "operation"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v5, Ln3/z/b0;

    invoke-direct {v5, v3, v1, v11}, Ln3/z/b0;-><init>(Lq3/a/x2/f;Ls1/z/b/q;Ls1/w/d;)V

    .line 21
    new-instance v1, Lq3/a/x2/d1;

    invoke-direct {v1, v5}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    .line 22
    new-instance v3, Ln3/z/j;

    invoke-direct {v3, v1}, Ln3/z/j;-><init>(Lq3/a/x2/f;)V

    .line 23
    new-instance v1, Ln3/z/m;

    invoke-direct {v1, v11, v11}, Ln3/z/m;-><init>(Ln3/z/a;Ls1/w/d;)V

    .line 24
    new-instance v5, Lq3/a/x2/t;

    invoke-direct {v5, v1, v3}, Lq3/a/x2/t;-><init>(Ls1/z/b/p;Lq3/a/x2/f;)V

    .line 25
    new-instance v1, Ln3/z/n;

    invoke-direct {v1, v11, v11}, Ln3/z/n;-><init>(Ln3/z/a;Ls1/w/d;)V

    .line 26
    new-instance v6, Lq3/a/x2/s;

    invoke-direct {v6, v5, v1}, Lq3/a/x2/s;-><init>(Lq3/a/x2/f;Ls1/z/b/q;)V

    .line 27
    new-instance v1, Ln3/z/j3/g;

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 28
    new-instance v8, Ln3/z/k;

    invoke-direct {v8, v11}, Ln3/z/k;-><init>(Ls1/w/d;)V

    const/4 v9, 0x1

    const/16 v10, 0x8

    move-object v3, v1

    .line 29
    invoke-direct/range {v3 .. v10}, Ln3/z/j3/g;-><init>(Lq3/a/i0;ILq3/a/x2/f;ZLs1/z/b/p;ZI)V

    .line 30
    iget-object v1, v1, Ln3/z/j3/g;->b:Lq3/a/x2/f;

    .line 31
    iget-object v3, p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->e:Lq3/a/x2/a1;

    new-instance v4, Le/a/c/a/p/d/k;

    invoke-direct {v4, p1, v11}, Le/a/c/a/p/d/k;-><init>(Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;Ls1/w/d;)V

    .line 32
    new-instance p1, Lq3/a/x2/w0;

    invoke-direct {p1, v1, v3, v4}, Lq3/a/x2/w0;-><init>(Lq3/a/x2/f;Lq3/a/x2/f;Ls1/z/b/q;)V

    .line 33
    new-instance v1, Le/a/c/a/p/e/g$a;

    invoke-direct {v1, p0, v11}, Le/a/c/a/p/e/g$a;-><init>(Le/a/c/a/p/e/g;Ls1/w/d;)V

    iput v2, p0, Le/a/c/a/p/e/g;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->g0(Lq3/a/x2/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 34
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
