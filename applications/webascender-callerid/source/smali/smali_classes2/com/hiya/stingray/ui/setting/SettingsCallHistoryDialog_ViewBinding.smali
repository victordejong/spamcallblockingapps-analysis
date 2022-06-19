.class public Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog_ViewBinding;->a:Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;

    .line 3
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f090147

    const-string v2, "field \'deleteButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;->deleteButton:Landroid/widget/Button;

    .line 4
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0900f4

    const-string v2, "field \'cancelButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;->cancelButton:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog_ViewBinding;->a:Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog_ViewBinding;->a:Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;

    .line 3
    iput-object v1, v0, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;->deleteButton:Landroid/widget/Button;

    .line 4
    iput-object v1, v0, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;->cancelButton:Landroid/widget/Button;

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
