.class public Lcom/truecaller/ui/view/ContactPhoto;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field public final c:Landroid/graphics/RectF;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Le/f/a/r/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/r/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:Landroid/graphics/Paint;

.field public final w:Landroid/graphics/Paint;

.field public x:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/truecaller/ui/view/ContactPhoto;->c:Landroid/graphics/RectF;

    .line 3
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/truecaller/ui/view/ContactPhoto;->g:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, -0xbbbbbc

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f0406e8

    invoke-static {p2, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p2

    :goto_0
    iput p2, p0, Lcom/truecaller/ui/view/ContactPhoto;->o:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result p2

    const/high16 v1, -0x10000

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v2, 0x7f0406ea

    invoke-static {p2, v2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p2

    :goto_1
    iput p2, p0, Lcom/truecaller/ui/view/ContactPhoto;->q:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result p2

    const v2, -0xffff01

    if-eqz p2, :cond_2

    move p2, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v3, 0x7f0406f4

    invoke-static {p2, v3}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p2

    :goto_2
    iput p2, p0, Lcom/truecaller/ui/view/ContactPhoto;->r:I

    const p2, 0x7f0602c6

    .line 7
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 8
    invoke-static {p1, p2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    .line 9
    iput p1, p0, Lcom/truecaller/ui/view/ContactPhoto;->p:I

    .line 10
    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, -0x777778

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0406e9

    invoke-static {p1, p2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    :goto_3
    iput p1, p0, Lcom/truecaller/ui/view/ContactPhoto;->s:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0406eb

    invoke-static {p1, p2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v1

    :goto_4
    iput v1, p0, Lcom/truecaller/ui/view/ContactPhoto;->t:I

    .line 12
    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0406de

    invoke-static {p1, p2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v2

    :goto_5
    iput v2, p0, Lcom/truecaller/ui/view/ContactPhoto;->u:I

    .line 13
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/truecaller/ui/view/ContactPhoto;->v:Landroid/graphics/Paint;

    .line 14
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/truecaller/ui/view/ContactPhoto;->w:Landroid/graphics/Paint;

    .line 16
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p2, -0x1

    .line 17
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iput v0, p0, Lcom/truecaller/ui/view/ContactPhoto;->x:I

    return-void
.end method


# virtual methods
.method public final d(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/view/ContactPhoto;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 4
    invoke-static {v0, p1}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/truecaller/ui/view/ContactPhoto;->e(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v1, p0, Lcom/truecaller/ui/view/ContactPhoto;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final e(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    neg-int v2, v0

    neg-int v3, v1

    .line 3
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/view/ContactPhoto;->d:Ljava/lang/Object;

    .line 2
    iput-object p2, p0, Lcom/truecaller/ui/view/ContactPhoto;->e:Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Lcom/truecaller/ui/view/ContactPhoto;->c:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/truecaller/ui/view/ContactPhoto;->c:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    cmpl-float p2, p2, v0

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object p2

    invoke-virtual {p2, p0}, Le/f/a/i;->m(Landroid/view/View;)V

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/truecaller/ui/view/ContactPhoto;->k:Z

    .line 6
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, p1}, Le/a/b0/q/o;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    .line 8
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 10
    sget-object v3, Le/a/o5/e1;->b:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "phone"

    .line 11
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 12
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Le/a/o5/e1;->b:Ljava/lang/String;

    .line 13
    :cond_2
    sget-object v2, Le/a/o5/e1;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    move p2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v2, p2, [Ljava/lang/String;

    .line 15
    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 16
    iput-boolean v1, p0, Lcom/truecaller/ui/view/ContactPhoto;->k:Z

    .line 17
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 18
    instance-of p2, p1, Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    .line 19
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 20
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 21
    :cond_5
    instance-of p2, p1, Lcom/truecaller/data/entity/Contact;

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 22
    check-cast p1, Lcom/truecaller/data/entity/Contact;

    .line 23
    invoke-static {p1, v1}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object p1

    goto :goto_2

    .line 24
    :cond_6
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 25
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_2

    .line 26
    :cond_7
    instance-of p2, p1, Landroid/net/Uri;

    if-eqz p2, :cond_8

    .line 27
    check-cast p1, Landroid/net/Uri;

    goto :goto_2

    :cond_8
    move-object p1, v0

    .line 28
    :goto_2
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 29
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_a

    .line 30
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object p2

    iget v0, p0, Lcom/truecaller/ui/view/ContactPhoto;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, p1, v0}, Le/a/m0/a1$k;->O0(Le/f/a/i;Landroid/net/Uri;Ljava/lang/Integer;)Le/f/a/h;

    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/truecaller/ui/view/ContactPhoto;->f:Le/f/a/r/g;

    if-eqz p2, :cond_9

    .line 32
    invoke-virtual {p1, p2}, Le/f/a/h;->P(Le/f/a/r/g;)Le/f/a/h;

    move-result-object p1

    .line 33
    :cond_9
    invoke-virtual {p1, p0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    :cond_a
    :goto_3
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->isActivated()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    const/4 v5, 0x0

    if-nez v2, :cond_2

    .line 4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_7

    .line 5
    :cond_2
    iget v2, p0, Lcom/truecaller/ui/view/ContactPhoto;->h:I

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {p0, v2}, Lcom/truecaller/ui/view/ContactPhoto;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_5

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f080359

    .line 8
    invoke-virtual {p0, v2}, Lcom/truecaller/ui/view/ContactPhoto;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_5

    .line 9
    :cond_4
    iget-boolean v2, p0, Lcom/truecaller/ui/view/ContactPhoto;->j:Z

    if-eqz v2, :cond_5

    const v2, 0x7f0804cc

    .line 10
    invoke-virtual {p0, v2}, Lcom/truecaller/ui/view/ContactPhoto;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_5

    .line 11
    :cond_5
    iget-boolean v2, p0, Lcom/truecaller/ui/view/ContactPhoto;->k:Z

    if-eqz v2, :cond_6

    const v2, 0x7f080846

    .line 12
    invoke-virtual {p0, v2}, Lcom/truecaller/ui/view/ContactPhoto;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_5

    .line 13
    :cond_6
    iget-boolean v2, p0, Lcom/truecaller/ui/view/ContactPhoto;->l:Z

    if-eqz v2, :cond_7

    const v2, 0x7f0804c3

    .line 14
    invoke-virtual {p0, v2}, Lcom/truecaller/ui/view/ContactPhoto;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_4

    .line 15
    :cond_7
    iget v2, p0, Lcom/truecaller/ui/view/ContactPhoto;->x:I

    if-eqz v2, :cond_8

    move v6, v4

    goto :goto_2

    :cond_8
    move v6, v3

    :goto_2
    if-eqz v6, :cond_9

    goto :goto_3

    :cond_9
    const v2, 0x7f080386

    .line 16
    :goto_3
    invoke-virtual {p0, v2}, Lcom/truecaller/ui/view/ContactPhoto;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_4
    neg-int v6, v0

    .line 17
    div-int/lit8 v6, v6, 0x2

    neg-int v7, v1

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, v0, 0x2

    div-int/lit8 v9, v1, 0x2

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 18
    :goto_5
    invoke-virtual {p0}, Landroid/widget/ImageView;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 19
    iget-object v3, p0, Lcom/truecaller/ui/view/ContactPhoto;->v:Landroid/graphics/Paint;

    iget v6, p0, Lcom/truecaller/ui/view/ContactPhoto;->r:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    iget v3, p0, Lcom/truecaller/ui/view/ContactPhoto;->u:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_6

    .line 21
    :cond_a
    iget-boolean v6, p0, Lcom/truecaller/ui/view/ContactPhoto;->i:Z

    if-eqz v6, :cond_b

    .line 22
    iget-object v3, p0, Lcom/truecaller/ui/view/ContactPhoto;->v:Landroid/graphics/Paint;

    iget v6, p0, Lcom/truecaller/ui/view/ContactPhoto;->q:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget v3, p0, Lcom/truecaller/ui/view/ContactPhoto;->t:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_6

    .line 24
    :cond_b
    iget-boolean v6, p0, Lcom/truecaller/ui/view/ContactPhoto;->l:Z

    if-eqz v6, :cond_c

    .line 25
    iget-object v3, p0, Lcom/truecaller/ui/view/ContactPhoto;->v:Landroid/graphics/Paint;

    iget v6, p0, Lcom/truecaller/ui/view/ContactPhoto;->p:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    .line 26
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_6

    .line 27
    :cond_c
    iget v6, p0, Lcom/truecaller/ui/view/ContactPhoto;->x:I

    if-eqz v6, :cond_d

    move v3, v4

    :cond_d
    if-nez v3, :cond_e

    .line 28
    iget-object v3, p0, Lcom/truecaller/ui/view/ContactPhoto;->v:Landroid/graphics/Paint;

    iget v6, p0, Lcom/truecaller/ui/view/ContactPhoto;->o:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    iget v3, p0, Lcom/truecaller/ui/view/ContactPhoto;->s:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 30
    :cond_e
    :goto_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 31
    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/truecaller/ui/view/ContactPhoto;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 33
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 34
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 35
    :goto_7
    iget v2, p0, Lcom/truecaller/ui/view/ContactPhoto;->m:I

    const/high16 v3, 0x40400000    # 3.0f

    if-eqz v2, :cond_f

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 37
    invoke-virtual {p0, v2}, Lcom/truecaller/ui/view/ContactPhoto;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    int-to-float v5, v0

    div-float/2addr v5, v3

    float-to-int v3, v5

    .line 38
    div-int/lit8 v3, v3, 0x2

    neg-int v5, v3

    .line 39
    invoke-virtual {v2, v5, v5, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int/2addr v0, v3

    int-to-float v0, v0

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 41
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 42
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_a

    .line 43
    :cond_f
    iget v2, p0, Lcom/truecaller/ui/view/ContactPhoto;->n:I

    if-eqz v2, :cond_12

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 45
    iget v6, p0, Lcom/truecaller/ui/view/ContactPhoto;->n:I

    if-ne v6, v4, :cond_10

    const v6, 0x7f08042e

    goto :goto_8

    :cond_10
    const v6, 0x7f08067f

    .line 46
    :goto_8
    invoke-virtual {p0, v6}, Lcom/truecaller/ui/view/ContactPhoto;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 47
    iget v7, p0, Lcom/truecaller/ui/view/ContactPhoto;->n:I

    if-ne v7, v4, :cond_11

    const v4, 0x40866666    # 4.2f

    goto :goto_9

    :cond_11
    const v4, 0x40666666    # 3.6f

    :goto_9
    int-to-float v7, v0

    div-float v3, v7, v3

    float-to-int v3, v3

    .line 48
    div-int/lit8 v3, v3, 0x2

    div-float/2addr v7, v4

    float-to-int v4, v7

    .line 49
    div-int/lit8 v4, v4, 0x2

    neg-int v7, v4

    .line 50
    invoke-virtual {v6, v7, v7, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int/2addr v0, v3

    int-to-float v0, v0

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 52
    iget v0, p0, Lcom/truecaller/ui/view/ContactPhoto;->u:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    int-to-float v0, v3

    .line 53
    iget-object v1, p0, Lcom/truecaller/ui/view/ContactPhoto;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 54
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 55
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_12
    :goto_a
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v0, 0x7f080385

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Lcom/truecaller/ui/view/ContactPhoto;->c:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/truecaller/ui/view/ContactPhoto;->d:Ljava/lang/Object;

    iget-object p2, p0, Lcom/truecaller/ui/view/ContactPhoto;->e:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/truecaller/ui/view/ContactPhoto;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object p2, p0, Lcom/truecaller/ui/view/ContactPhoto;->g:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/truecaller/ui/view/ContactPhoto;->g:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Lcom/truecaller/ui/view/ContactPhoto;->e(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setBackupBadge(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/ui/view/ContactPhoto;->n:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setCallback(Le/f/a/r/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/r/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/view/ContactPhoto;->f:Le/f/a/r/g;

    return-void
.end method

.method public setContactBadgeDrawable(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/ui/view/ContactPhoto;->m:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setDrawableRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/ui/view/ContactPhoto;->h:I

    return-void
.end method

.method public setIsGold(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/ui/view/ContactPhoto;->l:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setIsGroup(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/ui/view/ContactPhoto;->j:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setIsSpam(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/ui/view/ContactPhoto;->i:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setPrivateAvatar(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/ui/view/ContactPhoto;->x:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
