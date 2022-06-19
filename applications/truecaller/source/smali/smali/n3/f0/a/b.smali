.class public Ln3/f0/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Ln3/f0/a/d$a;

.field public final synthetic b:Ln3/f0/a/d;


# direct methods
.method public constructor <init>(Ln3/f0/a/d;Ln3/f0/a/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/f0/a/b;->b:Ln3/f0/a/d;

    iput-object p2, p0, Ln3/f0/a/b;->a:Ln3/f0/a/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Ln3/f0/a/b;->b:Ln3/f0/a/d;

    iget-object v1, p0, Ln3/f0/a/b;->a:Ln3/f0/a/d$a;

    invoke-virtual {v0, p1, v1}, Ln3/f0/a/d;->d(FLn3/f0/a/d$a;)V

    .line 3
    iget-object v0, p0, Ln3/f0/a/b;->b:Ln3/f0/a/d;

    iget-object v1, p0, Ln3/f0/a/b;->a:Ln3/f0/a/d$a;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Ln3/f0/a/d;->a(FLn3/f0/a/d$a;Z)V

    .line 4
    iget-object p1, p0, Ln3/f0/a/b;->b:Ln3/f0/a/d;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
