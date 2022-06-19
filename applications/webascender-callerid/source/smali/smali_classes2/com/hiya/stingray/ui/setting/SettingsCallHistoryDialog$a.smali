.class Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog$a;->f:Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog$a;->f:Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;

    iget-object p1, p1, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;->A:Lcom/hiya/stingray/manager/i1;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/hiya/stingray/manager/i1;->j(J)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog$a;->f:Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;

    iget-object p1, p1, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;->C:Lcom/hiya/stingray/util/a0;

    new-instance v0, Lcom/hiya/stingray/util/i0/d;

    sget-object v1, Lcom/hiya/stingray/util/i0/d$a;->FULL_REFRESH:Lcom/hiya/stingray/util/i0/d$a;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/util/i0/d;-><init>(Lcom/hiya/stingray/util/i0/d$a;)V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/a0;->d(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog$a;->f:Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog$a;->f:Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;

    const v1, 0x7f110064

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog$a;->f:Lcom/hiya/stingray/ui/setting/SettingsCallHistoryDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->c1()V

    return-void
.end method
