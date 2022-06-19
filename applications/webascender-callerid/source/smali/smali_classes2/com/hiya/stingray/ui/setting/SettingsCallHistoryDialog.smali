.class public Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;
.super Lcom/hiya/stingray/ui/common/g;
.source "SourceFile"


# instance fields
.field A:Lcom/hiya/stingray/manager/i1;

.field B:Lcom/hiya/stingray/ui/common/error/e;

.field C:Lcom/hiya/stingray/util/a0;

.field cancelButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900f4
    .end annotation
.end field

.field deleteButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090147
    .end annotation
.end field

.field z:Lcom/hiya/stingray/manager/o1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/g;-><init>()V

    return-void
.end method

.method public static t1(Lcom/hiya/stingray/ui/common/e;)Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object p0

    const-string v1, "settings_call_history_dialog_tag"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/d;->p1(Landroidx/fragment/app/n;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/g;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/g;->q1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->x(Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0057

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    iget-object p2, p0, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;->deleteButton:Landroid/widget/Button;

    new-instance p3, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog$a;

    invoke-direct {p3, p0}, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog$a;-><init>(Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p2, p0, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;->cancelButton:Landroid/widget/Button;

    new-instance p3, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog$b;

    invoke-direct {p3, p0}, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog$b;-><init>(Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
