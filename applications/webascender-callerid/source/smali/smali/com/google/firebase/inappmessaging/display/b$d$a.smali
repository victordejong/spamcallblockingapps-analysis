.class Lcom/google/firebase/inappmessaging/display/b$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/inappmessaging/display/b$d;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/google/firebase/inappmessaging/display/b$d;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/display/b$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$d$a;->f:Lcom/google/firebase/inappmessaging/display/b$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$d$a;->f:Lcom/google/firebase/inappmessaging/display/b$d;

    iget-object p1, p1, Lcom/google/firebase/inappmessaging/display/b$d;->d:Lcom/google/firebase/inappmessaging/display/b;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/b;->b(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/t;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$d$a;->f:Lcom/google/firebase/inappmessaging/display/b$d;

    iget-object p1, p1, Lcom/google/firebase/inappmessaging/display/b$d;->d:Lcom/google/firebase/inappmessaging/display/b;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/b;->b(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/t;

    move-result-object p1

    sget-object p2, Lcom/google/firebase/inappmessaging/t$a;->UNKNOWN_DISMISS_TYPE:Lcom/google/firebase/inappmessaging/t$a;

    invoke-interface {p1, p2}, Lcom/google/firebase/inappmessaging/t;->c(Lcom/google/firebase/inappmessaging/t$a;)Lcom/google/android/gms/tasks/g;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$d$a;->f:Lcom/google/firebase/inappmessaging/display/b$d;

    iget-object p2, p1, Lcom/google/firebase/inappmessaging/display/b$d;->d:Lcom/google/firebase/inappmessaging/display/b;

    iget-object p1, p1, Lcom/google/firebase/inappmessaging/display/b$d;->b:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/display/b;->g(Lcom/google/firebase/inappmessaging/display/b;Landroid/app/Activity;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
