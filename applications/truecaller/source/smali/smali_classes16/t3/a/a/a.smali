.class public final Lt3/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public b:F

.field public final c:Landroid/graphics/Paint;

.field public d:F

.field public e:F

.field public f:F

.field public g:Landroid/graphics/RectF;

.field public h:F

.field public i:I

.field public j:Lt3/a/a/e/d;

.field public final k:I

.field public final l:Lt3/a/a/e/c;

.field public final m:Lt3/a/a/e/b;

.field public n:J

.field public final o:Z

.field public p:Lt3/a/a/e/d;

.field public q:Lt3/a/a/e/d;


# direct methods
.method public constructor <init>(Lt3/a/a/e/d;ILt3/a/a/e/c;Lt3/a/a/e/b;JZLt3/a/a/e/d;Lt3/a/a/e/d;I)V
    .locals 1

    and-int/lit8 p8, p10, 0x10

    if-eqz p8, :cond_0

    const-wide/16 p5, -0x1

    :cond_0
    and-int/lit8 p8, p10, 0x20

    if-eqz p8, :cond_1

    const/4 p7, 0x1

    :cond_1
    and-int/lit8 p8, p10, 0x40

    const/4 v0, 0x0

    if-eqz p8, :cond_2

    .line 1
    new-instance p8, Lt3/a/a/e/d;

    invoke-direct {p8, v0, v0}, Lt3/a/a/e/d;-><init>(FF)V

    goto :goto_0

    :cond_2
    const/4 p8, 0x0

    :goto_0
    and-int/lit16 p10, p10, 0x80

    if-eqz p10, :cond_3

    .line 2
    new-instance p9, Lt3/a/a/e/d;

    .line 3
    invoke-direct {p9, v0, v0}, Lt3/a/a/e/d;-><init>(FF)V

    :cond_3
    const-string p10, "location"

    .line 4
    invoke-static {p1, p10}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p10, "size"

    invoke-static {p3, p10}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p10, "shape"

    invoke-static {p4, p10}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p10, "acceleration"

    invoke-static {p8, p10}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p10, "velocity"

    invoke-static {p9, p10}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/a/a/a;->j:Lt3/a/a/e/d;

    iput p2, p0, Lt3/a/a/a;->k:I

    iput-object p3, p0, Lt3/a/a/a;->l:Lt3/a/a/e/c;

    iput-object p4, p0, Lt3/a/a/a;->m:Lt3/a/a/e/b;

    iput-wide p5, p0, Lt3/a/a/a;->n:J

    iput-boolean p7, p0, Lt3/a/a/a;->o:Z

    iput-object p8, p0, Lt3/a/a/a;->p:Lt3/a/a/e/d;

    iput-object p9, p0, Lt3/a/a/a;->q:Lt3/a/a/e/d;

    .line 6
    iget p1, p3, Lt3/a/a/e/c;->b:F

    .line 7
    iput p1, p0, Lt3/a/a/a;->a:F

    .line 8
    iget p1, p3, Lt3/a/a/e/c;->a:I

    int-to-float p1, p1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p3

    const-string p4, "Resources.getSystem()"

    invoke-static {p3, p4}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p3

    .line 9
    iput p1, p0, Lt3/a/a/a;->b:F

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lt3/a/a/a;->c:Landroid/graphics/Paint;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 11
    iput p3, p0, Lt3/a/a/a;->d:F

    .line 12
    iget p3, p0, Lt3/a/a/a;->b:F

    iput p3, p0, Lt3/a/a/a;->f:F

    .line 13
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lt3/a/a/a;->g:Landroid/graphics/RectF;

    const/high16 p3, 0x42700000    # 60.0f

    .line 14
    iput p3, p0, Lt3/a/a/a;->h:F

    const/16 p3, 0xff

    .line 15
    iput p3, p0, Lt3/a/a/a;->i:I

    const p3, 0x3e947ae1    # 0.29f

    .line 16
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p5

    invoke-static {p5, p4}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p4, p3

    const/4 p3, 0x3

    int-to-float p3, p3

    mul-float/2addr p3, p4

    .line 17
    new-instance p5, Ljava/util/Random;

    invoke-direct {p5}, Ljava/util/Random;-><init>()V

    invoke-virtual {p5}, Ljava/util/Random;->nextFloat()F

    move-result p5

    mul-float/2addr p5, p3

    add-float/2addr p5, p4

    iput p5, p0, Lt3/a/a/a;->d:F

    .line 18
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
