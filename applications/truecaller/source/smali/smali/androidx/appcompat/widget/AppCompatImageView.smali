.class public Landroidx/appcompat/widget/AppCompatImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field public final a:Ln3/b/f/c;

.field public final b:Ln3/b/f/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-static {p1}, Ln3/b/f/o0;->a(Landroid/content/Context;)Landroid/content/Context;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Ln3/b/f/m0;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 4
    new-instance p1, Ln3/b/f/c;

    invoke-direct {p1, p0}, Ln3/b/f/c;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->a:Ln3/b/f/c;

    .line 5
    invoke-virtual {p1, p2, p3}, Ln3/b/f/c;->d(Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Ln3/b/f/f;

    invoke-direct {p1, p0}, Ln3/b/f/f;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Ln3/b/f/f;

    .line 7
    invoke-virtual {p1, p2, p3}, Ln3/b/f/f;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->a:Ln3/b/f/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ln3/b/f/c;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Ln3/b/f/f;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ln3/b/f/f;->a()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->a:Ln3/b/f/c;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->a:Ln3/b/f/c;

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

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Ln3/b/f/f;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Ln3/b/f/f;->b:Ln3/b/f/p0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ln3/b/f/p0;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Ln3/b/f/f;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Ln3/b/f/f;->b:Ln3/b/f/p0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ln3/b/f/p0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Ln3/b/f/f;

    .line 2
    iget-object v0, v0, Ln3/b/f/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 4
    invoke-super {p0}, Landroid/widget/ImageView;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->a:Ln3/b/f/c;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ln3/b/f/c;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->a:Ln3/b/f/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Ln3/b/f/c;->f(I)V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Ln3/b/f/f;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ln3/b/f/f;->a()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Ln3/b/f/f;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ln3/b/f/f;->a()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Ln3/b/f/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ln3/b/f/f;->c(I)V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Ln3/b/f/f;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ln3/b/f/f;->a()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->a:Ln3/b/f/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ln3/b/f/c;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->a:Ln3/b/f/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ln3/b/f/c;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Ln3/b/f/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ln3/b/f/f;->d(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Ln3/b/f/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ln3/b/f/f;->e(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
