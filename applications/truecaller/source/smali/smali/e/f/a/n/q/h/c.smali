.class public Le/f/a/n/q/h/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/q/h/g$b;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/n/q/h/c$a;
    }
.end annotation


# instance fields
.field public final a:Le/f/a/n/q/h/c$a;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:Z

.field public i:Landroid/graphics/Paint;

.field public j:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/f/a/l/a;Le/f/a/n/m;IILandroid/graphics/Bitmap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/f/a/l/a;",
            "Le/f/a/n/m<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Le/f/a/n/q/h/c$a;

    new-instance v8, Le/f/a/n/q/h/g;

    .line 2
    invoke-static {p1}, Le/f/a/c;->b(Landroid/content/Context;)Le/f/a/c;

    move-result-object v2

    move-object v1, v8

    move-object v3, p2

    move v4, p4

    move v5, p5

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Le/f/a/n/q/h/g;-><init>(Le/f/a/c;Le/f/a/l/a;IILe/f/a/n/m;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v8}, Le/f/a/n/q/h/c$a;-><init>(Le/f/a/n/q/h/g;)V

    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Le/f/a/n/q/h/c;->e:Z

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Le/f/a/n/q/h/c;->g:I

    .line 6
    iput-object v0, p0, Le/f/a/n/q/h/c;->a:Le/f/a/n/q/h/c$a;

    return-void
.end method

.method public constructor <init>(Le/f/a/n/q/h/c$a;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Le/f/a/n/q/h/c;->e:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Le/f/a/n/q/h/c;->g:I

    .line 10
    iput-object p1, p0, Le/f/a/n/q/h/c;->a:Le/f/a/n/q/h/c$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 2
    :goto_0
    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Le/f/a/n/q/h/c;->stop()V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    iget-object v0, p0, Le/f/a/n/q/h/c;->a:Le/f/a/n/q/h/c$a;

    iget-object v0, v0, Le/f/a/n/q/h/c$a;->a:Le/f/a/n/q/h/g;

    .line 8
    iget-object v1, v0, Le/f/a/n/q/h/g;->i:Le/f/a/n/q/h/g$a;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    iget v1, v1, Le/f/a/n/q/h/g$a;->e:I

    goto :goto_1

    :cond_2
    move v1, v2

    .line 9
    :goto_1
    iget-object v0, v0, Le/f/a/n/q/h/g;->a:Le/f/a/l/a;

    invoke-interface {v0}, Le/f/a/l/a;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_3

    .line 10
    iget v0, p0, Le/f/a/n/q/h/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/f/a/n/q/h/c;->f:I

    .line 11
    :cond_3
    iget v0, p0, Le/f/a/n/q/h/c;->g:I

    if-eq v0, v2, :cond_4

    iget v1, p0, Le/f/a/n/q/h/c;->f:I

    if-lt v1, v0, :cond_4

    .line 12
    invoke-virtual {p0}, Le/f/a/n/q/h/c;->stop()V

    :cond_4
    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/n/q/h/c;->a:Le/f/a/n/q/h/c$a;

    iget-object v0, v0, Le/f/a/n/q/h/c$a;->a:Le/f/a/n/q/h/g;

    .line 2
    iget-object v0, v0, Le/f/a/n/q/h/g;->l:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final c()Landroid/graphics/Paint;
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/a/n/q/h/c;->i:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Le/f/a/n/q/h/c;->i:Landroid/graphics/Paint;

    .line 3
    :cond_0
    iget-object v0, p0, Le/f/a/n/q/h/c;->i:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/f/a/n/q/h/c;->d:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    invoke-static {v0, v2}, Ln3/g0/y;->t(ZLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/f/a/n/q/h/c;->a:Le/f/a/n/q/h/c$a;

    iget-object v0, v0, Le/f/a/n/q/h/c$a;->a:Le/f/a/n/q/h/g;

    .line 3
    iget-object v0, v0, Le/f/a/n/q/h/g;->a:Le/f/a/l/a;

    invoke-interface {v0}, Le/f/a/l/a;->e()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_1

    .line 5
    :cond_0
    iget-boolean v0, p0, Le/f/a/n/q/h/c;->b:Z

    if-nez v0, :cond_5

    .line 6
    iput-boolean v1, p0, Le/f/a/n/q/h/c;->b:Z

    .line 7
    iget-object v0, p0, Le/f/a/n/q/h/c;->a:Le/f/a/n/q/h/c$a;

    iget-object v0, v0, Le/f/a/n/q/h/c$a;->a:Le/f/a/n/q/h/g;

    .line 8
    iget-boolean v2, v0, Le/f/a/n/q/h/g;->j:Z

    if-nez v2, :cond_4

    .line 9
    iget-object v2, v0, Le/f/a/n/q/h/g;->c:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    iget-object v2, v0, Le/f/a/n/q/h/g;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    .line 11
    iget-object v3, v0, Le/f/a/n/q/h/g;->c:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_2

    .line 12
    iget-boolean v2, v0, Le/f/a/n/q/h/g;->f:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    iput-boolean v1, v0, Le/f/a/n/q/h/g;->f:Z

    const/4 v1, 0x0

    .line 14
    iput-boolean v1, v0, Le/f/a/n/q/h/g;->j:Z

    .line 15
    invoke-virtual {v0}, Le/f/a/n/q/h/g;->a()V

    .line 16
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_1

    .line 17
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot subscribe twice in a row"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot subscribe to a cleared frame loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Le/f/a/n/q/h/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Le/f/a/n/q/h/c;->h:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x77

    .line 3
    invoke-virtual {p0}, Le/f/a/n/q/h/c;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Le/f/a/n/q/h/c;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 4
    iget-object v4, p0, Le/f/a/n/q/h/c;->j:Landroid/graphics/Rect;

    if-nez v4, :cond_1

    .line 5
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Le/f/a/n/q/h/c;->j:Landroid/graphics/Rect;

    .line 6
    :cond_1
    iget-object v4, p0, Le/f/a/n/q/h/c;->j:Landroid/graphics/Rect;

    .line 7
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Le/f/a/n/q/h/c;->h:Z

    .line 9
    :cond_2
    iget-object v0, p0, Le/f/a/n/q/h/c;->a:Le/f/a/n/q/h/c$a;

    iget-object v0, v0, Le/f/a/n/q/h/c$a;->a:Le/f/a/n/q/h/g;

    .line 10
    iget-object v1, v0, Le/f/a/n/q/h/g;->i:Le/f/a/n/q/h/g$a;

    if-eqz v1, :cond_3

    .line 11
    iget-object v0, v1, Le/f/a/n/q/h/g$a;->g:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, v0, Le/f/a/n/q/h/g;->l:Landroid/graphics/Bitmap;

    :goto_0
    const/4 v1, 0x0

    .line 13
    iget-object v2, p0, Le/f/a/n/q/h/c;->j:Landroid/graphics/Rect;

    if-nez v2, :cond_4

    .line 14
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Le/f/a/n/q/h/c;->j:Landroid/graphics/Rect;

    .line 15
    :cond_4
    iget-object v2, p0, Le/f/a/n/q/h/c;->j:Landroid/graphics/Rect;

    .line 16
    invoke-virtual {p0}, Le/f/a/n/q/h/c;->c()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/f/a/n/q/h/c;->b:Z

    .line 2
    iget-object v1, p0, Le/f/a/n/q/h/c;->a:Le/f/a/n/q/h/c$a;

    iget-object v1, v1, Le/f/a/n/q/h/c$a;->a:Le/f/a/n/q/h/g;

    .line 3
    iget-object v2, v1, Le/f/a/n/q/h/g;->c:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object v2, v1, Le/f/a/n/q/h/g;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iput-boolean v0, v1, Le/f/a/n/q/h/g;->f:Z

    :cond_0
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/n/q/h/c;->a:Le/f/a/n/q/h/c$a;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/n/q/h/c;->a:Le/f/a/n/q/h/c$a;

    iget-object v0, v0, Le/f/a/n/q/h/c$a;->a:Le/f/a/n/q/h/g;

    .line 2
    iget v0, v0, Le/f/a/n/q/h/g;->q:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/n/q/h/c;->a:Le/f/a/n/q/h/c$a;

    iget-object v0, v0, Le/f/a/n/q/h/c$a;->a:Le/f/a/n/q/h/g;

    .line 2
    iget v0, v0, Le/f/a/n/q/h/g;->p:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/f/a/n/q/h/c;->b:Z

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/f/a/n/q/h/c;->h:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/f/a/n/q/h/c;->c()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/f/a/n/q/h/c;->c()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/f/a/n/q/h/c;->d:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    invoke-static {v0, v1}, Ln3/g0/y;->t(ZLjava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Le/f/a/n/q/h/c;->e:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/f/a/n/q/h/c;->e()V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Le/f/a/n/q/h/c;->c:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Le/f/a/n/q/h/c;->d()V

    .line 6
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/f/a/n/q/h/c;->c:Z

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/f/a/n/q/h/c;->f:I

    .line 3
    iget-boolean v0, p0, Le/f/a/n/q/h/c;->e:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Le/f/a/n/q/h/c;->d()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/f/a/n/q/h/c;->c:Z

    .line 2
    invoke-virtual {p0}, Le/f/a/n/q/h/c;->e()V

    return-void
.end method
