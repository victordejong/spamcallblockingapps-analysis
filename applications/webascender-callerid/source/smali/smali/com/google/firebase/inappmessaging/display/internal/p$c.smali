.class Lcom/google/firebase/inappmessaging/display/internal/p$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

.field final synthetic b:I

.field final synthetic c:Lcom/google/firebase/inappmessaging/display/internal/p;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/p;Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p$c;->c:Lcom/google/firebase/inappmessaging/display/internal/p;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/p$c;->a:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lcom/google/firebase/inappmessaging/display/internal/p$c;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p$c;->c:Lcom/google/firebase/inappmessaging/display/internal/p;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/p;->d(Lcom/google/firebase/inappmessaging/display/internal/p;)Lcom/google/firebase/inappmessaging/display/internal/p$e;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/p$c;->c:Lcom/google/firebase/inappmessaging/display/internal/p;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/p;->b(Lcom/google/firebase/inappmessaging/display/internal/p;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/p$c;->c:Lcom/google/firebase/inappmessaging/display/internal/p;

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/display/internal/p;->c(Lcom/google/firebase/inappmessaging/display/internal/p;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/p$e;->b(Landroid/view/View;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p$c;->c:Lcom/google/firebase/inappmessaging/display/internal/p;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/p;->b(Lcom/google/firebase/inappmessaging/display/internal/p;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p$c;->c:Lcom/google/firebase/inappmessaging/display/internal/p;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/p;->b(Lcom/google/firebase/inappmessaging/display/internal/p;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 4
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p$c;->a:Landroid/view/ViewGroup$LayoutParams;

    iget v0, p0, Lcom/google/firebase/inappmessaging/display/internal/p$c;->b:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p$c;->c:Lcom/google/firebase/inappmessaging/display/internal/p;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/p;->b(Lcom/google/firebase/inappmessaging/display/internal/p;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/p$c;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
