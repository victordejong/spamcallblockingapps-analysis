.class public abstract Lg/e/a/a/k/d;
.super Lg/e/a/a/k/l;
.source "SourceFile"


# instance fields
.field protected b:Lg/e/a/a/a/a;

.field protected c:Landroid/graphics/Paint;

.field protected d:Landroid/graphics/Paint;

.field protected e:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lg/e/a/a/a/a;Lg/e/a/a/l/j;)V
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lg/e/a/a/k/l;-><init>(Lg/e/a/a/l/j;)V

    .line 2
    iput-object p1, p0, Lg/e/a/a/k/d;->b:Lg/e/a/a/a/a;

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    .line 4
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lg/e/a/a/k/d;->e:Landroid/graphics/Paint;

    const/16 v0, 0x3f

    .line 7
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object p1, p0, Lg/e/a/a/k/d;->e:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 9
    iget-object p1, p0, Lg/e/a/a/k/d;->e:Landroid/graphics/Paint;

    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {v0}, Lg/e/a/a/l/i;->e(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lg/e/a/a/k/d;->d:Landroid/graphics/Paint;

    .line 11
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iget-object p1, p0, Lg/e/a/a/k/d;->d:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 13
    iget-object p1, p0, Lg/e/a/a/k/d;->d:Landroid/graphics/Paint;

    const/16 p2, 0xff

    const/16 v0, 0xbb

    const/16 v1, 0x73

    invoke-static {p2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected a(Lg/e/a/a/h/b/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/d;->e:Landroid/graphics/Paint;

    invoke-interface {p1}, Lg/e/a/a/h/b/d;->T()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget-object v0, p0, Lg/e/a/a/k/d;->e:Landroid/graphics/Paint;

    invoke-interface {p1}, Lg/e/a/a/h/b/d;->F()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public abstract b(Landroid/graphics/Canvas;)V
.end method

.method public abstract c(Landroid/graphics/Canvas;)V
.end method

.method public abstract d(Landroid/graphics/Canvas;[Lg/e/a/a/g/c;)V
.end method

.method public abstract e(Landroid/graphics/Canvas;)V
.end method

.method public abstract f()V
.end method

.method protected g(Lg/e/a/a/h/a/c;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Lg/e/a/a/h/a/c;->getData()Lg/e/a/a/e/g;

    move-result-object v0

    invoke-virtual {v0}, Lg/e/a/a/e/g;->h()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1}, Lg/e/a/a/h/a/c;->getMaxVisibleCount()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    .line 2
    invoke-virtual {v1}, Lg/e/a/a/l/j;->q()F

    move-result v1

    mul-float p1, p1, v1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
