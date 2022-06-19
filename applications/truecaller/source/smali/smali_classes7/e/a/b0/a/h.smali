.class public final Le/a/b0/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/animation/ValueAnimator;

.field public final synthetic b:Lcom/truecaller/common/ui/HeartbeatRippleView;


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator;Lcom/truecaller/common/ui/HeartbeatRippleView;)V
    .locals 0

    iput-object p1, p0, Le/a/b0/a/h;->a:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Le/a/b0/a/h;->b:Lcom/truecaller/common/ui/HeartbeatRippleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/b0/a/h;->b:Lcom/truecaller/common/ui/HeartbeatRippleView;

    iget-object v0, p0, Le/a/b0/a/h;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lcom/truecaller/common/ui/HeartbeatRippleView;->a(Lcom/truecaller/common/ui/HeartbeatRippleView;F)V

    return-void
.end method
