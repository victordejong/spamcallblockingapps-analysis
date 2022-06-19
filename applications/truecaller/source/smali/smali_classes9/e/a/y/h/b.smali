.class public final Le/a/y/h/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y/h/a;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Ls1/w/f;

.field public final c:Landroid/content/Context;

.field public final d:Le/a/y/b/c;

.field public final e:Le/a/y/b/f;

.field public final f:Le/a/y/b/g0;


# direct methods
.method public constructor <init>(Ls1/w/f;Landroid/content/Context;Le/a/y/b/c;Le/a/y/b/f;Le/a/y/b/g0;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "managerContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactUtils"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceUtils"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/h/b;->b:Ls1/w/f;

    iput-object p2, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    iput-object p3, p0, Le/a/y/h/b;->d:Le/a/y/b/c;

    iput-object p4, p0, Le/a/y/h/b;->e:Le/a/y/b/f;

    iput-object p5, p0, Le/a/y/h/b;->f:Le/a/y/b/g0;

    .line 2
    iput-object p1, p0, Le/a/y/h/b;->a:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/flashsdk/models/Flash;)V
    .locals 5

    const-string v0, "flash"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lcom/truecaller/flashsdk/R$id;->flash_image_uploading_notification_id:I

    int-to-long v1, v1

    .line 3
    iget-wide v3, p1, Lcom/truecaller/flashsdk/models/Flash;->b:J

    add-long/2addr v1, v3

    long-to-int p1, v1

    .line 4
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method public b(Lcom/truecaller/flashsdk/models/QueuedFlash;)V
    .locals 12

    const-string v0, "flash"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->xa(Landroid/content/Context;Lcom/truecaller/flashsdk/models/QueuedFlash;Z)Landroid/content/Intent;

    move-result-object v1

    .line 2
    iget-object v3, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    const/16 v4, 0x78

    const/high16 v5, 0xc000000

    .line 3
    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 4
    iget-object v3, p1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    const-string v4, "flash.sender"

    .line 5
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/flashsdk/models/Sender;->b()Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object v5, p1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 7
    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/truecaller/flashsdk/models/Sender;->a()Ljava/lang/String;

    move-result-object v5

    .line 8
    iget-object v6, p0, Le/a/y/h/b;->e:Le/a/y/b/f;

    invoke-interface {v6}, Le/a/y/b/f;->a()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 9
    iget-object v6, p0, Le/a/y/h/b;->d:Le/a/y/b/c;

    .line 10
    iget-object v7, p1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 11
    invoke-static {v7, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Le/a/y/b/c;->b(Ljava/lang/String;)Lcom/truecaller/flashsdk/models/Contact;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 12
    invoke-virtual {v6}, Lcom/truecaller/flashsdk/models/Contact;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {v7}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v2

    :goto_1
    if-nez v7, :cond_2

    invoke-virtual {v6}, Lcom/truecaller/flashsdk/models/Contact;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    :cond_2
    if-eqz v6, :cond_3

    .line 13
    invoke-virtual {v6}, Lcom/truecaller/flashsdk/models/Contact;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Lcom/truecaller/flashsdk/models/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    .line 14
    :cond_3
    invoke-virtual {p0}, Le/a/y/h/b;->k()Le/a/h4/n;

    move-result-object v6

    invoke-interface {v6, v0}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Le/a/y/h/b;->i(Ljava/lang/String;)Ln3/k/a/q;

    move-result-object v0

    .line 16
    sget v6, Lcom/truecaller/flashsdk/R$drawable;->ic_tcx_messages_24dp:I

    .line 17
    iget-object v7, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v6, v7, Landroid/app/Notification;->icon:I

    .line 18
    iget-object v6, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    sget v7, Lcom/truecaller/flashsdk/R$color;->truecolor:I

    .line 19
    sget-object v8, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 20
    invoke-static {v6, v7}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v6

    .line 21
    iput v6, v0, Ln3/k/a/q;->D:I

    const/16 v6, 0x10

    .line 22
    invoke-virtual {v0, v6, v2}, Ln3/k/a/q;->p(IZ)V

    .line 23
    iput-object v1, v0, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 25
    iget-object v1, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide v6, v1, Landroid/app/Notification;->when:J

    .line 26
    iput-boolean v2, v0, Ln3/k/a/q;->m:Z

    const-string v1, "createNotificationBuilde\u2026       .setShowWhen(true)"

    .line 27
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v1, Ln3/k/a/t;

    new-instance v6, Ln3/k/a/y$a;

    invoke-direct {v6}, Ln3/k/a/y$a;-><init>()V

    .line 29
    iput-object v3, v6, Ln3/k/a/y$a;->a:Ljava/lang/CharSequence;

    .line 30
    new-instance v7, Ln3/k/a/y;

    invoke-direct {v7, v6}, Ln3/k/a/y;-><init>(Ln3/k/a/y$a;)V

    .line 31
    invoke-direct {v1, v7}, Ln3/k/a/t;-><init>(Ln3/k/a/y;)V

    .line 32
    iget-object v6, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    sget v7, Lcom/truecaller/flashsdk/R$string;->notification_incoming_flash:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 34
    new-instance v9, Ln3/k/a/y$a;

    invoke-direct {v9}, Ln3/k/a/y$a;-><init>()V

    .line 35
    iget-object v10, p0, Le/a/y/h/b;->f:Le/a/y/b/g0;

    const-string v11, "image"

    invoke-static {v5, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10, v5, v2}, Le/a/y/b/g0;->f(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 36
    invoke-static {v2}, Landroidx/core/graphics/drawable/IconCompat;->h(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    .line 37
    iput-object v2, v9, Ln3/k/a/y$a;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 38
    :cond_4
    iput-object v3, v9, Ln3/k/a/y$a;->a:Ljava/lang/CharSequence;

    .line 39
    new-instance v2, Ln3/k/a/y;

    invoke-direct {v2, v9}, Ln3/k/a/y;-><init>(Ln3/k/a/y$a;)V

    .line 40
    invoke-virtual {v1, v6, v7, v8, v2}, Ln3/k/a/t;->k(Ljava/lang/CharSequence;JLn3/k/a/y;)Ln3/k/a/t;

    .line 41
    invoke-virtual {v0, v1}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 42
    invoke-virtual {p0}, Le/a/y/h/b;->k()Le/a/h4/n;

    move-result-object v1

    .line 43
    iget-object p1, p1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 44
    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const p1, 0x3b9aca00

    int-to-long v4, p1

    rem-long/2addr v2, v4

    long-to-int p1, v2

    invoke-virtual {v0}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v0

    const-string v2, "notificationBuilder.build()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1, v0}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    return-void
.end method

.method public c(Lcom/truecaller/flashsdk/models/ImageFlash;)V
    .locals 7

    const-string v0, "flash"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "extra_image_flash"

    .line 2
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    iget-object v2, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    sget v3, Lcom/truecaller/flashsdk/R$id;->flash_image_uploading_notification_id:I

    const/high16 v4, 0xc000000

    .line 4
    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 5
    iget-object v2, p0, Le/a/y/h/b;->f:Le/a/y/b/g0;

    sget v4, Lcom/truecaller/flashsdk/R$string;->flash_text:I

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {v2, v4, v6}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v4, p0, Le/a/y/h/b;->f:Le/a/y/b/g0;

    sget v6, Lcom/truecaller/flashsdk/R$string;->sending_flash:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v4, v6, v5}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {p0}, Le/a/y/h/b;->k()Le/a/h4/n;

    move-result-object v5

    invoke-interface {v5, v0}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/y/h/b;->i(Ljava/lang/String;)Ln3/k/a/q;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v2}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 9
    invoke-virtual {v0, v4}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const/16 v2, 0x64

    const/4 v5, 0x1

    .line 10
    invoke-virtual {v0, v2, v2, v5}, Ln3/k/a/q;->u(IIZ)Ln3/k/a/q;

    .line 11
    new-instance v2, Ln3/k/a/o;

    invoke-direct {v2}, Ln3/k/a/o;-><init>()V

    invoke-virtual {v2, v4}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-virtual {v0, v2}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 12
    iget-object v2, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    sget v4, Lcom/truecaller/flashsdk/R$color;->truecolor:I

    .line 13
    sget-object v6, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 14
    invoke-static {v2, v4}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 15
    iput v2, v0, Ln3/k/a/q;->D:I

    .line 16
    sget v2, Lcom/truecaller/flashsdk/R$drawable;->ic_flash:I

    .line 17
    iget-object v4, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v2, v4, Landroid/app/Notification;->icon:I

    const/4 v2, 0x2

    .line 18
    invoke-virtual {v0, v2, v5}, Ln3/k/a/q;->p(IZ)V

    .line 19
    iput-object v1, v0, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 21
    iget-object v4, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide v1, v4, Landroid/app/Notification;->when:J

    .line 22
    iput-boolean v5, v0, Ln3/k/a/q;->m:Z

    .line 23
    invoke-virtual {p0}, Le/a/y/h/b;->k()Le/a/h4/n;

    move-result-object v1

    int-to-long v2, v3

    .line 24
    iget-wide v4, p1, Lcom/truecaller/flashsdk/models/Flash;->b:J

    add-long/2addr v2, v4

    long-to-int p1, v2

    .line 25
    invoke-virtual {v0}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v0

    const-string v2, "builder.build()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1, v0}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    return-void
.end method

.method public d(Lcom/truecaller/flashsdk/models/ImageFlash;)V
    .locals 7

    const-string v0, "flash"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "extra_image_flash"

    .line 2
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    iget-object v2, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    sget v3, Lcom/truecaller/flashsdk/R$id;->flash_image_uploading_notification_id:I

    const/high16 v4, 0xc000000

    .line 4
    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 5
    iget-object v2, p0, Le/a/y/h/b;->f:Le/a/y/b/g0;

    sget v4, Lcom/truecaller/flashsdk/R$string;->flash_text:I

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {v2, v4, v6}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v4, p0, Le/a/y/h/b;->f:Le/a/y/b/g0;

    sget v6, Lcom/truecaller/flashsdk/R$string;->uploading_image:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v4, v6, v5}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {p0}, Le/a/y/h/b;->k()Le/a/h4/n;

    move-result-object v5

    invoke-interface {v5, v0}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/y/h/b;->i(Ljava/lang/String;)Ln3/k/a/q;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v2}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 9
    invoke-virtual {v0, v4}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const/16 v2, 0x64

    const/4 v5, 0x1

    .line 10
    invoke-virtual {v0, v2, v2, v5}, Ln3/k/a/q;->u(IIZ)Ln3/k/a/q;

    .line 11
    new-instance v2, Ln3/k/a/o;

    invoke-direct {v2}, Ln3/k/a/o;-><init>()V

    invoke-virtual {v2, v4}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-virtual {v0, v2}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 12
    iget-object v2, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    sget v4, Lcom/truecaller/flashsdk/R$color;->truecolor:I

    .line 13
    sget-object v6, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 14
    invoke-static {v2, v4}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 15
    iput v2, v0, Ln3/k/a/q;->D:I

    .line 16
    sget v2, Lcom/truecaller/flashsdk/R$drawable;->ic_flash:I

    .line 17
    iget-object v4, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v2, v4, Landroid/app/Notification;->icon:I

    .line 18
    iput-object v1, v0, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 20
    iget-object v4, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide v1, v4, Landroid/app/Notification;->when:J

    const/4 v1, 0x2

    .line 21
    invoke-virtual {v0, v1, v5}, Ln3/k/a/q;->p(IZ)V

    .line 22
    iput-boolean v5, v0, Ln3/k/a/q;->m:Z

    .line 23
    invoke-virtual {p0}, Le/a/y/h/b;->k()Le/a/h4/n;

    move-result-object v1

    int-to-long v2, v3

    .line 24
    iget-wide v4, p1, Lcom/truecaller/flashsdk/models/Flash;->b:J

    add-long/2addr v2, v4

    long-to-int p1, v2

    .line 25
    invoke-virtual {v0}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v0

    const-string v2, "builder.build()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1, v0}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    return-void
.end method

.method public e(Lcom/truecaller/flashsdk/models/Flash;)V
    .locals 11

    const-string v0, "flash"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.truecaller.flashsdk.PAYMENT_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    const/16 v2, 0x78

    const/high16 v3, 0xc000000

    .line 3
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    const-string v2, "flash.sender"

    .line 5
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Sender;->b()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v3, p1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 7
    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/flashsdk/models/Sender;->a()Ljava/lang/String;

    move-result-object v3

    .line 8
    iget-object v4, p0, Le/a/y/h/b;->e:Le/a/y/b/f;

    invoke-interface {v4}, Le/a/y/b/f;->a()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    .line 9
    iget-object v4, p0, Le/a/y/h/b;->d:Le/a/y/b/c;

    .line 10
    iget-object v7, p1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 11
    invoke-static {v7, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Le/a/y/b/c;->b(Ljava/lang/String;)Lcom/truecaller/flashsdk/models/Contact;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {v4}, Lcom/truecaller/flashsdk/models/Contact;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {v7}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move v7, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v6

    :goto_1
    if-nez v7, :cond_2

    invoke-virtual {v4}, Lcom/truecaller/flashsdk/models/Contact;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz v4, :cond_3

    .line 13
    invoke-virtual {v4}, Lcom/truecaller/flashsdk/models/Contact;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v4}, Lcom/truecaller/flashsdk/models/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_5

    .line 14
    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3

    :cond_5
    :goto_2
    move v4, v6

    :goto_3
    if-nez v4, :cond_9

    .line 15
    iget-object v4, p1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string v7, "flash.payload"

    .line 16
    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/flashsdk/models/Payload;->a()Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {p0}, Le/a/y/h/b;->k()Le/a/h4/n;

    move-result-object v7

    const-string v8, "truecaller_pay_v2"

    invoke-interface {v7, v8}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 18
    invoke-virtual {p0, v7}, Le/a/y/h/b;->i(Ljava/lang/String;)Ln3/k/a/q;

    move-result-object v7

    .line 19
    sget v8, Lcom/truecaller/flashsdk/R$drawable;->ic_stat_flash:I

    .line 20
    iget-object v9, v7, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v8, v9, Landroid/app/Notification;->icon:I

    .line 21
    iget-object v8, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    sget v9, Lcom/truecaller/flashsdk/R$color;->truecolor:I

    .line 22
    sget-object v10, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 23
    invoke-static {v8, v9}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v8

    .line 24
    iput v8, v7, Ln3/k/a/q;->D:I

    .line 25
    iget-object v8, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    sget v9, Lcom/truecaller/flashsdk/R$string;->truecaller_pay:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const/16 v8, 0x10

    .line 26
    invoke-virtual {v7, v8, v6}, Ln3/k/a/q;->p(IZ)V

    const/high16 v8, -0x10000

    .line 27
    invoke-virtual {v7, v8, v6, v6}, Ln3/k/a/q;->r(III)Ln3/k/a/q;

    .line 28
    iput-object v0, v7, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 30
    iget-object v0, v7, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide v8, v0, Landroid/app/Notification;->when:J

    .line 31
    iput-boolean v6, v7, Ln3/k/a/q;->m:Z

    .line 32
    invoke-virtual {p0, v3}, Le/a/y/h/b;->j(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v7, v0}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    const-string v0, "createNotificationBuilde\u2026etBitmapForImgUrl(image))"

    invoke-static {v7, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_7

    .line 33
    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v0, v5

    goto :goto_5

    :cond_7
    :goto_4
    move v0, v6

    :goto_5
    if-eqz v0, :cond_8

    .line 34
    iget-object v0, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    sget v3, Lcom/truecaller/flashsdk/R$string;->sent_you_money:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    goto :goto_6

    .line 35
    :cond_8
    iget-object v0, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    sget v3, Lcom/truecaller/flashsdk/R$string;->sent_you_amount:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v5

    aput-object v4, v8, v6

    invoke-virtual {v0, v3, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 36
    :goto_6
    invoke-virtual {v7}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "notificationBuilder.build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Le/a/y/h/b;->k()Le/a/h4/n;

    move-result-object v1

    .line 38
    iget-object p1, p1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 39
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const p1, 0x3b9aca00

    int-to-long v4, p1

    rem-long/2addr v2, v4

    long-to-int p1, v2

    add-int/lit8 p1, p1, 0x64

    invoke-interface {v1, p1, v0}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    :cond_9
    return-void
.end method

.method public f(Lcom/truecaller/flashsdk/models/Flash;Landroid/graphics/Bitmap;)V
    .locals 7

    const-string v0, "flash"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/y/h/b;->a:Ls1/w/f;

    new-instance v4, Le/a/y/h/b$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Le/a/y/h/b$a;-><init>(Le/a/y/h/b;Lcom/truecaller/flashsdk/models/Flash;Landroid/graphics/Bitmap;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public g(Lcom/truecaller/flashsdk/models/ImageFlash;)V
    .locals 8

    const-string v0, "flash"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    const-class v3, Lcom/truecaller/flashsdk/core/FlashMediaService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "action_image_flash_retry"

    .line 2
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_image_flash"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    iget-object v2, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    sget v3, Lcom/truecaller/flashsdk/R$id;->flash_image_uploading_notification_id:I

    const/high16 v4, 0xc000000

    .line 5
    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 6
    iget-object v2, p0, Le/a/y/h/b;->f:Le/a/y/b/g0;

    sget v4, Lcom/truecaller/flashsdk/R$string;->upload_failed:I

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {v2, v4, v6}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v4, p0, Le/a/y/h/b;->f:Le/a/y/b/g0;

    sget v6, Lcom/truecaller/flashsdk/R$string;->tap_to_retry:I

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v4, v6, v7}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Le/a/y/h/b;->k()Le/a/h4/n;

    move-result-object v6

    invoke-interface {v6, v0}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/y/h/b;->i(Ljava/lang/String;)Ln3/k/a/q;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v2}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 10
    invoke-virtual {v0, v4}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 11
    iget-object v2, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    sget v4, Lcom/truecaller/flashsdk/R$color;->truecolor:I

    .line 12
    sget-object v6, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 13
    invoke-static {v2, v4}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 14
    iput v2, v0, Ln3/k/a/q;->D:I

    .line 15
    sget v2, Lcom/truecaller/flashsdk/R$drawable;->ic_flash:I

    .line 16
    iget-object v4, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v2, v4, Landroid/app/Notification;->icon:I

    .line 17
    iput-object v1, v0, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 19
    iget-object v2, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide v6, v2, Landroid/app/Notification;->when:J

    const/4 v2, 0x1

    .line 20
    iput-boolean v2, v0, Ln3/k/a/q;->m:Z

    .line 21
    sget v2, Lcom/truecaller/flashsdk/R$drawable;->ic_notification_retry:I

    iget-object v4, p0, Le/a/y/h/b;->f:Le/a/y/b/g0;

    sget v6, Lcom/truecaller/flashsdk/R$string;->retry:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v4, v6, v5}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v1}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    .line 22
    invoke-virtual {p0}, Le/a/y/h/b;->k()Le/a/h4/n;

    move-result-object v1

    int-to-long v2, v3

    .line 23
    iget-wide v4, p1, Lcom/truecaller/flashsdk/models/Flash;->b:J

    add-long/2addr v2, v4

    long-to-int p1, v2

    .line 24
    invoke-virtual {v0}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v0

    const-string v2, "builder.build()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1, v0}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    return-void
.end method

.method public h(Lcom/truecaller/flashsdk/models/ImageFlash;)V
    .locals 8

    const-string v0, "flash"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    const-class v3, Lcom/truecaller/flashsdk/core/FlashMediaService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "action_image_flash_retry"

    .line 2
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_image_flash"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    iget-object v2, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    sget v3, Lcom/truecaller/flashsdk/R$id;->flash_image_uploading_notification_id:I

    const/high16 v4, 0xc000000

    .line 5
    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 6
    iget-object v2, p0, Le/a/y/h/b;->f:Le/a/y/b/g0;

    sget v4, Lcom/truecaller/flashsdk/R$string;->flash_failed:I

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {v2, v4, v6}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v4, p0, Le/a/y/h/b;->f:Le/a/y/b/g0;

    sget v6, Lcom/truecaller/flashsdk/R$string;->tap_to_retry:I

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v4, v6, v7}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Le/a/y/h/b;->k()Le/a/h4/n;

    move-result-object v6

    invoke-interface {v6, v0}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/y/h/b;->i(Ljava/lang/String;)Ln3/k/a/q;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v2}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 10
    invoke-virtual {v0, v4}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 11
    iget-object v2, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    sget v4, Lcom/truecaller/flashsdk/R$color;->truecolor:I

    .line 12
    sget-object v6, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 13
    invoke-static {v2, v4}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 14
    iput v2, v0, Ln3/k/a/q;->D:I

    .line 15
    sget v2, Lcom/truecaller/flashsdk/R$drawable;->ic_flash:I

    .line 16
    iget-object v4, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v2, v4, Landroid/app/Notification;->icon:I

    .line 17
    iput-object v1, v0, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/16 v2, 0x10

    const/4 v4, 0x1

    .line 18
    invoke-virtual {v0, v2, v4}, Ln3/k/a/q;->p(IZ)V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 20
    iget-object v2, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide v6, v2, Landroid/app/Notification;->when:J

    .line 21
    iput-boolean v4, v0, Ln3/k/a/q;->m:Z

    .line 22
    sget v2, Lcom/truecaller/flashsdk/R$drawable;->ic_notification_retry:I

    iget-object v4, p0, Le/a/y/h/b;->f:Le/a/y/b/g0;

    sget v6, Lcom/truecaller/flashsdk/R$string;->retry:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v4, v6, v5}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v1}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    .line 23
    invoke-virtual {p0}, Le/a/y/h/b;->k()Le/a/h4/n;

    move-result-object v1

    int-to-long v2, v3

    .line 24
    iget-wide v4, p1, Lcom/truecaller/flashsdk/models/Flash;->b:J

    add-long/2addr v2, v4

    long-to-int p1, v2

    .line 25
    invoke-virtual {v0}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v0

    const-string v2, "builder.build()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1, v0}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    return-void
.end method

.method public final i(Ljava/lang/String;)Ln3/k/a/q;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ln3/k/a/q;

    iget-object v0, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    const/4 v1, 0x0

    .line 2
    invoke-direct {p1, v0, v1}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ln3/k/a/q;

    iget-object v1, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final j(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/y/h/b;->f:Le/a/y/b/g0;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Le/a/y/b/g0;->f(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/truecaller/flashsdk/R$drawable;->ic_notification_avatar:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final k()Le/a/h4/n;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/y/h/b;->c:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Le/a/h4/q/g;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Le/a/h4/q/g;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Le/a/h4/q/g;->n()Le/a/h4/n;

    move-result-object v0

    return-object v0

    :cond_1
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
