.class Lcom/google/firebase/inappmessaging/display/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/inappmessaging/display/b;->v(Landroid/app/Activity;Lcom/google/firebase/inappmessaging/display/internal/q/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Landroid/app/Activity;

.field final synthetic g:Lcom/google/firebase/inappmessaging/display/b;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/display/b;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$b;->g:Lcom/google/firebase/inappmessaging/display/b;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/b$b;->f:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$b;->g:Lcom/google/firebase/inappmessaging/display/b;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/b;->b(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/t;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$b;->g:Lcom/google/firebase/inappmessaging/display/b;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/b;->b(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/t;

    move-result-object p1

    sget-object v0, Lcom/google/firebase/inappmessaging/t$a;->CLICK:Lcom/google/firebase/inappmessaging/t$a;

    invoke-interface {p1, v0}, Lcom/google/firebase/inappmessaging/t;->c(Lcom/google/firebase/inappmessaging/t$a;)Lcom/google/android/gms/tasks/g;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$b;->g:Lcom/google/firebase/inappmessaging/display/b;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b$b;->f:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/google/firebase/inappmessaging/display/b;->g(Lcom/google/firebase/inappmessaging/display/b;Landroid/app/Activity;)V

    return-void
.end method
