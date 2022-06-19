.class public final Lcom/truecaller/videocallerid/upload/VideoUploadService;
.super Le/a/k/p/a;
.source "SourceFile"

# interfaces
.implements Le/a/k/p/e;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008-\u0010\u0005J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J)\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ#\u0010\u0011\u001a\u00020\u00032\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J#\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J#\u0010\u0014\u001a\u00020\u00032\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0005J\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0005J#\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\"\u0010$\u001a\u00020\u001e8\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001d\u0010)\u001a\u00020\u00088B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(R\u001d\u0010,\u001a\u00020*8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010&\u001a\u0004\u0008%\u0010+\u00a8\u0006."
    }
    d2 = {
        "Lcom/truecaller/videocallerid/upload/VideoUploadService;",
        "Landroid/app/Service;",
        "Le/a/k/p/e;",
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
        "Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;",
        "onboardingData",
        "",
        "tempRecordingFilePath",
        "a",
        "(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;)V",
        "c",
        "b",
        "d",
        "Landroid/os/IBinder;",
        "onBind",
        "(Landroid/content/Intent;)Landroid/os/IBinder;",
        "finish",
        "onDestroy",
        "Landroid/app/PendingIntent;",
        "g",
        "(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;)Landroid/app/PendingIntent;",
        "Le/a/k/p/d;",
        "Le/a/k/p/d;",
        "getPresenter$video_caller_id_release",
        "()Le/a/k/p/d;",
        "setPresenter$video_caller_id_release",
        "(Le/a/k/p/d;)V",
        "presenter",
        "f",
        "Ls1/g;",
        "e",
        "()I",
        "notificationIconSize",
        "Le/a/h4/n;",
        "()Le/a/h4/n;",
        "notificationManager",
        "<init>",
        "video-caller-id_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public d:Le/a/k/p/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final e:Ls1/g;

.field public final f:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/k/p/a;-><init>()V

    .line 2
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/videocallerid/upload/VideoUploadService$b;

    invoke-direct {v1, p0}, Lcom/truecaller/videocallerid/upload/VideoUploadService$b;-><init>(Lcom/truecaller/videocallerid/upload/VideoUploadService;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/videocallerid/upload/VideoUploadService;->e:Ls1/g;

    .line 3
    new-instance v1, Lcom/truecaller/videocallerid/upload/VideoUploadService$a;

    invoke-direct {v1, p0}, Lcom/truecaller/videocallerid/upload/VideoUploadService$a;-><init>(Lcom/truecaller/videocallerid/upload/VideoUploadService;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/videocallerid/upload/VideoUploadService;->f:Ls1/g;

    return-void
.end method

.method public static final h(Landroid/content/Context;Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    .line 1
    const-class v1, Lcom/truecaller/videocallerid/upload/VideoUploadService;

    .line 2
    invoke-static {p0, v0, p0, v1}, Le/d/c/a/a;->q0(Landroid/content/Context;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "onboardingData"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const-string p1, "tempRecordingFilePath"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Starting service VideoUploadService"

    .line 5
    invoke-static {p1}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    .line 6
    invoke-static {p0, v0}, Ln3/k/b/a;->f(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget v0, Lcom/truecaller/videocallerid/R$attr;->tcx_brandBackgroundBlue:I

    invoke-static {p0, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/videocallerid/upload/VideoUploadService;->f()Le/a/h4/n;

    move-result-object v1

    const-string v2, "miscellaneous_channel"

    invoke-interface {v1, v2}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ln3/k/a/q;

    invoke-direct {v2, p0, v1}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    sget v1, Lcom/truecaller/videocallerid/R$drawable;->ic_tcx_phone_24dp:I

    .line 5
    iget-object v3, v2, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v1, v3, Landroid/app/Notification;->icon:I

    .line 6
    iput v0, v2, Ln3/k/a/q;->D:I

    .line 7
    sget v0, Lcom/truecaller/videocallerid/R$string;->vid_video_upload_notification_ongoing_title:I

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    sget v4, Lcom/truecaller/videocallerid/R$string;->video_caller_id:I

    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v0, v3}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const/4 v0, 0x2

    .line 8
    invoke-virtual {v2, v0, v1}, Ln3/k/a/q;->p(IZ)V

    .line 9
    invoke-virtual {v2, v5, v5, v1}, Ln3/k/a/q;->u(IIZ)Ln3/k/a/q;

    const-string v0, "progress"

    .line 10
    iput-object v0, v2, Ln3/k/a/q;->B:Ljava/lang/String;

    .line 11
    iput-boolean v5, v2, Ln3/k/a/q;->m:Z

    const/16 v0, 0x10

    .line 12
    invoke-virtual {v2, v0, v1}, Ln3/k/a/q;->p(IZ)V

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/videocallerid/upload/VideoUploadService;->g(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 14
    iput-object p1, v2, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    :cond_0
    const-string p1, "NotificationCompat.Build\u2026          }\n            }"

    .line 15
    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget p1, Lcom/truecaller/videocallerid/R$id;->vid_upload_service_notification:I

    invoke-virtual {v2}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public b(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;)V
    .locals 7

    .line 1
    sget v0, Lcom/truecaller/videocallerid/R$attr;->tcx_brandBackgroundBlue:I

    invoke-static {p0, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/videocallerid/upload/VideoUploadService;->f()Le/a/h4/n;

    move-result-object v1

    const-string v2, "miscellaneous_channel"

    invoke-interface {v1, v2}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    sget v2, Lcom/truecaller/videocallerid/R$drawable;->ic_vid_notification_upload_failed:I

    .line 4
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 5
    invoke-static {p0, v2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/videocallerid/upload/VideoUploadService;->e()I

    move-result v4

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/videocallerid/upload/VideoUploadService;->e()I

    move-result v5

    const/4 v6, 0x4

    .line 8
    invoke-static {v2, v4, v5, v3, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->D1(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 9
    :cond_0
    new-instance v2, Ln3/k/a/q;

    invoke-direct {v2, p0, v1}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    sget v1, Lcom/truecaller/videocallerid/R$drawable;->ic_tcx_phone_24dp:I

    .line 11
    iget-object v4, v2, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v1, v4, Landroid/app/Notification;->icon:I

    .line 12
    invoke-virtual {v2, v3}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    .line 13
    iput v0, v2, Ln3/k/a/q;->D:I

    .line 14
    sget v0, Lcom/truecaller/videocallerid/R$string;->vid_video_upload_notification_fail_title:I

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/truecaller/videocallerid/R$string;->video_caller_id:I

    invoke-virtual {p0, v5}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v0, v3}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/videocallerid/upload/VideoUploadService;->g(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 16
    iput-object p1, v2, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/16 p1, 0x10

    .line 17
    invoke-virtual {v2, p1, v1}, Ln3/k/a/q;->p(IZ)V

    const-string p1, "NotificationCompat.Build\u2026     .setAutoCancel(true)"

    .line 18
    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/truecaller/videocallerid/upload/VideoUploadService;->f()Le/a/h4/n;

    move-result-object p1

    sget p2, Lcom/truecaller/videocallerid/R$id;->vid_upload_service_result_failure_notification:I

    invoke-virtual {v2}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "initialNotification.build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2, v0}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    return-void
.end method

.method public c(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;)V
    .locals 7

    .line 1
    sget v0, Lcom/truecaller/videocallerid/R$attr;->tcx_brandBackgroundBlue:I

    invoke-static {p0, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/videocallerid/upload/VideoUploadService;->f()Le/a/h4/n;

    move-result-object v1

    const-string v2, "miscellaneous_channel"

    invoke-interface {v1, v2}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    sget v2, Lcom/truecaller/videocallerid/R$drawable;->ic_vid_notification_upload_successful:I

    .line 4
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 5
    invoke-static {p0, v2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/videocallerid/upload/VideoUploadService;->e()I

    move-result v4

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/videocallerid/upload/VideoUploadService;->e()I

    move-result v5

    const/4 v6, 0x4

    .line 8
    invoke-static {v2, v4, v5, v3, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->D1(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 9
    :cond_0
    new-instance v2, Ln3/k/a/q;

    invoke-direct {v2, p0, v1}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    sget v1, Lcom/truecaller/videocallerid/R$drawable;->ic_tcx_phone_24dp:I

    .line 11
    iget-object v4, v2, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v1, v4, Landroid/app/Notification;->icon:I

    .line 12
    invoke-virtual {v2, v3}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    .line 13
    iput v0, v2, Ln3/k/a/q;->D:I

    .line 14
    sget v0, Lcom/truecaller/videocallerid/R$string;->vid_video_upload_notification_success_title:I

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/truecaller/videocallerid/R$string;->video_caller_id:I

    invoke-virtual {p0, v5}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v0, v3}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/videocallerid/upload/VideoUploadService;->g(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 16
    iput-object p1, v2, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/16 p1, 0x10

    .line 17
    invoke-virtual {v2, p1, v1}, Ln3/k/a/q;->p(IZ)V

    const-string p1, "NotificationCompat.Build\u2026     .setAutoCancel(true)"

    .line 18
    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/truecaller/videocallerid/upload/VideoUploadService;->f()Le/a/h4/n;

    move-result-object p1

    sget p2, Lcom/truecaller/videocallerid/R$id;->vid_upload_service_result_success_notification:I

    invoke-virtual {v2}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "initialNotification.build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2, v0}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/videocallerid/upload/VideoUploadService;->f()Le/a/h4/n;

    move-result-object v0

    sget v1, Lcom/truecaller/videocallerid/R$id;->vid_upload_service_result_failure_notification:I

    invoke-interface {v0, v1}, Le/a/h4/n;->f(I)V

    return-void
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/truecaller/videocallerid/upload/VideoUploadService;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final f()Le/a/h4/n;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/videocallerid/upload/VideoUploadService;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h4/n;

    return-object v0
.end method

.method public finish()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public final g(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 6

    .line 1
    sget-object v0, Lcom/truecaller/videocallerid/ui/preview/PreviewActivity;->o:Lcom/truecaller/videocallerid/ui/preview/PreviewActivity$b;

    sget-object v1, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;->PREVIEW:Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/truecaller/videocallerid/ui/preview/PreviewActivity$b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;)Landroid/content/Intent;

    move-result-object p1

    .line 3
    sget p2, Lcom/truecaller/videocallerid/R$id;->video_caller_id_upload_notification:I

    const/high16 v0, 0xc000000

    .line 4
    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "PendingIntent.getActivit\u2026.FLAG_IMMUTABLE\n        )"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/k/p/a;->onCreate()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/videocallerid/upload/VideoUploadService;->d:Le/a/k/p/d;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/k/p/g;

    invoke-virtual {v0, p0}, Le/a/k/p/g;->Y0(Ljava/lang/Object;)V

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
    iget-object v0, p0, Lcom/truecaller/videocallerid/upload/VideoUploadService;->d:Le/a/k/p/d;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/u2/a/a;

    invoke-virtual {v0}, Le/a/u2/a/a;->c()V

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    const/4 p2, 0x2

    if-nez p1, :cond_0

    return p2

    :cond_0
    const-string p3, "onboardingData"

    .line 1
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;

    const-string v0, "tempRecordingFilePath"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/truecaller/videocallerid/upload/VideoUploadService;->d:Le/a/k/p/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v2, v0

    check-cast v2, Le/a/k/p/g;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v4, Lq3/a/j0;->d:Lq3/a/j0;

    new-instance v5, Le/a/k/p/f;

    invoke-direct {v5, v2, p3, p1, v1}, Le/a/k/p/f;-><init>(Le/a/k/p/g;Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return p2

    :cond_1
    const-string p1, "presenter"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
