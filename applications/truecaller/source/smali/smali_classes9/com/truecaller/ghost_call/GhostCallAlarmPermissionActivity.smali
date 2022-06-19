.class public final Lcom/truecaller/ghost_call/GhostCallAlarmPermissionActivity;
.super Le/a/x/c0;
.source "SourceFile"

# interfaces
.implements Le/a/x/e;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\n\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\tR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR%\u0010\u0016\u001a\n \u0011*\u0004\u0018\u00010\u00100\u00108B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R%\u0010\u0019\u001a\n \u0011*\u0004\u0018\u00010\u00100\u00108B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0013\u001a\u0004\u0008\u0018\u0010\u0015\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/truecaller/ghost_call/GhostCallAlarmPermissionActivity;",
        "Le/a/x/e;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onResume",
        "()V",
        "onDestroy",
        "Y7",
        "Lcom/truecaller/tcpermissions/PermissionPoller;",
        "g",
        "Lcom/truecaller/tcpermissions/PermissionPoller;",
        "permissionPoller",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "e",
        "Ls1/g;",
        "getDismissButton",
        "()Landroid/view/View;",
        "dismissButton",
        "d",
        "getAllowButton",
        "allowButton",
        "<init>",
        "ghost-call_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final d:Ls1/g;

.field public final e:Ls1/g;

.field public f:Le/a/x/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Lcom/truecaller/tcpermissions/PermissionPoller;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/x/c0;-><init>()V

    .line 2
    sget v0, Lcom/truecaller/ghost_call/R$id;->actionAccess:I

    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/ghost_call/GhostCallAlarmPermissionActivity;->d:Ls1/g;

    .line 3
    sget v0, Lcom/truecaller/ghost_call/R$id;->actionDismiss:I

    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/ghost_call/GhostCallAlarmPermissionActivity;->e:Ls1/g;

    return-void
.end method


# virtual methods
.method public Y7()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "goBackIntent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Lcom/truecaller/tcpermissions/PermissionPoller;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2, v0}, Lcom/truecaller/tcpermissions/PermissionPoller;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/truecaller/ghost_call/GhostCallAlarmPermissionActivity;->g:Lcom/truecaller/tcpermissions/PermissionPoller;

    if-eqz v1, :cond_1

    .line 3
    sget-object v0, Lcom/truecaller/tcpermissions/PermissionPoller$Permission;->ALARMS_AND_REMINDERS:Lcom/truecaller/tcpermissions/PermissionPoller$Permission;

    invoke-virtual {v1, v0}, Lcom/truecaller/tcpermissions/PermissionPoller;->a(Lcom/truecaller/tcpermissions/PermissionPoller$Permission;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const-string v0, "theme"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Le/a/l4/k;->m(Landroid/content/res/Resources$Theme;Z)V

    .line 3
    sget p1, Lcom/truecaller/ghost_call/R$layout;->activity_ghost_call_alarm_permission:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/ghost_call/GhostCallAlarmPermissionActivity;->f:Le/a/x/f;

    if-eqz p1, :cond_0

    .line 5
    iput-object p0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/truecaller/ghost_call/GhostCallAlarmPermissionActivity;->d:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 7
    new-instance v1, Lcom/truecaller/ghost_call/GhostCallAlarmPermissionActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/truecaller/ghost_call/GhostCallAlarmPermissionActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lcom/truecaller/ghost_call/GhostCallAlarmPermissionActivity;->e:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 9
    new-instance v1, Lcom/truecaller/ghost_call/GhostCallAlarmPermissionActivity$a;

    invoke-direct {v1, v0, p0}, Lcom/truecaller/ghost_call/GhostCallAlarmPermissionActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/ghost_call/GhostCallAlarmPermissionActivity;->g:Lcom/truecaller/tcpermissions/PermissionPoller;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lcom/truecaller/tcpermissions/PermissionPoller;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/truecaller/ghost_call/GhostCallAlarmPermissionActivity;->g:Lcom/truecaller/tcpermissions/PermissionPoller;

    .line 5
    iget-object v1, p0, Lcom/truecaller/ghost_call/GhostCallAlarmPermissionActivity;->f:Le/a/x/f;

    if-eqz v1, :cond_1

    .line 6
    iput-object v0, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    return-void

    :cond_1
    const-string v1, "presenter"

    .line 7
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/ghost_call/GhostCallAlarmPermissionActivity;->g:Lcom/truecaller/tcpermissions/PermissionPoller;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lcom/truecaller/tcpermissions/PermissionPoller;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/truecaller/ghost_call/GhostCallAlarmPermissionActivity;->f:Le/a/x/f;

    if-eqz v0, :cond_2

    .line 5
    iget-boolean v1, v0, Le/a/x/f;->b:Z

    if-eqz v1, :cond_1

    .line 6
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/e;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/x/e;->finish()V

    :cond_1
    return-void

    :cond_2
    const-string v0, "presenter"

    .line 7
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
