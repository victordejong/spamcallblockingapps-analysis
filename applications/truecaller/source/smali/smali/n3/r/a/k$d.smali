.class public Ln3/r/a/k$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/r/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Ln3/v/b0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/r/a/k;


# direct methods
.method public constructor <init>(Ln3/r/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/r/a/k$d;->a:Ln3/r/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ln3/v/b0;

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Ln3/r/a/k$d;->a:Ln3/r/a/k;

    invoke-static {p1}, Ln3/r/a/k;->access$200(Ln3/r/a/k;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Ln3/r/a/k$d;->a:Ln3/r/a/k;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Ln3/r/a/k$d;->a:Ln3/r/a/k;

    invoke-static {v0}, Ln3/r/a/k;->access$000(Ln3/r/a/k;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->T(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialogFragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " setting the content view on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln3/r/a/k$d;->a:Ln3/r/a/k;

    .line 8
    invoke-static {v1}, Ln3/r/a/k;->access$000(Ln3/r/a/k;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    :cond_0
    iget-object v0, p0, Ln3/r/a/k$d;->a:Ln3/r/a/k;

    invoke-static {v0}, Ln3/r/a/k;->access$000(Ln3/r/a/k;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
