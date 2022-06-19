.class public final Lcom/truecaller/common/ui/tablayout/TabLayoutX;
.super Lcom/google/android/material/tabs/TabLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\n\u0018\u00002\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J!\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ/\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00148B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/truecaller/common/ui/tablayout/TabLayoutX;",
        "Lcom/google/android/material/tabs/TabLayout;",
        "",
        "ratio",
        "Ls1/s;",
        "setSelectedTabWidthRatio",
        "(F)V",
        "Lcom/google/android/material/tabs/TabLayout$g;",
        "tab",
        "",
        "updateIndicator",
        "l",
        "(Lcom/google/android/material/tabs/TabLayout$g;Z)V",
        "",
        "position",
        "positionOffset",
        "updateSelectedText",
        "updateIndicatorPosition",
        "n",
        "(IFZZ)V",
        "",
        "getTabs",
        "()Ljava/util/List;",
        "tabs",
        "g0",
        "I",
        "previouslySelectedTabPosition",
        "W",
        "F",
        "selectedTabWidthRatio",
        "common-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public W:F

.field public g0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    iput p1, p0, Lcom/truecaller/common/ui/tablayout/TabLayoutX;->W:F

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result p1

    iput p1, p0, Lcom/truecaller/common/ui/tablayout/TabLayoutX;->g0:I

    return-void
.end method

.method private final getTabs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/material/tabs/TabLayout$g;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Ls1/u/z;

    invoke-virtual {v2}, Ls1/u/z;->a()I

    move-result v2

    .line 4
    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->h(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public l(Lcom/google/android/material/tabs/TabLayout$g;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iput v0, p0, Lcom/truecaller/common/ui/tablayout/TabLayoutX;->g0:I

    .line 2
    invoke-super {p0, p1, p2}, Lcom/google/android/material/tabs/TabLayout;->l(Lcom/google/android/material/tabs/TabLayout$g;Z)V

    return-void
.end method

.method public n(IFZZ)V
    .locals 5

    const/4 p4, 0x1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/tabs/TabLayout;->n(IFZZ)V

    int-to-float p1, p1

    add-float/2addr p1, p2

    .line 2
    invoke-direct {p0}, Lcom/truecaller/common/ui/tablayout/TabLayoutX;->getTabs()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/material/tabs/TabLayout$g;

    .line 3
    iget v0, p4, Lcom/google/android/material/tabs/TabLayout$g;->d:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 5
    iget-object v2, p4, Lcom/google/android/material/tabs/TabLayout$g;->g:Lcom/google/android/material/tabs/TabLayout$i;

    const-string v3, "tab.view"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    move-object v2, v4

    :cond_1
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_2

    iget v3, p0, Lcom/truecaller/common/ui/tablayout/TabLayoutX;->W:F

    invoke-static {v3, v1, v0, v1}, Le/d/c/a/a;->a(FFFF)F

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 6
    :cond_2
    iget-object v2, p4, Lcom/google/android/material/tabs/TabLayout$g;->g:Lcom/google/android/material/tabs/TabLayout$i;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 7
    iget-object v2, p4, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    .line 8
    instance-of v3, v2, Le/a/b0/a/c0/a;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v2

    :goto_1
    check-cast v4, Le/a/b0/a/c0/a;

    if-eqz v4, :cond_0

    if-nez p3, :cond_5

    .line 9
    iget v2, p4, Lcom/google/android/material/tabs/TabLayout$g;->d:I

    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 11
    iget p4, p4, Lcom/google/android/material/tabs/TabLayout$g;->d:I

    .line 12
    iget v2, p0, Lcom/truecaller/common/ui/tablayout/TabLayoutX;->g0:I

    if-ne p4, v2, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {v4, v1}, Le/a/b0/a/c0/a;->j1(F)V

    goto :goto_0

    :cond_5
    :goto_2
    sub-float/2addr v1, v0

    .line 14
    invoke-virtual {v4, v1}, Le/a/b0/a/c0/a;->j1(F)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final setSelectedTabWidthRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/common/ui/tablayout/TabLayoutX;->W:F

    return-void
.end method
