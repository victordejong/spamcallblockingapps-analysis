.class public Le/a/g5/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Le/a/g5/t;


# direct methods
.method public constructor <init>(Le/a/g5/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/g5/v;->a:Le/a/g5/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/g5/v;->a:Le/a/g5/t;

    .line 3
    iget-object v0, v0, Le/a/g5/t;->m:Lcom/truecaller/common/tag/TagView;

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 5
    iget-object v0, p0, Le/a/g5/v;->a:Le/a/g5/t;

    .line 6
    iget-object v0, v0, Le/a/g5/t;->m:Lcom/truecaller/common/tag/TagView;

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 8
    iget-object v0, p0, Le/a/g5/v;->a:Le/a/g5/t;

    .line 9
    iget-object v0, v0, Le/a/g5/t;->m:Lcom/truecaller/common/tag/TagView;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
