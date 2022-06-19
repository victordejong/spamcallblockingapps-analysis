.class Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;->w1(Landroid/os/Bundle;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog$c;->a:Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog$c;->a:Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog$c;->a:Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;

    iget-object v0, v0, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;->wrongNameTv:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/hiya/stingray/util/e0;->x(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
