.class Lcom/google/firebase/inappmessaging/display/internal/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/display/internal/p$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/inappmessaging/display/internal/g;->e(Lcom/google/firebase/inappmessaging/display/internal/j;Lcom/google/firebase/inappmessaging/display/internal/q/c;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)Lcom/google/firebase/inappmessaging/display/internal/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/inappmessaging/display/internal/q/c;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/g;Lcom/google/firebase/inappmessaging/display/internal/q/c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/g$a;->a:Lcom/google/firebase/inappmessaging/display/internal/q/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/g$a;->a:Lcom/google/firebase/inappmessaging/display/internal/q/c;

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/display/internal/q/c;->d()Landroid/view/View$OnClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/g$a;->a:Lcom/google/firebase/inappmessaging/display/internal/q/c;

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/display/internal/q/c;->d()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
