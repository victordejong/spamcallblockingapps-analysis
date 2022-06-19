.class public Lcom/google/android/material/chip/Chip;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "SourceFile"

# interfaces
.implements Le/m/a/g/h/b$a;
.implements Le/m/a/g/u/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/Chip$b;
    }
.end annotation


# static fields
.field public static final t:I

.field public static final u:Landroid/graphics/Rect;

.field public static final v:[I

.field public static final w:[I


# instance fields
.field public d:Le/m/a/g/h/b;

.field public e:Landroid/graphics/drawable/InsetDrawable;

.field public f:Landroid/graphics/drawable/RippleDrawable;

.field public g:Landroid/view/View$OnClickListener;

.field public h:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:I

.field public o:I

.field public final p:Lcom/google/android/material/chip/Chip$b;

.field public final q:Landroid/graphics/Rect;

.field public final r:Landroid/graphics/RectF;

.field public final s:Le/m/a/g/r/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Chip_Action:I

    sput v0, Lcom/google/android/material/chip/Chip;->t:I

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/material/chip/Chip;->u:Landroid/graphics/Rect;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a1

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 3
    sput-object v1, Lcom/google/android/material/chip/Chip;->v:[I

    new-array v0, v0, [I

    const v1, 0x101009f

    aput v1, v0, v3

    .line 4
    sput-object v0, Lcom/google/android/material/chip/Chip;->w:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    .line 1
    sget v8, Lcom/google/android/material/R$attr;->chipStyle:I

    .line 2
    sget v9, Lcom/google/android/material/chip/Chip;->t:I

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, Le/m/a/g/z/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->q:Landroid/graphics/Rect;

    .line 4
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->r:Landroid/graphics/RectF;

    .line 5
    new-instance v1, Lcom/google/android/material/chip/Chip$a;

    invoke-direct {v1, v0}, Lcom/google/android/material/chip/Chip$a;-><init>(Lcom/google/android/material/chip/Chip;)V

    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->s:Le/m/a/g/r/d;

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x1

    const v12, 0x800013

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "background"

    .line 7
    invoke-interface {v7, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "drawableLeft"

    .line 8
    invoke-interface {v7, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    const-string v2, "drawableStart"

    .line 9
    invoke-interface {v7, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    const-string v2, "drawableEnd"

    .line 10
    invoke-interface {v7, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Please set end drawable using R.attr#closeIcon."

    if-nez v2, :cond_10

    const-string v2, "drawableRight"

    .line 11
    invoke-interface {v7, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    const-string v2, "singleLine"

    .line 12
    invoke-interface {v7, v1, v2, v11}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "lines"

    .line 13
    invoke-interface {v7, v1, v2, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v11, :cond_e

    const-string v2, "minLines"

    .line 14
    invoke-interface {v7, v1, v2, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v11, :cond_e

    const-string v2, "maxLines"

    .line 15
    invoke-interface {v7, v1, v2, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v11, :cond_e

    const-string v2, "gravity"

    .line 16
    invoke-interface {v7, v1, v2, v12}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 17
    :goto_0
    new-instance v13, Le/m/a/g/h/b;

    invoke-direct {v13, v10, v7, v8, v9}, Le/m/a/g/h/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 18
    iget-object v1, v13, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    sget-object v14, Lcom/google/android/material/R$styleable;->Chip:[I

    const/4 v15, 0x0

    new-array v6, v15, [I

    move-object/from16 v2, p2

    move-object v3, v14

    move v4, v8

    move v5, v9

    .line 19
    invoke-static/range {v1 .. v6}, Le/m/a/g/o/n;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 20
    sget v6, Lcom/google/android/material/R$styleable;->Chip_shapeAppearance:I

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    iput-boolean v2, v13, Le/m/a/g/h/b;->Q0:Z

    .line 21
    iget-object v2, v13, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    sget v3, Lcom/google/android/material/R$styleable;->Chip_chipSurfaceColor:I

    .line 22
    invoke-static {v2, v1, v3}, Ln3/g0/y;->d0(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 23
    iget-object v3, v13, Le/m/a/g/h/b;->y:Landroid/content/res/ColorStateList;

    if-eq v3, v2, :cond_1

    .line 24
    iput-object v2, v13, Le/m/a/g/h/b;->y:Landroid/content/res/ColorStateList;

    .line 25
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v13, v2}, Le/m/a/g/h/b;->onStateChange([I)Z

    .line 26
    :cond_1
    iget-object v2, v13, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    sget v3, Lcom/google/android/material/R$styleable;->Chip_chipBackgroundColor:I

    .line 27
    invoke-static {v2, v1, v3}, Ln3/g0/y;->d0(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 28
    invoke-virtual {v13, v2}, Le/m/a/g/h/b;->S(Landroid/content/res/ColorStateList;)V

    .line 29
    sget v2, Lcom/google/android/material/R$styleable;->Chip_chipMinHeight:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v13, v2}, Le/m/a/g/h/b;->Z(F)V

    .line 30
    sget v2, Lcom/google/android/material/R$styleable;->Chip_chipCornerRadius:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 31
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v13, v2}, Le/m/a/g/h/b;->T(F)V

    .line 32
    :cond_2
    iget-object v2, v13, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    sget v4, Lcom/google/android/material/R$styleable;->Chip_chipStrokeColor:I

    .line 33
    invoke-static {v2, v1, v4}, Ln3/g0/y;->d0(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 34
    invoke-virtual {v13, v2}, Le/m/a/g/h/b;->b0(Landroid/content/res/ColorStateList;)V

    .line 35
    sget v2, Lcom/google/android/material/R$styleable;->Chip_chipStrokeWidth:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v13, v2}, Le/m/a/g/h/b;->c0(F)V

    .line 36
    iget-object v2, v13, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    sget v4, Lcom/google/android/material/R$styleable;->Chip_rippleColor:I

    invoke-static {v2, v1, v4}, Ln3/g0/y;->d0(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v13, v2}, Le/m/a/g/h/b;->m0(Landroid/content/res/ColorStateList;)V

    .line 37
    sget v2, Lcom/google/android/material/R$styleable;->Chip_android_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v13, v2}, Le/m/a/g/h/b;->n0(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v2, v13, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    sget v4, Lcom/google/android/material/R$styleable;->Chip_android_textAppearance:I

    .line 39
    invoke-static {v2, v1, v4}, Ln3/g0/y;->D0(Landroid/content/Context;Landroid/content/res/TypedArray;I)Le/m/a/g/r/b;

    move-result-object v2

    .line 40
    sget v4, Lcom/google/android/material/R$styleable;->Chip_android_textSize:I

    iget v5, v2, Le/m/a/g/r/b;->k:F

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 41
    iput v4, v2, Le/m/a/g/r/b;->k:F

    .line 42
    iget-object v4, v13, Le/m/a/g/h/b;->v0:Le/m/a/g/o/l;

    iget-object v5, v13, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-virtual {v4, v2, v5}, Le/m/a/g/o/l;->b(Le/m/a/g/r/b;Landroid/content/Context;)V

    .line 43
    sget v2, Lcom/google/android/material/R$styleable;->Chip_android_ellipsize:I

    invoke-virtual {v1, v2, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-eq v2, v11, :cond_5

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    goto :goto_1

    .line 44
    :cond_3
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 45
    iput-object v2, v13, Le/m/a/g/h/b;->N0:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    .line 46
    :cond_4
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 47
    iput-object v2, v13, Le/m/a/g/h/b;->N0:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    .line 48
    :cond_5
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 49
    iput-object v2, v13, Le/m/a/g/h/b;->N0:Landroid/text/TextUtils$TruncateAt;

    .line 50
    :goto_1
    sget v2, Lcom/google/android/material/R$styleable;->Chip_chipIconVisible:I

    invoke-virtual {v1, v2, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v13, v2}, Le/m/a/g/h/b;->Y(Z)V

    const-string v2, "http://schemas.android.com/apk/res-auto"

    if-eqz v7, :cond_6

    const-string v4, "chipIconEnabled"

    .line 51
    invoke-interface {v7, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v4, "chipIconVisible"

    .line 52
    invoke-interface {v7, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    .line 53
    sget v4, Lcom/google/android/material/R$styleable;->Chip_chipIconEnabled:I

    invoke-virtual {v1, v4, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v13, v4}, Le/m/a/g/h/b;->Y(Z)V

    .line 54
    :cond_6
    iget-object v4, v13, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    sget v5, Lcom/google/android/material/R$styleable;->Chip_chipIcon:I

    invoke-static {v4, v1, v5}, Ln3/g0/y;->k0(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v13, v4}, Le/m/a/g/h/b;->V(Landroid/graphics/drawable/Drawable;)V

    .line 55
    sget v4, Lcom/google/android/material/R$styleable;->Chip_chipIconTint:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 56
    iget-object v5, v13, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    .line 57
    invoke-static {v5, v1, v4}, Ln3/g0/y;->d0(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 58
    invoke-virtual {v13, v4}, Le/m/a/g/h/b;->X(Landroid/content/res/ColorStateList;)V

    .line 59
    :cond_7
    sget v4, Lcom/google/android/material/R$styleable;->Chip_chipIconSize:I

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v13, v4}, Le/m/a/g/h/b;->W(F)V

    .line 60
    sget v4, Lcom/google/android/material/R$styleable;->Chip_closeIconVisible:I

    invoke-virtual {v1, v4, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v13, v4}, Le/m/a/g/h/b;->j0(Z)V

    if-eqz v7, :cond_8

    const-string v4, "closeIconEnabled"

    .line 61
    invoke-interface {v7, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    const-string v4, "closeIconVisible"

    .line 62
    invoke-interface {v7, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    .line 63
    sget v4, Lcom/google/android/material/R$styleable;->Chip_closeIconEnabled:I

    invoke-virtual {v1, v4, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v13, v4}, Le/m/a/g/h/b;->j0(Z)V

    .line 64
    :cond_8
    iget-object v4, v13, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    sget v5, Lcom/google/android/material/R$styleable;->Chip_closeIcon:I

    invoke-static {v4, v1, v5}, Ln3/g0/y;->k0(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v13, v4}, Le/m/a/g/h/b;->d0(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v4, v13, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    sget v5, Lcom/google/android/material/R$styleable;->Chip_closeIconTint:I

    .line 66
    invoke-static {v4, v1, v5}, Ln3/g0/y;->d0(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 67
    invoke-virtual {v13, v4}, Le/m/a/g/h/b;->i0(Landroid/content/res/ColorStateList;)V

    .line 68
    sget v4, Lcom/google/android/material/R$styleable;->Chip_closeIconSize:I

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v13, v4}, Le/m/a/g/h/b;->f0(F)V

    .line 69
    sget v4, Lcom/google/android/material/R$styleable;->Chip_android_checkable:I

    invoke-virtual {v1, v4, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v13, v4}, Le/m/a/g/h/b;->O(Z)V

    .line 70
    sget v4, Lcom/google/android/material/R$styleable;->Chip_checkedIconVisible:I

    invoke-virtual {v1, v4, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v13, v4}, Le/m/a/g/h/b;->R(Z)V

    if-eqz v7, :cond_9

    const-string v4, "checkedIconEnabled"

    .line 71
    invoke-interface {v7, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v4, "checkedIconVisible"

    .line 72
    invoke-interface {v7, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    .line 73
    sget v2, Lcom/google/android/material/R$styleable;->Chip_checkedIconEnabled:I

    invoke-virtual {v1, v2, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v13, v2}, Le/m/a/g/h/b;->R(Z)V

    .line 74
    :cond_9
    iget-object v2, v13, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    sget v4, Lcom/google/android/material/R$styleable;->Chip_checkedIcon:I

    invoke-static {v2, v1, v4}, Ln3/g0/y;->k0(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v13, v2}, Le/m/a/g/h/b;->P(Landroid/graphics/drawable/Drawable;)V

    .line 75
    sget v2, Lcom/google/android/material/R$styleable;->Chip_checkedIconTint:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 76
    iget-object v4, v13, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    .line 77
    invoke-static {v4, v1, v2}, Ln3/g0/y;->d0(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 78
    invoke-virtual {v13, v2}, Le/m/a/g/h/b;->Q(Landroid/content/res/ColorStateList;)V

    .line 79
    :cond_a
    iget-object v2, v13, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    sget v4, Lcom/google/android/material/R$styleable;->Chip_showMotionSpec:I

    invoke-static {v2, v1, v4}, Le/m/a/g/a/g;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Le/m/a/g/a/g;

    move-result-object v2

    .line 80
    iput-object v2, v13, Le/m/a/g/h/b;->Z:Le/m/a/g/a/g;

    .line 81
    iget-object v2, v13, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    sget v4, Lcom/google/android/material/R$styleable;->Chip_hideMotionSpec:I

    invoke-static {v2, v1, v4}, Le/m/a/g/a/g;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Le/m/a/g/a/g;

    move-result-object v2

    .line 82
    iput-object v2, v13, Le/m/a/g/h/b;->g0:Le/m/a/g/a/g;

    .line 83
    sget v2, Lcom/google/android/material/R$styleable;->Chip_chipStartPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v13, v2}, Le/m/a/g/h/b;->a0(F)V

    .line 84
    sget v2, Lcom/google/android/material/R$styleable;->Chip_iconStartPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v13, v2}, Le/m/a/g/h/b;->l0(F)V

    .line 85
    sget v2, Lcom/google/android/material/R$styleable;->Chip_iconEndPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v13, v2}, Le/m/a/g/h/b;->k0(F)V

    .line 86
    sget v2, Lcom/google/android/material/R$styleable;->Chip_textStartPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v13, v2}, Le/m/a/g/h/b;->p0(F)V

    .line 87
    sget v2, Lcom/google/android/material/R$styleable;->Chip_textEndPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v13, v2}, Le/m/a/g/h/b;->o0(F)V

    .line 88
    sget v2, Lcom/google/android/material/R$styleable;->Chip_closeIconStartPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v13, v2}, Le/m/a/g/h/b;->g0(F)V

    .line 89
    sget v2, Lcom/google/android/material/R$styleable;->Chip_closeIconEndPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v13, v2}, Le/m/a/g/h/b;->e0(F)V

    .line 90
    sget v2, Lcom/google/android/material/R$styleable;->Chip_chipEndPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v13, v2}, Le/m/a/g/h/b;->U(F)V

    .line 91
    sget v2, Lcom/google/android/material/R$styleable;->Chip_android_maxWidth:I

    const v3, 0x7fffffff

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 92
    iput v2, v13, Le/m/a/g/h/b;->P0:I

    .line 93
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-array v5, v15, [I

    .line 94
    invoke-static {v10, v7, v8, v9}, Le/m/a/g/o/n;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v1, v10

    move-object/from16 v2, p2

    move-object v3, v14

    move v4, v8

    move-object/from16 v16, v5

    move v5, v9

    move v12, v6

    move-object/from16 v6, v16

    .line 95
    invoke-static/range {v1 .. v6}, Le/m/a/g/o/n;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 96
    invoke-virtual {v10, v7, v14, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 97
    sget v2, Lcom/google/android/material/R$styleable;->Chip_ensureMinTouchTargetSize:I

    invoke-virtual {v1, v2, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/chip/Chip;->m:Z

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x30

    invoke-static {v2, v3}, Ln3/g0/y;->P(Landroid/content/Context;I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 99
    sget v3, Lcom/google/android/material/R$styleable;->Chip_chipMinTouchTargetSize:I

    .line 100
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-double v2, v2

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lcom/google/android/material/chip/Chip;->o:I

    .line 102
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    invoke-virtual {v0, v13}, Lcom/google/android/material/chip/Chip;->setChipDrawable(Le/m/a/g/h/b;)V

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getElevation()F

    move-result v1

    .line 105
    invoke-virtual {v13, v1}, Le/m/a/g/u/h;->p(F)V

    new-array v6, v15, [I

    .line 106
    invoke-static {v10, v7, v8, v9}, Le/m/a/g/o/n;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v1, v10

    move-object/from16 v2, p2

    move-object v3, v14

    .line 107
    invoke-static/range {v1 .. v6}, Le/m/a/g/o/n;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 108
    invoke-virtual {v10, v7, v14, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 109
    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    .line 110
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    new-instance v1, Lcom/google/android/material/chip/Chip$b;

    invoke-direct {v1, v0, v0}, Lcom/google/android/material/chip/Chip$b;-><init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V

    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->p:Lcom/google/android/material/chip/Chip$b;

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/Chip;->h()V

    if-nez v2, :cond_b

    .line 113
    new-instance v1, Le/m/a/g/h/a;

    invoke-direct {v1, v0}, Le/m/a/g/h/a;-><init>(Lcom/google/android/material/chip/Chip;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 114
    :cond_b
    iget-boolean v1, v0, Lcom/google/android/material/chip/Chip;->i:Z

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 115
    iget-object v1, v13, Le/m/a/g/h/b;->J:Ljava/lang/CharSequence;

    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, v13, Le/m/a/g/h/b;->N0:Landroid/text/TextUtils$TruncateAt;

    .line 118
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/Chip;->k()V

    .line 120
    iget-object v1, v0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    .line 121
    iget-boolean v1, v1, Le/m/a/g/h/b;->O0:Z

    if-nez v1, :cond_c

    .line 122
    invoke-virtual {v0, v11}, Lcom/google/android/material/chip/Chip;->setLines(I)V

    .line 123
    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setHorizontallyScrolling(Z)V

    :cond_c
    const v1, 0x800013

    .line 124
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setGravity(I)V

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/Chip;->j()V

    .line 126
    iget-boolean v1, v0, Lcom/google/android/material/chip/Chip;->m:Z

    if-eqz v1, :cond_d

    .line 127
    iget v1, v0, Lcom/google/android/material/chip/Chip;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setMinHeight(I)V

    .line 128
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    .line 129
    iput v1, v0, Lcom/google/android/material/chip/Chip;->n:I

    return-void

    .line 130
    :cond_e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Chip does not support multi-line text"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_10
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_11
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_12
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic b(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private getCloseIconTouchBounds()Landroid/graphics/RectF;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->r:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->r:Landroid/graphics/RectF;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Le/m/a/g/h/b;->F(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->r:Landroid/graphics/RectF;

    return-object v0
.end method

.method private getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->q:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getTextAppearance()Le/m/a/g/r/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/m/a/g/h/b;->v0:Le/m/a/g/o/l;

    .line 3
    iget-object v0, v0, Le/m/a/g/o/l;->f:Le/m/a/g/r/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private setCloseIconHovered(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->k:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/CheckBox;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method private setCloseIconPressed(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->j:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->j:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/CheckBox;->refreshDrawableState()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/Chip;->o:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->d(I)Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/CheckBox;->requestLayout()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidateOutline()V

    return-void
.end method

.method public d(I)Z
    .locals 9

    .line 1
    iput p1, p0, Lcom/google/android/material/chip/Chip;->o:I

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->m:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Le/m/a/g/s/a;->a:[I

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->i()V

    :goto_0
    return v1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    .line 8
    iget v0, v0, Le/m/a/g/h/b;->A:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    .line 9
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 10
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    invoke-virtual {v2}, Le/m/a/g/h/b;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gtz v2, :cond_3

    if-gtz v0, :cond_3

    .line 11
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    goto :goto_1

    .line 13
    :cond_2
    sget-object p1, Le/m/a/g/s/a;->a:[I

    .line 14
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->i()V

    :goto_1
    return v1

    :cond_3
    if-lez v2, :cond_4

    .line 15
    div-int/lit8 v2, v2, 0x2

    move v7, v2

    goto :goto_2

    :cond_4
    move v7, v1

    :goto_2
    if-lez v0, :cond_5

    .line 16
    div-int/lit8 v1, v0, 0x2

    :cond_5
    move v8, v1

    .line 17
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Landroid/graphics/drawable/InsetDrawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 19
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->e:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 20
    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ne v2, v8, :cond_6

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v8, :cond_6

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ne v2, v7, :cond_6

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, v7, :cond_6

    .line 21
    sget-object p1, Le/m/a/g/s/a;->a:[I

    .line 22
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->i()V

    return v1

    .line 23
    :cond_6
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getMinHeight()I

    move-result v0

    if-eq v0, p1, :cond_7

    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setMinHeight(I)V

    .line 25
    :cond_7
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getMinWidth()I

    move-result v0

    if-eq v0, p1, :cond_8

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setMinWidth(I)V

    .line 27
    :cond_8
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    iget-object v4, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    move-object v3, p1

    move v5, v7

    move v6, v8

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Landroid/graphics/drawable/InsetDrawable;

    .line 28
    sget-object p1, Le/m/a/g/s/a;->a:[I

    .line 29
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->i()V

    return v1
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    const-class v0, Ln3/m/a/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    :try_start_0
    const-string v1, "m"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->p:Lcom/google/android/material/chip/Chip$b;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    const-string v1, "z"

    new-array v5, v3, [Ljava/lang/Class;

    .line 5
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    .line 6
    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 8
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->p:Lcom/google/android/material/chip/Chip$b;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v4

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    :cond_0
    move v0, v4

    :goto_0
    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->p:Lcom/google/android/material/chip/Chip$b;

    .line 10
    invoke-virtual {v0, p1}, Ln3/m/a/a;->n(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :cond_2
    :goto_1
    return v3
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->p:Lcom/google/android/material/chip/Chip$b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    if-eq v1, v2, :cond_8

    .line 4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v5, 0x3d

    const/4 v6, 0x0

    if-eq v1, v5, :cond_6

    const/16 v5, 0x42

    if-eq v1, v5, :cond_4

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 5
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x13

    if-eq v1, v7, :cond_1

    const/16 v7, 0x15

    if-eq v1, v7, :cond_0

    const/16 v7, 0x16

    if-eq v1, v7, :cond_2

    const/16 v5, 0x82

    goto :goto_0

    :cond_0
    const/16 v5, 0x11

    goto :goto_0

    :cond_1
    const/16 v5, 0x21

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    add-int/2addr v1, v2

    move v7, v3

    :goto_1
    if-ge v3, v1, :cond_3

    .line 7
    invoke-virtual {v0, v5, v6}, Ln3/m/a/a;->r(ILandroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v3, v3, 0x1

    move v7, v2

    goto :goto_1

    :cond_3
    move v3, v7

    goto :goto_2

    .line 8
    :cond_4
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 10
    iget v1, v0, Ln3/m/a/a;->l:I

    if-eq v1, v4, :cond_5

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v3, v6}, Lcom/google/android/material/chip/Chip$b;->t(IILandroid/os/Bundle;)Z

    :cond_5
    move v3, v2

    goto :goto_2

    .line 11
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    .line 12
    invoke-virtual {v0, v1, v6}, Ln3/m/a/a;->r(ILandroid/graphics/Rect;)Z

    move-result v3

    goto :goto_2

    .line 13
    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 14
    invoke-virtual {v0, v2, v6}, Ln3/m/a/a;->r(ILandroid/graphics/Rect;)Z

    move-result v3

    :cond_8
    :goto_2
    if-eqz v3, :cond_9

    .line 15
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->p:Lcom/google/android/material/chip/Chip$b;

    .line 16
    iget v0, v0, Ln3/m/a/a;->l:I

    if-eq v0, v4, :cond_9

    return v2

    .line 17
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public drawableStateChanged()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 3
    iget-object v0, v0, Le/m/a/g/h/b;->Q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Le/m/a/g/h/b;->L(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    .line 5
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v2

    .line 6
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->l:Z

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 7
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 8
    :cond_1
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->j:Z

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 10
    :cond_3
    new-array v2, v2, [I

    .line 11
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x101009e

    .line 12
    aput v3, v2, v1

    const/4 v1, 0x1

    .line 13
    :cond_4
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->l:Z

    if-eqz v3, :cond_5

    const v3, 0x101009c

    .line 14
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    .line 15
    :cond_5
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eqz v3, :cond_6

    const v3, 0x1010367

    .line 16
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    .line 17
    :cond_6
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->j:Z

    if-eqz v3, :cond_7

    const v3, 0x10100a7

    .line 18
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    .line 19
    :cond_7
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x10100a1

    .line 20
    aput v3, v2, v1

    .line 21
    :cond_8
    invoke-virtual {v0, v2}, Le/m/a/g/h/b;->h0([I)Z

    move-result v1

    :cond_9
    if-eqz v1, :cond_a

    .line 22
    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    :cond_a
    return-void
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/m/a/g/h/b;->I()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Le/m/a/g/h/b;->V:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Landroid/graphics/drawable/InsetDrawable;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setMinWidth(I)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getChipMinHeight()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setMinHeight(I)V

    .line 5
    sget-object v0, Le/m/a/g/s/a;->a:[I

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->i()V

    :cond_0
    return-void
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    :cond_0
    return-object v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/m/a/g/h/b;->X:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/m/a/g/h/b;->Y:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/m/a/g/h/b;->z:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChipCornerRadius()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/m/a/g/h/b;->H()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_0
    return v1
.end method

.method public getChipDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    return-object v0
.end method

.method public getChipEndPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Le/m/a/g/h/b;->o0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/m/a/g/h/b;->L:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->I1(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChipIconSize()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Le/m/a/g/h/b;->N:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/m/a/g/h/b;->M:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChipMinHeight()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Le/m/a/g/h/b;->A:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipStartPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Le/m/a/g/h/b;->h0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/m/a/g/h/b;->C:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChipStrokeWidth()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Le/m/a/g/h/b;->D:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/m/a/g/h/b;->I()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/m/a/g/h/b;->U:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCloseIconEndPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Le/m/a/g/h/b;->n0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCloseIconSize()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Le/m/a/g/h/b;->T:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCloseIconStartPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Le/m/a/g/h/b;->m0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/m/a/g/h/b;->S:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/m/a/g/h/b;->N0:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->p:Lcom/google/android/material/chip/Chip$b;

    .line 2
    iget v1, v0, Ln3/m/a/a;->l:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 3
    iget v0, v0, Ln3/m/a/a;->k:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    return-void
.end method

.method public getHideMotionSpec()Le/m/a/g/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/m/a/g/h/b;->g0:Le/m/a/g/a/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIconEndPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Le/m/a/g/h/b;->j0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIconStartPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Le/m/a/g/h/b;->i0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/m/a/g/h/b;->E:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getShapeAppearanceModel()Le/m/a/g/u/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    .line 2
    iget-object v0, v0, Le/m/a/g/u/h;->a:Le/m/a/g/u/h$b;

    iget-object v0, v0, Le/m/a/g/u/h$b;->a:Le/m/a/g/u/l;

    return-object v0
.end method

.method public getShowMotionSpec()Le/m/a/g/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/m/a/g/h/b;->Z:Le/m/a/g/a/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTextEndPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Le/m/a/g/h/b;->l0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTextStartPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Le/m/a/g/h/b;->k0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, v0, Le/m/a/g/h/b;->P:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->p:Lcom/google/android/material/chip/Chip$b;

    invoke-static {p0, v0}, Ln3/k/i/s;->q(Landroid/view/View;Ln3/k/i/a;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0}, Ln3/k/i/s;->q(Landroid/view/View;Ln3/k/i/a;)V

    :goto_1
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    .line 2
    iget-object v1, v1, Le/m/a/g/h/b;->E:Landroid/content/res/ColorStateList;

    .line 3
    invoke-static {v1}, Le/m/a/g/s/a;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/RippleDrawable;

    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/m/a/g/h/b;->q0(Z)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/RippleDrawable;

    .line 7
    sget-object v1, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->j()V

    return-void
.end method

.method public final j()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v1, v0, Le/m/a/g/h/b;->o0:F

    .line 3
    iget v2, v0, Le/m/a/g/h/b;->l0:F

    add-float/2addr v1, v2

    .line 4
    invoke-virtual {v0}, Le/m/a/g/h/b;->G()F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    .line 6
    iget v2, v1, Le/m/a/g/h/b;->h0:F

    .line 7
    iget v3, v1, Le/m/a/g/h/b;->k0:F

    add-float/2addr v2, v3

    .line 8
    invoke-virtual {v1}, Le/m/a/g/h/b;->D()F

    move-result v1

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 9
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->e:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v2, :cond_1

    .line 10
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 11
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->e:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 12
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    .line 13
    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v3

    .line 15
    sget-object v4, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Le/m/a/g/r/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->s:Le/m/a/g/r/d;

    invoke-virtual {v1, v2, v0, v3}, Le/m/a/g/r/b;->e(Landroid/content/Context;Landroid/text/TextPaint;Le/m/a/g/r/d;)V

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/CheckBox;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    invoke-static {p0, v0}, Ln3/g0/y;->S1(Landroid/view/View;Le/m/a/g/u/h;)V

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/android/material/chip/Chip;->v:[I

    invoke-static {p1, v0}, Landroid/widget/CheckBox;->mergeDrawableStates([I[I)[I

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/google/android/material/chip/Chip;->w:[I

    invoke-static {p1, v0}, Landroid/widget/CheckBox;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CheckBox;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->p:Lcom/google/android/material/chip/Chip$b;

    .line 3
    iget v1, v0, Ln3/m/a/a;->l:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ln3/m/a/a;->k(I)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0, p2, p3}, Ln3/m/a/a;->r(ILandroid/graphics/Rect;)Z

    :cond_1
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    .line 4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.view.View"

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.widget.CompoundButton"

    goto :goto_1

    :cond_2
    const-string v0, "android.widget.Button"

    .line 5
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 6
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/chip/ChipGroup;

    if-eqz v0, :cond_8

    .line 9
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    .line 10
    iget-boolean v1, v0, Le/m/a/g/o/d;->c:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    move v3, v1

    .line 11
    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/google/android/material/chip/Chip;

    if-eqz v4, :cond_4

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/chip/Chip;

    if-ne v4, p0, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move v3, v2

    :goto_4
    move v6, v3

    goto :goto_5

    :cond_6
    move v6, v2

    .line 14
    :goto_5
    sget v0, Lcom/google/android/material/R$id;->row_index_key:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 15
    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_7

    goto :goto_6

    .line 16
    :cond_7
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_6
    move v4, v2

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 17
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    .line 18
    invoke-static/range {v4 .. v9}, Ln3/k/i/f0/b$c;->a(IIIIZZ)Ln3/k/i/f0/b$c;

    move-result-object v0

    .line 19
    iget-object v0, v0, Ln3/k/i/f0/b$c;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    :cond_8
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onRtlPropertiesChanged(I)V

    .line 2
    iget v0, p0, Lcom/google/android/material/chip/Chip;->n:I

    if-eq v0, p1, :cond_0

    .line 3
    iput p1, p0, Lcom/google/android/material/chip/Chip;->n:I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->j()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_2

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->j:Z

    if-eqz v0, :cond_6

    if-nez v1, :cond_5

    .line 4
    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_1

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->j:Z

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 7
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->p:Lcom/google/android/material/chip/Chip$b;

    invoke-virtual {v0, v3, v3}, Ln3/m/a/a;->y(II)Z

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    .line 10
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_6

    .line 11
    invoke-direct {p0, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    :cond_5
    :goto_1
    move v0, v3

    goto :goto_3

    :cond_6
    :goto_2
    move v0, v2

    :goto_3
    if-nez v0, :cond_7

    .line 12
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    move v2, v3

    :cond_8
    return v2
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->O(Z)V

    :cond_0
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->O(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-nez v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->i:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, v0, Le/m/a/g/h/b;->V:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 5
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eq v0, p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0, p0, p1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->P(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(Z)V

    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(I)V

    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-static {v1, p1}, Ln3/b/b/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->P(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->Q(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconTintResource(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    .line 3
    sget-object v2, Ln3/b/b/a/a;->a:Ljava/lang/ThreadLocal;

    .line 4
    invoke-virtual {v1, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->Q(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->R(Z)V

    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->R(Z)V

    :cond_0
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->z:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 3
    iput-object p1, v0, Le/m/a/g/h/b;->z:Landroid/content/res/ColorStateList;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    .line 3
    sget-object v2, Ln3/b/b/a/a;->a:Ljava/lang/ThreadLocal;

    .line 4
    invoke-virtual {v1, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->S(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->T(F)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->T(F)V

    :cond_0
    return-void
.end method

.method public setChipDrawable(Le/m/a/g/h/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Le/m/a/g/h/b;->M0:Ljava/lang/ref/WeakReference;

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Le/m/a/g/h/b;->O0:Z

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Le/m/a/g/h/b;->M0:Ljava/lang/ref/WeakReference;

    .line 7
    iget p1, p0, Lcom/google/android/material/chip/Chip;->o:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->d(I)Z

    :cond_1
    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget v1, v0, Le/m/a/g/h/b;->o0:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 3
    iput p1, v0, Le/m/a/g/h/b;->o0:F

    .line 4
    invoke-virtual {v0}, Le/m/a/g/u/h;->invalidateSelf()V

    .line 5
    invoke-virtual {v0}, Le/m/a/g/h/b;->M()V

    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->U(F)V

    :cond_0
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->V(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(I)V

    return-void
.end method

.method public setChipIconResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-static {v1, p1}, Ln3/b/b/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->V(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChipIconSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->W(F)V

    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->W(F)V

    :cond_0
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->X(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipIconTintResource(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    .line 3
    sget-object v2, Ln3/b/b/a/a;->a:Ljava/lang/ThreadLocal;

    .line 4
    invoke-virtual {v1, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->X(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipIconVisible(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->Y(Z)V

    :cond_0
    return-void
.end method

.method public setChipIconVisible(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->Y(Z)V

    :cond_0
    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget v1, v0, Le/m/a/g/h/b;->A:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 3
    iput p1, v0, Le/m/a/g/h/b;->A:F

    .line 4
    invoke-virtual {v0}, Le/m/a/g/u/h;->invalidateSelf()V

    .line 5
    invoke-virtual {v0}, Le/m/a/g/h/b;->M()V

    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->Z(F)V

    :cond_0
    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget v1, v0, Le/m/a/g/h/b;->h0:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 3
    iput p1, v0, Le/m/a/g/h/b;->h0:F

    .line 4
    invoke-virtual {v0}, Le/m/a/g/u/h;->invalidateSelf()V

    .line 5
    invoke-virtual {v0}, Le/m/a/g/h/b;->M()V

    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->a0(F)V

    :cond_0
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->b0(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    .line 3
    sget-object v2, Ln3/b/b/a/a;->a:Ljava/lang/ThreadLocal;

    .line 4
    invoke-virtual {v1, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->b0(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->c0(F)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->c0(F)V

    :cond_0
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChipTextResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->d0(Landroid/graphics/drawable/Drawable;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->h()V

    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->U:Ljava/lang/CharSequence;

    if-eq v1, p1, :cond_0

    .line 3
    invoke-static {}, Ln3/k/g/a;->c()Ln3/k/g/a;

    move-result-object v1

    .line 4
    iget-object v2, v1, Ln3/k/g/a;->c:Ln3/k/g/c;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Ln3/k/g/a;->e(Ljava/lang/CharSequence;Ln3/k/g/c;Z)Ljava/lang/CharSequence;

    move-result-object p1

    .line 5
    iput-object p1, v0, Le/m/a/g/h/b;->U:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {v0}, Le/m/a/g/u/h;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(I)V

    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->e0(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->e0(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-static {v1, p1}, Ln3/b/b/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->d0(Landroid/graphics/drawable/Drawable;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->h()V

    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->f0(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->f0(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->g0(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->g0(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->i0(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    .line 3
    sget-object v2, Ln3/b/b/a/a;->a:Ljava/lang/ThreadLocal;

    .line 4
    invoke-virtual {v1, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->i0(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCloseIconVisible(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconVisible(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->j0(Z)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->h()V

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set right drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElevation(F)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setElevation(F)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Le/m/a/g/u/h;->a:Le/m/a/g/u/h$b;

    iget v2, v1, Le/m/a/g/u/h$b;->o:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    .line 4
    iput p1, v1, Le/m/a/g/u/h$b;->o:F

    .line 5
    invoke-virtual {v0}, Le/m/a/g/u/h;->A()V

    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p1, v0, :cond_2

    .line 3
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_1

    .line 5
    iput-object p1, v0, Le/m/a/g/h/b;->N0:Landroid/text/TextUtils$TruncateAt;

    :cond_1
    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Text within a chip are not allowed to scroll."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->m:Z

    .line 2
    iget p1, p0, Lcom/google/android/material/chip/Chip;->o:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->d(I)Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    const v0, 0x800013

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setGravity(I)V

    :goto_0
    return-void
.end method

.method public setHideMotionSpec(Le/m/a/g/a/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, v0, Le/m/a/g/h/b;->g0:Le/m/a/g/a/g;

    :cond_0
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-static {v1, p1}, Le/m/a/g/a/g;->b(Landroid/content/Context;I)Le/m/a/g/a/g;

    move-result-object p1

    .line 3
    iput-object p1, v0, Le/m/a/g/h/b;->g0:Le/m/a/g/a/g;

    :cond_0
    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->k0(F)V

    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->k0(F)V

    :cond_0
    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->l0(F)V

    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->l0(F)V

    :cond_0
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setLayoutDirection(I)V

    return-void
.end method

.method public setLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setLines(I)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setMaxLines(I)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setMaxWidth(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 3
    iput p1, v0, Le/m/a/g/h/b;->P0:I

    :cond_0
    return-void
.end method

.method public setMinLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setMinLines(I)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/view/View$OnClickListener;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->h()V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->m0(Landroid/content/res/ColorStateList;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    .line 4
    iget-boolean p1, p1, Le/m/a/g/h/b;->K0:Z

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->i()V

    :cond_1
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    .line 3
    sget-object v2, Ln3/b/b/a/a;->a:Ljava/lang/ThreadLocal;

    .line 4
    invoke-virtual {v1, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->m0(Landroid/content/res/ColorStateList;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    .line 7
    iget-boolean p1, p1, Le/m/a/g/h/b;->K0:Z

    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->i()V

    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Le/m/a/g/u/l;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    .line 2
    iget-object v1, v0, Le/m/a/g/u/h;->a:Le/m/a/g/u/h$b;

    iput-object p1, v1, Le/m/a/g/u/h$b;->a:Le/m/a/g/u/l;

    .line 3
    invoke-virtual {v0}, Le/m/a/g/u/h;->invalidateSelf()V

    return-void
.end method

.method public setShowMotionSpec(Le/m/a/g/a/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, v0, Le/m/a/g/h/b;->Z:Le/m/a/g/a/g;

    :cond_0
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-static {v1, p1}, Le/m/a/g/a/g;->b(Landroid/content/Context;I)Le/m/a/g/a/g;

    move-result-object p1

    .line 3
    iput-object p1, v0, Le/m/a/g/h/b;->Z:Le/m/a/g/a/g;

    :cond_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setSingleLine(Z)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 2
    :cond_1
    iget-boolean v0, v0, Le/m/a/g/h/b;->O0:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 3
    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4
    iget-object p2, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz p2, :cond_3

    .line 5
    invoke-virtual {p2, p1}, Le/m/a/g/h/b;->n0(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 3

    .line 9
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setTextAppearance(I)V

    .line 10
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 11
    new-instance v1, Le/m/a/g/r/b;

    iget-object v2, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Le/m/a/g/r/b;-><init>(Landroid/content/Context;I)V

    .line 12
    iget-object p1, v0, Le/m/a/g/h/b;->v0:Le/m/a/g/o/l;

    iget-object v0, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Le/m/a/g/o/l;->b(Le/m/a/g/r/b;Landroid/content/Context;)V

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->k()V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 2

    .line 4
    invoke-super {p0, p1, p2}, Landroid/widget/CheckBox;->setTextAppearance(Landroid/content/Context;I)V

    .line 5
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Le/m/a/g/r/b;

    iget-object v1, p1, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Le/m/a/g/r/b;-><init>(Landroid/content/Context;I)V

    .line 7
    iget-object p2, p1, Le/m/a/g/h/b;->v0:Le/m/a/g/o/l;

    iget-object p1, p1, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Le/m/a/g/o/l;->b(Le/m/a/g/r/b;Landroid/content/Context;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->k()V

    return-void
.end method

.method public setTextAppearance(Le/m/a/g/r/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->v0:Le/m/a/g/o/l;

    iget-object v0, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Le/m/a/g/o/l;->b(Le/m/a/g/r/b;Landroid/content/Context;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->k()V

    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/chip/Chip;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget v1, v0, Le/m/a/g/h/b;->l0:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 3
    iput p1, v0, Le/m/a/g/h/b;->l0:F

    .line 4
    invoke-virtual {v0}, Le/m/a/g/u/h;->invalidateSelf()V

    .line 5
    invoke-virtual {v0}, Le/m/a/g/h/b;->M()V

    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->o0(F)V

    :cond_0
    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget v1, v0, Le/m/a/g/h/b;->k0:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 3
    iput p1, v0, Le/m/a/g/h/b;->k0:F

    .line 4
    invoke-virtual {v0}, Le/m/a/g/u/h;->invalidateSelf()V

    .line 5
    invoke-virtual {v0}, Le/m/a/g/h/b;->M()V

    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Le/m/a/g/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/g/h/b;->p0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/m/a/g/h/b;->p0(F)V

    :cond_0
    return-void
.end method
