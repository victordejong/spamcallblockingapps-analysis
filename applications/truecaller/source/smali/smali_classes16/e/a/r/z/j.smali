.class public final Le/a/r/z/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Le/a/r/z/l;


# direct methods
.method public constructor <init>(Le/a/r/z/l;)V
    .locals 0

    iput-object p1, p0, Le/a/r/z/j;->a:Le/a/r/z/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "animation"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/r/z/j;->a:Le/a/r/z/l;

    invoke-static {v0}, Le/a/r/z/l;->RA(Le/a/r/z/l;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Le/a/r/z/j;->a:Le/a/r/z/l;

    invoke-static {v1}, Le/a/r/z/l;->RA(Le/a/r/z/l;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 3
    iget-object v0, p0, Le/a/r/z/j;->a:Le/a/r/z/l;

    invoke-static {v0}, Le/a/r/z/l;->RA(Le/a/r/z/l;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Le/a/r/z/j;->a:Le/a/r/z/l;

    invoke-static {v1}, Le/a/r/z/l;->RA(Le/a/r/z/l;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
