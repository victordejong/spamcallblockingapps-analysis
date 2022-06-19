.class public Ln3/g0/f;
.super Ln3/g0/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/g0/f$b;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/g0/h0;-><init>()V

    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    .line 2
    iput p1, p0, Ln3/g0/h0;->y:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public N(Landroid/view/ViewGroup;Landroid/view/View;Ln3/g0/u;Ln3/g0/u;)Landroid/animation/Animator;
    .locals 1

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 1
    iget-object p3, p3, Ln3/g0/u;->a:Ljava/util/Map;

    const-string p4, "android:fade:transitionAlpha"

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    goto :goto_0

    :cond_0
    move p3, p1

    :goto_0
    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float v0, p3, p4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move p1, p3

    .line 3
    :goto_1
    invoke-virtual {p0, p2, p1, p4}, Ln3/g0/f;->P(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public O(Landroid/view/ViewGroup;Landroid/view/View;Ln3/g0/u;Ln3/g0/u;)Landroid/animation/Animator;
    .locals 0

    .line 1
    sget-object p1, Ln3/g0/z;->a:Ln3/g0/f0;

    invoke-virtual {p1, p2}, Ln3/g0/f0;->c(Landroid/view/View;)V

    .line 2
    iget-object p1, p3, Ln3/g0/u;->a:Ljava/util/Map;

    const-string p3, "android:fade:transitionAlpha"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    const/4 p3, 0x0

    .line 4
    invoke-virtual {p0, p2, p1, p3}, Ln3/g0/f;->P(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public final P(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 2

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    sget-object v0, Ln3/g0/z;->a:Ln3/g0/f0;

    invoke-virtual {v0, p1, p2}, Ln3/g0/f0;->e(Landroid/view/View;F)V

    .line 2
    sget-object p2, Ln3/g0/z;->b:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 3
    new-instance p3, Ln3/g0/f$b;

    invoke-direct {p3, p1}, Ln3/g0/f$b;-><init>(Landroid/view/View;)V

    .line 4
    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    new-instance p3, Ln3/g0/f$a;

    invoke-direct {p3, p0, p1}, Ln3/g0/f$a;-><init>(Ln3/g0/f;Landroid/view/View;)V

    invoke-virtual {p0, p3}, Ln3/g0/m;->a(Ln3/g0/m$d;)Ln3/g0/m;

    return-object p2
.end method

.method public i(Ln3/g0/u;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ln3/g0/h0;->L(Ln3/g0/u;)V

    .line 2
    iget-object v0, p1, Ln3/g0/u;->a:Ljava/util/Map;

    iget-object p1, p1, Ln3/g0/u;->b:Landroid/view/View;

    .line 3
    invoke-static {p1}, Ln3/g0/z;->a(Landroid/view/View;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "android:fade:transitionAlpha"

    .line 4
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
