.class Lcom/google/firebase/inappmessaging/display/internal/g$b;
.super Lcom/google/firebase/inappmessaging/display/internal/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/inappmessaging/display/internal/g;->e(Lcom/google/firebase/inappmessaging/display/internal/j;Lcom/google/firebase/inappmessaging/display/internal/q/c;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)Lcom/google/firebase/inappmessaging/display/internal/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic t:Landroid/view/WindowManager$LayoutParams;

.field final synthetic u:Landroid/view/WindowManager;

.field final synthetic v:Lcom/google/firebase/inappmessaging/display/internal/q/c;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/g;Landroid/view/View;Ljava/lang/Object;Lcom/google/firebase/inappmessaging/display/internal/p$e;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Lcom/google/firebase/inappmessaging/display/internal/q/c;)V
    .locals 0

    .line 1
    iput-object p5, p0, Lcom/google/firebase/inappmessaging/display/internal/g$b;->t:Landroid/view/WindowManager$LayoutParams;

    iput-object p6, p0, Lcom/google/firebase/inappmessaging/display/internal/g$b;->u:Landroid/view/WindowManager;

    iput-object p7, p0, Lcom/google/firebase/inappmessaging/display/internal/g$b;->v:Lcom/google/firebase/inappmessaging/display/internal/q/c;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/firebase/inappmessaging/display/internal/p;-><init>(Landroid/view/View;Ljava/lang/Object;Lcom/google/firebase/inappmessaging/display/internal/p$e;)V

    return-void
.end method


# virtual methods
.method protected f()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/g$b;->t:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    return v0
.end method

.method protected i(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/g$b;->t:Landroid/view/WindowManager$LayoutParams;

    float-to-int p1, p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/g$b;->u:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/g$b;->v:Lcom/google/firebase/inappmessaging/display/internal/q/c;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/internal/q/c;->f()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/g$b;->t:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
