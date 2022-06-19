.class public final Le/a/c/a/d/g/c;
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
        "Le/a/c/a/l/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/d/g/c;->a:Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "selectedFiltersAdapter"

    const-string v2, "binding.filtersContainer.selectedFiltersVG"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/c/a/d/g/c;->a:Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;

    .line 4
    iget-object v0, v0, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;->e:Le/a/c/a/d/a/c/e;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Ln3/b0/a/p;->submitList(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Le/a/c/a/d/g/c;->a:Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;->pa()Le/a/c/a/g/a;

    move-result-object p1

    .line 8
    iget-object p1, p1, Le/a/c/a/g/a;->f:Le/a/c/a/g/d1;

    iget-object p1, p1, Le/a/c/a/g/d1;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 10
    :cond_1
    iget-object v0, p0, Le/a/c/a/d/g/c;->a:Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;

    .line 11
    sget v4, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;->g:I

    .line 12
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;->pa()Le/a/c/a/g/a;

    move-result-object v0

    .line 13
    iget-object v0, v0, Le/a/c/a/g/a;->f:Le/a/c/a/g/d1;

    iget-object v0, v0, Le/a/c/a/g/d1;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Le/a/c/a/d/g/c;->a:Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;

    .line 15
    iget-object v0, v0, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;->e:Le/a/c/a/d/a/c/e;

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {v0, p1}, Ln3/b0/a/p;->submitList(Ljava/util/List;)V

    :goto_0
    return-void

    .line 17
    :cond_2
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
