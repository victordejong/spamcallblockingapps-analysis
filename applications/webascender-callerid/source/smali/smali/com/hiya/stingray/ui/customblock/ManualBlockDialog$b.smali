.class Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->x1(Landroid/os/Bundle;)Landroidx/appcompat/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$d;

.field final synthetic b:Landroidx/appcompat/app/b;

.field final synthetic c:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$d;Landroidx/appcompat/app/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;->c:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;

    iput-object p2, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;->a:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$d;

    iput-object p3, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;->b:Landroidx/appcompat/app/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;->c:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;

    iget-object v0, v0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->numberEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;->c:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;->c:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;

    iget-object v1, v1, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->numberEdit:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/hiya/stingray/util/e0;->x(Landroid/app/Activity;Landroid/view/View;)V

    .line 3
    check-cast p1, Landroidx/appcompat/app/b;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/b;->a(I)Landroid/widget/Button;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b$a;-><init>(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
