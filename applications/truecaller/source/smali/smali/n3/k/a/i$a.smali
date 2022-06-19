.class public final Ln3/k/a/i$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/k/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/k/a/i;


# direct methods
.method public constructor <init>(Ln3/k/a/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/k/a/i$a;->a:Ln3/k/a/i;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    :goto_0
    iget-object p1, p0, Ln3/k/a/i$a;->a:Ln3/k/a/i;

    invoke-virtual {p1}, Ln3/k/a/i;->dequeueWork()Ln3/k/a/i$e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Ln3/k/a/i$a;->a:Ln3/k/a/i;

    invoke-interface {p1}, Ln3/k/a/i$e;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln3/k/a/i;->onHandleWork(Landroid/content/Intent;)V

    .line 4
    invoke-interface {p1}, Ln3/k/a/i$e;->O5()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Ln3/k/a/i$a;->a:Ln3/k/a/i;

    invoke-virtual {p1}, Ln3/k/a/i;->processorFinished()V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Ln3/k/a/i$a;->a:Ln3/k/a/i;

    invoke-virtual {p1}, Ln3/k/a/i;->processorFinished()V

    return-void
.end method
