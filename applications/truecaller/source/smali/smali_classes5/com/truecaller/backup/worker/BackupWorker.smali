.class public final Lcom/truecaller/backup/worker/BackupWorker;
.super Lcom/truecaller/background_work/TrackedWorker;
.source "SourceFile"

# interfaces
.implements Le/a/n/l2/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/backup/worker/BackupWorker$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 72\u00020\u00012\u00020\u0002:\u0001\u0010BE\u0008\u0007\u0012\u0008\u0008\u0001\u0010&\u001a\u00020#\u0012\u0008\u0008\u0001\u00104\u001a\u000203\u0012\u0006\u0010,\u001a\u00020\'\u0012\u0006\u00102\u001a\u00020-\u0012\u000e\u0008\u0001\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u0012\u0006\u0010\u001b\u001a\u00020\u0019\u00a2\u0006\u0004\u00085\u00106J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u000f\u0010\r\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000bJ\u0017\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u000bJ\u000f\u0010\u0013\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u000bR\u001c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u001aR\"\u0010\"\u001a\u00020\u001c8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u001c\u0010,\u001a\u00020\'8\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+R\u001c\u00102\u001a\u00020-8\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101\u00a8\u00068"
    }
    d2 = {
        "Lcom/truecaller/backup/worker/BackupWorker;",
        "Lcom/truecaller/background_work/TrackedWorker;",
        "Le/a/n/l2/b;",
        "",
        "q",
        "()Z",
        "Landroidx/work/ListenableWorker$a;",
        "r",
        "()Landroidx/work/ListenableWorker$a;",
        "Ls1/s;",
        "onStopped",
        "()V",
        "j",
        "k",
        "",
        "stringRes",
        "a",
        "(I)V",
        "f",
        "l",
        "Ljavax/inject/Provider;",
        "Landroid/content/Intent;",
        "e",
        "Ljavax/inject/Provider;",
        "backupSettingsIntent",
        "Le/a/n/l2/a;",
        "Le/a/n/l2/a;",
        "presenter",
        "Le/a/h4/n;",
        "Le/a/h4/n;",
        "getNotificationManager",
        "()Le/a/h4/n;",
        "setNotificationManager",
        "(Le/a/h4/n;)V",
        "notificationManager",
        "Landroid/content/Context;",
        "b",
        "Landroid/content/Context;",
        "context",
        "Le/a/u3/g;",
        "c",
        "Le/a/u3/g;",
        "o",
        "()Le/a/u3/g;",
        "featuresRegistry",
        "Le/a/q2/a;",
        "d",
        "Le/a/q2/a;",
        "n",
        "()Le/a/q2/a;",
        "analytics",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/u3/g;Le/a/q2/a;Ljavax/inject/Provider;Le/a/n/l2/a;)V",
        "g",
        "backup_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final g:Lcom/truecaller/backup/worker/BackupWorker$a;


# instance fields
.field public a:Le/a/h4/n;

.field public final b:Landroid/content/Context;

.field public final c:Le/a/u3/g;

.field public final d:Le/a/q2/a;

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/n/l2/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/backup/worker/BackupWorker$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/backup/worker/BackupWorker$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/backup/worker/BackupWorker;->g:Lcom/truecaller/backup/worker/BackupWorker$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/u3/g;Le/a/q2/a;Ljavax/inject/Provider;Le/a/n/l2/a;)V
    .locals 1
    .param p5    # Ljavax/inject/Provider;
        .annotation runtime Ljavax/inject/Named;
            value = "backup_settings"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/work/WorkerParameters;",
            "Le/a/u3/g;",
            "Le/a/q2/a;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Intent;",
            ">;",
            "Le/a/n/l2/a;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupSettingsIntent"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presenter"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/background_work/TrackedWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/truecaller/backup/worker/BackupWorker;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/truecaller/backup/worker/BackupWorker;->c:Le/a/u3/g;

    iput-object p4, p0, Lcom/truecaller/backup/worker/BackupWorker;->d:Le/a/q2/a;

    iput-object p5, p0, Lcom/truecaller/backup/worker/BackupWorker;->e:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/truecaller/backup/worker/BackupWorker;->f:Le/a/n/l2/a;

    return-void
.end method

.method public static final s()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "backupNow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ln3/m0/f;

    invoke-direct {v1, v0}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 4
    invoke-static {v1}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    const-string v0, "Data.Builder()\n         \u2026\n                .build()"

    .line 5
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    const-string v2, "WorkManager.getInstance(\u2026icationBase.getAppBase())"

    .line 8
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v2, Ln3/m0/r$a;

    const-class v3, Lcom/truecaller/backup/worker/BackupWorker;

    invoke-direct {v2, v3}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 10
    iget-object v3, v2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v1, v3, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 11
    invoke-virtual {v2}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v1

    const-string v2, "OneTimeWorkRequest.Build\u2026\n                .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    check-cast v1, Ln3/m0/r;

    .line 13
    sget-object v2, Ln3/m0/h;->b:Ln3/m0/h;

    const-string v3, "OneTimeBackupWorker"

    invoke-virtual {v0, v3, v2, v1}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/backup/worker/BackupWorker;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/backup/worker/BackupWorker;->b:Landroid/content/Context;

    invoke-static {v0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.truecaller.backup.BACKUP_DONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method public j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/backup/worker/BackupWorker;->b:Landroid/content/Context;

    sget v1, Lcom/truecaller/backup/R$attr;->tcx_brandBackgroundBlue:I

    invoke-static {v0, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    .line 2
    new-instance v1, Ln3/k/a/q;

    iget-object v2, p0, Lcom/truecaller/backup/worker/BackupWorker;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/truecaller/backup/worker/BackupWorker;->a:Le/a/h4/n;

    if-eqz v3, :cond_0

    const-string v4, "backup"

    invoke-interface {v3, v4}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iput v0, v1, Ln3/k/a/q;->D:I

    const v0, 0x1080088

    .line 4
    iget-object v2, v1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v0, v2, Landroid/app/Notification;->icon:I

    .line 5
    iget-object v0, p0, Lcom/truecaller/backup/worker/BackupWorker;->b:Landroid/content/Context;

    sget v2, Lcom/truecaller/backup/R$string;->backup_notification_backing_up:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const/4 v0, 0x2

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v0, v2}, Ln3/k/a/q;->p(IZ)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {v1, v0, v0, v2}, Ln3/k/a/q;->u(IIZ)Ln3/k/a/q;

    .line 8
    invoke-virtual {v1}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "NotificationCompat.Build\u2026\n                .build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v1, Ln3/m0/i;

    sget v2, Lcom/truecaller/backup/R$id;->back_up_progress_notification_id:I

    invoke-direct {v1, v2, v0}, Ln3/m0/i;-><init>(ILandroid/app/Notification;)V

    invoke-virtual {p0, v1}, Landroidx/work/ListenableWorker;->setForegroundAsync(Ln3/m0/i;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    return-void

    :cond_0
    const-string v0, "notificationManager"

    .line 10
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public k()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/truecaller/backup/worker/BackupWorker;->b:Landroid/content/Context;

    sget v1, Lcom/truecaller/backup/R$attr;->tcx_brandBackgroundBlue:I

    invoke-static {v0, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/truecaller/backup/worker/BackupWorker;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/truecaller/backup/worker/BackupWorker;->e:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    const/4 v3, 0x0

    const/high16 v4, 0xc000000

    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3
    new-instance v2, Ln3/k/a/m$a;

    .line 4
    sget v3, Lcom/truecaller/backup/R$drawable;->ic_google_drive:I

    .line 5
    iget-object v4, p0, Lcom/truecaller/backup/worker/BackupWorker;->b:Landroid/content/Context;

    sget v5, Lcom/truecaller/backup/R$string;->backup_notification_fix:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-direct {v2, v3, v4, v1}, Ln3/k/a/m$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 7
    invoke-virtual {v2}, Ln3/k/a/m$a;->b()Ln3/k/a/m;

    move-result-object v2

    const-string v3, "NotificationCompat.Actio\u2026gIntent\n        ).build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v3, Ln3/k/a/q;

    iget-object v4, p0, Lcom/truecaller/backup/worker/BackupWorker;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/truecaller/backup/worker/BackupWorker;->a:Le/a/h4/n;

    const/4 v6, 0x0

    const-string v7, "notificationManager"

    if-eqz v5, :cond_1

    const-string v8, "backup"

    invoke-interface {v5, v8}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    iput v0, v3, Ln3/k/a/q;->D:I

    .line 10
    sget v0, Lcom/truecaller/backup/R$drawable;->ic_cloud_error:I

    .line 11
    iget-object v4, v3, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v0, v4, Landroid/app/Notification;->icon:I

    .line 12
    iget-object v0, p0, Lcom/truecaller/backup/worker/BackupWorker;->b:Landroid/content/Context;

    sget v4, Lcom/truecaller/backup/R$string;->backup_settings_title:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 13
    iget-object v0, p0, Lcom/truecaller/backup/worker/BackupWorker;->b:Landroid/content/Context;

    sget v4, Lcom/truecaller/backup/R$string;->backup_notification_failure:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 14
    iput-object v1, v3, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 15
    invoke-virtual {v3, v2}, Ln3/k/a/q;->b(Ln3/k/a/m;)Ln3/k/a/q;

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 16
    invoke-virtual {v3, v1, v0}, Ln3/k/a/q;->p(IZ)V

    .line 17
    invoke-virtual {v3}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "NotificationCompat.Build\u2026rue)\n            .build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/truecaller/backup/worker/BackupWorker;->a:Le/a/h4/n;

    if-eqz v1, :cond_0

    sget v2, Lcom/truecaller/backup/R$id;->back_up_error_notification_id:I

    invoke-interface {v1, v2, v0}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    return-void

    :cond_0
    invoke-static {v7}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    .line 19
    :cond_1
    invoke-static {v7}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6
.end method

.method public l()V
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/backup/worker/BackupWorker;->g:Lcom/truecaller/backup/worker/BackupWorker$a;

    invoke-virtual {v0}, Lcom/truecaller/backup/worker/BackupWorker$a;->d()V

    return-void
.end method

.method public n()Le/a/q2/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/backup/worker/BackupWorker;->d:Le/a/q2/a;

    return-object v0
.end method

.method public o()Le/a/u3/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/backup/worker/BackupWorker;->c:Le/a/u3/g;

    return-object v0
.end method

.method public onStopped()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/work/ListenableWorker;->onStopped()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/backup/worker/BackupWorker;->f:Le/a/n/l2/a;

    check-cast v0, Le/a/u2/a/a;

    invoke-virtual {v0}, Le/a/u2/a/a;->c()V

    return-void
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public r()Landroidx/work/ListenableWorker$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/backup/worker/BackupWorker;->b:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Le/a/h4/q/g;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Le/a/h4/q/g;

    if-eqz v0, :cond_3

    .line 3
    invoke-interface {v0}, Le/a/h4/q/g;->n()Le/a/h4/n;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/backup/worker/BackupWorker;->a:Le/a/h4/n;

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/backup/worker/BackupWorker;->f:Le/a/n/l2/a;

    check-cast v0, Le/a/u2/a/b;

    .line 5
    iput-object p0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v0

    const-string v1, "backupNow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ln3/m0/f;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/truecaller/backup/worker/BackupWorker;->f:Le/a/n/l2/a;

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getRunAttemptCount()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v1, Le/a/n/l2/c;

    :try_start_1
    invoke-virtual {v1, v0, v2}, Le/a/n/l2/c;->Kj(ZI)Lcom/truecaller/backup/worker/BackupWorkResult;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup worker is finished. Result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 10
    new-instance v0, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    const-string v1, "Result.retry()"

    .line 11
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 12
    :cond_2
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "Result.success()"

    .line 13
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/truecaller/backup/worker/BackupWorker;->f:Le/a/n/l2/a;

    check-cast v1, Le/a/u2/a/a;

    invoke-virtual {v1}, Le/a/u2/a/a;->c()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/truecaller/backup/worker/BackupWorker;->f:Le/a/n/l2/a;

    check-cast v1, Le/a/u2/a/a;

    invoke-virtual {v1}, Le/a/u2/a/a;->c()V

    throw v0

    .line 15
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Application class does not implement "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Le/a/h4/q/g;

    invoke-static {v2, v1}, Le/d/c/a/a;->a2(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
