.class public Lcom/facebook/login/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method public constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/login/l;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/facebook/login/l;->a:Lcom/facebook/login/DeviceAuthDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/facebook/login/DeviceAuthDialog;->QA(Z)Landroid/view/View;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/facebook/login/l;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {p2}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/facebook/login/l;->a:Lcom/facebook/login/DeviceAuthDialog;

    .line 4
    iget-object p2, p1, Lcom/facebook/login/DeviceAuthDialog;->k:Lcom/facebook/login/LoginClient$Request;

    .line 5
    invoke-virtual {p1, p2}, Lcom/facebook/login/DeviceAuthDialog;->VA(Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method
