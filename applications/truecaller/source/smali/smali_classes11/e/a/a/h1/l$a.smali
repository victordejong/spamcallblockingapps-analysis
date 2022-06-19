.class public final Le/a/a/h1/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/h1/l;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/h1/l;


# direct methods
.method public constructor <init>(Le/a/a/h1/l;)V
    .locals 0

    iput-object p1, p0, Le/a/a/h1/l$a;->a:Le/a/a/h1/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Le/a/a/h1/l$a;->a:Le/a/a/h1/l;

    .line 2
    iget-object p1, p1, Le/a/a/h1/l;->a:Le/a/p5/a0;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Le/a/p5/a0;->k()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Le/a/a/h1/l$a;->a:Le/a/a/h1/l;

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v2

    invoke-static {v2}, Le/a/p5/s0/g;->y1(Landroid/app/Activity;)V

    .line 7
    new-instance v2, Lcom/truecaller/tcpermissions/PermissionPoller;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v1, v0}, Lcom/truecaller/ui/TruecallerInit;->wa(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v2, v1, v3, v0}, Lcom/truecaller/tcpermissions/PermissionPoller;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/Intent;)V

    iput-object v2, p1, Le/a/a/h1/l;->b:Lcom/truecaller/tcpermissions/PermissionPoller;

    .line 8
    sget-object p1, Lcom/truecaller/tcpermissions/PermissionPoller$Permission;->DRAW_OVERLAY:Lcom/truecaller/tcpermissions/PermissionPoller$Permission;

    invoke-virtual {v2, p1}, Lcom/truecaller/tcpermissions/PermissionPoller;->a(Lcom/truecaller/tcpermissions/PermissionPoller$Permission;)V

    .line 9
    :cond_0
    iget-object p1, p0, Le/a/a/h1/l$a;->a:Le/a/a/h1/l;

    invoke-virtual {p1}, Ln3/r/a/k;->dismiss()V

    return-void

    :cond_1
    const-string p1, "permissionUtil"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method
