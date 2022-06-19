.class Lcom/google/firebase/inappmessaging/display/b$d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/display/internal/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/inappmessaging/display/b$d;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/inappmessaging/display/b$d;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/display/b$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$d$c;->a:Lcom/google/firebase/inappmessaging/display/b$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b$d$c;->a:Lcom/google/firebase/inappmessaging/display/b$d;

    iget-object v0, v0, Lcom/google/firebase/inappmessaging/display/b$d;->d:Lcom/google/firebase/inappmessaging/display/b;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/b;->k(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/model/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b$d$c;->a:Lcom/google/firebase/inappmessaging/display/b$d;

    iget-object v0, v0, Lcom/google/firebase/inappmessaging/display/b$d;->d:Lcom/google/firebase/inappmessaging/display/b;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/b;->b(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b$d$c;->a:Lcom/google/firebase/inappmessaging/display/b$d;

    iget-object v0, v0, Lcom/google/firebase/inappmessaging/display/b$d;->d:Lcom/google/firebase/inappmessaging/display/b;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/b;->b(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/t;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/t$a;->AUTO:Lcom/google/firebase/inappmessaging/t$a;

    invoke-interface {v0, v1}, Lcom/google/firebase/inappmessaging/t;->c(Lcom/google/firebase/inappmessaging/t$a;)Lcom/google/android/gms/tasks/g;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b$d$c;->a:Lcom/google/firebase/inappmessaging/display/b$d;

    iget-object v1, v0, Lcom/google/firebase/inappmessaging/display/b$d;->d:Lcom/google/firebase/inappmessaging/display/b;

    iget-object v0, v0, Lcom/google/firebase/inappmessaging/display/b$d;->b:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/google/firebase/inappmessaging/display/b;->g(Lcom/google/firebase/inappmessaging/display/b;Landroid/app/Activity;)V

    return-void
.end method
