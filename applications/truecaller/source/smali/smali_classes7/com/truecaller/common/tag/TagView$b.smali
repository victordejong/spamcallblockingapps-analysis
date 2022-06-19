.class public Lcom/truecaller/common/tag/TagView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/r/k/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/common/tag/TagView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public final b:Landroid/graphics/RectF;

.field public c:F

.field public d:F

.field public e:Le/f/a/r/d;

.field public final synthetic f:Lcom/truecaller/common/tag/TagView;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/tag/TagView;Lcom/truecaller/common/tag/TagView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/common/tag/TagView$b;->f:Lcom/truecaller/common/tag/TagView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/truecaller/common/tag/TagView$b;->b:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/tag/TagView$b;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/truecaller/common/tag/TagView$b;->f:Lcom/truecaller/common/tag/TagView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/truecaller/common/tag/TagView$b;->d:F

    sub-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 2
    iget-object v0, p0, Lcom/truecaller/common/tag/TagView$b;->b:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 3
    iget-object v1, p0, Lcom/truecaller/common/tag/TagView$b;->f:Lcom/truecaller/common/tag/TagView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/truecaller/common/tag/TagView$b;->c:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 4
    iget-object v0, p0, Lcom/truecaller/common/tag/TagView$b;->b:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method public b()Le/f/a/r/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/tag/TagView$b;->e:Le/f/a/r/d;

    return-object v0
.end method

.method public c(Le/f/a/r/k/j;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/truecaller/common/tag/TagView$b;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public e(Ljava/lang/Object;Le/f/a/r/l/d;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/truecaller/common/tag/TagView$b;->f:Lcom/truecaller/common/tag/TagView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/truecaller/common/tag/TagView$b;->f:Lcom/truecaller/common/tag/TagView;

    .line 2
    iget-object v0, v0, Lcom/truecaller/common/tag/TagView;->z:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 3
    sget v0, Lcom/truecaller/common/R$dimen;->tag_view_icon_size:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 4
    check-cast p1, Landroid/graphics/Bitmap;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    int-to-float p2, p2

    .line 6
    iput p2, p0, Lcom/truecaller/common/tag/TagView$b;->c:F

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/truecaller/common/tag/TagView$b;->d:F

    goto :goto_1

    :cond_1
    int-to-float p2, p2

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/truecaller/common/tag/TagView$b;->c:F

    .line 9
    iput p2, p0, Lcom/truecaller/common/tag/TagView$b;->d:F

    .line 10
    :goto_1
    invoke-virtual {p0}, Lcom/truecaller/common/tag/TagView$b;->a()V

    .line 11
    iput-object p1, p0, Lcom/truecaller/common/tag/TagView$b;->a:Landroid/graphics/Bitmap;

    .line 12
    iget-object p1, p0, Lcom/truecaller/common/tag/TagView$b;->f:Lcom/truecaller/common/tag/TagView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public g(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/truecaller/common/tag/TagView$b;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public h(Le/f/a/r/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/common/tag/TagView$b;->e:Le/f/a/r/d;

    return-void
.end method

.method public i(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/truecaller/common/tag/TagView$b;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public j(Le/f/a/r/k/j;)V
    .locals 1

    .line 1
    check-cast p1, Le/f/a/r/j;

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0, v0}, Le/f/a/r/j;->a(II)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
