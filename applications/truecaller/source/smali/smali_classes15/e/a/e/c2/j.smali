.class public final synthetic Le/a/e/c2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/components/FeedbackItemView;

.field public final synthetic b:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/components/FeedbackItemView;Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c2/j;->a:Lcom/truecaller/ui/components/FeedbackItemView;

    iput-object p2, p0, Le/a/e/c2/j;->b:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Le/a/e/c2/j;->c:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Le/a/e/c2/j;->a:Lcom/truecaller/ui/components/FeedbackItemView;

    iget-object v1, p0, Le/a/e/c2/j;->b:Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Le/a/e/c2/j;->c:I

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    int-to-float v2, v2

    mul-float/2addr v2, p1

    .line 3
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 5
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method
