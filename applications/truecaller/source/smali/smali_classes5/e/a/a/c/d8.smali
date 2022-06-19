.class public final Le/a/a/c/d8;
.super Ln3/b0/a/k$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/c/d8$a;
    }
.end annotation


# instance fields
.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/drawable/Drawable;

.field public final f:Landroid/graphics/drawable/Drawable;

.field public final g:I

.field public final h:I

.field public final i:I

.field public j:Z

.field public k:Landroid/view/View;

.field public final l:Le/a/a/c/d8$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/a/c/d8$a;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swipeControllerActions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0xc

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/b0/a/k$g;-><init>(II)V

    iput-object p2, p0, Le/a/a/c/d8;->l:Le/a/a/c/d8$a;

    .line 2
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iput-object p2, p0, Le/a/a/c/d8;->d:Landroid/graphics/Paint;

    .line 3
    sget-object p2, Ln3/k/b/a;->a:Ljava/lang/Object;

    const p2, 0x7f08035d

    .line 4
    invoke-static {p1, p2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 5
    iput-object p2, p0, Le/a/a/c/d8;->e:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f080813

    .line 6
    invoke-static {p1, p2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 7
    iput-object p2, p0, Le/a/a/c/d8;->f:Landroid/graphics/drawable/Drawable;

    const/high16 p2, 0x428c0000    # 70.0f

    .line 8
    invoke-static {p1, p2}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Le/a/a/c/d8;->g:I

    const p2, 0x7f040412

    .line 9
    invoke-static {p1, p2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Le/a/a/c/d8;->h:I

    const p2, 0x7f040411

    .line 10
    invoke-static {p1, p2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Le/a/a/c/d8;->i:I

    return-void
.end method


# virtual methods
.method public b(II)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/a/a/c/d8;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Le/a/a/c/d8;->j:Z

    goto :goto_2

    :cond_0
    const v0, 0x303030

    and-int v1, p1, v0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    not-int v2, v1

    and-int/2addr p1, v2

    if-nez p2, :cond_2

    shr-int/lit8 p2, v1, 0x2

    goto :goto_0

    :cond_2
    shr-int/lit8 p2, v1, 0x1

    const v1, -0x303031

    and-int/2addr v1, p2

    or-int/2addr p1, v1

    and-int/2addr p2, v0

    shr-int/lit8 p2, p2, 0x2

    :goto_0
    or-int/2addr p1, p2

    :goto_1
    move v1, p1

    :goto_2
    return v1
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$c0;)I
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewHolder"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v0, "viewHolder.itemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/a/c/d8;->k:Landroid/view/View;

    .line 2
    instance-of p1, p2, Le/a/a/c/d;

    if-eqz p1, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/a/c/d;

    .line 3
    iget-boolean v0, v0, Le/a/a/c/d;->E:Z

    if-eqz v0, :cond_0

    const/16 p1, 0xc0c

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    check-cast p2, Le/a/a/c/d;

    .line 5
    iget-boolean p1, p2, Le/a/a/c/d;->J:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x404

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$c0;FFIZ)V
    .locals 13

    move-object v0, p0

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    const-string v1, "c"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "recyclerView"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "viewHolder"

    invoke-static {v9, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    move/from16 v10, p6

    if-ne v10, v1, :cond_0

    .line 1
    new-instance v2, Le/a/a/c/e8;

    invoke-direct {v2, p0, v9}, Le/a/a/c/e8;-><init>(Le/a/a/c/d8;Landroidx/recyclerview/widget/RecyclerView$c0;)V

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    if-nez p7, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const-string v2, "view"

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    .line 2
    iget-object v1, v0, Le/a/a/c/d8;->k:Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    add-float v3, v1, p4

    iget-object v1, v0, Le/a/a/c/d8;->k:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Le/a/a/c/d8;->k:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v6, v1

    iget-object v1, v0, Le/a/a/c/d8;->k:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v11, v1

    .line 3
    iget-object v12, v0, Le/a/a/c/d8;->d:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v3

    move v3, v5

    move v4, v6

    move v5, v11

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4
    invoke-super/range {p0 .. p7}, Ln3/b0/a/k$d;->g(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$c0;FFIZ)V

    return-void

    .line 5
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_4
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_5
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 6
    :cond_6
    invoke-super/range {p0 .. p7}, Ln3/b0/a/k$d;->g(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$c0;FFIZ)V

    int-to-float v1, v3

    cmpl-float v1, p4, v1

    const/4 v5, 0x2

    if-lez v1, :cond_f

    .line 7
    iget-object v1, v0, Le/a/a/c/d8;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    iget v3, v0, Le/a/a/c/d8;->i:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 8
    :cond_7
    iget-object v1, v0, Le/a/a/c/d8;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    iget v3, v0, Le/a/a/c/d8;->h:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 9
    :cond_8
    iget-object v1, v0, Le/a/a/c/d8;->k:Landroid/view/View;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    int-to-float v3, v5

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 10
    iget-object v3, v0, Le/a/a/c/d8;->k:Landroid/view/View;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v6, v0, Le/a/a/c/d8;->k:Landroid/view/View;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/2addr v2, v5

    add-int/2addr v2, v3

    .line 11
    iget-object v3, v0, Le/a/a/c/d8;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_9

    .line 12
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/2addr v4, v5

    sub-int v4, v1, v4

    .line 13
    iget-object v6, v0, Le/a/a/c/d8;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/2addr v6, v5

    sub-int v6, v2, v6

    .line 14
    iget-object v8, v0, Le/a/a/c/d8;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/2addr v8, v5

    add-int/2addr v8, v1

    .line 15
    iget-object v9, v0, Le/a/a/c/d8;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/2addr v9, v5

    add-int/2addr v9, v2

    .line 16
    invoke-virtual {v3, v4, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 17
    :cond_9
    iget-object v3, v0, Le/a/a/c/d8;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_a

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 18
    :cond_a
    iget-object v3, v0, Le/a/a/c/d8;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_b

    .line 19
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/2addr v4, v5

    sub-int v4, v1, v4

    .line 20
    iget-object v6, v0, Le/a/a/c/d8;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/2addr v6, v5

    sub-int v6, v2, v6

    .line 21
    iget-object v8, v0, Le/a/a/c/d8;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/2addr v8, v5

    add-int/2addr v8, v1

    .line 22
    iget-object v1, v0, Le/a/a/c/d8;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/2addr v1, v5

    add-int/2addr v1, v2

    .line 23
    invoke-virtual {v3, v4, v6, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 24
    :cond_b
    iget-object v1, v0, Le/a/a/c/d8;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_16

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 25
    :cond_c
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_d
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 26
    :cond_e
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 27
    :cond_f
    instance-of v1, v9, Le/a/a/c/d;

    if-eqz v1, :cond_16

    .line 28
    move-object v1, v9

    check-cast v1, Le/a/a/c/d;

    .line 29
    iget-object v1, v1, Le/a/a/c/d;->B:Lcom/truecaller/ui/view/TintedTextView;

    .line 30
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v9, v8, Landroid/view/ViewGroup;

    if-nez v9, :cond_10

    move-object v8, v4

    :cond_10
    check-cast v8, Landroid/view/ViewGroup;

    if-eqz v8, :cond_11

    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    :cond_11
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v1, v8}, Landroid/widget/LinearLayout;->measure(II)V

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-virtual {v6, v3, v3, v1, v8}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 35
    iget-object v1, v0, Le/a/a/c/d8;->k:Landroid/view/View;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v3, v0, Le/a/a/c/d8;->k:Landroid/view/View;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v1, v3

    .line 36
    iget-object v3, v0, Le/a/a/c/d8;->k:Landroid/view/View;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v8, v0, Le/a/a/c/d8;->k:Landroid/view/View;

    if-eqz v8, :cond_12

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/2addr v2, v5

    add-int/2addr v2, v3

    int-to-float v1, v1

    int-to-float v2, v2

    .line 37
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 38
    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 39
    :cond_12
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_13
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 40
    :cond_14
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_15
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_16
    :goto_1
    return-void
.end method
