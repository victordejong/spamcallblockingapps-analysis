.class public final Le/a/t/a/w/a;
.super Landroid/text/style/DynamicDrawableSpan;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public final b:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;F)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;-><init>()V

    iput-object p1, p0, Le/a/t/a/w/a;->a:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Le/a/t/a/w/a;->b:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    const-string p3, "canvas"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "text"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "paint"

    invoke-static {p9, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    .line 2
    iget p3, p2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float p2, p3, p2

    int-to-float p4, p7

    add-float/2addr p4, p3

    const/4 p3, 0x2

    int-to-float p3, p3

    div-float/2addr p2, p3

    sub-float/2addr p4, p2

    .line 3
    iget p2, p0, Le/a/t/a/w/a;->b:F

    div-float/2addr p2, p3

    sub-float/2addr p4, p2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    invoke-virtual {p1, p5, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6
    iget-object p2, p0, Le/a/t/a/w/a;->a:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Le/a/t/a/w/a;->b:F

    float-to-int p4, p3

    float-to-int p3, p3

    const/4 p5, 0x0

    invoke-virtual {p2, p5, p5, p4, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    iget-object p2, p0, Le/a/t/a/w/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/a/w/a;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    const-string p3, "paint"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "text"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 2
    iget p2, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr p2, p1

    const/4 p3, 0x2

    int-to-float p3, p3

    div-float/2addr p2, p3

    add-float/2addr p2, p1

    .line 3
    iget p1, p0, Le/a/t/a/w/a;->b:F

    div-float p4, p1, p3

    sub-float p4, p2, p4

    float-to-int p4, p4

    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 4
    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    div-float/2addr p1, p3

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 5
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 6
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 7
    :cond_0
    iget p1, p0, Le/a/t/a/w/a;->b:F

    float-to-int p1, p1

    return p1
.end method
