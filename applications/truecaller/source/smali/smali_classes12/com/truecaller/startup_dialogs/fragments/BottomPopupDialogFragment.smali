.class public final Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;
.super Le/a/d5/g/e;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002:\u0001OB\u0007\u00a2\u0006\u0004\u0008N\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u00020\u0005H\u0015\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H\u0015\u00a2\u0006\u0004\u0008\n\u0010\tJ\u0019\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\tJ-\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\"\u0010-\u001a\u00020&8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\"\u00105\u001a\u00020.8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\"\u0010=\u001a\u0002068\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\u0016\u0010A\u001a\u00020>8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\"\u0010I\u001a\u00020B8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008C\u0010D\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR\u0016\u0010M\u001a\u00020J8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010L\u00a8\u0006P"
    }
    d2 = {
        "Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;",
        "Le/a/d5/g/e;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "QA",
        "()V",
        "RA",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "(Landroid/os/Bundle;)Landroid/app/Dialog;",
        "onStart",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "Le/a/i4/l;",
        "e",
        "Le/a/i4/l;",
        "getNotificationAccessRequester",
        "()Le/a/i4/l;",
        "setNotificationAccessRequester",
        "(Le/a/i4/l;)V",
        "notificationAccessRequester",
        "Le/a/p5/a0;",
        "d",
        "Le/a/p5/a0;",
        "getPermissionUtil",
        "()Le/a/p5/a0;",
        "setPermissionUtil",
        "(Le/a/p5/a0;)V",
        "permissionUtil",
        "Le/a/p5/g;",
        "c",
        "Le/a/p5/g;",
        "getDeviceInfoUtil",
        "()Le/a/p5/g;",
        "setDeviceInfoUtil",
        "(Le/a/p5/g;)V",
        "deviceInfoUtil",
        "Le/a/i4/o;",
        "f",
        "Le/a/i4/o;",
        "getNotificationHandlerUtil",
        "()Le/a/i4/o;",
        "setNotificationHandlerUtil",
        "(Le/a/i4/o;)V",
        "notificationHandlerUtil",
        "Le/a/x3/a;",
        "b",
        "Le/a/x3/a;",
        "getAppUpdateActionHelper",
        "()Le/a/x3/a;",
        "setAppUpdateActionHelper",
        "(Le/a/x3/a;)V",
        "appUpdateActionHelper",
        "Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;",
        "h",
        "Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;",
        "action",
        "Le/a/l/a/t;",
        "g",
        "Le/a/l/a/t;",
        "getPremiumNotificationAccessEventLogger",
        "()Le/a/l/a/t;",
        "setPremiumNotificationAccessEventLogger",
        "(Le/a/l/a/t;)V",
        "premiumNotificationAccessEventLogger",
        "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;",
        "PA",
        "()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;",
        "analyticsType",
        "<init>",
        "Action",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public b:Le/a/x3/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/p5/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Le/a/p5/a0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/i4/l;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/i4/o;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Le/a/l/a/t;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/d5/g/e;-><init>()V

    return-void
.end method


# virtual methods
.method public PA()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;->h:Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->getAnalyticsType()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "action"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public QA()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    sget-object v1, Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;->USER_PRESSED_DISMISS_BUTTON:Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StartupDialogDismissReason"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method public RA()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;->h:Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v2

    instance-of v3, v2, Lcom/truecaller/ui/TruecallerInit;

    if-nez v3, :cond_0

    move-object v2, v1

    :cond_0
    check-cast v2, Lcom/truecaller/ui/TruecallerInit;

    if-eqz v2, :cond_b

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;->c:Le/a/p5/g;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/p5/g;->q()I

    move-result v0

    const/16 v4, 0x18

    if-lt v0, v4, :cond_b

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Le/a/b0/q/t;->n(Landroid/content/Context;Landroid/content/Intent;)Z

    const v0, 0x7f120faa

    .line 6
    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7
    iget-object v0, p0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;->g:Le/a/l/a/t;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/truecaller/premium/util/NotificationAccessSource;->BOTTOM_BAR_RING_SILENT:Lcom/truecaller/premium/util/NotificationAccessSource;

    invoke-interface {v0, v1}, Le/a/l/a/t;->a(Lcom/truecaller/premium/util/NotificationAccessSource;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "premiumNotificationAccessEventLogger"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "deviceInfoUtil"

    .line 8
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_4
    new-instance v0, Le/a/j4/b/a/f;

    .line 10
    invoke-direct {v0, v2}, Le/a/j4/b/a/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Le/a/j4/b/a/f;->m()Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 11
    iget-object v3, p0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;->b:Le/a/x3/a;

    if-eqz v3, :cond_5

    const-string v1, "it"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startupDialog"

    invoke-interface {v3, v2, v0, v1}, Le/a/x3/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "appUpdateActionHelper"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_6
    invoke-static {v2}, Le/a/p5/s0/g;->y1(Landroid/app/Activity;)V

    .line 13
    invoke-virtual {v2}, Lcom/truecaller/ui/TruecallerInit;->Fa()Lcom/truecaller/tcpermissions/PermissionPoller;

    move-result-object v0

    sget-object v1, Lcom/truecaller/tcpermissions/PermissionPoller$Permission;->DRAW_OVERLAY:Lcom/truecaller/tcpermissions/PermissionPoller$Permission;

    invoke-virtual {v0, v1}, Lcom/truecaller/tcpermissions/PermissionPoller;->a(Lcom/truecaller/tcpermissions/PermissionPoller$Permission;)V

    goto :goto_0

    :cond_7
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 14
    invoke-static {v2, v0}, Le/a/p5/s0/g;->w0(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 15
    invoke-static {p0, v0, v3, v3}, Le/a/p5/s0/g;->d1(Landroidx/fragment/app/Fragment;Ljava/lang/String;IZ)Z

    .line 16
    invoke-virtual {p0}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 17
    :cond_8
    new-instance v0, Le/a/z1;

    const v1, 0x7f120447

    const v3, 0x7f120446

    invoke-direct {v0, v2, v1, v3}, Le/a/z1;-><init>(Landroid/content/Context;II)V

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "childFragmentManager"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Le/a/z1;->cB(Landroidx/fragment/app/FragmentManager;)V

    goto :goto_0

    .line 19
    :cond_9
    iget-object v0, p0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;->e:Le/a/i4/l;

    if-eqz v0, :cond_a

    .line 20
    sget-object v1, Lcom/truecaller/premium/util/NotificationAccessSource;->BOTTOM_BAR_MISSED_CALL_NOTIFICATION:Lcom/truecaller/premium/util/NotificationAccessSource;

    const v3, 0x7f120274

    .line 21
    invoke-virtual {v0, v2, v1, v3}, Le/a/i4/l;->a(Landroid/content/Context;Lcom/truecaller/premium/util/NotificationAccessSource;I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 22
    invoke-virtual {p0}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    goto :goto_0

    :cond_a
    const-string v0, "notificationAccessRequester"

    .line 23
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_0
    return-void

    :cond_c
    const-string v0, "action"

    .line 24
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments?.getString(ARG\u2026ption(\"Action is missed\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->valueOf(Ljava/lang/String;)Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;->h:Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    .line 2
    invoke-super {p0, p1}, Le/a/d5/g/e;->onCreate(Landroid/os/Bundle;)V

    .line 3
    sget-object p1, Le/a/k2;->a:Le/a/k2$a;

    invoke-virtual {p1}, Le/a/k2$a;->a()Le/a/k2;

    move-result-object p1

    invoke-interface {p1, p0}, Le/a/k2;->b(Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action is missed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln3/b/a/q;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "super.onCreateDialog(savedInstanceState)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    :cond_0
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0127

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a02de

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 3
    check-cast p2, Landroid/widget/TextView;

    .line 4
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p3, p0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;->h:Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    const/4 v0, 0x0

    const-string v1, "action"

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->getAccept()I

    move-result p3

    if-ltz p3, :cond_1

    iget-object p3, p0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;->h:Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->getAccept()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const p2, 0x7f0a02f1

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0b6a

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;->h:Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->getText()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f0a096b

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;->h:Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->getIcon()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p1

    :cond_2
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_4
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Ln3/r/a/k;->onStart()V

    .line 2
    invoke-virtual {p0}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    const-string v1, "it"

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 6
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 7
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x50

    .line 8
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v2, 0x7f1301da

    .line 9
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;->h:Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;->f:Le/a/i4/o;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/i4/o;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p0}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v0, "notificationHandlerUtil"

    .line 14
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "action"

    .line 15
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
