.class public final Lcom/truecaller/backup/RestoreService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Le/a/n/b2;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008/\u0010\u0005J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J)\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0010J\u0017\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0010J\u0017\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0005J\u0017\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0010J\u001f\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0010J\u000f\u0010 \u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008 \u0010\u0005R\"\u0010\'\u001a\u00020!8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\"\u0010.\u001a\u00020(8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-\u00a8\u00060"
    }
    d2 = {
        "Lcom/truecaller/backup/RestoreService;",
        "Landroid/app/Service;",
        "Le/a/n/b2;",
        "Ls1/s;",
        "onCreate",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "",
        "flags",
        "startId",
        "onStartCommand",
        "(Landroid/content/Intent;II)I",
        "",
        "channelId",
        "g",
        "(Ljava/lang/String;)V",
        "",
        "success",
        "f",
        "(Z)V",
        "e",
        "h",
        "messageResId",
        "a",
        "(I)V",
        "b",
        "i",
        "appDownloadUri",
        "d",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "c",
        "onDestroy",
        "Le/a/n/a2;",
        "Le/a/n/a2;",
        "getPresenter",
        "()Le/a/n/a2;",
        "setPresenter",
        "(Le/a/n/a2;)V",
        "presenter",
        "Le/a/i4/e;",
        "Le/a/i4/e;",
        "getNotificationManager",
        "()Le/a/i4/e;",
        "setNotificationManager",
        "(Le/a/i4/e;)V",
        "notificationManager",
        "<init>",
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
.field public a:Le/a/n/a2;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/i4/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "channelId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/truecaller/backup/RestoreService;->b:Le/a/i4/e;

    if-eqz p1, :cond_0

    const v0, 0x7f0a0e62

    invoke-interface {p1, v0}, Le/a/i4/e;->f(I)V

    return-void

    :cond_0
    const-string p1, "notificationManager"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "channelId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appDownloadUri"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2
    new-instance p2, Ln3/k/a/q;

    invoke-direct {p2, p0, p1}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p1, 0x7f060024

    .line 3
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 4
    invoke-static {p0, p1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    .line 5
    iput p1, p2, Ln3/k/a/q;->D:I

    const p1, 0x7f080430

    .line 6
    iget-object v1, p2, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput p1, v1, Landroid/app/Notification;->icon:I

    const p1, 0x7f12089c

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const p1, 0x7f120886

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    .line 9
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 10
    iput-object v0, p2, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 11
    new-instance v0, Ln3/k/a/o;

    invoke-direct {v0}, Ln3/k/a/o;-><init>()V

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    .line 13
    invoke-virtual {p2, v0}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    const/4 p1, 0x1

    const/16 v0, 0x10

    .line 14
    invoke-virtual {p2, v0, p1}, Ln3/k/a/q;->p(IZ)V

    .line 15
    invoke-virtual {p2}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v4

    const-string p1, "createNotificationBuilde\u2026rue)\n            .build()"

    invoke-static {v4, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string p1, "Subtype"

    const-string p2, "restoreErrorNotSupportedDb"

    .line 17
    invoke-virtual {v6, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/truecaller/backup/RestoreService;->b:Le/a/i4/e;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const v3, 0x7f0a0e62

    const-string v5, "notificationBackup"

    invoke-interface/range {v1 .. v6}, Le/a/i4/e;->c(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string p1, "notificationManager"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public e(Ljava/lang/String;)V
    .locals 8

    const-string v0, "channelId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationBackup"

    .line 1
    invoke-static {p0, v0}, Lcom/truecaller/ui/TruecallerInit;->wa(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x14000000

    .line 4
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 5
    new-instance v1, Ln3/k/a/q;

    invoke-direct {v1, p0, p1}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p1, 0x7f060024

    .line 6
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 7
    invoke-static {p0, p1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    .line 8
    iput p1, v1, Ln3/k/a/q;->D:I

    const p1, 0x7f08042f

    .line 9
    iget-object v2, v1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput p1, v2, Landroid/app/Notification;->icon:I

    const p1, 0x7f120ec8

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const p1, 0x7f120ec6

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 12
    iput-object v0, v1, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/4 p1, 0x1

    const/16 v0, 0x10

    .line 13
    invoke-virtual {v1, v0, p1}, Ln3/k/a/q;->p(IZ)V

    .line 14
    invoke-virtual {v1}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v5

    const-string p1, "createNotificationBuilde\u2026rue)\n            .build()"

    invoke-static {v5, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string p1, "Subtype"

    const-string v0, "restoreSuccess"

    .line 16
    invoke-virtual {v7, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v2, p0, Lcom/truecaller/backup/RestoreService;->b:Le/a/i4/e;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const v4, 0x7f0a0e61

    const-string v6, "notificationBackup"

    invoke-interface/range {v2 .. v7}, Le/a/i4/e;->c(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string p1, "notificationManager"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public f(Z)V
    .locals 3

    .line 1
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.truecaller.action.RESTORE_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.truecaller.extra.RESTORE_SUCCESSFUL"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 8

    const-string v0, "channelId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ln3/k/a/q;

    invoke-direct {v0, p0, p1}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p1, 0x7f060024

    .line 2
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 3
    invoke-static {p0, p1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    .line 4
    iput p1, v0, Ln3/k/a/q;->D:I

    const p1, 0x1080081

    .line 5
    iget-object v1, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput p1, v1, Landroid/app/Notification;->icon:I

    const p1, 0x7f120ec9

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const/4 p1, 0x2

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, p1, v1}, Ln3/k/a/q;->p(IZ)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0, p1, p1, v1}, Ln3/k/a/q;->u(IIZ)Ln3/k/a/q;

    .line 9
    invoke-virtual {v0}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v5

    const-string p1, "createNotificationBuilde\u2026rue)\n            .build()"

    invoke-static {v5, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f0a0e63

    .line 10
    invoke-virtual {p0, p1, v5}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const-string p1, "[RestoreService] startForeground called"

    .line 11
    invoke-static {p1}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    .line 12
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string p1, "Subtype"

    const-string v0, "restoreInProgress"

    .line 13
    invoke-virtual {v7, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/truecaller/backup/RestoreService;->b:Le/a/i4/e;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const v4, 0x7f0a0e63

    const-string v6, "notificationBackup"

    invoke-interface/range {v2 .. v7}, Le/a/i4/e;->c(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string p1, "notificationManager"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public h(Ljava/lang/String;)V
    .locals 8

    const-string v0, "channelId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationBackup"

    .line 1
    invoke-static {p0, v0}, Lcom/truecaller/ui/TruecallerInit;->wa(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x14000000

    .line 2
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 3
    new-instance v1, Ln3/k/a/q;

    invoke-direct {v1, p0, p1}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p1, 0x7f060024

    .line 4
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 5
    invoke-static {p0, p1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    .line 6
    iput p1, v1, Ln3/k/a/q;->D:I

    const p1, 0x7f08042f

    .line 7
    iget-object v2, v1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput p1, v2, Landroid/app/Notification;->icon:I

    const p1, 0x7f120ec8

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const p1, 0x7f120ec7

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 10
    iput-object v0, v1, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/4 p1, 0x1

    const/16 v0, 0x10

    .line 11
    invoke-virtual {v1, v0, p1}, Ln3/k/a/q;->p(IZ)V

    .line 12
    invoke-virtual {v1}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v5

    const-string p1, "createNotificationBuilde\u2026rue)\n            .build()"

    invoke-static {v5, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string p1, "Subtype"

    const-string v0, "restoreSuccess"

    .line 14
    invoke-virtual {v7, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v2, p0, Lcom/truecaller/backup/RestoreService;->b:Le/a/i4/e;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const v4, 0x7f0a0e60

    const-string v6, "notificationBackup"

    invoke-interface/range {v2 .. v7}, Le/a/i4/e;->c(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string p1, "notificationManager"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public i(Ljava/lang/String;)V
    .locals 8

    const-string v0, "channelId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/backup/RestoreService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v2, 0xc000000

    const/4 v3, 0x0

    const/16 v4, 0x1a

    if-lt v1, v4, :cond_0

    .line 3
    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 5
    :goto_0
    new-instance v1, Ln3/k/a/m$a;

    const v2, 0x7f0804c9

    const v3, 0x7f120730

    .line 6
    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-direct {v1, v2, v3, v0}, Ln3/k/a/m$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 8
    invoke-virtual {v1}, Ln3/k/a/m$a;->b()Ln3/k/a/m;

    move-result-object v0

    const-string v1, "NotificationCompat.Actio\u2026gIntent\n        ).build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v1, Ln3/k/a/q;

    invoke-direct {v1, p0, p1}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p1, 0x7f060024

    .line 10
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 11
    invoke-static {p0, p1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    .line 12
    iput p1, v1, Ln3/k/a/q;->D:I

    const p1, 0x7f080430

    .line 13
    iget-object v2, v1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput p1, v2, Landroid/app/Notification;->icon:I

    const p1, 0x7f12089c

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const p1, 0x7f120885

    .line 15
    invoke-virtual {p0, p1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 16
    invoke-virtual {v1, v0}, Ln3/k/a/q;->b(Ln3/k/a/m;)Ln3/k/a/q;

    const/4 p1, 0x1

    const/16 v0, 0x10

    .line 17
    invoke-virtual {v1, v0, p1}, Ln3/k/a/q;->p(IZ)V

    .line 18
    invoke-virtual {v1}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v5

    const-string p1, "createNotificationBuilde\u2026rue)\n            .build()"

    invoke-static {v5, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string p1, "Subtype"

    const-string v0, "restoreError"

    .line 20
    invoke-virtual {v7, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v2, p0, Lcom/truecaller/backup/RestoreService;->b:Le/a/i4/e;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    const v4, 0x7f0a0e62

    const-string v6, "notificationBackup"

    invoke-interface/range {v2 .. v7}, Le/a/i4/e;->c(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_1
    const-string p1, "notificationManager"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    sget-object v0, Le/a/l2;->a:Le/a/l2$a;

    invoke-virtual {v0}, Le/a/l2$a;->a()Le/a/l2;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/l2;->f()Le/a/n/g;

    move-result-object v0

    .line 4
    check-cast v0, Le/a/t1$c;

    .line 5
    iget-object v1, v0, Le/a/t1$c;->A:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/n/a2;

    .line 6
    iput-object v1, p0, Lcom/truecaller/backup/RestoreService;->a:Le/a/n/a2;

    .line 7
    iget-object v0, v0, Le/a/t1$c;->a:Le/a/t1;

    .line 8
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 9
    invoke-interface {v0}, Le/a/j2;->O1()Le/a/i4/e;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 10
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/truecaller/backup/RestoreService;->b:Le/a/i4/e;

    .line 12
    iget-object v0, p0, Lcom/truecaller/backup/RestoreService;->a:Le/a/n/a2;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/backup/RestoreService;->a:Le/a/n/a2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u2/a/e;->c()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/backup/RestoreService;->a:Le/a/n/a2;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/n/a2;->hg()V

    const/4 p1, 0x2

    return p1

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
