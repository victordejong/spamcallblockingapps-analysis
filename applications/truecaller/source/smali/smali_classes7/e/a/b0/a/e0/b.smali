.class public final Le/a/b0/a/e0/b;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0008\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010 \u001a\u00020\u00078\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u0018R\u0016\u0010\"\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u0018R\u0016\u0010$\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010\u0018\u00a8\u0006%"
    }
    d2 = {
        "Le/a/b0/a/e0/b;",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "Lcom/truecaller/common/ui/tooltip/TooltipDirection;",
        "direction",
        "Ls1/s;",
        "setDirection",
        "(Lcom/truecaller/common/ui/tooltip/TooltipDirection;)V",
        "",
        "notchBias",
        "setNotchBias",
        "(F)V",
        "",
        "color",
        "setColor",
        "(I)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "draw",
        "(Landroid/graphics/Canvas;)V",
        "Landroid/graphics/Path;",
        "k",
        "Landroid/graphics/Path;",
        "notchPath",
        "i",
        "F",
        "Landroid/graphics/Paint;",
        "j",
        "Landroid/graphics/Paint;",
        "paint",
        "l",
        "Lcom/truecaller/common/ui/tooltip/TooltipDirection;",
        "f",
        "radius",
        "h",
        "notchHeight",
        "g",
        "notchWidth",
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
.field public final f:F

.field public final g:F

.field public final h:F

.field public i:F

.field public final j:Landroid/graphics/Paint;

.field public final k:Landroid/graphics/Path;

.field public l:Lcom/truecaller/common/ui/tooltip/TooltipDirection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    and-int/lit8 p2, p4, 0x2

    const/4 p2, 0x0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    const-string p4, "context"

    .line 1
    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string p3, "resources"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p4, 0x41000000    # 8.0f

    invoke-static {p2, p4}, Le/a/p5/s0/g;->y(Landroid/content/res/Resources;F)F

    move-result p2

    iput p2, p0, Le/a/b0/a/e0/b;->f:F

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p2, v0}, Le/a/p5/s0/g;->y(Landroid/content/res/Resources;F)F

    move-result p2

    iput p2, p0, Le/a/b0/a/e0/b;->g:F

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p4}, Le/a/p5/s0/g;->y(Landroid/content/res/Resources;F)F

    move-result p3

    iput p3, p0, Le/a/b0/a/e0/b;->h:F

    .line 6
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    .line 7
    sget v0, Lcom/truecaller/common/ui/R$attr;->tcx_brandBackgroundBlue:I

    invoke-static {p1, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iput-object p4, p0, Le/a/b0/a/e0/b;->j:Landroid/graphics/Paint;

    .line 9
    new-instance p4, Landroid/graphics/Path;

    invoke-direct {p4}, Landroid/graphics/Path;-><init>()V

    neg-float v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 10
    invoke-virtual {p4, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float/2addr p2, v1

    .line 11
    invoke-virtual {p4, p3, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 12
    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    .line 13
    iput-object p4, p0, Le/a/b0/a/e0/b;->k:Landroid/graphics/Path;

    .line 14
    sget-object p2, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->START:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    iput-object p2, p0, Le/a/b0/a/e0/b;->l:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    .line 15
    invoke-virtual {p0, p2}, Le/a/b0/a/e0/b;->setDirection(Lcom/truecaller/common/ui/tooltip/TooltipDirection;)V

    .line 16
    sget p2, Lcom/truecaller/common/ui/R$style;->StyleX_Text_Body_B2:I

    .line 17
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 18
    sget p2, Lcom/truecaller/common/ui/R$attr;->tcx_backgroundPrimary:I

    invoke-static {p1, p2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v0, p0, Le/a/b0/a/e0/b;->l:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    invoke-static {v0, p0}, Le/a/n/g0;->o0(Lcom/truecaller/common/ui/tooltip/TooltipDirection;Landroid/view/View;)Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 5
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 6
    :pswitch_1
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Le/a/b0/a/e0/b;->h:F

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 7
    :pswitch_2
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Le/a/b0/a/e0/b;->h:F

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 8
    :pswitch_3
    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Le/a/b0/a/e0/b;->h:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 9
    :pswitch_4
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Le/a/b0/a/e0/b;->h:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 10
    :goto_0
    iget v2, p0, Le/a/b0/a/e0/b;->f:F

    iget-object v3, p0, Le/a/b0/a/e0/b;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    packed-switch v1, :pswitch_data_1

    .line 12
    :pswitch_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 13
    :pswitch_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Le/a/b0/a/e0/b;->i:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_1

    .line 14
    :pswitch_7
    iget v1, p0, Le/a/b0/a/e0/b;->i:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 15
    :pswitch_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 16
    :pswitch_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 17
    :pswitch_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f6147ae    # 0.88f

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 18
    :pswitch_b
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3df5c28f    # 0.12f

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 19
    :pswitch_c
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 20
    :pswitch_d
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 21
    :pswitch_e
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 22
    :pswitch_f
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 23
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 24
    :pswitch_10
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_11
    const/high16 v0, 0x43870000    # 270.0f

    .line 25
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_2

    :pswitch_12
    const/high16 v0, 0x43340000    # 180.0f

    .line 26
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_2

    :pswitch_13
    const/high16 v0, 0x42b40000    # 90.0f

    .line 27
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_2

    .line 28
    :pswitch_14
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 29
    :goto_2
    iget-object v0, p0, Le/a/b0/a/e0/b;->k:Landroid/graphics/Path;

    iget-object v1, p0, Le/a/b0/a/e0/b;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 31
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_5
        :pswitch_8
        :pswitch_f
        :pswitch_9
        :pswitch_5
        :pswitch_c
        :pswitch_d
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_13
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_12
        :pswitch_10
        :pswitch_13
        :pswitch_13
        :pswitch_10
        :pswitch_13
        :pswitch_13
        :pswitch_10
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public final setColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b0/a/e0/b;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final setDirection(Lcom/truecaller/common/ui/tooltip/TooltipDirection;)V
    .locals 7

    const-string v0, "direction"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/b0/a/e0/b;->l:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Le/a/p5/s0/g;->z(Landroid/content/Context;F)I

    move-result v0

    .line 3
    sget-object v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->START:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    iget v1, p0, Le/a/b0/a/e0/b;->h:F

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v1, v0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    move v3, v2

    goto :goto_1

    .line 5
    :cond_1
    iget v3, p0, Le/a/b0/a/e0/b;->h:F

    float-to-int v3, v3

    :goto_1
    add-int/2addr v3, v0

    .line 6
    sget-object v4, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->END:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    if-ne p1, v4, :cond_2

    iget v4, p0, Le/a/b0/a/e0/b;->h:F

    float-to-int v4, v4

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    add-int/2addr v4, v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    const/16 v6, 0xc

    if-eq v5, v6, :cond_3

    const/16 v6, 0xf

    if-eq v5, v6, :cond_3

    goto :goto_3

    .line 8
    :cond_3
    iget v2, p0, Le/a/b0/a/e0/b;->h:F

    float-to-int v2, v2

    :goto_3
    add-int/2addr v0, v2

    .line 9
    invoke-virtual {p0, v1, v3, v4, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 10
    sget-object v0, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->BOTTOM:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAlignment(I)V

    :cond_4
    return-void
.end method

.method public final setNotchBias(F)V
    .locals 0

    .line 1
    iput p1, p0, Le/a/b0/a/e0/b;->i:F

    return-void
.end method
