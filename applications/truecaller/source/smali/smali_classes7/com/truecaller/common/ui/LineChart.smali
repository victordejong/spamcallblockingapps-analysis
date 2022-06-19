.class public final Lcom/truecaller/common/ui/LineChart;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J7\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0015\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u001c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u001c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020#0\u001c8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010\u001fR\u0016\u0010(\u001a\u00020\u00078B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'\u00a8\u0006)"
    }
    d2 = {
        "Lcom/truecaller/common/ui/LineChart;",
        "Landroid/view/View;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Ls1/s;",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "",
        "changed",
        "",
        "left",
        "top",
        "right",
        "bottom",
        "onLayout",
        "(ZIIII)V",
        "",
        "progress",
        "setProgress",
        "(F)V",
        "Landroid/graphics/RectF;",
        "a",
        "Landroid/graphics/RectF;",
        "rect",
        "Landroid/graphics/Path;",
        "b",
        "Landroid/graphics/Path;",
        "rectPath",
        "",
        "",
        "e",
        "Ljava/util/List;",
        "data",
        "d",
        "F",
        "Landroid/graphics/Paint;",
        "c",
        "paints",
        "getAnimate",
        "()Z",
        "animate",
        "common-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/RectF;

.field public final b:Landroid/graphics/Path;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field public d:F

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/truecaller/common/ui/LineChart;->a:Landroid/graphics/RectF;

    .line 4
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/truecaller/common/ui/LineChart;->b:Landroid/graphics/Path;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/truecaller/common/ui/LineChart;->c:Ljava/util/List;

    const/high16 p1, -0x40800000    # -1.0f

    .line 6
    iput p1, p0, Lcom/truecaller/common/ui/LineChart;->d:F

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/truecaller/common/ui/LineChart;->e:Ljava/util/List;

    return-void
.end method

.method private final getAnimate()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/common/ui/LineChart;->d:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/common/ui/LineChart;->b:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 3
    iget-object v0, p0, Lcom/truecaller/common/ui/LineChart;->e:Ljava/util/List;

    invoke-static {v0}, Ls1/u/i;->J0(Ljava/lang/Iterable;)J

    move-result-wide v0

    .line 4
    invoke-direct {p0}, Lcom/truecaller/common/ui/LineChart;->getAnimate()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/truecaller/common/ui/LineChart;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    move v5, v4

    :goto_0
    if-ge v3, v2, :cond_3

    .line 6
    iget-object v4, p0, Lcom/truecaller/common/ui/LineChart;->a:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v6, p0, Lcom/truecaller/common/ui/LineChart;->e:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    mul-float/2addr v6, v4

    long-to-float v4, v0

    div-float/2addr v6, v4

    .line 7
    iget v4, p0, Lcom/truecaller/common/ui/LineChart;->d:F

    add-float v10, v5, v6

    cmpl-float v6, v4, v10

    if-ltz v6, :cond_0

    const/4 v6, 0x0

    .line 8
    iget-object v4, p0, Lcom/truecaller/common/ui/LineChart;->a:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v8

    iget-object v4, p0, Lcom/truecaller/common/ui/LineChart;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/graphics/Paint;

    move-object v4, p1

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    cmpl-float v6, v4, v5

    if-lez v6, :cond_1

    add-float/2addr v4, v5

    const/4 v6, 0x0

    add-float v7, v4, v5

    .line 9
    iget-object v4, p0, Lcom/truecaller/common/ui/LineChart;->a:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v8

    iget-object v4, p0, Lcom/truecaller/common/ui/LineChart;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v5, v10

    goto :goto_0

    .line 10
    :cond_2
    iget-object v2, p0, Lcom/truecaller/common/ui/LineChart;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    move v5, v4

    :goto_2
    if-ge v3, v2, :cond_3

    .line 11
    iget-object v4, p0, Lcom/truecaller/common/ui/LineChart;->a:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v6, p0, Lcom/truecaller/common/ui/LineChart;->e:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    mul-float/2addr v6, v4

    long-to-float v4, v0

    div-float/2addr v6, v4

    const/4 v7, 0x0

    add-float v10, v6, v5

    .line 12
    iget-object v4, p0, Lcom/truecaller/common/ui/LineChart;->a:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v8

    iget-object v4, p0, Lcom/truecaller/common/ui/LineChart;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v7

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    move v5, v10

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    int-to-float p1, p4

    sub-int/2addr p5, p3

    int-to-float p2, p5

    .line 2
    iget-object p3, p0, Lcom/truecaller/common/ui/LineChart;->a:Landroid/graphics/RectF;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/common/ui/LineChart;->b:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-object p1, p0, Lcom/truecaller/common/ui/LineChart;->b:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/truecaller/common/ui/LineChart;->a:Landroid/graphics/RectF;

    const/4 p4, 0x2

    int-to-float p4, p4

    div-float/2addr p2, p4

    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p3, p2, p2, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public final setProgress(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/common/ui/LineChart;->d:F

    return-void
.end method
