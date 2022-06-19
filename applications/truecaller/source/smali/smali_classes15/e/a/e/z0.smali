.class public Le/a/e/z0;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e/z0$b;,
        Le/a/e/z0$c;,
        Le/a/e/z0$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public b:Landroid/graphics/drawable/Drawable;

.field public final c:Landroid/graphics/Paint;

.field public d:Landroid/graphics/Paint;

.field public e:Landroid/view/View;

.field public f:Landroid/widget/TextView;

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070301

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Le/a/e/z0;->a:I

    const v1, 0x1010214

    .line 3
    invoke-static {p1, v1}, Le/a/p5/s0/g;->P(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Le/a/e/z0;->b:Landroid/graphics/drawable/Drawable;

    .line 4
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Le/a/e/z0;->c:Landroid/graphics/Paint;

    .line 5
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Le/a/e/z0;->e:Landroid/view/View;

    .line 8
    new-instance p3, Landroidx/recyclerview/widget/RecyclerView$p;

    const/4 v1, -0x1

    invoke-direct {p3, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$p;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object p2, p0, Le/a/e/z0;->e:Landroid/view/View;

    invoke-static {}, Le/a/b0/k/h;->a()Z

    move-result p3

    .line 10
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutDirection(I)V

    .line 12
    iget-object p2, p0, Le/a/e/z0;->e:Landroid/view/View;

    const p3, 0x7f0a0939

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Le/a/e/z0;->f:Landroid/widget/TextView;

    .line 13
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 14
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    const v0, 0x1010038

    invoke-static {p1, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 15
    iget-object p1, p0, Le/a/e/z0;->f:Landroid/widget/TextView;

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2
    iget v1, p0, Le/a/e/z0;->a:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Le/a/e/z0;->e:Landroid/view/View;

    invoke-virtual {v1, p1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public e(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Le/a/e/z0;->c:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Le/a/e/z0;->d:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V

    .line 2
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object p2

    .line 3
    instance-of p4, p2, Le/a/e/z0$a;

    if-nez p4, :cond_0

    return-void

    .line 4
    :cond_0
    check-cast p2, Le/a/e/z0$a;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 6
    invoke-interface {p2}, Le/a/e/z0$a;->F()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p0, p3}, Le/a/e/z0;->d(Landroid/view/View;)V

    .line 8
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Le/a/e/z0;->e:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p2

    iput p3, p1, Landroid/graphics/Rect;->top:I

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 12

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V

    .line 2
    invoke-virtual {p0, p2}, Le/a/e/z0;->d(Landroid/view/View;)V

    .line 3
    iget-object p3, p0, Le/a/e/z0;->e:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Le/a/e/z0;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 4
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge v2, p3, :cond_7

    .line 5
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 6
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object v0

    .line 7
    instance-of v1, v0, Le/a/e/z0$a;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9
    move-object v1, v0

    check-cast v1, Le/a/e/z0$a;

    .line 10
    invoke-interface {v1}, Le/a/e/z0$a;->F()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float v7, v5, v4

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v8, v4

    .line 12
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float v9, v5, v4

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v10, v4

    iget-object v11, p0, Le/a/e/z0;->c:Landroid/graphics/Paint;

    move-object v6, p1

    .line 13
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 14
    invoke-interface {v1}, Le/a/e/z0$a;->B()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Le/a/e/z0;->g:Z

    if-eqz v1, :cond_2

    .line 15
    :cond_1
    iget-object v1, p0, Le/a/e/z0;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, p0, Le/a/e/z0;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v1, v4, v5, v6, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 16
    iget-object v1, p0, Le/a/e/z0;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    if-eqz v3, :cond_6

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Le/a/e/z0;->a:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v5, v1

    const/4 v6, 0x0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    int-to-float v7, p3

    iget p3, p0, Le/a/e/z0;->a:I

    int-to-float v8, p3

    iget-object p3, p0, Le/a/e/z0;->d:Landroid/graphics/Paint;

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    iget-object p3, p0, Le/a/e/z0;->c:Landroid/graphics/Paint;

    :goto_1
    move-object v9, p3

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 19
    iget-object p3, p0, Le/a/e/z0;->f:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    instance-of p3, v0, Le/a/e/z0$c;

    if-eqz p3, :cond_4

    .line 21
    move-object p3, v0

    check-cast p3, Le/a/e/z0$c;

    .line 22
    iget-object v1, p0, Le/a/e/z0;->f:Landroid/widget/TextView;

    .line 23
    invoke-interface {p3}, Le/a/e/z0$c;->H()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 24
    invoke-interface {p3}, Le/a/e/z0$c;->v()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 25
    invoke-interface {p3}, Le/a/e/z0$c;->x()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 26
    invoke-interface {p3}, Le/a/e/z0$c;->A()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 27
    invoke-virtual {v1, v3, v4, v5, p3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 28
    :cond_4
    instance-of p3, v0, Le/a/e/z0$b;

    if-eqz p3, :cond_5

    .line 29
    check-cast v0, Le/a/e/z0$b;

    .line 30
    iget-object p3, p0, Le/a/e/z0;->f:Landroid/widget/TextView;

    .line 31
    invoke-interface {v0}, Le/a/e/z0$b;->H()I

    move-result v1

    .line 32
    invoke-interface {v0}, Le/a/e/z0$b;->v()I

    move-result v3

    .line 33
    invoke-interface {v0}, Le/a/e/z0$b;->x()I

    move-result v4

    .line 34
    invoke-interface {v0}, Le/a/e/z0$b;->A()I

    move-result v0

    .line 35
    invoke-virtual {p3, v1, v3, v4, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 36
    :cond_5
    iget-object p3, p0, Le/a/e/z0;->f:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->destroyDrawingCache()V

    .line 37
    iget-object p3, p0, Le/a/e/z0;->e:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 38
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method
