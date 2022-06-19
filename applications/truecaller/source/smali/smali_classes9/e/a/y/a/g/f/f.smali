.class public final Le/a/y/a/g/f/f;
.super Ln3/g0/m;
.source "SourceFile"


# instance fields
.field public final y:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/g0/m;-><init>()V

    const-string v0, "emojiView:rotation"

    .line 2
    iput-object v0, p0, Le/a/y/a/g/f/f;->y:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final L(Ln3/g0/u;)V
    .locals 3

    .line 1
    iget-object v0, p1, Ln3/g0/u;->a:Ljava/util/Map;

    const-string v1, "values.values"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/y/a/g/f/f;->y:Ljava/lang/String;

    iget-object p1, p1, Ln3/g0/u;->b:Landroid/view/View;

    const-string v2, "values.view"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f(Ln3/g0/u;)V
    .locals 1

    const-string v0, "transitionValues"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/y/a/g/f/f;->L(Ln3/g0/u;)V

    return-void
.end method

.method public i(Ln3/g0/u;)V
    .locals 1

    const-string v0, "transitionValues"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/y/a/g/f/f;->L(Ln3/g0/u;)V

    return-void
.end method

.method public m(Landroid/view/ViewGroup;Ln3/g0/u;Ln3/g0/u;)Landroid/animation/Animator;
    .locals 4

    const-string v0, "sceneRoot"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, p2, Ln3/g0/u;->b:Landroid/view/View;

    .line 2
    iget-object p2, p2, Ln3/g0/u;->a:Ljava/util/Map;

    iget-object v2, p0, Le/a/y/a/g/f/f;->y:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v2, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 3
    iget-object p3, p3, Ln3/g0/u;->a:Ljava/util/Map;

    iget-object v3, p0, Le/a/y/a/g/f/f;->y:Ljava/lang/String;

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    cmpg-float v2, p2, p3

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 p2, 0x1

    aput p3, v2, p2

    .line 4
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 5
    new-instance p3, Le/a/y/a/g/f/f$a;

    invoke-direct {p3, v1, p1}, Le/a/y/a/g/f/f$a;-><init>(Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/16 p3, 0x8

    .line 6
    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 7
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string p3, "(sceneRoot.context as Activity).window"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const-string p3, "(sceneRoot.context as Activity).window.decorView"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    const-string p3, "(sceneRoot.context as Ac\u2026window.decorView.rootView"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v0

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p2

    :cond_2
    :goto_0
    return-object v0
.end method
