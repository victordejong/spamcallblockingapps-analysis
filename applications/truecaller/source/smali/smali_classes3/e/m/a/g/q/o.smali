.class public final Le/m/a/g/q/o;
.super Le/m/a/g/q/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Le/m/a/g/q/c;",
        ">",
        "Le/m/a/g/q/l;"
    }
.end annotation


# instance fields
.field public l:Le/m/a/g/q/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/g/q/m<",
            "TS;>;"
        }
    .end annotation
.end field

.field public m:Le/m/a/g/q/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/g/q/n<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/m/a/g/q/c;Le/m/a/g/q/m;Le/m/a/g/q/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/m/a/g/q/c;",
            "Le/m/a/g/q/m<",
            "TS;>;",
            "Le/m/a/g/q/n<",
            "Landroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Le/m/a/g/q/l;-><init>(Landroid/content/Context;Le/m/a/g/q/c;)V

    .line 2
    iput-object p3, p0, Le/m/a/g/q/o;->l:Le/m/a/g/q/m;

    .line 3
    iput-object p0, p3, Le/m/a/g/q/m;->b:Le/m/a/g/q/l;

    .line 4
    iput-object p4, p0, Le/m/a/g/q/o;->m:Le/m/a/g/q/n;

    .line 5
    iput-object p0, p4, Le/m/a/g/q/n;->a:Le/m/a/g/q/o;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget-object v0, p0, Le/m/a/g/q/o;->l:Le/m/a/g/q/m;

    invoke-virtual {p0}, Le/m/a/g/q/l;->c()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Le/m/a/g/q/m;->e(Landroid/graphics/Canvas;F)V

    .line 5
    iget-object v0, p0, Le/m/a/g/q/o;->l:Le/m/a/g/q/m;

    iget-object v1, p0, Le/m/a/g/q/l;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Le/m/a/g/q/m;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Le/m/a/g/q/o;->m:Le/m/a/g/q/n;

    iget-object v2, v1, Le/m/a/g/q/n;->c:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 7
    iget-object v4, p0, Le/m/a/g/q/o;->l:Le/m/a/g/q/m;

    iget-object v6, p0, Le/m/a/g/q/l;->i:Landroid/graphics/Paint;

    iget-object v1, v1, Le/m/a/g/q/n;->b:[F

    mul-int/lit8 v3, v0, 0x2

    aget v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    aget v8, v1, v3

    aget v9, v2, v0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Le/m/a/g/q/m;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_1
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/q/o;->l:Le/m/a/g/q/m;

    invoke-virtual {v0}, Le/m/a/g/q/m;->c()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/q/o;->l:Le/m/a/g/q/m;

    invoke-virtual {v0}, Le/m/a/g/q/m;->d()I

    move-result v0

    return v0
.end method

.method public i(ZZZ)Z
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Le/m/a/g/q/l;->i(ZZZ)Z

    move-result p2

    .line 2
    invoke-virtual {p0}, Le/m/a/g/q/l;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Le/m/a/g/q/o;->m:Le/m/a/g/q/n;

    invoke-virtual {v0}, Le/m/a/g/q/n;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Le/m/a/g/q/l;->c:Le/m/a/g/q/a;

    iget-object v1, p0, Le/m/a/g/q/l;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/a/g/q/a;->a(Landroid/content/ContentResolver;)F

    if-eqz p1, :cond_4

    if-nez p3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Le/m/a/g/q/o;->m:Le/m/a/g/q/n;

    check-cast p1, Le/m/a/g/q/g;

    .line 7
    iget-object p3, p1, Le/m/a/g/q/g;->d:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x2

    if-nez p3, :cond_2

    .line 8
    sget-object p3, Le/m/a/g/q/g;->o:Landroid/util/Property;

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {p1, p3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    iput-object p3, p1, Le/m/a/g/q/g;->d:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1518

    .line 9
    invoke-virtual {p3, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 10
    iget-object p3, p1, Le/m/a/g/q/g;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    iget-object p3, p1, Le/m/a/g/q/g;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {p3, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 12
    iget-object p3, p1, Le/m/a/g/q/g;->d:Landroid/animation/ObjectAnimator;

    new-instance v1, Le/m/a/g/q/e;

    invoke-direct {v1, p1}, Le/m/a/g/q/e;-><init>(Le/m/a/g/q/g;)V

    invoke-virtual {p3, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    :cond_2
    iget-object p3, p1, Le/m/a/g/q/g;->e:Landroid/animation/ObjectAnimator;

    if-nez p3, :cond_3

    .line 14
    sget-object p3, Le/m/a/g/q/g;->p:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {p1, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    iput-object p3, p1, Le/m/a/g/q/g;->e:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x14d

    .line 15
    invoke-virtual {p3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 16
    iget-object p3, p1, Le/m/a/g/q/g;->e:Landroid/animation/ObjectAnimator;

    iget-object v0, p1, Le/m/a/g/q/g;->f:Ln3/t/a/a/b;

    invoke-virtual {p3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 17
    iget-object p3, p1, Le/m/a/g/q/g;->e:Landroid/animation/ObjectAnimator;

    new-instance v0, Le/m/a/g/q/f;

    invoke-direct {v0, p1}, Le/m/a/g/q/f;-><init>(Le/m/a/g/q/g;)V

    invoke-virtual {p3, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 18
    :cond_3
    invoke-virtual {p1}, Le/m/a/g/q/g;->c()V

    .line 19
    iget-object p1, p1, Le/m/a/g/q/g;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4
    :goto_0
    return p2

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
