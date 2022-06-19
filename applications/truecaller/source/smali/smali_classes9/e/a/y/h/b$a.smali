.class public final Le/a/y/h/b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/y/h/b;->f(Lcom/truecaller/flashsdk/models/Flash;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.flashsdk.notifications.FlashNotificationManagerImpl$showCallMeBackNotification$1"
    f = "FlashNotificationManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/y/h/b;

.field public final synthetic f:Lcom/truecaller/flashsdk/models/Flash;

.field public final synthetic g:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Le/a/y/h/b;Lcom/truecaller/flashsdk/models/Flash;Landroid/graphics/Bitmap;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/y/h/b$a;->e:Le/a/y/h/b;

    iput-object p2, p0, Le/a/y/h/b$a;->f:Lcom/truecaller/flashsdk/models/Flash;

    iput-object p3, p0, Le/a/y/h/b$a;->g:Landroid/graphics/Bitmap;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/y/h/b$a;

    iget-object v0, p0, Le/a/y/h/b$a;->e:Le/a/y/h/b;

    iget-object v1, p0, Le/a/y/h/b$a;->f:Lcom/truecaller/flashsdk/models/Flash;

    iget-object v2, p0, Le/a/y/h/b$a;->g:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/y/h/b$a;-><init>(Le/a/y/h/b;Lcom/truecaller/flashsdk/models/Flash;Landroid/graphics/Bitmap;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/y/h/b$a;

    iget-object v0, p0, Le/a/y/h/b$a;->e:Le/a/y/h/b;

    iget-object v1, p0, Le/a/y/h/b$a;->f:Lcom/truecaller/flashsdk/models/Flash;

    iget-object v2, p0, Le/a/y/h/b$a;->g:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/y/h/b$a;-><init>(Le/a/y/h/b;Lcom/truecaller/flashsdk/models/Flash;Landroid/graphics/Bitmap;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/y/h/b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Ls1/s;->a:Ls1/s;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object v2, v0, Le/a/y/h/b$a;->f:Lcom/truecaller/flashsdk/models/Flash;

    .line 3
    iget-object v2, v2, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    const-string v3, "flash.sender"

    .line 4
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Sender;->b()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v4, v0, Le/a/y/h/b$a;->f:Lcom/truecaller/flashsdk/models/Flash;

    .line 6
    iget-object v4, v4, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 7
    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x2b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 9
    iget-object v7, v0, Le/a/y/h/b$a;->e:Le/a/y/h/b;

    .line 10
    iget-object v7, v7, Le/a/y/h/b;->e:Le/a/y/b/f;

    .line 11
    invoke-interface {v7}, Le/a/y/b/f;->a()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    .line 12
    iget-object v7, v0, Le/a/y/h/b$a;->e:Le/a/y/h/b;

    .line 13
    iget-object v7, v7, Le/a/y/h/b;->d:Le/a/y/b/c;

    .line 14
    iget-object v11, v0, Le/a/y/h/b$a;->f:Lcom/truecaller/flashsdk/models/Flash;

    .line 15
    iget-object v11, v11, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 16
    invoke-static {v11, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Le/a/y/b/c;->b(Ljava/lang/String;)Lcom/truecaller/flashsdk/models/Contact;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 17
    invoke-virtual {v7}, Lcom/truecaller/flashsdk/models/Contact;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    if-nez v11, :cond_2

    invoke-virtual {v7}, Lcom/truecaller/flashsdk/models/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v7, v8

    .line 18
    :cond_2
    :goto_1
    iget-object v11, v0, Le/a/y/h/b$a;->e:Le/a/y/h/b;

    .line 19
    invoke-virtual {v11}, Le/a/y/h/b;->k()Le/a/h4/n;

    move-result-object v11

    const-string v12, "flash"

    .line 20
    invoke-interface {v11, v12}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 21
    iget-object v13, v0, Le/a/y/h/b$a;->e:Le/a/y/h/b;

    .line 22
    invoke-virtual {v13, v11}, Le/a/y/h/b;->i(Ljava/lang/String;)Ln3/k/a/q;

    move-result-object v11

    if-eqz v2, :cond_4

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_3

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v13, 0x1

    :goto_3
    if-nez v13, :cond_8

    .line 24
    new-instance v13, Landroid/content/Intent;

    iget-object v14, v0, Le/a/y/h/b$a;->e:Le/a/y/h/b;

    .line 25
    iget-object v14, v14, Le/a/y/h/b;->c:Landroid/content/Context;

    .line 26
    const-class v15, Lcom/truecaller/flashsdk/receiver/ActionReceiver;

    const-string v9, "com.truecaller.flashsdk.receiver.ACTION_CALL_PHONE_CALL_ME"

    invoke-direct {v13, v9, v8, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "number"

    .line 27
    invoke-virtual {v13, v9, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 28
    iget-object v14, v0, Le/a/y/h/b$a;->f:Lcom/truecaller/flashsdk/models/Flash;

    invoke-virtual {v13, v12, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 29
    iget-object v14, v0, Le/a/y/h/b$a;->e:Le/a/y/h/b;

    .line 30
    iget-object v14, v14, Le/a/y/h/b;->c:Landroid/content/Context;

    .line 31
    sget v15, Lcom/truecaller/flashsdk/R$id;->call_me_back_notification_id:I

    const/high16 v10, 0xc000000

    .line 32
    invoke-static {v14, v15, v13, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 33
    new-instance v14, Landroid/content/Intent;

    iget-object v10, v0, Le/a/y/h/b$a;->e:Le/a/y/h/b;

    .line 34
    iget-object v10, v10, Le/a/y/h/b;->c:Landroid/content/Context;

    move-object/from16 v16, v1

    .line 35
    const-class v1, Lcom/truecaller/flashsdk/receiver/ActionReceiver;

    move-object/from16 v17, v3

    const-string v3, "com.truecaller.flashsdk.receiver.ACTION_DISMISS_SILENTLY"

    invoke-direct {v14, v3, v8, v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    iget-object v1, v0, Le/a/y/h/b$a;->f:Lcom/truecaller/flashsdk/models/Flash;

    invoke-virtual {v14, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 37
    iget-object v1, v0, Le/a/y/h/b$a;->e:Le/a/y/h/b;

    .line 38
    iget-object v1, v1, Le/a/y/h/b;->c:Landroid/content/Context;

    const/high16 v3, 0xc000000

    .line 39
    invoke-static {v1, v15, v14, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 40
    invoke-static {}, Le/a/y/c/c;->b()Le/a/y/c/b;

    move-result-object v3

    invoke-interface {v3}, Le/a/y/c/b;->z()Le/a/y/c/i;

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v10, 0x2

    .line 41
    invoke-interface {v3, v10, v6}, Le/a/y/c/i;->w(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 42
    new-instance v3, Landroid/content/Intent;

    iget-object v6, v0, Le/a/y/h/b$a;->e:Le/a/y/h/b;

    .line 43
    iget-object v6, v6, Le/a/y/h/b;->c:Landroid/content/Context;

    .line 44
    const-class v10, Lcom/truecaller/flashsdk/receiver/ActionReceiver;

    const-string v12, "com.truecaller.flashsdk.ACTION_FLASH"

    invoke-direct {v3, v12, v8, v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    invoke-virtual {v3, v9, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "name"

    .line 46
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    iget-object v4, v0, Le/a/y/h/b$a;->e:Le/a/y/h/b;

    .line 49
    iget-object v4, v4, Le/a/y/h/b;->c:Landroid/content/Context;

    .line 50
    sget v5, Lcom/truecaller/flashsdk/R$id;->flash_me_back_notification_id:I

    const/high16 v6, 0xc000000

    .line 51
    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 52
    sget v4, Lcom/truecaller/flashsdk/R$drawable;->ic_flash:I

    iget-object v5, v0, Le/a/y/h/b$a;->e:Le/a/y/h/b;

    .line 53
    iget-object v5, v5, Le/a/y/h/b;->c:Landroid/content/Context;

    .line 54
    sget v6, Lcom/truecaller/flashsdk/R$string;->missed_call_notification_flash:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-virtual {v11, v4, v5, v3}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    .line 56
    :cond_5
    iget-object v3, v0, Le/a/y/h/b$a;->e:Le/a/y/h/b;

    .line 57
    iget-object v3, v3, Le/a/y/h/b;->c:Landroid/content/Context;

    .line 58
    sget v4, Lcom/truecaller/flashsdk/R$string;->tap_to_call:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v6, v5

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "managerContext.getString\u2026string.tap_to_call, name)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v3, v0, Le/a/y/h/b$a;->e:Le/a/y/h/b;

    .line 60
    iget-object v3, v3, Le/a/y/h/b;->c:Landroid/content/Context;

    .line 61
    sget v4, Lcom/truecaller/flashsdk/R$string;->call_me_back_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 62
    invoke-virtual {v11, v2}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 63
    new-instance v3, Ln3/k/a/o;

    invoke-direct {v3}, Ln3/k/a/o;-><init>()V

    invoke-virtual {v3, v2}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-virtual {v11, v3}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 64
    iget-object v2, v0, Le/a/y/h/b$a;->e:Le/a/y/h/b;

    .line 65
    iget-object v2, v2, Le/a/y/h/b;->c:Landroid/content/Context;

    .line 66
    sget v3, Lcom/truecaller/flashsdk/R$color;->truecolor:I

    .line 67
    sget-object v4, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 68
    invoke-static {v2, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 69
    iput v2, v11, Ln3/k/a/q;->D:I

    const/4 v2, -0x1

    .line 70
    invoke-virtual {v11, v2}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    .line 71
    sget v2, Lcom/truecaller/flashsdk/R$drawable;->tc_notification_logo:I

    .line 72
    iget-object v3, v11, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v2, v3, Landroid/app/Notification;->icon:I

    .line 73
    iput-object v13, v11, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 75
    iget-object v4, v11, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide v2, v4, Landroid/app/Notification;->when:J

    const/4 v2, 0x1

    .line 76
    iput-boolean v2, v11, Ln3/k/a/q;->m:Z

    .line 77
    sget v3, Lcom/truecaller/flashsdk/R$drawable;->ic_reply_call:I

    .line 78
    iget-object v4, v0, Le/a/y/h/b$a;->e:Le/a/y/h/b;

    .line 79
    iget-object v4, v4, Le/a/y/h/b;->c:Landroid/content/Context;

    .line 80
    sget v5, Lcom/truecaller/flashsdk/R$string;->missed_call_notification_call_back:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-virtual {v11, v3, v4, v13}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    const/16 v3, 0x10

    .line 82
    invoke-virtual {v11, v3, v2}, Ln3/k/a/q;->p(IZ)V

    .line 83
    iget-object v2, v11, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v1, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 84
    iget-object v1, v0, Le/a/y/h/b$a;->g:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    iget-object v1, v0, Le/a/y/h/b$a;->e:Le/a/y/h/b;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/truecaller/flashsdk/models/Contact;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    iget-object v2, v0, Le/a/y/h/b$a;->f:Lcom/truecaller/flashsdk/models/Flash;

    .line 85
    iget-object v2, v2, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    move-object/from16 v3, v17

    .line 86
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Sender;->a()Ljava/lang/String;

    move-result-object v2

    .line 87
    :goto_4
    invoke-virtual {v1, v2}, Le/a/y/h/b;->j(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 88
    :goto_5
    invoke-virtual {v11, v1}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    .line 89
    invoke-virtual {v11}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v1

    const-string v2, "builder.build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v2, v0, Le/a/y/h/b$a;->e:Le/a/y/h/b;

    .line 91
    invoke-virtual {v2}, Le/a/y/h/b;->k()Le/a/h4/n;

    move-result-object v2

    .line 92
    invoke-interface {v2, v15, v1}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    goto :goto_6

    :cond_8
    move-object/from16 v16, v1

    :goto_6
    return-object v16

    :cond_9
    move-object/from16 v16, v1

    return-object v16
.end method
