.class public final synthetic Le/a/e/c2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic b:I

.field public final synthetic c:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup$LayoutParams;ILandroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c2/l;->a:Landroid/view/ViewGroup$LayoutParams;

    iput p2, p0, Le/a/e/c2/l;->b:I

    iput-object p3, p0, Le/a/e/c2/l;->c:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Le/a/e/c2/l;->a:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Le/a/e/c2/l;->b:I

    iget-object v2, p0, Le/a/e/c2/l;->c:Landroid/view/ViewGroup;

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    .line 2
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 4
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
