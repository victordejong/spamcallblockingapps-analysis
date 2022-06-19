.class public final Le/a/g5/e0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Le/a/g5/d0/b;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/g5/d0/b;Le/a/g5/e0/i;Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Le/a/g5/e0/p;->a:Le/a/g5/d0/b;

    iput-object p3, p0, Le/a/g5/e0/p;->b:Ljava/util/List;

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
    iget-object v0, p0, Le/a/g5/e0/p;->a:Le/a/g5/d0/b;

    iget-object v0, v0, Le/a/g5/d0/b;->m:Lcom/truecaller/common/tag/TagView;

    const-string v1, "tagSelectedRoot"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 3
    iget-object v0, p0, Le/a/g5/e0/p;->a:Le/a/g5/d0/b;

    iget-object v0, v0, Le/a/g5/d0/b;->m:Lcom/truecaller/common/tag/TagView;

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 4
    iget-object v0, p0, Le/a/g5/e0/p;->a:Le/a/g5/d0/b;

    iget-object v0, v0, Le/a/g5/d0/b;->m:Lcom/truecaller/common/tag/TagView;

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
