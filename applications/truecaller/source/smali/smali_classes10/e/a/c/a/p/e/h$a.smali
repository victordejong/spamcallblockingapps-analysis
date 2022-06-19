.class public final Le/a/c/a/p/e/h$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/p/e/h;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/c/a/j/b/f;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.smartfeed.view.InsightsSmartFeedFragment$collectQuickFilter$1$1"
    f = "InsightsSmartFeedFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/c/a/p/e/h;


# direct methods
.method public constructor <init>(Le/a/c/a/p/e/h;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/e/h$a;->f:Le/a/c/a/p/e/h;

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

    new-instance v0, Le/a/c/a/p/e/h$a;

    iget-object v1, p0, Le/a/c/a/p/e/h$a;->f:Le/a/c/a/p/e/h;

    invoke-direct {v0, v1, p2}, Le/a/c/a/p/e/h$a;-><init>(Le/a/c/a/p/e/h;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/p/e/h$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/c/a/p/e/h$a;->f:Le/a/c/a/p/e/h;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Le/a/c/a/j/b/f;

    .line 4
    iget-object p2, v1, Le/a/c/a/p/e/h;->f:Le/a/c/a/p/e/f;

    .line 5
    iget-object p2, p2, Le/a/c/a/p/e/f;->f:Le/a/c/a/j/c/a;

    if-eqz p2, :cond_2

    .line 6
    iget-object v2, p1, Le/a/c/a/j/b/f;->a:Ljava/util/List;

    .line 7
    invoke-virtual {p2, v2}, Ln3/b0/a/p;->submitList(Ljava/util/List;)V

    .line 8
    iget-object p2, v1, Le/a/c/a/p/e/h;->f:Le/a/c/a/p/e/f;

    .line 9
    invoke-virtual {p2}, Le/a/c/a/p/e/f;->QA()Le/a/c/a/g/g0;

    move-result-object p2

    .line 10
    iget-object p2, p2, Le/a/c/a/g/g0;->c:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "binding.moreFilters"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-boolean v1, p1, Le/a/c/a/j/b/f;->b:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 12
    iget-object p1, p1, Le/a/c/a/j/b/f;->a:Ljava/util/List;

    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    .line 14
    :goto_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    return-object v0

    :cond_2
    const-string p1, "quickFilterAdapter"

    .line 15
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/a/p/e/h$a;->e:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/j/b/f;

    .line 2
    iget-object v0, p0, Le/a/c/a/p/e/h$a;->f:Le/a/c/a/p/e/h;

    iget-object v0, v0, Le/a/c/a/p/e/h;->f:Le/a/c/a/p/e/f;

    .line 3
    iget-object v0, v0, Le/a/c/a/p/e/f;->f:Le/a/c/a/j/c/a;

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p1, Le/a/c/a/j/b/f;->a:Ljava/util/List;

    .line 5
    invoke-virtual {v0, v1}, Ln3/b0/a/p;->submitList(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Le/a/c/a/p/e/h$a;->f:Le/a/c/a/p/e/h;

    iget-object v0, v0, Le/a/c/a/p/e/h;->f:Le/a/c/a/p/e/f;

    .line 7
    invoke-virtual {v0}, Le/a/c/a/p/e/f;->QA()Le/a/c/a/g/g0;

    move-result-object v0

    .line 8
    iget-object v0, v0, Le/a/c/a/g/g0;->c:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "binding.moreFilters"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-boolean v1, p1, Le/a/c/a/j/b/f;->b:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 10
    iget-object p1, p1, Le/a/c/a/j/b/f;->a:Ljava/util/List;

    .line 11
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    .line 12
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 13
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_2
    const-string p1, "quickFilterAdapter"

    .line 14
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
