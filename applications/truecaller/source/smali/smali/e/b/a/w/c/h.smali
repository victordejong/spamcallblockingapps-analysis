.class public Le/b/a/w/c/h;
.super Le/b/a/c0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/b/a/c0/a<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Landroid/graphics/Path;

.field public final p:Le/b/a/c0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/c0/a<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/b/a/e;Le/b/a/c0/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/e;",
            "Le/b/a/c0/a<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v2, p2, Le/b/a/c0/a;->b:Ljava/lang/Object;

    iget-object v3, p2, Le/b/a/c0/a;->c:Ljava/lang/Object;

    iget-object v4, p2, Le/b/a/c0/a;->d:Landroid/view/animation/Interpolator;

    iget v5, p2, Le/b/a/c0/a;->e:F

    iget-object v6, p2, Le/b/a/c0/a;->f:Ljava/lang/Float;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Le/b/a/c0/a;-><init>(Le/b/a/e;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 2
    iput-object p2, p0, Le/b/a/w/c/h;->p:Le/b/a/c0/a;

    .line 3
    invoke-virtual {p0}, Le/b/a/w/c/h;->e()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 12

    .line 1
    iget-object v0, p0, Le/b/a/c0/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/b/a/c0/a;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    check-cast v1, Landroid/graphics/PointF;

    move-object v2, v0

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 2
    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Le/b/a/c0/a;->c:Ljava/lang/Object;

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Le/b/a/c0/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p0, Le/b/a/w/c/h;->p:Le/b/a/c0/a;

    iget-object v3, v2, Le/b/a/c0/a;->m:Landroid/graphics/PointF;

    iget-object v2, v2, Le/b/a/c0/a;->n:Landroid/graphics/PointF;

    .line 5
    sget-object v4, Le/b/a/b0/e;->a:Landroid/graphics/PathMeasure;

    .line 6
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 7
    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v3}, Landroid/graphics/PointF;->length()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    invoke-virtual {v2}, Landroid/graphics/PointF;->length()F

    move-result v5

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 9
    :cond_1
    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v5

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float v7, v0, v3

    iget v10, v1, Landroid/graphics/PointF;->x:F

    iget v0, v2, Landroid/graphics/PointF;->x:F

    add-float v8, v10, v0

    iget v11, v1, Landroid/graphics/PointF;->y:F

    iget v0, v2, Landroid/graphics/PointF;->y:F

    add-float v9, v11, v0

    move-object v5, v4

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_1

    .line 10
    :cond_2
    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 11
    :goto_1
    iput-object v4, p0, Le/b/a/w/c/h;->o:Landroid/graphics/Path;

    :cond_3
    return-void
.end method
