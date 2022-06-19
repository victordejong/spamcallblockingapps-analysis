.class public Lcom/google/firebase/inappmessaging/display/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/display/internal/c$c;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Application;Landroid/view/View;Lcom/google/firebase/inappmessaging/display/internal/c$c;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2
    invoke-static {p3, p2}, Lcom/google/firebase/inappmessaging/display/internal/c$c;->access$000(Lcom/google/firebase/inappmessaging/display/internal/c$c;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p3

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p3, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    .line 5
    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const-wide/16 v0, 0x1

    .line 6
    invoke-virtual {p3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/c$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/c$a;-><init>(Lcom/google/firebase/inappmessaging/display/internal/c;Landroid/view/View;Landroid/app/Application;)V

    .line 7
    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
