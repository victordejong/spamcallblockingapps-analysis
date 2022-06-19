.class public final Le/a/a/h1/o/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Le/a/a/h1/o/n;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F


# direct methods
.method public constructor <init>(Le/a/a/h1/o/n;FFFF)V
    .locals 0

    iput-object p1, p0, Le/a/a/h1/o/q;->a:Le/a/a/h1/o/n;

    iput p2, p0, Le/a/a/h1/o/q;->b:F

    iput p3, p0, Le/a/a/h1/o/q;->c:F

    iput p4, p0, Le/a/a/h1/o/q;->d:F

    iput p5, p0, Le/a/a/h1/o/q;->e:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    const-string v0, "animator"

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
    iget v0, p0, Le/a/a/h1/o/q;->b:F

    iget v1, p0, Le/a/a/h1/o/q;->c:F

    invoke-static {v1, v0, p1, v0}, Le/d/c/a/a;->a(FFFF)F

    move-result v0

    .line 3
    iget v1, p0, Le/a/a/h1/o/q;->d:F

    iget v2, p0, Le/a/a/h1/o/q;->e:F

    invoke-static {v2, v1, p1, v1}, Le/d/c/a/a;->a(FFFF)F

    move-result p1

    .line 4
    iget-object v1, p0, Le/a/a/h1/o/q;->a:Le/a/a/h1/o/n;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v0, p1, v2, v3}, Le/a/a/h1/o/n;->n(Le/a/a/h1/o/n;FFZI)V

    return-void
.end method
