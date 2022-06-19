.class public final Le/a/c/a/c/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/a/d;->a:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Le/a/c/a/c/a/d;->a:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    .line 3
    iget-object v0, v0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->e:Le/a/c/a/a/a/c;

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0, p1}, Ln3/b0/a/p;->submitList(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Le/a/c/a/c/a/d;->a:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "binding.footer.root"

    const-string v2, "binding.footer"

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/insights/ui/models/AdapterItem;

    .line 9
    instance-of v3, v3, Lcom/truecaller/insights/ui/models/AdapterItem$f;

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->PA()Le/a/c/a/g/d0;

    move-result-object p1

    iget-object p1, p1, Le/a/c/a/g/d0;->b:Le/a/c/a/g/m0;

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object p1, p1, Le/a/c/a/g/m0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->PA()Le/a/c/a/g/d0;

    move-result-object p1

    iget-object p1, p1, Le/a/c/a/g/d0;->b:Le/a/c/a/g/m0;

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object p1, p1, Le/a/c/a/g/m0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 15
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 16
    :goto_1
    iget-object p1, p0, Le/a/c/a/c/a/d;->a:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    invoke-static {p1}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->OA(Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;)V

    return-void

    :cond_4
    const-string p1, "insightsAdapter"

    .line 17
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
