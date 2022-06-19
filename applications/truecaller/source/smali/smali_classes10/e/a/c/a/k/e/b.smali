.class public final synthetic Le/a/c/a/k/e/b;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Ljava/util/Set<",
        "+",
        "Le/a/c/a/k/c/c;",
        ">;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;)V
    .locals 7

    const-class v3, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;

    const/4 v1, 0x1

    const-string v4, "handlePageCommand"

    const-string v5, "handlePageCommand(Ljava/util/Set;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Ljava/util/Set;

    const-string v0, "p1"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;

    .line 3
    sget v1, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->e:I

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/a/k/c/c;

    .line 6
    instance-of v2, v1, Le/a/c/a/k/c/c$b;

    const-string v3, "Snackbar.make(\n         \u2026bar.LENGTH_LONG\n        )"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 7
    check-cast v1, Le/a/c/a/k/c/c$b;

    .line 8
    iget-object v1, v1, Le/a/c/a/k/c/c$b;->a:Ljava/util/List;

    .line 9
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->pa()Le/a/c/a/g/c;

    move-result-object v2

    iget-object v2, v2, Le/a/c/a/g/c;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 10
    sget v6, Lcom/truecaller/insights/ui/R$plurals;->UndoMarkAsStarredNotification:I

    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 12
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-static {v2, v5, v4}, Lcom/google/android/material/snackbar/Snackbar;->l(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v2

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget v3, Lcom/truecaller/insights/ui/R$string;->undo:I

    new-instance v4, Le/a/c/a/k/e/d;

    invoke-direct {v4, v0, v1}, Le/a/c/a/k/e/d;-><init>(Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;Ljava/util/List;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/snackbar/Snackbar;->m(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/material/snackbar/Snackbar;->n()V

    goto :goto_0

    .line 16
    :cond_1
    instance-of v2, v1, Le/a/c/a/k/c/c$c;

    if-eqz v2, :cond_3

    .line 17
    check-cast v1, Le/a/c/a/k/c/c$c;

    .line 18
    iget-boolean v1, v1, Le/a/c/a/k/c/c$c;->a:Z

    const-string v2, "binding.emptyState.root"

    const-string v3, "binding.emptyState"

    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->pa()Le/a/c/a/g/c;

    move-result-object v1

    iget-object v1, v1, Le/a/c/a/g/c;->b:Le/a/c/a/g/p1;

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v1, v1, Le/a/c/a/g/p1;->a:Landroidx/core/widget/NestedScrollView;

    .line 21
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->pa()Le/a/c/a/g/c;

    move-result-object v1

    iget-object v1, v1, Le/a/c/a/g/c;->b:Le/a/c/a/g/p1;

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v1, v1, Le/a/c/a/g/p1;->a:Landroidx/core/widget/NestedScrollView;

    .line 24
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 25
    :goto_1
    invoke-virtual {v0}, Ln3/b/a/h;->invalidateOptionsMenu()V

    goto :goto_0

    .line 26
    :cond_3
    instance-of v2, v1, Le/a/c/a/k/c/c$a;

    if-eqz v2, :cond_0

    .line 27
    check-cast v1, Le/a/c/a/k/c/c$a;

    .line 28
    iget-boolean v1, v1, Le/a/c/a/k/c/c$a;->a:Z

    if-eqz v1, :cond_4

    .line 29
    invoke-virtual {v0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/truecaller/insights/ui/R$string;->failed_mark_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 30
    :cond_4
    invoke-virtual {v0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/truecaller/insights/ui/R$string;->failed_un_mark_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v2, "if (important) resources\u2026g.failed_un_mark_message)"

    .line 31
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->pa()Le/a/c/a/g/c;

    move-result-object v2

    iget-object v2, v2, Le/a/c/a/g/c;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 33
    invoke-static {v2, v1, v4}, Lcom/google/android/material/snackbar/Snackbar;->l(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v2, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$k;

    .line 35
    sget v3, Lcom/google/android/material/R$id;->snackbar_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 36
    sget v3, Lcom/truecaller/insights/ui/R$attr;->tcx_alertBackgroundRed:I

    invoke-static {v0, v3}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->n()V

    goto/16 :goto_0

    .line 38
    :cond_6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
