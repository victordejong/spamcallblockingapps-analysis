.class Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog$a;->f:Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog$a;->f:Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;

    iget-object p1, p1, Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;->z:Lcom/hiya/stingray/manager/e1;

    new-instance v0, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v0}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string v1, "contacts_access_denied_settings_link"

    .line 2
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v1, "onboard_get_started"

    .line 3
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    const-string v1, "onboard_action"

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog$a;->f:Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/util/e0;->v(Landroid/app/Activity;)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog$a;->f:Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->e1()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
