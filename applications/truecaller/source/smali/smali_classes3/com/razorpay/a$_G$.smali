.class public final Lcom/razorpay/a$_G$;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:F

.field private synthetic b:F

.field private synthetic c:Lcom/razorpay/CircularProgressView;


# direct methods
.method public constructor <init>(Lcom/razorpay/CircularProgressView;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/a$_G$;->c:Lcom/razorpay/CircularProgressView;

    iput p2, p0, Lcom/razorpay/a$_G$;->a:F

    iput p3, p0, Lcom/razorpay/a$_G$;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/razorpay/a$_G$;->c:Lcom/razorpay/CircularProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/razorpay/CircularProgressView;->access$102(Lcom/razorpay/CircularProgressView;F)F

    .line 2
    iget-object p1, p0, Lcom/razorpay/a$_G$;->c:Lcom/razorpay/CircularProgressView;

    iget v0, p0, Lcom/razorpay/a$_G$;->a:F

    invoke-static {p1}, Lcom/razorpay/CircularProgressView;->access$100(Lcom/razorpay/CircularProgressView;)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/razorpay/a$_G$;->b:F

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/razorpay/CircularProgressView;->access$202(Lcom/razorpay/CircularProgressView;F)F

    .line 3
    iget-object p1, p0, Lcom/razorpay/a$_G$;->c:Lcom/razorpay/CircularProgressView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
