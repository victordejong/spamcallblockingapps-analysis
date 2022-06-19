.class public Le/a/r/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/i;->RA()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F

.field public final synthetic c:Le/a/r/i;


# direct methods
.method public constructor <init>(Le/a/r/i;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/r/i$a;->c:Le/a/r/i;

    iput p2, p0, Le/a/r/i$a;->a:F

    iput p3, p0, Le/a/r/i$a;->b:F

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
    iget-object v0, p0, Le/a/r/i$a;->c:Le/a/r/i;

    iget-object v0, v0, Le/a/r/j;->h:Landroid/widget/ImageView;

    iget v1, p0, Le/a/r/i$a;->a:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 3
    iget-object v0, p0, Le/a/r/i$a;->c:Le/a/r/i;

    iget-object v0, v0, Le/a/r/j;->h:Landroid/widget/ImageView;

    iget v1, p0, Le/a/r/i$a;->b:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method
