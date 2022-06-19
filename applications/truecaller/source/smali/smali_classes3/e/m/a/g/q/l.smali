.class public abstract Le/m/a/g/q/l;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static final k:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Le/m/a/g/q/l;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/m/a/g/q/c;

.field public c:Le/m/a/g/q/a;

.field public d:Landroid/animation/ValueAnimator;

.field public e:Landroid/animation/ValueAnimator;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/h0/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:F

.field public final i:Landroid/graphics/Paint;

.field public j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/m/a/g/q/l$a;

    const-class v1, Ljava/lang/Float;

    const-string v2, "growFraction"

    invoke-direct {v0, v1, v2}, Le/m/a/g/q/l$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Le/m/a/g/q/l;->k:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Le/m/a/g/q/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Le/m/a/g/q/l;->i:Landroid/graphics/Paint;

    .line 3
    iput-object p1, p0, Le/m/a/g/q/l;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Le/m/a/g/q/l;->b:Le/m/a/g/q/c;

    .line 5
    new-instance p1, Le/m/a/g/q/a;

    invoke-direct {p1}, Le/m/a/g/q/a;-><init>()V

    iput-object p1, p0, Le/m/a/g/q/l;->c:Le/m/a/g/q/a;

    const/16 p1, 0xff

    .line 6
    iput p1, p0, Le/m/a/g/q/l;->j:I

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public static synthetic a(Le/m/a/g/q/l;ZZ)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final varargs b([Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/m/a/g/q/l;->g:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Le/m/a/g/q/l;->g:Z

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 4
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean v0, p0, Le/m/a/g/q/l;->g:Z

    return-void
.end method

.method public c()F
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/g/q/l;->b:Le/m/a/g/q/c;

    .line 2
    iget v1, v0, Le/m/a/g/q/c;->e:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    .line 3
    iget v0, v0, Le/m/a/g/q/c;->f:I

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-nez v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 4
    :cond_2
    iget v0, p0, Le/m/a/g/q/l;->h:F

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Le/m/a/g/q/l;->h(ZZZ)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/q/l;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/q/l;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public g(Ln3/h0/a/a/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/q/l;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/m/a/g/q/l;->f:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/a/g/q/l;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Le/m/a/g/q/l;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Le/m/a/g/q/l;->j:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public h(ZZZ)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/q/l;->c:Le/m/a/g/q/a;

    iget-object v1, p0, Le/m/a/g/q/l;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/a/g/q/a;->a(Landroid/content/ContentResolver;)F

    move-result v0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    cmpl-float p3, v0, p3

    if-lez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Le/m/a/g/q/l;->i(ZZZ)Z

    move-result p1

    return p1
.end method

.method public i(ZZZ)Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/a/g/q/l;->d:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x2

    if-nez v0, :cond_2

    .line 2
    sget-object v0, Le/m/a/g/q/l;->k:Landroid/util/Property;

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Le/m/a/g/q/l;->d:Landroid/animation/ValueAnimator;

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    iget-object v0, p0, Le/m/a/g/q/l;->d:Landroid/animation/ValueAnimator;

    sget-object v4, Le/m/a/g/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    iget-object v0, p0, Le/m/a/g/q/l;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set showAnimator while the current showAnimator is running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    :goto_0
    iput-object v0, p0, Le/m/a/g/q/l;->d:Landroid/animation/ValueAnimator;

    .line 9
    new-instance v4, Le/m/a/g/q/j;

    invoke-direct {v4, p0}, Le/m/a/g/q/j;-><init>(Le/m/a/g/q/l;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    :cond_2
    iget-object v0, p0, Le/m/a/g/q/l;->e:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    .line 11
    sget-object v0, Le/m/a/g/q/l;->k:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Le/m/a/g/q/l;->e:Landroid/animation/ValueAnimator;

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13
    iget-object v0, p0, Le/m/a/g/q/l;->e:Landroid/animation/ValueAnimator;

    sget-object v1, Le/m/a/g/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    iget-object v0, p0, Le/m/a/g/q/l;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set hideAnimator while the current hideAnimator is running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_4
    :goto_1
    iput-object v0, p0, Le/m/a/g/q/l;->e:Landroid/animation/ValueAnimator;

    .line 18
    new-instance v1, Le/m/a/g/q/k;

    invoke-direct {v1, p0}, Le/m/a/g/q/k;-><init>(Le/m/a/g/q/l;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 19
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    if-nez p1, :cond_6

    return v1

    :cond_6
    if-eqz p1, :cond_7

    .line 20
    iget-object v0, p0, Le/m/a/g/q/l;->d:Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Le/m/a/g/q/l;->e:Landroid/animation/ValueAnimator;

    :goto_2
    const/4 v2, 0x1

    if-nez p3, :cond_9

    .line 21
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 22
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_3

    :cond_8
    new-array p2, v2, [Landroid/animation/ValueAnimator;

    aput-object v0, p2, v1

    .line 23
    invoke-virtual {p0, p2}, Le/m/a/g/q/l;->b([Landroid/animation/ValueAnimator;)V

    .line 24
    :goto_3
    invoke-super {p0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_9
    if-eqz p3, :cond_a

    .line 25
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_a

    return v1

    :cond_a
    if-eqz p1, :cond_c

    .line 26
    invoke-super {p0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p3

    if-eqz p3, :cond_b

    goto :goto_4

    :cond_b
    move p3, v1

    goto :goto_5

    :cond_c
    :goto_4
    move p3, v2

    :goto_5
    if-eqz p1, :cond_d

    .line 27
    iget-object p1, p0, Le/m/a/g/q/l;->b:Le/m/a/g/q/c;

    .line 28
    iget p1, p1, Le/m/a/g/q/c;->e:I

    if-eqz p1, :cond_e

    goto :goto_6

    .line 29
    :cond_d
    iget-object p1, p0, Le/m/a/g/q/l;->b:Le/m/a/g/q/c;

    .line 30
    iget p1, p1, Le/m/a/g/q/c;->f:I

    if-eqz p1, :cond_e

    :goto_6
    move p1, v2

    goto :goto_7

    :cond_e
    move p1, v1

    :goto_7
    if-nez p1, :cond_f

    new-array p1, v2, [Landroid/animation/ValueAnimator;

    aput-object v0, p1, v1

    .line 31
    invoke-virtual {p0, p1}, Le/m/a/g/q/l;->b([Landroid/animation/ValueAnimator;)V

    return p3

    :cond_f
    if-nez p2, :cond_11

    .line 32
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_8

    .line 33
    :cond_10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    goto :goto_9

    .line 34
    :cond_11
    :goto_8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_9
    return p3

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/g/q/l;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le/m/a/g/q/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public j(Ln3/h0/a/a/b;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/q/l;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/m/a/g/q/l;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Le/m/a/g/q/l;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Le/m/a/g/q/l;->f:Ljava/util/List;

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Le/m/a/g/q/l;->j:I

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/q/l;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Le/m/a/g/q/l;->h(ZZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v1}, Le/m/a/g/q/l;->i(ZZZ)Z

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1, v0}, Le/m/a/g/q/l;->i(ZZZ)Z

    return-void
.end method
