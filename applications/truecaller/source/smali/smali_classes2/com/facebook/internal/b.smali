.class public final synthetic Lcom/facebook/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/s0$d;


# instance fields
.field public final synthetic a:Lcom/facebook/internal/w;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/b;->a:Lcom/facebook/internal/w;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Le/j/c0;)V
    .locals 1

    iget-object p2, p0, Lcom/facebook/internal/b;->a:Lcom/facebook/internal/w;

    .line 1
    sget v0, Lcom/facebook/internal/w;->b:I

    const-string v0, "this$0"

    .line 2
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 6
    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 7
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
