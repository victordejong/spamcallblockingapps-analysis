.class Lcom/google/firebase/inappmessaging/display/b$d$b;
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
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$d$b;->a:Lcom/google/firebase/inappmessaging/display/b$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b$d$b;->a:Lcom/google/firebase/inappmessaging/display/b$d;

    iget-object v0, v0, Lcom/google/firebase/inappmessaging/display/b$d;->d:Lcom/google/firebase/inappmessaging/display/b;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/b;->k(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/model/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b$d$b;->a:Lcom/google/firebase/inappmessaging/display/b$d;

    iget-object v0, v0, Lcom/google/firebase/inappmessaging/display/b$d;->d:Lcom/google/firebase/inappmessaging/display/b;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/b;->b(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Impression timer onFinish for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/b$d$b;->a:Lcom/google/firebase/inappmessaging/display/b$d;

    iget-object v1, v1, Lcom/google/firebase/inappmessaging/display/b$d;->d:Lcom/google/firebase/inappmessaging/display/b;

    .line 3
    invoke-static {v1}, Lcom/google/firebase/inappmessaging/display/b;->k(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/model/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/i;->a()Lcom/google/firebase/inappmessaging/model/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/k;->f(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b$d$b;->a:Lcom/google/firebase/inappmessaging/display/b$d;

    iget-object v0, v0, Lcom/google/firebase/inappmessaging/display/b$d;->d:Lcom/google/firebase/inappmessaging/display/b;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/b;->b(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/t;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/inappmessaging/t;->d()Lcom/google/android/gms/tasks/g;

    :cond_0
    return-void
.end method
