.class public final Le/a/g5/e0/n;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/g5/e0/i;


# direct methods
.method public constructor <init>(Le/a/g5/e0/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/g5/e0/n;->a:Le/a/g5/e0/i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/g5/e0/n;->a:Le/a/g5/e0/i;

    .line 2
    sget-object v0, Le/a/g5/e0/i;->t:[Ls1/a/l;

    .line 3
    invoke-virtual {p1}, Le/a/g5/e0/i;->TA()Lcom/truecaller/tagger/tagPicker/TaggerViewModel;

    move-result-object p1

    .line 4
    iget-object v0, p0, Le/a/g5/e0/n;->a:Le/a/g5/e0/i;

    .line 5
    iget-object v0, v0, Le/a/g5/e0/i;->i:Lcom/truecaller/common/tag/TagView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/truecaller/common/tag/TagView;->getAvailableTag()Le/a/b0/p/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Le/a/g5/e0/n;->a:Le/a/g5/e0/i;

    .line 7
    iget-object v2, v2, Le/a/g5/e0/i;->j:Lcom/truecaller/common/tag/TagView;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2}, Lcom/truecaller/common/tag/TagView;->getAvailableTag()Le/a/b0/p/c;

    move-result-object v1

    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->e(Le/a/b0/p/c;Le/a/b0/p/c;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 6

    const-string v0, "animation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/g5/e0/n;->a:Le/a/g5/e0/i;

    check-cast p1, Landroid/animation/ValueAnimator;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 4
    invoke-virtual {v1}, Le/a/g5/e0/i;->RA()Le/a/g5/d0/b;

    move-result-object v0

    const/4 v2, 0x0

    .line 5
    iget-object v3, v0, Le/a/g5/d0/b;->k:Lcom/truecaller/common/ui/FlowLayout;

    const-string v4, "tagContainerLevel2"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 6
    iget-object v4, v0, Le/a/g5/d0/b;->k:Lcom/truecaller/common/ui/FlowLayout;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7
    instance-of v5, v4, Lcom/truecaller/common/tag/TagView;

    if-eqz v5, :cond_0

    iget-object v5, v1, Le/a/g5/e0/i;->j:Lcom/truecaller/common/tag/TagView;

    if-eq v4, v5, :cond_0

    .line 8
    invoke-virtual {v4, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, v0, Le/a/g5/d0/b;->j:Lcom/truecaller/common/ui/FlowLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
