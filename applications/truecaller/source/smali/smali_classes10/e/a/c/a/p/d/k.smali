.class public final Le/a/c/a/p/d/k;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Ln3/z/b2<",
        "Le/a/c/a/p/c/d;",
        ">;",
        "Ljava/lang/Boolean;",
        "Ls1/w/d<",
        "-",
        "Ln3/z/b2<",
        "Le/a/c/a/p/c/d;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.smartfeed.presentation.InsightsSmartFeedViewModel$getSmartFeedFlow$1"
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

    iput-object p1, p0, Le/a/c/a/p/d/k;->g:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ln3/z/b2;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ls1/w/d;

    const-string v0, "pagingData"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/c/a/p/d/k;->g:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    .line 2
    invoke-interface {p3}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p3, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "$this$updateTransactionHiddenState"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance p3, Le/a/c/a/p/d/o;

    const/4 v0, 0x0

    invoke-direct {p3, p2, v0}, Le/a/c/a/p/d/o;-><init>(ZLs1/w/d;)V

    invoke-static {p1, p3}, Landroid/support/v4/media/session/MediaSessionCompat;->R0(Ln3/z/b2;Ls1/z/b/p;)Ln3/z/b2;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/a/p/d/k;->e:Ljava/lang/Object;

    check-cast p1, Ln3/z/b2;

    iget-boolean v0, p0, Le/a/c/a/p/d/k;->f:Z

    .line 2
    iget-object v1, p0, Le/a/c/a/p/d/k;->g:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "$this$updateTransactionHiddenState"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Le/a/c/a/p/d/o;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Le/a/c/a/p/d/o;-><init>(ZLs1/w/d;)V

    invoke-static {p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->R0(Ln3/z/b2;Ls1/z/b/p;)Ln3/z/b2;

    move-result-object p1

    return-object p1
.end method
