.class public Ln3/b/f/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/f/v;


# instance fields
.field public a:Landroidx/appcompat/widget/Toolbar;

.field public b:I

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Z

.field public i:Ljava/lang/CharSequence;

.field public j:Ljava/lang/CharSequence;

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/view/Window$Callback;

.field public m:Z

.field public n:Landroidx/appcompat/widget/ActionMenuPresenter;

.field public o:I

.field public p:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Z)V
    .locals 5

    .line 1
    sget v0, Landroidx/appcompat/R$string;->abc_action_bar_up_description:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Ln3/b/f/t0;->o:I

    .line 4
    iput-object p1, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Ln3/b/f/t0;->i:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Ln3/b/f/t0;->j:Ljava/lang/CharSequence;

    .line 7
    iget-object v2, p0, Ln3/b/f/t0;->i:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Ln3/b/f/t0;->h:Z

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Ln3/b/f/t0;->g:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x0

    sget-object v3, Landroidx/appcompat/R$styleable;->ActionBar:[I

    sget v4, Landroidx/appcompat/R$attr;->actionBarStyle:I

    invoke-static {p1, v2, v3, v4, v1}, Ln3/b/f/r0;->q(Landroid/content/Context;Landroid/util/AttributeSet;[III)Ln3/b/f/r0;

    move-result-object p1

    .line 10
    sget v2, Landroidx/appcompat/R$styleable;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {p1, v2}, Ln3/b/f/r0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Ln3/b/f/t0;->p:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_e

    .line 11
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_title:I

    invoke-virtual {p1, p2}, Ln3/b/f/r0;->n(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 13
    invoke-virtual {p0, p2}, Ln3/b/f/t0;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    :cond_1
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_subtitle:I

    invoke-virtual {p1, p2}, Ln3/b/f/r0;->n(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 16
    invoke-virtual {p0, p2}, Ln3/b/f/t0;->t4(Ljava/lang/CharSequence;)V

    .line 17
    :cond_2
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_logo:I

    invoke-virtual {p1, p2}, Ln3/b/f/r0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 18
    iput-object p2, p0, Ln3/b/f/t0;->f:Landroid/graphics/drawable/Drawable;

    .line 19
    invoke-virtual {p0}, Ln3/b/f/t0;->j()V

    .line 20
    :cond_3
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_icon:I

    invoke-virtual {p1, p2}, Ln3/b/f/r0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 21
    iput-object p2, p0, Ln3/b/f/t0;->e:Landroid/graphics/drawable/Drawable;

    .line 22
    invoke-virtual {p0}, Ln3/b/f/t0;->j()V

    .line 23
    :cond_4
    iget-object p2, p0, Ln3/b/f/t0;->g:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_5

    iget-object p2, p0, Ln3/b/f/t0;->p:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    .line 24
    iput-object p2, p0, Ln3/b/f/t0;->g:Landroid/graphics/drawable/Drawable;

    .line 25
    invoke-virtual {p0}, Ln3/b/f/t0;->i()V

    .line 26
    :cond_5
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_displayOptions:I

    invoke-virtual {p1, p2, v1}, Ln3/b/f/r0;->j(II)I

    move-result p2

    invoke-virtual {p0, p2}, Ln3/b/f/t0;->v4(I)V

    .line 27
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_customNavigationLayout:I

    invoke-virtual {p1, p2, v1}, Ln3/b/f/r0;->l(II)I

    move-result p2

    if-eqz p2, :cond_8

    .line 28
    iget-object v2, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, p2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 29
    iget-object v2, p0, Ln3/b/f/t0;->d:Landroid/view/View;

    if-eqz v2, :cond_6

    iget v3, p0, Ln3/b/f/t0;->b:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    .line 30
    iget-object v3, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 31
    :cond_6
    iput-object p2, p0, Ln3/b/f/t0;->d:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 32
    iget v2, p0, Ln3/b/f/t0;->b:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_7

    .line 33
    iget-object v2, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 34
    :cond_7
    iget p2, p0, Ln3/b/f/t0;->b:I

    or-int/lit8 p2, p2, 0x10

    invoke-virtual {p0, p2}, Ln3/b/f/t0;->v4(I)V

    .line 35
    :cond_8
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {p1, p2, v1}, Ln3/b/f/r0;->k(II)I

    move-result p2

    if-lez p2, :cond_9

    .line 36
    iget-object v2, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 37
    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    iget-object p2, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    :cond_9
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_contentInsetStart:I

    const/4 v2, -0x1

    invoke-virtual {p1, p2, v2}, Ln3/b/f/r0;->e(II)I

    move-result p2

    .line 40
    sget v3, Landroidx/appcompat/R$styleable;->ActionBar_contentInsetEnd:I

    invoke-virtual {p1, v3, v2}, Ln3/b/f/r0;->e(II)I

    move-result v2

    if-gez p2, :cond_a

    if-ltz v2, :cond_b

    .line 41
    :cond_a
    iget-object v3, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 42
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 43
    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->d()V

    .line 44
    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->t:Ln3/b/f/j0;

    invoke-virtual {v3, p2, v2}, Ln3/b/f/j0;->a(II)V

    .line 45
    :cond_b
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_titleTextStyle:I

    invoke-virtual {p1, p2, v1}, Ln3/b/f/r0;->l(II)I

    move-result p2

    if-eqz p2, :cond_c

    .line 46
    iget-object v2, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 47
    iput p2, v2, Landroidx/appcompat/widget/Toolbar;->l:I

    .line 48
    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    if-eqz v2, :cond_c

    .line 49
    invoke-virtual {v2, v3, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 50
    :cond_c
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_subtitleTextStyle:I

    invoke-virtual {p1, p2, v1}, Ln3/b/f/r0;->l(II)I

    move-result p2

    if-eqz p2, :cond_d

    .line 51
    iget-object v2, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 52
    iput p2, v2, Landroidx/appcompat/widget/Toolbar;->m:I

    .line 53
    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v2, :cond_d

    .line 54
    invoke-virtual {v2, v3, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 55
    :cond_d
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_popupTheme:I

    invoke-virtual {p1, p2, v1}, Ln3/b/f/r0;->l(II)I

    move-result p2

    if-eqz p2, :cond_10

    .line 56
    iget-object v1, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, p2}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    goto :goto_2

    .line 57
    :cond_e
    iget-object p2, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_f

    const/16 p2, 0xf

    .line 58
    iget-object v1, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Ln3/b/f/t0;->p:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_f
    const/16 p2, 0xb

    .line 59
    :goto_1
    iput p2, p0, Ln3/b/f/t0;->b:I

    .line 60
    :cond_10
    :goto_2
    iget-object p1, p1, Ln3/b/f/r0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    iget p1, p0, Ln3/b/f/t0;->o:I

    if-ne v0, p1, :cond_11

    goto :goto_3

    .line 62
    :cond_11
    iput v0, p0, Ln3/b/f/t0;->o:I

    .line 63
    iget-object p1, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 64
    iget p1, p0, Ln3/b/f/t0;->o:I

    invoke-virtual {p0, p1}, Ln3/b/f/t0;->x4(I)V

    .line 65
    :cond_12
    :goto_3
    iget-object p1, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Ln3/b/f/t0;->k:Ljava/lang/CharSequence;

    .line 66
    iget-object p1, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    new-instance p2, Ln3/b/f/s0;

    invoke-direct {p2, p0}, Ln3/b/f/s0;-><init>(Ln3/b/f/t0;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public A4()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->h()Z

    :cond_0
    return-void
.end method

.method public B4()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/b/f/t0;->b:I

    return v0
.end method

.method public C4()V
    .locals 0

    return-void
.end method

.method public D4(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/f/t0;->g:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Ln3/b/f/t0;->i()V

    return-void
.end method

.method public E4()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public F4(IJ)Ln3/k/i/z;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Ln3/k/i/s;->b(Landroid/view/View;)Ln3/k/i/z;

    move-result-object v0

    if-nez p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Ln3/k/i/z;->a(F)Ln3/k/i/z;

    .line 3
    invoke-virtual {v0, p2, p3}, Ln3/k/i/z;->c(J)Ln3/k/i/z;

    new-instance p2, Ln3/b/f/t0$a;

    invoke-direct {p2, p0, p1}, Ln3/b/f/t0$a;-><init>(Ln3/b/f/t0;I)V

    .line 4
    iget-object p1, v0, Ln3/k/i/z;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0, p1, p2}, Ln3/k/i/z;->e(Landroid/view/View;Ln3/k/i/a0;)V

    :cond_1
    return-object v0
.end method

.method public G4()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public H4(Z)V
    .locals 0

    return-void
.end method

.method public I4(Ln3/b/f/k0;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/b/f/t0;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Ln3/b/f/t0;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Ln3/b/f/t0;->c:Landroid/view/View;

    return-void
.end method

.method public J4(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Ln3/b/f/t0;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ln3/b/b/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-object p1, p0, Ln3/b/f/t0;->f:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Ln3/b/f/t0;->j()V

    return-void
.end method

.method public K4(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Ln3/b/f/t0;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ln3/b/b/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-object p1, p0, Ln3/b/f/t0;->g:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Ln3/b/f/t0;->i()V

    return-void
.end method

.method public L4(Ln3/b/e/i/m$a;Ln3/b/e/i/g$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 2
    iput-object p1, v0, Landroidx/appcompat/widget/Toolbar;->P:Ln3/b/e/i/m$a;

    .line 3
    iput-object p2, v0, Landroidx/appcompat/widget/Toolbar;->Q:Ln3/b/e/i/g$a;

    .line 4
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 5
    iput-object p1, v0, Landroidx/appcompat/widget/ActionMenuView;->u:Ln3/b/e/i/m$a;

    .line 6
    iput-object p2, v0, Landroidx/appcompat/widget/ActionMenuView;->v:Ln3/b/e/i/g$a;

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuView;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->v()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->p()Z

    move-result v0

    return v0
.end method

.method public collapseActionView()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/Toolbar$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$d;->b:Ln3/b/e/i/i;

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ln3/b/e/i/i;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public e(Landroid/view/Menu;Ln3/b/e/i/m$a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/b/f/t0;->n:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v1, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ln3/b/f/t0;->n:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 3
    sget v1, Landroidx/appcompat/R$id;->action_menu_presenter:I

    .line 4
    iput v1, v0, Ln3/b/e/i/b;->i:I

    .line 5
    :cond_0
    iget-object v0, p0, Ln3/b/f/t0;->n:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 6
    iput-object p2, v0, Ln3/b/e/i/b;->e:Ln3/b/e/i/m$a;

    .line 7
    iget-object p2, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    check-cast p1, Ln3/b/e/i/g;

    if-nez p1, :cond_1

    .line 8
    iget-object v1, p2, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v1, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p2}, Landroidx/appcompat/widget/Toolbar;->f()V

    .line 10
    iget-object v1, p2, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 11
    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->p:Ln3/b/e/i/g;

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 12
    iget-object v2, p2, Landroidx/appcompat/widget/Toolbar;->N:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v1, v2}, Ln3/b/e/i/g;->u(Ln3/b/e/i/m;)V

    .line 13
    iget-object v2, p2, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/Toolbar$d;

    invoke-virtual {v1, v2}, Ln3/b/e/i/g;->u(Ln3/b/e/i/m;)V

    .line 14
    :cond_3
    iget-object v1, p2, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/Toolbar$d;

    if-nez v1, :cond_4

    .line 15
    new-instance v1, Landroidx/appcompat/widget/Toolbar$d;

    invoke-direct {v1, p2}, Landroidx/appcompat/widget/Toolbar$d;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v1, p2, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/Toolbar$d;

    :cond_4
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:Z

    if-eqz p1, :cond_5

    .line 17
    iget-object v1, p2, Landroidx/appcompat/widget/Toolbar;->j:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Ln3/b/e/i/g;->b(Ln3/b/e/i/m;Landroid/content/Context;)V

    .line 18
    iget-object v1, p2, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/Toolbar$d;

    iget-object v2, p2, Landroidx/appcompat/widget/Toolbar;->j:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Ln3/b/e/i/g;->b(Ln3/b/e/i/m;Landroid/content/Context;)V

    goto :goto_0

    .line 19
    :cond_5
    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->j:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/ActionMenuPresenter;->g(Landroid/content/Context;Ln3/b/e/i/g;)V

    .line 20
    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/Toolbar$d;

    .line 21
    iget-object v3, p1, Landroidx/appcompat/widget/Toolbar$d;->a:Ln3/b/e/i/g;

    if-eqz v3, :cond_6

    iget-object v4, p1, Landroidx/appcompat/widget/Toolbar$d;->b:Ln3/b/e/i/i;

    if-eqz v4, :cond_6

    .line 22
    invoke-virtual {v3, v4}, Ln3/b/e/i/g;->d(Ln3/b/e/i/i;)Z

    .line 23
    :cond_6
    iput-object v2, p1, Landroidx/appcompat/widget/Toolbar$d;->a:Ln3/b/e/i/g;

    .line 24
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->d(Z)V

    .line 25
    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/Toolbar$d;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar$d;->d(Z)V

    .line 26
    :goto_0
    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    iget v1, p2, Landroidx/appcompat/widget/Toolbar;->k:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    .line 27
    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    .line 28
    iput-object v0, p2, Landroidx/appcompat/widget/Toolbar;->N:Landroidx/appcompat/widget/ActionMenuPresenter;

    :goto_1
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln3/b/f/t0;->m:Z

    return-void
.end method

.method public g()Z
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_2

    .line 4
    iget-object v3, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    return v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 2

    .line 1
    iget v0, p0, Ln3/b/f/t0;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ln3/b/f/t0;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    iget v1, p0, Ln3/b/f/t0;->o:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Ln3/b/f/t0;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    iget v0, p0, Ln3/b/f/t0;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Ln3/b/f/t0;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ln3/b/f/t0;->p:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    iget v0, p0, Ln3/b/f/t0;->b:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ln3/b/f/t0;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ln3/b/f/t0;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Ln3/b/f/t0;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Ln3/b/f/t0;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ln3/b/b/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-object p1, p0, Ln3/b/f/t0;->e:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Ln3/b/f/t0;->j()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 4
    iput-object p1, p0, Ln3/b/f/t0;->e:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p0}, Ln3/b/f/t0;->j()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln3/b/f/t0;->h:Z

    .line 2
    iput-object p1, p0, Ln3/b/f/t0;->i:Ljava/lang/CharSequence;

    .line 3
    iget v0, p0, Ln3/b/f/t0;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/f/t0;->l:Landroid/view/Window$Callback;

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/b/f/t0;->h:Z

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Ln3/b/f/t0;->i:Ljava/lang/CharSequence;

    .line 3
    iget v0, p0, Ln3/b/f/t0;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public t4(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ln3/b/f/t0;->j:Ljava/lang/CharSequence;

    .line 2
    iget v0, p0, Ln3/b/f/t0;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public u4()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/Toolbar$d;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$d;->b:Ln3/b/e/i/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v4(I)V
    .locals 3

    .line 1
    iget v0, p0, Ln3/b/f/t0;->b:I

    xor-int/2addr v0, p1

    .line 2
    iput p1, p0, Ln3/b/f/t0;->b:I

    if-eqz v0, :cond_6

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ln3/b/f/t0;->h()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Ln3/b/f/t0;->i()V

    :cond_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0}, Ln3/b/f/t0;->j()V

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Ln3/b/f/t0;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Ln3/b/f/t0;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object v1, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    .line 10
    iget-object v0, p0, Ln3/b/f/t0;->d:Landroid/view/View;

    if-eqz v0, :cond_6

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 12
    :cond_5
    iget-object p1, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public w4()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public x4(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ln3/b/f/t0;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_0
    iput-object p1, p0, Ln3/b/f/t0;->k:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Ln3/b/f/t0;->h()V

    return-void
.end method

.method public y4()V
    .locals 0

    return-void
.end method

.method public z4(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/t0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    return-void
.end method
