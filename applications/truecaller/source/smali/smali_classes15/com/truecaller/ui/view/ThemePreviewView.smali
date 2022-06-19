.class public Lcom/truecaller/ui/view/ThemePreviewView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/ContextThemeWrapper;

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->c()Le/a/i5/d;

    move-result-object v1

    .line 3
    iget v1, v1, Le/a/i5/d;->c:I

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object v1

    .line 5
    iget v1, v1, Le/a/i5/d;->c:I

    .line 6
    :goto_0
    invoke-direct {p1, p2, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->a:Landroid/view/ContextThemeWrapper;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0817e0

    .line 8
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 9
    invoke-static {p1, p2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->b:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0817dc

    .line 12
    invoke-static {p1, p2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->c:Landroid/graphics/drawable/Drawable;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0817e1

    .line 15
    invoke-static {p1, p2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->d:Landroid/graphics/drawable/Drawable;

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0817e2

    .line 18
    invoke-static {p1, p2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->e:Landroid/graphics/drawable/Drawable;

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0817de

    .line 21
    invoke-static {p1, p2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->f:Landroid/graphics/drawable/Drawable;

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0817dd

    .line 24
    invoke-static {p1, p2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->g:Landroid/graphics/drawable/Drawable;

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0817df

    .line 27
    invoke-static {p1, p2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->h:Landroid/graphics/drawable/Drawable;

    .line 29
    iget-object p1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object v1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v0, v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 30
    iget-object p1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object v1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v0, v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 31
    iget-object p1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object v1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v0, v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 32
    iget-object p1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object v1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v0, v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 33
    iget-object p1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object v1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v0, v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 34
    iget-object p1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object v1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v0, v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 35
    iget-object p1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object v1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v0, v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 36
    invoke-virtual {p0}, Lcom/truecaller/ui/view/ThemePreviewView;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/view/ThemePreviewView;->a:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const v2, 0x7f0406de

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    .line 5
    sget-object v5, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 6
    invoke-static {v2, v4}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 7
    iput v2, p0, Lcom/truecaller/ui/view/ThemePreviewView;->i:I

    const v2, 0x7f040728

    .line 8
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    .line 10
    invoke-static {v2, v4}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 11
    iput v2, p0, Lcom/truecaller/ui/view/ThemePreviewView;->j:I

    const v2, 0x7f04072a

    .line 12
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    .line 14
    invoke-static {v2, v4}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 15
    iput v2, p0, Lcom/truecaller/ui/view/ThemePreviewView;->k:I

    const v2, 0x7f0406e8

    .line 16
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    .line 18
    invoke-static {v2, v4}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 19
    iput v2, p0, Lcom/truecaller/ui/view/ThemePreviewView;->m:I

    const v2, 0x7f0406f4

    .line 20
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    .line 22
    invoke-static {v0, v1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 23
    iput v0, p0, Lcom/truecaller/ui/view/ThemePreviewView;->l:I

    .line 24
    iget-object v0, p0, Lcom/truecaller/ui/view/ThemePreviewView;->c:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->m:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 25
    iget-object v0, p0, Lcom/truecaller/ui/view/ThemePreviewView;->d:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->l:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 26
    iget-object v0, p0, Lcom/truecaller/ui/view/ThemePreviewView;->e:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->l:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 27
    iget-object v0, p0, Lcom/truecaller/ui/view/ThemePreviewView;->f:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->k:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 28
    iget-object v0, p0, Lcom/truecaller/ui/view/ThemePreviewView;->h:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->j:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 29
    iget-object v0, p0, Lcom/truecaller/ui/view/ThemePreviewView;->g:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->i:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/ui/view/ThemePreviewView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/ui/view/ThemePreviewView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/ui/view/ThemePreviewView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/ui/view/ThemePreviewView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/ui/view/ThemePreviewView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/ui/view/ThemePreviewView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 8
    iget-object v0, p0, Lcom/truecaller/ui/view/ThemePreviewView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/ui/view/ThemePreviewView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/truecaller/ui/view/ThemePreviewView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method
