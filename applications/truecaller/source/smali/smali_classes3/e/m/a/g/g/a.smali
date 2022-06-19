.class public Le/m/a/g/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final t:[I

.field public static final u:D


# instance fields
.field public final a:Lcom/google/android/material/card/MaterialCardView;

.field public final b:Landroid/graphics/Rect;

.field public final c:Le/m/a/g/u/h;

.field public final d:Le/m/a/g/u/h;

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:Landroid/graphics/drawable/Drawable;

.field public j:Landroid/content/res/ColorStateList;

.field public k:Landroid/content/res/ColorStateList;

.field public l:Le/m/a/g/u/l;

.field public m:Landroid/content/res/ColorStateList;

.field public n:Landroid/graphics/drawable/Drawable;

.field public o:Landroid/graphics/drawable/LayerDrawable;

.field public p:Le/m/a/g/u/h;

.field public q:Le/m/a/g/u/h;

.field public r:Z

.field public s:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 1
    sput-object v0, Le/m/a/g/g/a;->t:[I

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Le/m/a/g/g/a;->u:D

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Le/m/a/g/g/a;->b:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Le/m/a/g/g/a;->r:Z

    .line 4
    iput-object p1, p0, Le/m/a/g/g/a;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 5
    new-instance v0, Le/m/a/g/u/h;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Le/m/a/g/u/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Le/m/a/g/g/a;->c:Le/m/a/g/u/h;

    .line 6
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {v0, p4}, Le/m/a/g/u/h;->n(Landroid/content/Context;)V

    const p4, -0xbbbbbc

    .line 7
    invoke-virtual {v0, p4}, Le/m/a/g/u/h;->s(I)V

    .line 8
    iget-object p4, v0, Le/m/a/g/u/h;->a:Le/m/a/g/u/h$b;

    iget-object p4, p4, Le/m/a/g/u/h$b;->a:Le/m/a/g/u/l;

    .line 9
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v0, Le/m/a/g/u/l$b;

    invoke-direct {v0, p4}, Le/m/a/g/u/l$b;-><init>(Le/m/a/g/u/l;)V

    .line 11
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p4, Lcom/google/android/material/R$styleable;->CardView:[I

    sget v1, Lcom/google/android/material/R$style;->CardView:I

    .line 12
    invoke-virtual {p1, p2, p4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 13
    sget p2, Lcom/google/android/material/R$styleable;->CardView_cardCornerRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 14
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 15
    invoke-virtual {v0, p2}, Le/m/a/g/u/l$b;->c(F)Le/m/a/g/u/l$b;

    .line 16
    :cond_0
    new-instance p2, Le/m/a/g/u/h;

    invoke-direct {p2}, Le/m/a/g/u/h;-><init>()V

    iput-object p2, p0, Le/m/a/g/g/a;->d:Le/m/a/g/u/h;

    .line 17
    invoke-virtual {v0}, Le/m/a/g/u/l$b;->a()Le/m/a/g/u/l;

    move-result-object p2

    invoke-virtual {p0, p2}, Le/m/a/g/g/a;->h(Le/m/a/g/u/l;)V

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/a/g/g/a;->l:Le/m/a/g/u/l;

    .line 2
    iget-object v0, v0, Le/m/a/g/u/l;->a:Le/m/a/g/u/d;

    .line 3
    iget-object v1, p0, Le/m/a/g/g/a;->c:Le/m/a/g/u/h;

    invoke-virtual {v1}, Le/m/a/g/u/h;->l()F

    move-result v1

    .line 4
    invoke-virtual {p0, v0, v1}, Le/m/a/g/g/a;->b(Le/m/a/g/u/d;F)F

    move-result v0

    iget-object v1, p0, Le/m/a/g/g/a;->l:Le/m/a/g/u/l;

    .line 5
    iget-object v1, v1, Le/m/a/g/u/l;->b:Le/m/a/g/u/d;

    .line 6
    iget-object v2, p0, Le/m/a/g/g/a;->c:Le/m/a/g/u/h;

    .line 7
    iget-object v3, v2, Le/m/a/g/u/h;->a:Le/m/a/g/u/h$b;

    iget-object v3, v3, Le/m/a/g/u/h$b;->a:Le/m/a/g/u/l;

    .line 8
    iget-object v3, v3, Le/m/a/g/u/l;->f:Le/m/a/g/u/c;

    .line 9
    invoke-virtual {v2}, Le/m/a/g/u/h;->h()Landroid/graphics/RectF;

    move-result-object v2

    invoke-interface {v3, v2}, Le/m/a/g/u/c;->a(Landroid/graphics/RectF;)F

    move-result v2

    .line 10
    invoke-virtual {p0, v1, v2}, Le/m/a/g/g/a;->b(Le/m/a/g/u/d;F)F

    move-result v1

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Le/m/a/g/g/a;->l:Le/m/a/g/u/l;

    .line 12
    iget-object v1, v1, Le/m/a/g/u/l;->c:Le/m/a/g/u/d;

    .line 13
    iget-object v2, p0, Le/m/a/g/g/a;->c:Le/m/a/g/u/h;

    .line 14
    iget-object v3, v2, Le/m/a/g/u/h;->a:Le/m/a/g/u/h$b;

    iget-object v3, v3, Le/m/a/g/u/h$b;->a:Le/m/a/g/u/l;

    .line 15
    iget-object v3, v3, Le/m/a/g/u/l;->g:Le/m/a/g/u/c;

    .line 16
    invoke-virtual {v2}, Le/m/a/g/u/h;->h()Landroid/graphics/RectF;

    move-result-object v2

    invoke-interface {v3, v2}, Le/m/a/g/u/c;->a(Landroid/graphics/RectF;)F

    move-result v2

    .line 17
    invoke-virtual {p0, v1, v2}, Le/m/a/g/g/a;->b(Le/m/a/g/u/d;F)F

    move-result v1

    iget-object v2, p0, Le/m/a/g/g/a;->l:Le/m/a/g/u/l;

    .line 18
    iget-object v2, v2, Le/m/a/g/u/l;->d:Le/m/a/g/u/d;

    .line 19
    iget-object v3, p0, Le/m/a/g/g/a;->c:Le/m/a/g/u/h;

    .line 20
    iget-object v4, v3, Le/m/a/g/u/h;->a:Le/m/a/g/u/h$b;

    iget-object v4, v4, Le/m/a/g/u/h$b;->a:Le/m/a/g/u/l;

    .line 21
    iget-object v4, v4, Le/m/a/g/u/l;->h:Le/m/a/g/u/c;

    .line 22
    invoke-virtual {v3}, Le/m/a/g/u/h;->h()Landroid/graphics/RectF;

    move-result-object v3

    invoke-interface {v4, v3}, Le/m/a/g/u/c;->a(Landroid/graphics/RectF;)F

    move-result v3

    .line 23
    invoke-virtual {p0, v2, v3}, Le/m/a/g/g/a;->b(Le/m/a/g/u/d;F)F

    move-result v2

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final b(Le/m/a/g/u/d;F)F
    .locals 4

    .line 1
    instance-of v0, p1, Le/m/a/g/u/k;

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2
    sget-wide v2, Le/m/a/g/g/a;->u:D

    sub-double/2addr v0, v2

    float-to-double p1, p2

    mul-double/2addr v0, p1

    double-to-float p1, v0

    return p1

    .line 3
    :cond_0
    instance-of p1, p1, Le/m/a/g/u/e;

    if-eqz p1, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final c()F
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/g/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Le/m/a/g/g/a;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Le/m/a/g/g/a;->a()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method public final d()F
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/g/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Le/m/a/g/g/a;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Le/m/a/g/g/a;->a()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/a/g/g/a;->n:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Le/m/a/g/s/a;->a:[I

    .line 3
    new-instance v0, Le/m/a/g/u/h;

    iget-object v1, p0, Le/m/a/g/g/a;->l:Le/m/a/g/u/l;

    invoke-direct {v0, v1}, Le/m/a/g/u/h;-><init>(Le/m/a/g/u/l;)V

    .line 4
    iput-object v0, p0, Le/m/a/g/g/a;->q:Le/m/a/g/u/h;

    .line 5
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Le/m/a/g/g/a;->j:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    iget-object v3, p0, Le/m/a/g/g/a;->q:Le/m/a/g/u/h;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6
    iput-object v0, p0, Le/m/a/g/g/a;->n:Landroid/graphics/drawable/Drawable;

    .line 7
    :cond_0
    iget-object v0, p0, Le/m/a/g/g/a;->o:Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 9
    iget-object v1, p0, Le/m/a/g/g/a;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 10
    sget-object v2, Le/m/a/g/g/a;->t:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 11
    :cond_1
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Le/m/a/g/g/a;->n:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Le/m/a/g/g/a;->d:Le/m/a/g/u/h;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Le/m/a/g/g/a;->o:Landroid/graphics/drawable/LayerDrawable;

    .line 12
    sget v0, Lcom/google/android/material/R$id;->mtrl_card_checked_layer_id:I

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 13
    :cond_2
    iget-object v0, p0, Le/m/a/g/g/a;->o:Landroid/graphics/drawable/LayerDrawable;

    return-object v0
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/a/g/g/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/m/a/g/g/a;->d()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    .line 3
    invoke-virtual {p0}, Le/m/a/g/g/a;->c()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move v7, v0

    move v8, v1

    goto :goto_0

    :cond_0
    move v7, v1

    move v8, v7

    .line 4
    :goto_0
    new-instance v0, Le/m/a/g/g/a$a;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, v7

    move v6, v8

    invoke-direct/range {v2 .. v8}, Le/m/a/g/g/a$a;-><init>(Le/m/a/g/g/a;Landroid/graphics/drawable/Drawable;IIII)V

    return-object v0
.end method

.method public g(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iput-object p1, p0, Le/m/a/g/g/a;->i:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Le/m/a/g/g/a;->i:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v0, p0, Le/m/a/g/g/a;->k:Landroid/content/res/ColorStateList;

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 5
    :cond_0
    iget-object p1, p0, Le/m/a/g/g/a;->o:Landroid/graphics/drawable/LayerDrawable;

    if-eqz p1, :cond_2

    .line 6
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 7
    iget-object v0, p0, Le/m/a/g/g/a;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 8
    sget-object v1, Le/m/a/g/g/a;->t:[I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 9
    :cond_1
    iget-object v0, p0, Le/m/a/g/g/a;->o:Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/google/android/material/R$id;->mtrl_card_checked_layer_id:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    :cond_2
    return-void
.end method

.method public h(Le/m/a/g/u/l;)V
    .locals 2

    .line 1
    iput-object p1, p0, Le/m/a/g/g/a;->l:Le/m/a/g/u/l;

    .line 2
    iget-object v0, p0, Le/m/a/g/g/a;->c:Le/m/a/g/u/h;

    .line 3
    iget-object v1, v0, Le/m/a/g/u/h;->a:Le/m/a/g/u/h$b;

    iput-object p1, v1, Le/m/a/g/u/h$b;->a:Le/m/a/g/u/l;

    .line 4
    invoke-virtual {v0}, Le/m/a/g/u/h;->invalidateSelf()V

    .line 5
    iget-object v0, p0, Le/m/a/g/g/a;->c:Le/m/a/g/u/h;

    invoke-virtual {v0}, Le/m/a/g/u/h;->o()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 6
    iput-boolean v1, v0, Le/m/a/g/u/h;->v:Z

    .line 7
    iget-object v0, p0, Le/m/a/g/g/a;->d:Le/m/a/g/u/h;

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, v0, Le/m/a/g/u/h;->a:Le/m/a/g/u/h$b;

    iput-object p1, v1, Le/m/a/g/u/h$b;->a:Le/m/a/g/u/l;

    .line 9
    invoke-virtual {v0}, Le/m/a/g/u/h;->invalidateSelf()V

    .line 10
    :cond_0
    iget-object v0, p0, Le/m/a/g/g/a;->q:Le/m/a/g/u/h;

    if-eqz v0, :cond_1

    .line 11
    iget-object v1, v0, Le/m/a/g/u/h;->a:Le/m/a/g/u/h$b;

    iput-object p1, v1, Le/m/a/g/u/h$b;->a:Le/m/a/g/u/l;

    .line 12
    invoke-virtual {v0}, Le/m/a/g/u/h;->invalidateSelf()V

    .line 13
    :cond_1
    iget-object v0, p0, Le/m/a/g/g/a;->p:Le/m/a/g/u/h;

    if-eqz v0, :cond_2

    .line 14
    iget-object v1, v0, Le/m/a/g/u/h;->a:Le/m/a/g/u/h$b;

    iput-object p1, v1, Le/m/a/g/u/h$b;->a:Le/m/a/g/u/l;

    .line 15
    invoke-virtual {v0}, Le/m/a/g/u/h;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/g/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/a/g/g/a;->c:Le/m/a/g/u/h;

    invoke-virtual {v0}, Le/m/a/g/u/h;->o()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/g/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/a/g/g/a;->c:Le/m/a/g/u/h;

    invoke-virtual {v0}, Le/m/a/g/u/h;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/m/a/g/g/a;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 4
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Le/m/a/g/g/a;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/m/a/g/g/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Le/m/a/g/g/a;->a()F

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    .line 4
    :goto_2
    iget-object v2, p0, Le/m/a/g/g/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v2}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Le/m/a/g/g/a;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 5
    invoke-virtual {v2}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 6
    sget-wide v3, Le/m/a/g/g/a;->u:D

    sub-double/2addr v1, v3

    iget-object v3, p0, Le/m/a/g/g/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v3}, Lcom/google/android/material/card/MaterialCardView;->getCardViewRadius()F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    :cond_3
    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 7
    iget-object v1, p0, Le/m/a/g/g/a;->a:Lcom/google/android/material/card/MaterialCardView;

    iget-object v2, p0, Le/m/a/g/g/a;->b:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/google/android/material/card/MaterialCardView;->i(IIII)V

    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/m/a/g/g/a;->r:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/a/g/g/a;->a:Lcom/google/android/material/card/MaterialCardView;

    iget-object v1, p0, Le/m/a/g/g/a;->c:Le/m/a/g/u/h;

    invoke-virtual {p0, v1}, Le/m/a/g/g/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/a/g/g/a;->a:Lcom/google/android/material/card/MaterialCardView;

    iget-object v1, p0, Le/m/a/g/g/a;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Le/m/a/g/g/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    sget-object v0, Le/m/a/g/s/a;->a:[I

    iget-object v0, p0, Le/m/a/g/g/a;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Le/m/a/g/g/a;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/a/g/g/a;->p:Le/m/a/g/u/h;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Le/m/a/g/g/a;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Le/m/a/g/u/h;->q(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public n()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/g/g/a;->d:Le/m/a/g/u/h;

    iget v1, p0, Le/m/a/g/g/a;->g:I

    int-to-float v1, v1

    iget-object v2, p0, Le/m/a/g/g/a;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, v2}, Le/m/a/g/u/h;->v(FLandroid/content/res/ColorStateList;)V

    return-void
.end method
