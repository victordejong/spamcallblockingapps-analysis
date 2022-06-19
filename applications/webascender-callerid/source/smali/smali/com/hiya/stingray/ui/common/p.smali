.class public Lcom/hiya/stingray/ui/common/p;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:Z

.field private d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/common/p;->d:Landroid/graphics/Rect;

    const v0, 0x7f0801a5

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/common/p;->a:Landroid/graphics/drawable/Drawable;

    .line 4
    iput p2, p0, Lcom/hiya/stingray/ui/common/p;->b:I

    return-void
.end method


# virtual methods
.method protected d(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-ne p2, p1, :cond_0

    iget-boolean p1, p0, Lcom/hiya/stingray/ui/common/p;->c:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/common/p;->c:Z

    return-void
.end method

.method protected f(Landroidx/recyclerview/widget/RecyclerView;ILandroid/view/View;)Z
    .locals 0

    const p1, 0x7f09000b

    .line 1
    invoke-virtual {p3, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "skip"

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/hiya/stingray/ui/common/p;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 5
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/RecyclerView;->g0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$d0;->getAdapterPosition()I

    move-result v5

    .line 7
    invoke-virtual {p0, p2, v5, v4}, Lcom/hiya/stingray/ui/common/p;->f(Landroidx/recyclerview/widget/RecyclerView;ILandroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 8
    :cond_0
    iget-object v6, p0, Lcom/hiya/stingray/ui/common/p;->d:Landroid/graphics/Rect;

    invoke-virtual {p2, v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->i0(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9
    iget-object v6, p0, Lcom/hiya/stingray/ui/common/p;->d:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v6, v4

    sub-int v4, v6, v2

    .line 10
    invoke-virtual {p0, p2, v5}, Lcom/hiya/stingray/ui/common/p;->d(Landroidx/recyclerview/widget/RecyclerView;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 11
    iget-object v5, p0, Lcom/hiya/stingray/ui/common/p;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p3, v4, v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v5, p0, Lcom/hiya/stingray/ui/common/p;->a:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/hiya/stingray/ui/common/p;->b:I

    invoke-virtual {v5, v7, v4, v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    :goto_1
    iget-object v4, p0, Lcom/hiya/stingray/ui/common/p;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
