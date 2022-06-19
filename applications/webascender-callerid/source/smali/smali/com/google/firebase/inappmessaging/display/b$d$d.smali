.class Lcom/google/firebase/inappmessaging/display/b$d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$d$d;->f:Lcom/google/firebase/inappmessaging/display/b$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b$d$d;->f:Lcom/google/firebase/inappmessaging/display/b$d;

    iget-object v0, v0, Lcom/google/firebase/inappmessaging/display/b$d;->d:Lcom/google/firebase/inappmessaging/display/b;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/b;->o(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/display/internal/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/b$d$d;->f:Lcom/google/firebase/inappmessaging/display/b$d;

    iget-object v2, v1, Lcom/google/firebase/inappmessaging/display/b$d;->a:Lcom/google/firebase/inappmessaging/display/internal/q/c;

    iget-object v1, v1, Lcom/google/firebase/inappmessaging/display/b$d;->b:Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/inappmessaging/display/internal/g;->i(Lcom/google/firebase/inappmessaging/display/internal/q/c;Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b$d$d;->f:Lcom/google/firebase/inappmessaging/display/b$d;

    iget-object v0, v0, Lcom/google/firebase/inappmessaging/display/b$d;->a:Lcom/google/firebase/inappmessaging/display/internal/q/c;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/internal/q/c;->b()Lcom/google/firebase/inappmessaging/display/internal/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/internal/j;->n()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b$d$d;->f:Lcom/google/firebase/inappmessaging/display/b$d;

    iget-object v0, v0, Lcom/google/firebase/inappmessaging/display/b$d;->d:Lcom/google/firebase/inappmessaging/display/b;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/b;->e(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/display/internal/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/b$d$d;->f:Lcom/google/firebase/inappmessaging/display/b$d;

    iget-object v1, v1, Lcom/google/firebase/inappmessaging/display/b$d;->d:Lcom/google/firebase/inappmessaging/display/b;

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/display/b;->c(Lcom/google/firebase/inappmessaging/display/b;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/b$d$d;->f:Lcom/google/firebase/inappmessaging/display/b$d;

    iget-object v2, v2, Lcom/google/firebase/inappmessaging/display/b$d;->a:Lcom/google/firebase/inappmessaging/display/internal/q/c;

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/display/internal/q/c;->f()Landroid/view/ViewGroup;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/inappmessaging/display/internal/c$c;->TOP:Lcom/google/firebase/inappmessaging/display/internal/c$c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/inappmessaging/display/internal/c;->a(Landroid/app/Application;Landroid/view/View;Lcom/google/firebase/inappmessaging/display/internal/c$c;)V

    :cond_0
    return-void
.end method
