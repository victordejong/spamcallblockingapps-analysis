.class public final Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u0015\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J/\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0019R\u001d\u0010\u001f\u001a\u00020\u001b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u0018\u0010!\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u0019\u00a8\u0006\""
    }
    d2 = {
        "Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;",
        "Landroid/view/View;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Ls1/s;",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "",
        "w",
        "h",
        "oldw",
        "oldh",
        "onSizeChanged",
        "(IIII)V",
        "color",
        "setGradientArrayRes",
        "(I)V",
        "setGradientColorRes",
        "setGradientColorInt",
        "b",
        "()V",
        "gradientColorsRes",
        "",
        "a",
        "(I)[I",
        "Ljava/lang/Integer;",
        "arrayRes",
        "Landroid/graphics/Paint;",
        "Ls1/g;",
        "getGradientPaint",
        "()Landroid/graphics/Paint;",
        "gradientPaint",
        "c",
        "colorInt",
        "acs_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Ls1/g;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget-object p1, Le/a/g/a/b/o;->b:Le/a/g/a/b/o;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;->a:Ls1/g;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    return-void
.end method

.method private final getGradientPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public final a(I)[I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "context.resources.obtain\u2026dArray(gradientColorsRes)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [I

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 4
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public final b()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;->c:Ljava/lang/Integer;

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;->b:Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 4
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;->b:Ljava/lang/Integer;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 5
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_d

    .line 6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v6, v3, v4

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v8, v3, v4

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v9, v3

    if-ne v0, v2, :cond_7

    .line 10
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v7, 0x0

    .line 11
    sget v1, Lcom/truecaller/acs/R$array;->fullscreen_acs_caller_gradient_gold:I

    invoke-virtual {p0, v1}, Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;->a(I)[I

    move-result-object v10

    const/4 v1, 0x4

    new-array v11, v1, [F

    .line 12
    fill-array-data v11, :array_0

    .line 13
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v0

    .line 14
    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_5

    :cond_7
    const/4 v2, 0x3

    if-ne v0, v1, :cond_8

    .line 15
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v7, 0x0

    .line 16
    sget v1, Lcom/truecaller/acs/R$array;->fullscreen_acs_caller_gradient_phonebook:I

    invoke-virtual {p0, v1}, Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;->a(I)[I

    move-result-object v10

    new-array v11, v2, [F

    .line 17
    fill-array-data v11, :array_1

    .line 18
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v0

    .line 19
    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_5

    .line 20
    :cond_8
    sget v1, Lcom/truecaller/acs/R$array;->fullscreen_acs_caller_gradient_spam:I

    if-ne v0, v1, :cond_9

    goto :goto_3

    .line 21
    :cond_9
    sget v1, Lcom/truecaller/acs/R$array;->fullscreen_acs_caller_gradient_priority:I

    if-ne v0, v1, :cond_a

    goto :goto_3

    .line 22
    :cond_a
    sget v1, Lcom/truecaller/acs/R$array;->fullscreen_acs_caller_gradient_verified_business:I

    if-ne v0, v1, :cond_b

    goto :goto_3

    .line 23
    :cond_b
    sget v1, Lcom/truecaller/acs/R$array;->fullscreen_acs_caller_gradient_identified:I

    if-ne v0, v1, :cond_c

    .line 24
    :goto_3
    new-instance v1, Landroid/graphics/LinearGradient;

    .line 25
    invoke-virtual {p0, v0}, Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;->a(I)[I

    move-result-object v10

    new-array v11, v2, [F

    .line 26
    fill-array-data v11, :array_2

    .line 27
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    move-object v5, v1

    .line 28
    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    :goto_4
    move-object v0, v1

    goto :goto_5

    .line 29
    :cond_c
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v7, 0x0

    const/4 v2, 0x2

    new-array v10, v2, [I

    const/4 v3, 0x0

    aput v0, v10, v3

    const/4 v0, 0x1

    aput v3, v10, v0

    new-array v11, v2, [F

    .line 30
    fill-array-data v11, :array_3

    .line 31
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v1

    .line 32
    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_4

    .line 33
    :goto_5
    invoke-direct {p0}, Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;->getGradientPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_d
    :goto_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e3851ec    # 0.18f
        0x3eb33333    # 0.35f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3ea8f5c3    # 0.33f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;->getGradientPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;->b()V

    return-void
.end method

.method public final setGradientArrayRes(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;->b:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;->c:Ljava/lang/Integer;

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;->b()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setGradientColorInt(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;->c:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;->b:Ljava/lang/Integer;

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;->b()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setGradientColorRes(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 3
    invoke-static {v0, p1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;->c:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;->b:Ljava/lang/Integer;

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;->b()V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
