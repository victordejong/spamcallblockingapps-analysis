.class public Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;
.super Lcom/google/android/material/card/MaterialCardView;
.source "SourceFile"

# interfaces
.implements Le/m/a/g/i/d;


# instance fields
.field public final j:Le/m/a/g/i/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Le/m/a/g/i/c;

    invoke-direct {p1, p0}, Le/m/a/g/i/c;-><init>(Le/m/a/g/i/c$a;)V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->j:Le/m/a/g/i/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->j:Le/m/a/g/i/c;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->j:Le/m/a/g/i/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/m/a/g/i/c;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->j:Le/m/a/g/i/c;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->j:Le/m/a/g/i/c;

    .line 2
    iget-object v0, v0, Le/m/a/g/i/c;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->j:Le/m/a/g/i/c;

    .line 2
    iget-object v0, v0, Le/m/a/g/i/c;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Le/m/a/g/i/d$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->j:Le/m/a/g/i/c;

    invoke-virtual {v0}, Le/m/a/g/i/c;->c()Le/m/a/g/i/d$e;

    move-result-object v0

    return-object v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->j:Le/m/a/g/i/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Le/m/a/g/i/c;->d()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->j:Le/m/a/g/i/c;

    .line 2
    iput-object p1, v0, Le/m/a/g/i/c;->g:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object p1, v0, Le/m/a/g/i/c;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->j:Le/m/a/g/i/c;

    .line 2
    iget-object v1, v0, Le/m/a/g/i/c;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object p1, v0, Le/m/a/g/i/c;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRevealInfo(Le/m/a/g/i/d$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->j:Le/m/a/g/i/c;

    invoke-virtual {v0, p1}, Le/m/a/g/i/c;->e(Le/m/a/g/i/d$e;)V

    return-void
.end method
