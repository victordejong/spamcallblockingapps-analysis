.class public Le/a/g5/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/g5/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/g5/l;


# direct methods
.method public constructor <init>(Le/a/g5/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/g5/l$a;->a:Le/a/g5/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/g5/l$a;->a:Le/a/g5/l;

    .line 3
    iget-object v1, v1, Le/a/g5/l;->a:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 5
    iget-object p1, p0, Le/a/g5/l$a;->a:Le/a/g5/l;

    .line 6
    iget-object p1, p1, Le/a/g5/l;->b:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 8
    iget-object p1, p0, Le/a/g5/l$a;->a:Le/a/g5/l;

    .line 9
    iget-object p1, p1, Le/a/g5/l;->b:Landroid/graphics/drawable/ColorDrawable;

    .line 10
    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    return-void
.end method
