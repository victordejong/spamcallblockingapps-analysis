.class public Landroidx/constraintlayout/helper/widget/Flow;
.super Ln3/i/c/i;
.source "SourceFile"


# instance fields
.field public k:Ln3/i/b/h/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln3/i/c/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public l(Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Ln3/i/c/i;->l(Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Ln3/i/b/h/f;

    invoke-direct {v0}, Ln3/i/b/h/f;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    if-eqz p1, :cond_1b

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1a

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 6
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_orientation:I

    if-ne v3, v4, :cond_0

    .line 7
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 8
    iput v3, v4, Ln3/i/b/h/f;->m1:I

    goto/16 :goto_1

    .line 9
    :cond_0
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_padding:I

    if-ne v3, v4, :cond_1

    .line 10
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 11
    iput v3, v4, Ln3/i/b/h/k;->J0:I

    .line 12
    iput v3, v4, Ln3/i/b/h/k;->K0:I

    .line 13
    iput v3, v4, Ln3/i/b/h/k;->L0:I

    .line 14
    iput v3, v4, Ln3/i/b/h/k;->M0:I

    goto/16 :goto_1

    .line 15
    :cond_1
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingStart:I

    if-ne v3, v4, :cond_2

    .line 16
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 17
    iput v3, v4, Ln3/i/b/h/k;->L0:I

    .line 18
    iput v3, v4, Ln3/i/b/h/k;->N0:I

    .line 19
    iput v3, v4, Ln3/i/b/h/k;->O0:I

    goto/16 :goto_1

    .line 20
    :cond_2
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingEnd:I

    if-ne v3, v4, :cond_3

    .line 21
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 22
    iput v3, v4, Ln3/i/b/h/k;->M0:I

    goto/16 :goto_1

    .line 23
    :cond_3
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingLeft:I

    if-ne v3, v4, :cond_4

    .line 24
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 25
    iput v3, v4, Ln3/i/b/h/k;->N0:I

    goto/16 :goto_1

    .line 26
    :cond_4
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingTop:I

    if-ne v3, v4, :cond_5

    .line 27
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 28
    iput v3, v4, Ln3/i/b/h/k;->J0:I

    goto/16 :goto_1

    .line 29
    :cond_5
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingRight:I

    if-ne v3, v4, :cond_6

    .line 30
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 31
    iput v3, v4, Ln3/i/b/h/k;->O0:I

    goto/16 :goto_1

    .line 32
    :cond_6
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingBottom:I

    if-ne v3, v4, :cond_7

    .line 33
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 34
    iput v3, v4, Ln3/i/b/h/k;->K0:I

    goto/16 :goto_1

    .line 35
    :cond_7
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_wrapMode:I

    if-ne v3, v4, :cond_8

    .line 36
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 37
    iput v3, v4, Ln3/i/b/h/f;->k1:I

    goto/16 :goto_1

    .line 38
    :cond_8
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_horizontalStyle:I

    if-ne v3, v4, :cond_9

    .line 39
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 40
    iput v3, v4, Ln3/i/b/h/f;->U0:I

    goto/16 :goto_1

    .line 41
    :cond_9
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_verticalStyle:I

    if-ne v3, v4, :cond_a

    .line 42
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 43
    iput v3, v4, Ln3/i/b/h/f;->V0:I

    goto/16 :goto_1

    .line 44
    :cond_a
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_firstHorizontalStyle:I

    if-ne v3, v4, :cond_b

    .line 45
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 46
    iput v3, v4, Ln3/i/b/h/f;->W0:I

    goto/16 :goto_1

    .line 47
    :cond_b
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_lastHorizontalStyle:I

    if-ne v3, v4, :cond_c

    .line 48
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 49
    iput v3, v4, Ln3/i/b/h/f;->Y0:I

    goto/16 :goto_1

    .line 50
    :cond_c
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_firstVerticalStyle:I

    if-ne v3, v4, :cond_d

    .line 51
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 52
    iput v3, v4, Ln3/i/b/h/f;->X0:I

    goto/16 :goto_1

    .line 53
    :cond_d
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_lastVerticalStyle:I

    if-ne v3, v4, :cond_e

    .line 54
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 55
    iput v3, v4, Ln3/i/b/h/f;->Z0:I

    goto/16 :goto_1

    .line 56
    :cond_e
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_horizontalBias:I

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v3, v4, :cond_f

    .line 57
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 58
    iput v3, v4, Ln3/i/b/h/f;->a1:F

    goto/16 :goto_1

    .line 59
    :cond_f
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_firstHorizontalBias:I

    if-ne v3, v4, :cond_10

    .line 60
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 61
    iput v3, v4, Ln3/i/b/h/f;->c1:F

    goto/16 :goto_1

    .line 62
    :cond_10
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_lastHorizontalBias:I

    if-ne v3, v4, :cond_11

    .line 63
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 64
    iput v3, v4, Ln3/i/b/h/f;->e1:F

    goto/16 :goto_1

    .line 65
    :cond_11
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_firstVerticalBias:I

    if-ne v3, v4, :cond_12

    .line 66
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 67
    iput v3, v4, Ln3/i/b/h/f;->d1:F

    goto :goto_1

    .line 68
    :cond_12
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_lastVerticalBias:I

    if-ne v3, v4, :cond_13

    .line 69
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 70
    iput v3, v4, Ln3/i/b/h/f;->f1:F

    goto :goto_1

    .line 71
    :cond_13
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_verticalBias:I

    if-ne v3, v4, :cond_14

    .line 72
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 73
    iput v3, v4, Ln3/i/b/h/f;->b1:F

    goto :goto_1

    .line 74
    :cond_14
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_horizontalAlign:I

    const/4 v5, 0x2

    if-ne v3, v4, :cond_15

    .line 75
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 76
    iput v3, v4, Ln3/i/b/h/f;->i1:I

    goto :goto_1

    .line 77
    :cond_15
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_verticalAlign:I

    if-ne v3, v4, :cond_16

    .line 78
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 79
    iput v3, v4, Ln3/i/b/h/f;->j1:I

    goto :goto_1

    .line 80
    :cond_16
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_horizontalGap:I

    if-ne v3, v4, :cond_17

    .line 81
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 82
    iput v3, v4, Ln3/i/b/h/f;->g1:I

    goto :goto_1

    .line 83
    :cond_17
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_verticalGap:I

    if-ne v3, v4, :cond_18

    .line 84
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 85
    iput v3, v4, Ln3/i/b/h/f;->h1:I

    goto :goto_1

    .line 86
    :cond_18
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_maxElementsWrap:I

    if-ne v3, v4, :cond_19

    .line 87
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    const/4 v5, -0x1

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 88
    iput v3, v4, Ln3/i/b/h/f;->l1:I

    :cond_19
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 89
    :cond_1a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    :cond_1b
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    iput-object p1, p0, Ln3/i/c/b;->d:Ln3/i/b/h/h;

    .line 91
    invoke-virtual {p0}, Ln3/i/c/b;->t()V

    return-void
.end method

.method public m(Ln3/i/c/d$a;Ln3/i/b/h/i;Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/i/c/d$a;",
            "Ln3/i/b/h/i;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$a;",
            "Landroid/util/SparseArray<",
            "Ln3/i/b/h/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Ln3/i/c/b;->m(Ln3/i/c/d$a;Ln3/i/b/h/i;Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroid/util/SparseArray;)V

    .line 2
    instance-of p1, p2, Ln3/i/b/h/f;

    if-eqz p1, :cond_0

    .line 3
    check-cast p2, Ln3/i/b/h/f;

    .line 4
    iget p1, p3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->R:I

    const/4 p3, -0x1

    if-eq p1, p3, :cond_0

    .line 5
    iput p1, p2, Ln3/i/b/h/f;->m1:I

    :cond_0
    return-void
.end method

.method public o(Ln3/i/b/h/d;Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    .line 2
    iget v0, p1, Ln3/i/b/h/k;->L0:I

    if-gtz v0, :cond_0

    iget v1, p1, Ln3/i/b/h/k;->M0:I

    if-lez v1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iget p2, p1, Ln3/i/b/h/k;->M0:I

    iput p2, p1, Ln3/i/b/h/k;->N0:I

    .line 4
    iput v0, p1, Ln3/i/b/h/k;->O0:I

    goto :goto_0

    .line 5
    :cond_1
    iput v0, p1, Ln3/i/b/h/k;->N0:I

    .line 6
    iget p2, p1, Ln3/i/b/h/k;->M0:I

    iput p2, p1, Ln3/i/b/h/k;->O0:I

    :cond_2
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/constraintlayout/helper/widget/Flow;->u(Ln3/i/b/h/k;II)V

    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    .line 2
    iput p1, v0, Ln3/i/b/h/f;->c1:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    .line 2
    iput p1, v0, Ln3/i/b/h/f;->W0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setFirstVerticalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    .line 2
    iput p1, v0, Ln3/i/b/h/f;->d1:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    .line 2
    iput p1, v0, Ln3/i/b/h/f;->X0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalAlign(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    .line 2
    iput p1, v0, Ln3/i/b/h/f;->i1:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    .line 2
    iput p1, v0, Ln3/i/b/h/f;->a1:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    .line 2
    iput p1, v0, Ln3/i/b/h/f;->g1:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    .line 2
    iput p1, v0, Ln3/i/b/h/f;->U0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setMaxElementsWrap(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    .line 2
    iput p1, v0, Ln3/i/b/h/f;->l1:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    .line 2
    iput p1, v0, Ln3/i/b/h/f;->m1:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    .line 2
    iput p1, v0, Ln3/i/b/h/k;->J0:I

    .line 3
    iput p1, v0, Ln3/i/b/h/k;->K0:I

    .line 4
    iput p1, v0, Ln3/i/b/h/k;->L0:I

    .line 5
    iput p1, v0, Ln3/i/b/h/k;->M0:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    .line 2
    iput p1, v0, Ln3/i/b/h/k;->K0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    .line 2
    iput p1, v0, Ln3/i/b/h/k;->N0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingRight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    .line 2
    iput p1, v0, Ln3/i/b/h/k;->O0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingTop(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    .line 2
    iput p1, v0, Ln3/i/b/h/k;->J0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalAlign(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    .line 2
    iput p1, v0, Ln3/i/b/h/f;->j1:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    .line 2
    iput p1, v0, Ln3/i/b/h/f;->b1:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalGap(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    .line 2
    iput p1, v0, Ln3/i/b/h/f;->h1:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    .line 2
    iput p1, v0, Ln3/i/b/h/f;->V0:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setWrapMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->k:Ln3/i/b/h/f;

    .line 2
    iput p1, v0, Ln3/i/b/h/f;->k1:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public u(Ln3/i/b/h/k;II)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 3
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 4
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v0, p2, v1, p3}, Ln3/i/b/h/k;->X(IIII)V

    .line 6
    iget p2, p1, Ln3/i/b/h/k;->Q0:I

    .line 7
    iget p1, p1, Ln3/i/b/h/k;->R0:I

    .line 8
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method
