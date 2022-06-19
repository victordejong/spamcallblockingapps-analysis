.class Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;->w1(Landroid/os/Bundle;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/userfeedback/d;

.field final synthetic g:Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;Lcom/hiya/stingray/ui/userfeedback/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog$a;->g:Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;

    iput-object p2, p0, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog$a;->f:Lcom/hiya/stingray/ui/userfeedback/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog$a;->f:Lcom/hiya/stingray/ui/userfeedback/d;

    iget-object p2, p0, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog$a;->g:Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;

    invoke-static {p2}, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;->t1(Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog$a;->g:Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;

    invoke-static {v0}, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;->u1(Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog$a;->g:Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;

    iget-object v1, v1, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;->wrongNameTv:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/hiya/stingray/ui/userfeedback/d;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
