.class public final Le/a/d/c/a/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/a/a/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/d/c/a/a/a$a;->a:I

    iput-object p2, p0, Le/a/d/c/a/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget v0, p0, Le/a/d/c/a/a/a$a;->a:I

    const/high16 v1, 0x3f000000    # 0.5f

    const-string v2, "null cannot be cast to non-null type kotlin.Float"

    const-string v3, "it"

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1
    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/d/c/a/a/a$a;->b:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/a/a/a;

    invoke-static {v0, p1}, Le/a/d/c/a/a/a;->a(Le/a/d/c/a/a/a;F)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1

    .line 4
    :cond_1
    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 5
    iget-object v0, p0, Le/a/d/c/a/a/a$a;->b:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/a/a/a;

    invoke-static {v0, p1}, Le/a/d/c/a/a/a;->a(Le/a/d/c/a/a/a;F)V

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_2

    .line 6
    iget-object p1, p0, Le/a/d/c/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/a/a/a;

    .line 7
    invoke-virtual {p1}, Le/a/d/c/a/a/a;->c()V

    :cond_2
    return-void

    .line 8
    :cond_3
    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 9
    iget-object v0, p0, Le/a/d/c/a/a/a$a;->b:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/a/a/a;

    invoke-static {v0, p1}, Le/a/d/c/a/a/a;->a(Le/a/d/c/a/a/a;F)V

    return-void

    .line 10
    :cond_4
    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 11
    iget-object v0, p0, Le/a/d/c/a/a/a$a;->b:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/a/a/a;

    invoke-static {v0, p1}, Le/a/d/c/a/a/a;->a(Le/a/d/c/a/a/a;F)V

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_6

    .line 12
    iget-object v0, p0, Le/a/d/c/a/a/a$a;->b:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/a/a/a;

    sub-float/2addr p1, v1

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 14
    invoke-static {p1, v1, v2}, Ls1/d0/j;->c(FFF)F

    move-result p1

    iput p1, v0, Le/a/d/c/a/a/a;->m:F

    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1, v0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    :cond_5
    iget-object p1, p0, Le/a/d/c/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/a/a/a;

    .line 17
    invoke-virtual {p1}, Le/a/d/c/a/a/a;->f()V

    :cond_6
    return-void
.end method
