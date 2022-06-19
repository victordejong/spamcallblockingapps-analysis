.class public final Le/a/a/e/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/e/o;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/h4/n;

.field public final c:Le/a/c0/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/h4/n;Le/a/c0/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experimentRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/e/p;->b:Le/a/h4/n;

    iput-object p3, p0, Le/a/a/e/p;->c:Le/a/c0/h;

    return-void
.end method

.method public static h(Le/a/a/e/p;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;ZLjava/lang/Integer;I)Ln3/k/a/q;
    .locals 3

    and-int/lit8 v0, p6, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_1

    move-object p3, v1

    :cond_1
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_2

    const/4 p4, 0x0

    :cond_2
    const/16 v0, 0x10

    and-int/2addr p6, v0

    if-eqz p6, :cond_3

    move-object p5, v1

    .line 1
    :cond_3
    iget-object p6, p0, Le/a/a/e/p;->b:Le/a/h4/n;

    const-string v1, "inbox_cleanup"

    invoke-interface {p6, v1}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 2
    new-instance v1, Ln3/k/a/q;

    iget-object v2, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    invoke-direct {v1, v2, p6}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, p1}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 4
    invoke-virtual {v1, p2}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    if-eqz p5, :cond_4

    .line 5
    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance p2, Ln3/k/a/n;

    invoke-direct {p2}, Ln3/k/a/n;-><init>()V

    iget-object p5, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-static {p5, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 6
    iput-object p1, p2, Ln3/k/a/n;->e:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 7
    :cond_4
    new-instance p1, Ln3/k/a/o;

    invoke-direct {p1}, Ln3/k/a/o;-><init>()V

    invoke-virtual {p1, p2}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    const-string p2, "NotificationCompat.BigTextStyle().bigText(content)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p2, p1

    .line 8
    :goto_0
    invoke-virtual {v1, p2}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    const p1, 0x7f080581

    .line 9
    iget-object p2, v1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput p1, p2, Landroid/app/Notification;->icon:I

    const/4 p1, 0x4

    .line 10
    invoke-virtual {v1, p1}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    .line 11
    iget-object p1, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    const p2, 0x7f06068b

    .line 12
    sget-object p5, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 13
    invoke-static {p1, p2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    .line 14
    iput p1, v1, Ln3/k/a/q;->D:I

    const/4 p1, 0x1

    .line 15
    invoke-virtual {v1, v0, p1}, Ln3/k/a/q;->p(IZ)V

    .line 16
    iput-object p3, v1, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 17
    iput-boolean p1, v1, Ln3/k/a/q;->S:Z

    const-string p1, "NotificationCompat.Build\u2026         .setSilent(true)"

    .line 18
    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_5

    .line 19
    iget-object p0, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0804e0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v1, p0}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    :cond_5
    return-object v1
.end method


# virtual methods
.method public a(Lcom/truecaller/messaging/inboxcleanup/CleanupResult;)V
    .locals 12

    const-string v0, "result"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;

    .line 2
    iget-boolean v1, v1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;->a:Z

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v1, p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;

    if-eqz v1, :cond_1

    iget-object v2, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    const v3, 0x7f120c2e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    const v3, 0x7f120c2c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v4, v2

    const-string v2, "when (result) {\n        \u2026up_auto_failed)\n        }"

    .line 5
    invoke-static {v4, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget v3, v0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->a:I

    const/4 v5, 0x1

    if-lez v3, :cond_2

    .line 9
    iget-object v3, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f100042

    .line 10
    iget v7, v0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->a:I

    new-array v8, v5, [Ljava/lang/Object;

    .line 11
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_2
    iget v3, v0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->b:I

    if-lez v3, :cond_4

    .line 13
    iget v3, v0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->a:I

    if-lez v3, :cond_3

    const-string v3, ", "

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_3
    iget-object v3, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f100043

    .line 16
    iget v7, v0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->b:I

    new-array v8, v5, [Ljava/lang/Object;

    .line 17
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_4
    iget v3, v0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->c:I

    const/16 v6, 0x20

    if-lez v3, :cond_7

    .line 19
    iget v3, v0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->a:I

    if-gtz v3, :cond_5

    .line 20
    iget v3, v0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->b:I

    if-lez v3, :cond_6

    .line 21
    :cond_5
    invoke-static {v6}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    const v8, 0x7f120c20

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :cond_6
    iget-object v3, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f100044

    .line 23
    iget v0, v0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->c:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v2

    invoke-virtual {v3, v7, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_7
    invoke-static {v6}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    const v5, 0x7f120c3b

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_9

    .line 27
    iget-object v0, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    const v1, 0x7f120c2a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026eanup_auto_error_general)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    move-object v5, v0

    goto :goto_2

    .line 28
    :cond_9
    instance-of v0, p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$NoPermissionsError;

    if-eqz v0, :cond_a

    iget-object v0, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    const v1, 0x7f120c2b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026eanup_auto_error_sms_app)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 29
    :goto_2
    iget-object v0, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    .line 30
    sget-object v6, Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity;->a:Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity$a;

    const/4 v10, 0x0

    const/16 v11, 0x8

    const-string v9, "Notification"

    move-object v7, v0

    move-object v8, p1

    invoke-static/range {v6 .. v11}, Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity$a;->b(Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity$a;Landroid/content/Context;Lcom/truecaller/messaging/inboxcleanup/CleanupResult;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0xc000000

    .line 31
    invoke-static {v0, v2, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x18

    move-object v3, p0

    .line 32
    invoke-static/range {v3 .. v9}, Le/a/a/e/p;->h(Le/a/a/e/p;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;ZLjava/lang/Integer;I)Ln3/k/a/q;

    move-result-object p1

    invoke-virtual {p1}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object p1

    .line 33
    iget-object v0, p0, Le/a/a/e/p;->b:Le/a/h4/n;

    const v1, 0x7f0a09f3

    const-string v2, "it"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    return-void

    .line 34
    :cond_a
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f120c41

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026ral_title, messagesCount)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    const v1, 0x7f120c40

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026eanup_notif_neutral_body)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Le/a/a/e/p;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public c(Lcom/truecaller/messaging/inboxcleanup/CleanupResult;)V
    .locals 8

    const-string v0, "result"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    const/4 v7, 0x0

    .line 2
    sget-object v1, Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity;->a:Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity$a;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const-string v4, "Notification"

    move-object v2, v0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity$a;->b(Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity$a;Landroid/content/Context;Lcom/truecaller/messaging/inboxcleanup/CleanupResult;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0xc000000

    .line 3
    invoke-static {v0, v7, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 4
    iget-object v0, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    const v1, 0x7f120c57

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "context.getString(R.stri\u2026nbox_cleanup_stats_title)"

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    const v2, 0x7f120c45

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v0, p0

    .line 6
    invoke-static/range {v0 .. v6}, Le/a/a/e/p;->h(Le/a/a/e/p;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;ZLjava/lang/Integer;I)Ln3/k/a/q;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v0

    .line 8
    iget-object v1, p0, Le/a/a/e/p;->b:Le/a/h4/n;

    const v2, 0x7f0a09f5

    const-string v3, "it"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    const v1, 0x7f120c43

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026anup_notif_passive_title)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    const v2, 0x7f120c42

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026eanup_notif_passive_body)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f080283

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Le/a/a/e/p;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    const v1, 0x7f120c3f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026p_notif_aggressive_title)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    const v2, 0x7f120c3e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026up_notif_aggressive_body)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f080282

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Le/a/a/e/p;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public f()Ln3/k/a/q;
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    const v1, 0x7f120c23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "context.getString(R.stri\u2026inbox_cleanup_anim_title)"

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Le/a/a/e/p;->h(Le/a/a/e/p;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;ZLjava/lang/Integer;I)Ln3/k/a/q;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Ln3/k/a/q;->p(IZ)V

    const/16 v1, 0x64

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v3, v2}, Ln3/k/a/q;->u(IIZ)Ln3/k/a/q;

    .line 4
    iget-object v1, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    const v2, 0x7f120c44

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    .line 5
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/truecaller/messaging/inboxcleanup/InboxCleanerBroadcastReceiver;

    invoke-direct {v4, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.truecaller.stop_cleanup"

    .line 6
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0xc000000

    .line 7
    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v4, "Intent(context, InboxCle\u2026ent.FLAG_IMMUTABLE)\n    }"

    .line 8
    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v3, v1, v2}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    const-string v1, "buildNotification(title \u2026xt, ACTION_STOP_CLEANUP))"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 8

    .line 1
    iget-object v6, p0, Le/a/a/e/p;->a:Landroid/content/Context;

    .line 2
    sget-object v0, Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity;->a:Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity$a;

    const/4 v2, 0x0

    const-string v3, "Notification"

    const/4 v4, 0x1

    const/4 v5, 0x2

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity$a;->b(Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity$a;Landroid/content/Context;Lcom/truecaller/messaging/inboxcleanup/CleanupResult;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    const/4 v7, 0x0

    const/high16 v1, 0xc000000

    .line 3
    invoke-static {v6, v7, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v6, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 4
    invoke-static/range {v0 .. v6}, Le/a/a/e/p;->h(Le/a/a/e/p;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;ZLjava/lang/Integer;I)Ln3/k/a/q;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v0

    .line 6
    iget-object v1, p0, Le/a/a/e/p;->b:Le/a/h4/n;

    const-string v2, "it"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0a09f4

    invoke-interface {v1, v2, v0}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    .line 7
    iget-object v0, p0, Le/a/a/e/p;->c:Le/a/c0/h;

    .line 8
    iget-object v0, v0, Le/a/c0/h;->h:Le/a/c0/c;

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v7, v2, v1, v2}, Le/a/c0/f;->e(Le/a/c0/f;ZLs1/z/b/a;ILjava/lang/Object;)V

    return-void
.end method
