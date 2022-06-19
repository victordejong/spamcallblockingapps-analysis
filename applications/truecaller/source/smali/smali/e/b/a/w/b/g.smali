.class public Le/b/a/w/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b/a/w/b/e;
.implements Le/b/a/w/c/a$a;
.implements Le/b/a/w/b/k;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Paint;

.field public final c:Le/b/a/y/l/b;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/b/a/w/b/m;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public i:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Le/b/a/k;


# direct methods
.method public constructor <init>(Le/b/a/k;Le/b/a/y/l/b;Le/b/a/y/k/m;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Le/b/a/w/b/g;->a:Landroid/graphics/Path;

    .line 3
    new-instance v1, Le/b/a/w/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Le/b/a/w/a;-><init>(I)V

    iput-object v1, p0, Le/b/a/w/b/g;->b:Landroid/graphics/Paint;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Le/b/a/w/b/g;->f:Ljava/util/List;

    .line 5
    iput-object p2, p0, Le/b/a/w/b/g;->c:Le/b/a/y/l/b;

    .line 6
    iget-object v1, p3, Le/b/a/y/k/m;->c:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Le/b/a/w/b/g;->d:Ljava/lang/String;

    .line 8
    iget-boolean v1, p3, Le/b/a/y/k/m;->f:Z

    .line 9
    iput-boolean v1, p0, Le/b/a/w/b/g;->e:Z

    .line 10
    iput-object p1, p0, Le/b/a/w/b/g;->j:Le/b/a/k;

    .line 11
    iget-object p1, p3, Le/b/a/y/k/m;->d:Le/b/a/y/j/a;

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p3, Le/b/a/y/k/m;->e:Le/b/a/y/j/d;

    if-nez p1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p3, Le/b/a/y/k/m;->b:Landroid/graphics/Path$FillType;

    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 15
    iget-object p1, p3, Le/b/a/y/k/m;->d:Le/b/a/y/j/a;

    .line 16
    invoke-virtual {p1}, Le/b/a/y/j/a;->f()Le/b/a/w/c/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/w/b/g;->g:Le/b/a/w/c/a;

    .line 17
    iget-object v0, p1, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p2, p1}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    .line 19
    iget-object p1, p3, Le/b/a/y/k/m;->e:Le/b/a/y/j/d;

    .line 20
    invoke-virtual {p1}, Le/b/a/y/j/d;->f()Le/b/a/w/c/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/w/b/g;->h:Le/b/a/w/c/a;

    .line 21
    iget-object p3, p1, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {p2, p1}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Le/b/a/w/b/g;->g:Le/b/a/w/c/a;

    .line 24
    iput-object p1, p0, Le/b/a/w/b/g;->h:Le/b/a/w/c/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 1
    iget-object p3, p0, Le/b/a/w/b/g;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    .line 2
    :goto_0
    iget-object v1, p0, Le/b/a/w/b/g;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Le/b/a/w/b/g;->a:Landroid/graphics/Path;

    iget-object v2, p0, Le/b/a/w/b/g;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/b/a/w/b/m;

    invoke-interface {v2}, Le/b/a/w/b/m;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Le/b/a/w/b/g;->a:Landroid/graphics/Path;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5
    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/b/a/w/b/g;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Le/b/a/c;->a:Ljava/util/Set;

    .line 3
    iget-object v0, p0, Le/b/a/w/b/g;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Le/b/a/w/b/g;->g:Le/b/a/w/c/a;

    check-cast v1, Le/b/a/w/c/b;

    .line 4
    invoke-virtual {v1}, Le/b/a/w/c/a;->a()Le/b/a/c0/a;

    move-result-object v2

    invoke-virtual {v1}, Le/b/a/w/c/a;->c()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Le/b/a/w/c/b;->j(Le/b/a/c0/a;F)I

    move-result v1

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p3

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p3, v0

    .line 6
    iget-object v1, p0, Le/b/a/w/b/g;->h:Le/b/a/w/c/a;

    invoke-virtual {v1}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p3, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p3, v1

    mul-float/2addr p3, v0

    float-to-int p3, p3

    .line 7
    iget-object v0, p0, Le/b/a/w/b/g;->b:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-static {p3, v2, v1}, Le/b/a/b0/d;->c(III)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    iget-object p3, p0, Le/b/a/w/b/g;->i:Le/b/a/w/c/a;

    if-eqz p3, :cond_1

    .line 9
    iget-object v0, p0, Le/b/a/w/b/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p3}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 10
    :cond_1
    iget-object p3, p0, Le/b/a/w/b/g;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 11
    :goto_0
    iget-object p3, p0, Le/b/a/w/b/g;->f:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_2

    .line 12
    iget-object p3, p0, Le/b/a/w/b/g;->a:Landroid/graphics/Path;

    iget-object v0, p0, Le/b/a/w/b/g;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/w/b/m;

    invoke-interface {v0}, Le/b/a/w/b/m;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget-object p2, p0, Le/b/a/w/b/g;->a:Landroid/graphics/Path;

    iget-object p3, p0, Le/b/a/w/b/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const-string p1, "FillContent#draw"

    .line 14
    invoke-static {p1}, Le/b/a/c;->a(Ljava/lang/String;)F

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/w/b/g;->j:Le/b/a/k;

    invoke-virtual {v0}, Le/b/a/k;->invalidateSelf()V

    return-void
.end method

.method public e(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/b/a/w/b/c;",
            ">;",
            "Ljava/util/List<",
            "Le/b/a/w/b/c;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/w/b/c;

    .line 3
    instance-of v1, v0, Le/b/a/w/b/m;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Le/b/a/w/b/g;->f:Ljava/util/List;

    check-cast v0, Le/b/a/w/b/m;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(Ljava/lang/Object;Le/b/a/c0/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Le/b/a/c0/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Le/b/a/o;->a:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Le/b/a/w/b/g;->g:Le/b/a/w/c/a;

    .line 3
    iget-object v0, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    .line 4
    iput-object p2, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Le/b/a/o;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Le/b/a/w/b/g;->h:Le/b/a/w/c/a;

    .line 7
    iget-object v0, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    .line 8
    iput-object p2, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    goto :goto_0

    .line 9
    :cond_1
    sget-object v0, Le/b/a/o;->B:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    if-nez p2, :cond_2

    .line 10
    iput-object p1, p0, Le/b/a/w/b/g;->i:Le/b/a/w/c/a;

    goto :goto_0

    .line 11
    :cond_2
    new-instance v0, Le/b/a/w/c/p;

    .line 12
    invoke-direct {v0, p2, p1}, Le/b/a/w/c/p;-><init>(Le/b/a/c0/c;Ljava/lang/Object;)V

    .line 13
    iput-object v0, p0, Le/b/a/w/b/g;->i:Le/b/a/w/c/a;

    .line 14
    iget-object p1, v0, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p0, Le/b/a/w/b/g;->c:Le/b/a/y/l/b;

    iget-object p2, p0, Le/b/a/w/b/g;->i:Le/b/a/w/c/a;

    invoke-virtual {p1, p2}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public g(Le/b/a/y/e;ILjava/util/List;Le/b/a/y/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/y/e;",
            "I",
            "Ljava/util/List<",
            "Le/b/a/y/e;",
            ">;",
            "Le/b/a/y/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4, p0}, Le/b/a/b0/d;->f(Le/b/a/y/e;ILjava/util/List;Le/b/a/y/e;Le/b/a/w/b/k;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/w/b/g;->d:Ljava/lang/String;

    return-object v0
.end method
