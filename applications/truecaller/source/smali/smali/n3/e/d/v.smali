.class public abstract Ln3/e/d/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/d/v$a;
    }
.end annotation


# instance fields
.field public a:Landroid/util/Size;

.field public b:Landroid/widget/FrameLayout;

.field public final c:Ln3/e/d/u;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Ln3/e/d/u;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln3/e/d/v;->d:Z

    .line 3
    iput-object p1, p0, Ln3/e/d/v;->b:Landroid/widget/FrameLayout;

    .line 4
    iput-object p2, p0, Ln3/e/d/v;->c:Ln3/e/d/u;

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/view/View;
.end method

.method public abstract b()Landroid/graphics/Bitmap;
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e(Ln3/e/b/f1;Ln3/e/d/v$a;)V
.end method

.method public f()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ln3/e/d/v;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    iget-boolean v1, p0, Ln3/e/d/v;->d:Z

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v1, p0, Ln3/e/d/v;->c:Ln3/e/d/u;

    new-instance v2, Landroid/util/Size;

    iget-object v3, p0, Ln3/e/d/v;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Ln3/e/d/v;->b:Landroid/widget/FrameLayout;

    .line 4
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    iget-object v3, p0, Ln3/e/d/v;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v3

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    const-string v6, "PreviewTransform"

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1}, Ln3/e/d/u;->f()Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_2

    .line 8
    :cond_2
    instance-of v4, v0, Landroid/view/TextureView;

    if-eqz v4, :cond_3

    .line 9
    move-object v4, v0

    check-cast v4, Landroid/view/TextureView;

    invoke-virtual {v1}, Ln3/e/d/u;->d()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 11
    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    iget v7, v1, Ln3/e/d/u;->e:I

    if-eq v4, v7, :cond_4

    const-string v4, "Non-display rotation not supported with SurfaceView / PERFORMANCE mode."

    .line 12
    invoke-static {v6, v4, v5}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_4
    :goto_0
    invoke-virtual {v1, v2, v3}, Ln3/e/d/u;->e(Landroid/util/Size;I)Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotX(F)V

    .line 15
    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    .line 16
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, v1, Ln3/e/d/u;->a:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 17
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v1, v1, Ln3/e/d/u;->a:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 18
    iget v1, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 19
    iget v1, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 20
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transform not applied due to PreviewView size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v6, v0, v5}, Ln3/e/b/y0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public abstract g()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method
