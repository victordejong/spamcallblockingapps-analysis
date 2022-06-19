.class public final Le/a/b0/a/e0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final a:F

.field public final b:Le/a/b0/a/e0/b;

.field public final c:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

.field public final d:Landroid/view/View;

.field public final e:F


# direct methods
.method public constructor <init>(Le/a/b0/a/e0/b;Lcom/truecaller/common/ui/tooltip/TooltipDirection;Landroid/view/View;F)V
    .locals 1

    const-string v0, "tooltip"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/a/e0/d;->b:Le/a/b0/a/e0/b;

    iput-object p2, p0, Le/a/b0/a/e0/d;->c:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    iput-object p3, p0, Le/a/b0/a/e0/d;->d:Landroid/view/View;

    iput p4, p0, Le/a/b0/a/e0/d;->e:F

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/truecaller/common/ui/R$dimen;->tooltip_edge_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Le/a/b0/a/e0/d;->a:F

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "parent"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Le/a/b0/a/e0/d;->d:Landroid/view/View;

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p4

    const/4 p5, 0x0

    invoke-direct {p2, p5, p5, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    iget-object p3, p0, Le/a/b0/a/e0/d;->d:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p3

    iget-object p4, p0, Le/a/b0/a/e0/d;->d:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    iget-object p5, p0, Le/a/b0/a/e0/d;->d:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getRight()I

    move-result p5

    iget-object p6, p0, Le/a/b0/a/e0/d;->d:Landroid/view/View;

    invoke-virtual {p6}, Landroid/view/View;->getBottom()I

    move-result p6

    invoke-direct {p2, p3, p4, p5, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4
    :goto_0
    iget-object p3, p0, Le/a/b0/a/e0/d;->c:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    invoke-static {p3, p1}, Le/a/n/g0;->o0(Lcom/truecaller/common/ui/tooltip/TooltipDirection;Landroid/view/View;)Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    move-result-object p3

    .line 5
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    const/4 p5, 0x3

    if-eq p4, p5, :cond_3

    const/4 p5, 0x4

    if-eq p4, p5, :cond_2

    const/4 p5, 0x5

    if-eq p4, p5, :cond_1

    const/4 p4, 0x0

    goto :goto_1

    .line 6
    :cond_1
    iget p4, p2, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    iget p5, p0, Le/a/b0/a/e0/d;->e:F

    sub-float/2addr p4, p5

    iget p5, p0, Le/a/b0/a/e0/d;->a:F

    sub-float/2addr p4, p5

    float-to-int p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p4

    iget p5, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, p5

    int-to-float p4, p4

    iget p5, p0, Le/a/b0/a/e0/d;->e:F

    sub-float/2addr p4, p5

    iget p5, p0, Le/a/b0/a/e0/d;->a:F

    sub-float/2addr p4, p5

    float-to-int p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    goto :goto_1

    .line 8
    :cond_3
    iget p4, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p5

    sub-int/2addr p4, p5

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p5

    iget p6, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p6

    if-le p4, p5, :cond_4

    move p4, p5

    :cond_4
    const/4 p5, 0x2

    mul-int/2addr p4, p5

    .line 9
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p6

    add-int/2addr p6, p4

    int-to-float p4, p6

    iget p6, p0, Le/a/b0/a/e0/d;->e:F

    int-to-float p5, p5

    mul-float/2addr p6, p5

    sub-float/2addr p4, p6

    float-to-int p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :goto_1
    if-eqz p4, :cond_5

    .line 10
    iget-object p5, p0, Le/a/b0/a/e0/d;->b:Le/a/b0/a/e0/b;

    invoke-virtual {p5}, Landroid/widget/TextView;->getMaxWidth()I

    move-result p5

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p6

    if-eq p6, p5, :cond_5

    .line 11
    iget-object p5, p0, Le/a/b0/a/e0/d;->b:Le/a/b0/a/e0/b;

    new-instance p6, Le/a/b0/a/e0/d$a;

    invoke-direct {p6, p0, p4}, Le/a/b0/a/e0/d$a;-><init>(Le/a/b0/a/e0/d;Ljava/lang/Integer;)V

    invoke-virtual {p5, p6}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 12
    :cond_5
    iget-object p4, p0, Le/a/b0/a/e0/d;->b:Le/a/b0/a/e0/b;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    const/high16 p6, 0x40000000    # 2.0f

    packed-switch p5, :pswitch_data_0

    .line 13
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 14
    :pswitch_1
    iget p5, p2, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 15
    :pswitch_2
    iget p5, p2, Landroid/graphics/Rect;->left:I

    .line 16
    iget p7, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p7, p5

    add-int/2addr p5, p7

    .line 17
    iget-object p7, p0, Le/a/b0/a/e0/d;->b:Le/a/b0/a/e0/b;

    invoke-virtual {p7}, Landroid/widget/TextView;->getWidth()I

    move-result p7

    goto :goto_2

    .line 18
    :pswitch_3
    iget p5, p2, Landroid/graphics/Rect;->right:I

    .line 19
    iget p7, p2, Landroid/graphics/Rect;->left:I

    sub-int p7, p5, p7

    add-int/2addr p5, p7

    .line 20
    iget-object p7, p0, Le/a/b0/a/e0/d;->b:Le/a/b0/a/e0/b;

    invoke-virtual {p7}, Landroid/widget/TextView;->getWidth()I

    move-result p7

    goto :goto_2

    .line 21
    :pswitch_4
    iget p5, p2, Landroid/graphics/Rect;->left:I

    .line 22
    iget p7, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p7, p5

    add-int/2addr p5, p7

    .line 23
    iget-object p7, p0, Le/a/b0/a/e0/d;->b:Le/a/b0/a/e0/b;

    invoke-virtual {p7}, Landroid/widget/TextView;->getWidth()I

    move-result p7

    :goto_2
    sub-int/2addr p5, p7

    :goto_3
    int-to-float p5, p5

    goto :goto_7

    .line 24
    :pswitch_5
    iget p5, p2, Landroid/graphics/Rect;->right:I

    int-to-float p7, p5

    .line 25
    iget p8, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p5, p8

    .line 26
    iget-object p8, p0, Le/a/b0/a/e0/d;->b:Le/a/b0/a/e0/b;

    invoke-virtual {p8}, Landroid/widget/TextView;->getWidth()I

    move-result p8

    sub-int/2addr p5, p8

    int-to-float p5, p5

    const p8, 0x3ee66666    # 0.45f

    goto :goto_4

    .line 27
    :pswitch_6
    iget p5, p2, Landroid/graphics/Rect;->left:I

    int-to-float p7, p5

    .line 28
    iget p8, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p8, p5

    .line 29
    iget-object p5, p0, Le/a/b0/a/e0/d;->b:Le/a/b0/a/e0/b;

    invoke-virtual {p5}, Landroid/widget/TextView;->getWidth()I

    move-result p5

    sub-int/2addr p8, p5

    int-to-float p5, p8

    const p8, 0x3f59999a    # 0.85f

    :goto_4
    mul-float/2addr p5, p8

    goto :goto_6

    .line 30
    :pswitch_7
    iget p5, p2, Landroid/graphics/Rect;->left:I

    iget-object p7, p0, Le/a/b0/a/e0/d;->b:Le/a/b0/a/e0/b;

    invoke-virtual {p7}, Landroid/widget/TextView;->getWidth()I

    move-result p7

    sub-int/2addr p5, p7

    int-to-float p5, p5

    iget p7, p0, Le/a/b0/a/e0/d;->e:F

    sub-float/2addr p5, p7

    goto :goto_7

    .line 31
    :pswitch_8
    iget p5, p2, Landroid/graphics/Rect;->right:I

    int-to-float p5, p5

    iget p7, p0, Le/a/b0/a/e0/d;->e:F

    goto :goto_6

    .line 32
    :pswitch_9
    iget p5, p2, Landroid/graphics/Rect;->left:I

    int-to-float p7, p5

    .line 33
    iget p8, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p8, p5

    .line 34
    iget-object p5, p0, Le/a/b0/a/e0/d;->b:Le/a/b0/a/e0/b;

    invoke-virtual {p5}, Landroid/widget/TextView;->getWidth()I

    move-result p5

    goto :goto_5

    .line 35
    :pswitch_a
    iget p5, p2, Landroid/graphics/Rect;->left:I

    int-to-float p7, p5

    .line 36
    iget p8, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p8, p5

    .line 37
    iget-object p5, p0, Le/a/b0/a/e0/d;->b:Le/a/b0/a/e0/b;

    invoke-virtual {p5}, Landroid/widget/TextView;->getWidth()I

    move-result p5

    :goto_5
    sub-int/2addr p8, p5

    int-to-float p5, p8

    div-float/2addr p5, p6

    :goto_6
    add-float/2addr p5, p7

    .line 38
    :goto_7
    iget-object p7, p0, Le/a/b0/a/e0/d;->b:Le/a/b0/a/e0/b;

    invoke-virtual {p7}, Landroid/widget/TextView;->getLeft()I

    move-result p7

    int-to-float p7, p7

    sub-float/2addr p5, p7

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 39
    iget-object p4, p0, Le/a/b0/a/e0/d;->b:Le/a/b0/a/e0/b;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_1

    .line 40
    :pswitch_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 41
    :pswitch_c
    iget p3, p2, Landroid/graphics/Rect;->top:I

    int-to-float p5, p3

    .line 42
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p3

    .line 43
    iget-object p3, p0, Le/a/b0/a/e0/d;->b:Le/a/b0/a/e0/b;

    invoke-virtual {p3}, Landroid/widget/TextView;->getHeight()I

    move-result p3

    goto :goto_8

    .line 44
    :pswitch_d
    iget p3, p2, Landroid/graphics/Rect;->top:I

    int-to-float p5, p3

    .line 45
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p3

    .line 46
    iget-object p3, p0, Le/a/b0/a/e0/d;->b:Le/a/b0/a/e0/b;

    invoke-virtual {p3}, Landroid/widget/TextView;->getHeight()I

    move-result p3

    :goto_8
    sub-int/2addr p2, p3

    int-to-float p2, p2

    div-float/2addr p2, p6

    add-float/2addr p2, p5

    goto :goto_9

    .line 47
    :pswitch_e
    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Le/a/b0/a/e0/d;->b:Le/a/b0/a/e0/b;

    invoke-virtual {p3}, Landroid/widget/TextView;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iget p3, p0, Le/a/b0/a/e0/d;->e:F

    sub-float/2addr p2, p3

    goto :goto_9

    .line 48
    :pswitch_f
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    iget p3, p0, Le/a/b0/a/e0/d;->e:F

    add-float/2addr p2, p3

    .line 49
    :goto_9
    iget-object p3, p0, Le/a/b0/a/e0/d;->b:Le/a/b0/a/e0/b;

    invoke-virtual {p3}, Landroid/widget/TextView;->getTop()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 50
    iget-object p2, p0, Le/a/b0/a/e0/d;->b:Le/a/b0/a/e0/b;

    iget-object p3, p0, Le/a/b0/a/e0/d;->d:Landroid/view/View;

    if-eqz p3, :cond_6

    move-object p1, p3

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_f
        :pswitch_f
        :pswitch_b
        :pswitch_f
        :pswitch_f
        :pswitch_b
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method
