.class public final synthetic Le/a/e/d2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Le/a/e/d2/l;

.field public final synthetic b:[Landroid/graphics/drawable/Drawable;

.field public final synthetic c:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Le/a/e/d2/l;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/d2/a;->a:Le/a/e/d2/l;

    iput-object p2, p0, Le/a/e/d2/a;->b:[Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Le/a/e/d2/a;->c:[Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Le/a/e/d2/a;->a:Le/a/e/d2/l;

    iget-object v1, p0, Le/a/e/d2/a;->b:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Le/a/e/d2/a;->c:[Landroid/graphics/drawable/Drawable;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr p1, v3

    float-to-int p1, p1

    rsub-int v3, p1, 0xff

    const/4 v4, 0x0

    .line 3
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 4
    aget-object v5, v1, v4

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 5
    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
