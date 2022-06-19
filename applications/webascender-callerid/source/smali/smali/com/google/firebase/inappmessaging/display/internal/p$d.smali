.class Lcom/google/firebase/inappmessaging/display/internal/p$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/inappmessaging/display/internal/p;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic b:Lcom/google/firebase/inappmessaging/display/internal/p;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/p;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p$d;->b:Lcom/google/firebase/inappmessaging/display/internal/p;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/p$d;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/p$d;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p$d;->b:Lcom/google/firebase/inappmessaging/display/internal/p;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/p;->b(Lcom/google/firebase/inappmessaging/display/internal/p;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/p$d;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
