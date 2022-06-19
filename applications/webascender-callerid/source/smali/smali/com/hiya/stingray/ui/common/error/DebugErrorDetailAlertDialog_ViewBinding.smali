.class public Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog_ViewBinding;->a:Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;

    .line 3
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f09019e

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09019c

    const-string v2, "field \'errorDebuggerAction\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->errorDebuggerAction:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901a1

    const-string v2, "field \'errorDebuggerReason\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->errorDebuggerReason:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09019d

    const-string v2, "field \'errorDebuggerCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->errorDebuggerCode:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901a0

    const-string v2, "field \'errorDebuggerErrorConjecture\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->errorDebuggerErrorConjecture:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09019f

    const-string v2, "field \'errorDebuggerErrorBody\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->errorDebuggerErrorBody:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog_ViewBinding;->a:Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog_ViewBinding;->a:Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;

    .line 3
    iput-object v1, v0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iput-object v1, v0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->errorDebuggerAction:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->errorDebuggerReason:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->errorDebuggerCode:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->errorDebuggerErrorConjecture:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->errorDebuggerErrorBody:Landroid/widget/TextView;

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
