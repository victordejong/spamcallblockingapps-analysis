.class public final synthetic Le/a/p2/b;
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

    iput-object p1, p0, Le/a/p2/b;->a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Le/a/p2/b;->a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->i:J

    .line 4
    iget-object v2, v0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 5
    iget-object p1, v0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->d:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
