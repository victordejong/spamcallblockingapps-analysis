.class public final Le/a/c/a/j/e/f$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/j/e/f;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/c/a/j/b/b;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.filters.view.FilterBottomSheetDialog$populateChipData$1$1"
    f = "FilterBottomSheetDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/c/a/j/e/f;


# direct methods
.method public constructor <init>(Le/a/c/a/j/e/f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/j/e/f$a;->f:Le/a/c/a/j/e/f;

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

    new-instance v0, Le/a/c/a/j/e/f$a;

    iget-object v1, p0, Le/a/c/a/j/e/f$a;->f:Le/a/c/a/j/e/f;

    invoke-direct {v0, v1, p2}, Le/a/c/a/j/e/f$a;-><init>(Le/a/c/a/j/e/f;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/j/e/f$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a/j/e/f$a;

    iget-object v1, p0, Le/a/c/a/j/e/f$a;->f:Le/a/c/a/j/e/f;

    invoke-direct {v0, v1, p2}, Le/a/c/a/j/e/f$a;-><init>(Le/a/c/a/j/e/f;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/j/e/f$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/a/j/e/f$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/a/j/e/f$a;->e:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/j/b/b;

    .line 2
    iget-object v6, p1, Le/a/c/a/j/b/b;->a:Ljava/util/List;

    .line 3
    iget-boolean v7, p1, Le/a/c/a/j/b/b;->b:Z

    .line 4
    iget-boolean p1, p1, Le/a/c/a/j/b/b;->c:Z

    .line 5
    iget-object v0, p0, Le/a/c/a/j/e/f$a;->f:Le/a/c/a/j/e/f;

    iget-object v8, v0, Le/a/c/a/j/e/f;->f:Le/a/c/a/j/e/a;

    .line 6
    sget-object v0, Le/a/c/a/j/e/a;->j:[Ls1/a/l;

    .line 7
    invoke-virtual {v8}, Le/a/c/a/j/e/a;->SA()Le/a/c/a/g/h;

    move-result-object v0

    iget-object v9, v0, Le/a/c/a/g/h;->c:Lcom/google/android/material/chip/ChipGroup;

    .line 8
    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Le/a/c/a/j/b/c;

    .line 10
    new-instance v12, Le/a/c/a/j/e/b;

    move-object v0, v12

    move-object v1, v9

    move-object v2, v8

    move-object v3, v6

    move v4, v7

    move v5, p1

    invoke-direct/range {v0 .. v5}, Le/a/c/a/j/e/b;-><init>(Lcom/google/android/material/chip/ChipGroup;Le/a/c/a/j/e/a;Ljava/util/List;ZZ)V

    .line 11
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "layoutInflater"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/c/p/a;->d3(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/truecaller/insights/ui/R$layout;->layout_filter_chip_choice:I

    invoke-virtual {v8}, Le/a/c/a/j/e/a;->SA()Le/a/c/a/g/h;

    move-result-object v2

    iget-object v2, v2, Le/a/c/a/g/h;->c:Lcom/google/android/material/chip/ChipGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.google.android.material.chip.Chip"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 12
    iget-object v1, v11, Le/a/c/a/j/b/c;->b:Lcom/truecaller/insights/insightsui/CategoryModel;

    .line 13
    invoke-virtual {v1}, Lcom/truecaller/insights/insightsui/CategoryModel;->getTagCategory()Lcom/truecaller/insights/smartcards/SmartCardCategory;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Le/a/c/a/r/f;->c(Lcom/truecaller/insights/smartcards/SmartCardCategory;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 15
    iget-object v2, v11, Le/a/c/a/j/b/c;->b:Lcom/truecaller/insights/insightsui/CategoryModel;

    .line 16
    invoke-virtual {v2}, Lcom/truecaller/insights/insightsui/CategoryModel;->getTagCategory()Lcom/truecaller/insights/smartcards/SmartCardCategory;

    move-result-object v2

    invoke-static {v2}, Le/a/c/a/r/f;->a(Lcom/truecaller/insights/smartcards/SmartCardCategory;)I

    move-result v2

    .line 17
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 18
    invoke-static {v1, v2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget-boolean v1, v11, Le/a/c/a/j/b/c;->c:Z

    .line 21
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 22
    new-instance v1, Le/a/c/a/j/e/d;

    invoke-direct {v1, v11, v12}, Le/a/c/a/j/e/d;-><init>(Le/a/c/a/j/b/c;Ls1/z/b/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 23
    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-eqz v7, :cond_2

    if-nez p1, :cond_1

    .line 24
    sget v10, Lcom/truecaller/insights/ui/R$drawable;->ic_more_filters:I

    sget v11, Lcom/truecaller/insights/ui/R$string;->more_filters:I

    new-instance v12, Lm2;

    const/4 v1, 0x0

    move-object v0, v12

    move-object v2, v8

    move-object v3, v6

    move v4, v7

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lm2;-><init>(ILjava/lang/Object;Ljava/lang/Object;ZZ)V

    invoke-virtual {v8, v10, v11, v12}, Le/a/c/a/j/e/a;->RA(IILs1/z/b/a;)Lcom/google/android/material/chip/Chip;

    move-result-object p1

    invoke-virtual {v9, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 25
    :cond_1
    sget v10, Lcom/truecaller/insights/ui/R$drawable;->ic_more_filters:I

    sget v11, Lcom/truecaller/insights/ui/R$string;->less_filters:I

    new-instance v12, Lm2;

    const/4 v1, 0x1

    move-object v0, v12

    move-object v2, v8

    move-object v3, v6

    move v4, v7

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lm2;-><init>(ILjava/lang/Object;Ljava/lang/Object;ZZ)V

    invoke-virtual {v8, v10, v11, v12}, Le/a/c/a/j/e/a;->RA(IILs1/z/b/a;)Lcom/google/android/material/chip/Chip;

    move-result-object p1

    invoke-virtual {v9, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    :cond_2
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
