.class public final Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/tcpermissions/PermissionPoller;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$c;->b:Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$c;->b:Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/truecaller/tcpermissions/PermissionPoller;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/truecaller/tcpermissions/PermissionPoller;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/Intent;)V

    return-object v1
.end method
