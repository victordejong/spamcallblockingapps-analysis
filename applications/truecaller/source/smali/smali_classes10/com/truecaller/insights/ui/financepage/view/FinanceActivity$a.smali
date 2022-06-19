.class public final Lcom/truecaller/insights/ui/financepage/view/FinanceActivity$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/c/a/g/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ln3/b/a/h;


# direct methods
.method public constructor <init>(Ln3/b/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity$a;->b:Ln3/b/a/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity$a;->b:Ln3/b/a/h;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "layoutInflater"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v2, Lcom/truecaller/insights/ui/R$layout;->activity_finance_transactions:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 3
    sget v2, Lcom/truecaller/insights/ui/R$id;->appBarLayout:I

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/google/android/material/appbar/AppBarLayout;

    const-string v3, "Missing required view with ID: "

    if-eqz v6, :cond_2

    .line 5
    sget v2, Lcom/truecaller/insights/ui/R$id;->backBtn:I

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/truecaller/ui/view/TintedImageView;

    if-eqz v7, :cond_2

    .line 7
    sget v2, Lcom/truecaller/insights/ui/R$id;->emptyState:I

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_2

    .line 9
    sget v2, Lcom/truecaller/insights/ui/R$id;->emptyStateDesc:I

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 11
    sget v2, Lcom/truecaller/insights/ui/R$id;->emptyStateImg:I

    .line 12
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_2

    .line 13
    sget v2, Lcom/truecaller/insights/ui/R$id;->emptyStateTitle:I

    .line 14
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_2

    .line 15
    sget v2, Lcom/truecaller/insights/ui/R$id;->filterFab:I

    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    if-eqz v12, :cond_2

    .line 17
    sget v2, Lcom/truecaller/insights/ui/R$id;->filtersContainer:I

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 19
    sget v2, Lcom/truecaller/insights/ui/R$id;->filtersHeader:I

    .line 20
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 21
    sget v2, Lcom/truecaller/insights/ui/R$id;->selectedFiltersRv:I

    .line 22
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v13, :cond_1

    .line 23
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 24
    new-instance v2, Le/a/c/a/g/d1;

    invoke-direct {v2, v4, v5, v13, v4}, Le/a/c/a/g/d1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 25
    sget v4, Lcom/truecaller/insights/ui/R$id;->scrollUp:I

    .line 26
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v14, :cond_0

    .line 27
    sget v4, Lcom/truecaller/insights/ui/R$id;->searchBtn:I

    .line 28
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lcom/truecaller/ui/view/TintedImageView;

    if-eqz v15, :cond_0

    .line 29
    sget v4, Lcom/truecaller/insights/ui/R$id;->tabs:I

    .line 30
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Lcom/truecaller/common/ui/tablayout/TabLayoutX;

    if-eqz v16, :cond_0

    .line 31
    sget v4, Lcom/truecaller/insights/ui/R$id;->titleTv:I

    .line 32
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 33
    sget v4, Lcom/truecaller/insights/ui/R$id;->viewPager:I

    .line 34
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v18, :cond_0

    .line 35
    new-instance v3, Le/a/c/a/g/a;

    move-object v5, v1

    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v4, v3

    move-object v13, v2

    invoke-direct/range {v4 .. v18}, Le/a/c/a/g/a;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/truecaller/ui/view/TintedImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Le/a/c/a/g/d1;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/truecaller/ui/view/TintedImageView;Lcom/truecaller/common/ui/tablayout/TabLayoutX;Landroid/widget/TextView;Landroidx/viewpager2/widget/ViewPager2;)V

    return-object v3

    :cond_0
    move v2, v4

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 37
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 39
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
