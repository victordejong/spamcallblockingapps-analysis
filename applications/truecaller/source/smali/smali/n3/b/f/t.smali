.class public Ln3/b/f/t;
.super Landroid/widget/ToggleButton;
.source "SourceFile"


# instance fields
.field public final a:Ln3/b/f/c;

.field public final b:Ln3/b/f/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101004b

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ToggleButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Ln3/b/f/m0;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 3
    new-instance p1, Ln3/b/f/c;

    invoke-direct {p1, p0}, Ln3/b/f/c;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Ln3/b/f/t;->a:Ln3/b/f/c;

    .line 4
    invoke-virtual {p1, p2, v0}, Ln3/b/f/c;->d(Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Ln3/b/f/q;

    invoke-direct {p1, p0}, Ln3/b/f/q;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Ln3/b/f/t;->b:Ln3/b/f/q;

    .line 6
    invoke-virtual {p1, p2, v0}, Ln3/b/f/q;->e(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ToggleButton;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Ln3/b/f/t;->a:Ln3/b/f/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ln3/b/f/c;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/b/f/t;->b:Ln3/b/f/q;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ln3/b/f/q;->b()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/t;->a:Ln3/b/f/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ln3/b/f/c;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/t;->a:Ln3/b/f/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ln3/b/f/c;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Ln3/b/f/t;->a:Ln3/b/f/c;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ln3/b/f/c;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Ln3/b/f/t;->a:Ln3/b/f/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Ln3/b/f/c;->f(I)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/t;->a:Ln3/b/f/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ln3/b/f/c;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/t;->a:Ln3/b/f/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ln3/b/f/c;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
