.class public final Le/a/b/a/a/a/c/b;
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
        "Ls1/k<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/util/List<",
        "+",
        "Le/a/b0/p/c;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/a/a/a/c/a;


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/c/a;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/c/b;->a:Le/a/b/a/a/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Ls1/k;

    .line 2
    iget-object v0, p0, Le/a/b/a/a/a/c/b;->a:Le/a/b/a/a/a/c/a;

    .line 3
    sget-object v1, Le/a/b/a/a/a/c/a;->h:[Ls1/a/l;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v2

    const-string v3, "requireActivity()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    const-string v4, "requireActivity().windowManager"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 7
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 8
    iget-object v2, v0, Le/a/b/a/a/a/c/a;->c:Le/a/p5/c0;

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    sget v5, Lcom/truecaller/bizmon/R$dimen;->doubleSpace:I

    invoke-interface {v2, v5}, Le/a/p5/c0;->H(I)I

    move-result v2

    .line 9
    invoke-virtual {v0}, Le/a/b/a/a/a/c/a;->OA()Le/a/b/m/r0;

    move-result-object v0

    .line 10
    iget-object v5, v0, Le/a/b/m/r0;->a:Landroid/view/View;

    const-string v6, "bottomBarBackgroundView"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, v0, Le/a/b/m/r0;->e:Landroid/widget/Button;

    const-string v7, "btnShowMore"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/widget/Button;->getHeight()I

    move-result v6

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v6

    add-int/2addr v2, v5

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 11
    iget-object v2, v0, Le/a/b/m/r0;->j:Landroid/widget/TextView;

    const-string v5, "lblSubHeader"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getY()F

    move-result v2

    iget-object v0, v0, Le/a/b/m/r0;->j:Landroid/widget/TextView;

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 12
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 13
    check-cast p1, Ljava/util/List;

    .line 14
    iget-object v1, p0, Le/a/b/a/a/a/c/b;->a:Le/a/b/a/a/a/c/a;

    .line 15
    iget-object v2, v1, Le/a/b/a/a/a/c/a;->b:Le/a/b/a/a/c/d;

    if-eqz v2, :cond_3

    .line 16
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v1

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v0, v1}, Le/a/b/a/a/c/d;->a(Ljava/util/List;ILandroid/app/Activity;)I

    move-result v0

    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 18
    iget-object v2, p0, Le/a/b/a/a/a/c/b;->a:Le/a/b/a/a/a/c/a;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le p1, v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 19
    :goto_0
    iget-object v3, v2, Le/a/b/a/a/a/c/a;->d:Ljava/util/List;

    .line 20
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 21
    invoke-virtual {v2}, Le/a/b/a/a/a/c/a;->OA()Le/a/b/m/r0;

    move-result-object v5

    .line 22
    iget-object v6, v5, Le/a/b/m/r0;->h:Landroidx/constraintlayout/helper/widget/Flow;

    invoke-virtual {v6, v4}, Ln3/i/c/b;->n(Landroid/view/View;)V

    .line 23
    iget-object v5, v5, Le/a/b/m/r0;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 24
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/p/c;

    .line 25
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 26
    sget v5, Lcom/truecaller/bizmon/R$layout;->checkbox_child_tags:I

    invoke-virtual {v2}, Le/a/b/a/a/a/c/a;->OA()Le/a/b/m/r0;

    move-result-object v6

    iget-object v6, v6, Le/a/b/m/r0;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.widget.CheckBox"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Landroid/widget/CheckBox;

    .line 27
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setId(I)V

    .line 28
    iget-object v5, v3, Le/a/b0/p/c;->b:Ljava/lang/String;

    .line 29
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-wide v5, v3, Le/a/b0/p/c;->a:J

    .line 31
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 33
    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 34
    invoke-virtual {v2}, Le/a/b/a/a/a/c/a;->OA()Le/a/b/m/r0;

    move-result-object v3

    .line 35
    iget-object v5, v3, Le/a/b/m/r0;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 36
    iget-object v3, v3, Le/a/b/m/r0;->h:Landroidx/constraintlayout/helper/widget/Flow;

    invoke-virtual {v3, v4}, Ln3/i/c/b;->h(Landroid/view/View;)V

    .line 37
    iget-object v3, v2, Le/a/b/a/a/a/c/a;->d:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 38
    :cond_2
    invoke-virtual {v2}, Le/a/b/a/a/a/c/a;->OA()Le/a/b/m/r0;

    move-result-object v0

    iget-object v0, v0, Le/a/b/m/r0;->e:Landroid/widget/Button;

    const-string v1, "binding.btnShowMore"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void

    :cond_3
    const-string p1, "subCategoryUIUtil"

    .line 39
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_4
    const-string p1, "resourceProvider"

    .line 40
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4
.end method
