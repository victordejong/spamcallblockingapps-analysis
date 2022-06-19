.class public final Le/a/h/b/e/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/e/e/c;->a:Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/b/e/e/c;->a:Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;

    const-string v1, "animation"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    sget v1, Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;->w:I

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    return-void
.end method
