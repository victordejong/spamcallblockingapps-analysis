.class public final Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/common/ui/dialogs/ConfirmationDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$a;->a:I

    iput-object p2, p0, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$a;->a:I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog;

    .line 2
    sget-object v0, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog;->i:Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$d;

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog;->PA()Le/a/b0/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b0/a/a/c;->c()Ln3/v/k0;

    move-result-object v0

    sget-object v1, Le/a/b0/a/a/b$b;->a:Le/a/b0/a/a/b$b;

    invoke-virtual {v0, v1}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Ln3/r/a/k;->dismiss()V

    .line 5
    iget-object p1, p0, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog;

    invoke-virtual {p1}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog;

    .line 8
    sget-object v1, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog;->i:Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$d;

    .line 9
    invoke-virtual {p1}, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog;->PA()Le/a/b0/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Le/a/b0/a/a/c;->c()Ln3/v/k0;

    move-result-object v1

    new-instance v2, Le/a/b0/a/a/b$c;

    invoke-virtual {p1}, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog;->OA()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-static {v3}, Le/a/p5/s0/f;->p(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog;->OA()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-direct {v2, v0}, Le/a/b0/a/a/b$c;-><init>(Z)V

    invoke-virtual {v1, v2}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p1}, Ln3/r/a/k;->dismiss()V

    .line 11
    iget-object p1, p0, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog;

    invoke-virtual {p1}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    return-void
.end method
