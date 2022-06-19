.class public Le/l/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Ljava/lang/CharSequence;

.field public c:F

.field public d:I

.field public e:Landroid/graphics/Rect;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/graphics/Typeface;

.field public h:Landroid/graphics/Typeface;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:F


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f75c28f    # 0.96f

    .line 2
    iput v0, p0, Le/l/a/c;->c:F

    const/16 v0, 0x2c

    .line 3
    iput v0, p0, Le/l/a/c;->d:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Le/l/a/c;->i:I

    .line 5
    iput v0, p0, Le/l/a/c;->j:I

    .line 6
    iput v0, p0, Le/l/a/c;->k:I

    .line 7
    iput v0, p0, Le/l/a/c;->l:I

    .line 8
    iput v0, p0, Le/l/a/c;->m:I

    const/16 v0, 0x14

    .line 9
    iput v0, p0, Le/l/a/c;->n:I

    const/16 v0, 0x12

    .line 10
    iput v0, p0, Le/l/a/c;->o:I

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Le/l/a/c;->p:Z

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Le/l/a/c;->q:Z

    .line 13
    iput-boolean v1, p0, Le/l/a/c;->r:Z

    .line 14
    iput-boolean v0, p0, Le/l/a/c;->s:Z

    const v0, 0x3f0a3d71    # 0.54f

    .line 15
    iput v0, p0, Le/l/a/c;->t:F

    if-eqz p1, :cond_0

    .line 16
    iput-object p1, p0, Le/l/a/c;->a:Ljava/lang/CharSequence;

    .line 17
    iput-object p2, p0, Le/l/a/c;->b:Ljava/lang/CharSequence;

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot pass null title"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;
    .locals 0

    const/4 p2, -0x1

    if-eq p3, p2, :cond_0

    .line 1
    sget-object p2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 2
    invoke-static {p1, p3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Landroid/content/Context;II)I
    .locals 1

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_0
    int-to-float p2, p2

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p3, 0x2

    .line 3
    invoke-static {p3, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method
