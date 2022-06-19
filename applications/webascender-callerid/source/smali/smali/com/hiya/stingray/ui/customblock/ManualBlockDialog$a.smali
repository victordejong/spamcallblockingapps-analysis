.class Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->x1(Landroid/os/Bundle;)Landroidx/appcompat/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$a;->f:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    new-instance p1, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {p1}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    .line 2
    iget-object p2, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$a;->f:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;

    invoke-static {p2}, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->t1(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;)Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    move-result-object p2

    sget-object v0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;->FULL_NUMBER:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    if-ne p2, v0, :cond_0

    const-string p2, "block_entered_number"

    .line 3
    invoke-virtual {p1, p2}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    goto :goto_0

    :cond_0
    const-string p2, "block_begins_with"

    .line 4
    invoke-virtual {p1, p2}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 5
    :goto_0
    iget-object p2, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$a;->f:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;

    iget-object p2, p2, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->A:Lcom/hiya/stingray/manager/e1;

    const-string v0, "cancel"

    .line 6
    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v0, "dialog_button"

    .line 7
    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 8
    invoke-virtual {p1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    const-string v0, "user_prompt_action"

    .line 9
    invoke-virtual {p2, v0, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 10
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$a;->f:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->e1()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
