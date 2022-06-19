.class public final synthetic Le/a/p2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/aftercall/AfterCallPromotionActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/p2/f;->a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Le/a/p2/f;->a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->j:J

    .line 4
    iget-object v2, v0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->d:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 5
    iget-object v0, v0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
