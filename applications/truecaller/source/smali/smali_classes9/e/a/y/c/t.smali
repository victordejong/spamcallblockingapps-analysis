.class public final Le/a/y/c/t;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.flashsdk.core.KidFlashService$showMissed$1"
    f = "KidFlashService.kt"
    l = {
        0x28f,
        0x2a1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public h:I

.field public final synthetic i:Lcom/truecaller/flashsdk/core/KidFlashService;

.field public final synthetic j:Lcom/truecaller/flashsdk/models/QueuedFlash;

.field public final synthetic k:Lcom/truecaller/flashsdk/core/KidFlashService;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/core/KidFlashService;Lcom/truecaller/flashsdk/models/QueuedFlash;Lcom/truecaller/flashsdk/core/KidFlashService;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/y/c/t;->i:Lcom/truecaller/flashsdk/core/KidFlashService;

    iput-object p2, p0, Le/a/y/c/t;->j:Lcom/truecaller/flashsdk/models/QueuedFlash;

    iput-object p3, p0, Le/a/y/c/t;->k:Lcom/truecaller/flashsdk/core/KidFlashService;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 4
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/y/c/t;

    iget-object v1, p0, Le/a/y/c/t;->i:Lcom/truecaller/flashsdk/core/KidFlashService;

    iget-object v2, p0, Le/a/y/c/t;->j:Lcom/truecaller/flashsdk/models/QueuedFlash;

    iget-object v3, p0, Le/a/y/c/t;->k:Lcom/truecaller/flashsdk/core/KidFlashService;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/y/c/t;-><init>(Lcom/truecaller/flashsdk/core/KidFlashService;Lcom/truecaller/flashsdk/models/QueuedFlash;Lcom/truecaller/flashsdk/core/KidFlashService;Ls1/w/d;)V

    iput-object p1, v0, Le/a/y/c/t;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/y/c/t;

    iget-object v1, p0, Le/a/y/c/t;->i:Lcom/truecaller/flashsdk/core/KidFlashService;

    iget-object v2, p0, Le/a/y/c/t;->j:Lcom/truecaller/flashsdk/models/QueuedFlash;

    iget-object v3, p0, Le/a/y/c/t;->k:Lcom/truecaller/flashsdk/core/KidFlashService;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/y/c/t;-><init>(Lcom/truecaller/flashsdk/core/KidFlashService;Lcom/truecaller/flashsdk/models/QueuedFlash;Lcom/truecaller/flashsdk/core/KidFlashService;Ls1/w/d;)V

    iput-object p1, v0, Le/a/y/c/t;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/y/c/t;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/y/c/t;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    iget v1, v0, Le/a/y/c/t;->g:I

    iget-object v2, v0, Le/a/y/c/t;->e:Ljava/lang/Object;

    check-cast v2, Ln3/k/a/q;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_7

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget v2, v0, Le/a/y/c/t;->g:I

    iget-object v3, v0, Le/a/y/c/t;->f:Ljava/lang/Object;

    check-cast v3, Ln3/k/a/q;

    iget-object v5, v0, Le/a/y/c/t;->e:Ljava/lang/Object;

    check-cast v5, Landroid/app/PendingIntent;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v13, v2

    move-object/from16 v2, p1

    goto/16 :goto_4

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v2, v0, Le/a/y/c/t;->e:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lq3/a/i0;

    .line 4
    iget-object v2, v0, Le/a/y/c/t;->i:Lcom/truecaller/flashsdk/core/KidFlashService;

    .line 5
    iget-object v2, v2, Lcom/truecaller/flashsdk/core/KidFlashService;->d:Le/a/y/b/f;

    if-eqz v2, :cond_d

    .line 6
    invoke-interface {v2}, Le/a/y/b/f;->a()Z

    move-result v2

    const-string v7, "flash.sender"

    if-eqz v2, :cond_3

    .line 7
    iget-object v2, v0, Le/a/y/c/t;->i:Lcom/truecaller/flashsdk/core/KidFlashService;

    invoke-virtual {v2}, Lcom/truecaller/flashsdk/core/KidFlashService;->d()Le/a/y/b/c;

    move-result-object v2

    iget-object v8, v0, Le/a/y/c/t;->j:Lcom/truecaller/flashsdk/models/QueuedFlash;

    .line 8
    iget-object v8, v8, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 9
    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Le/a/y/b/c;->b(Ljava/lang/String;)Lcom/truecaller/flashsdk/models/Contact;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 10
    :goto_0
    iget-object v8, v0, Le/a/y/c/t;->j:Lcom/truecaller/flashsdk/models/QueuedFlash;

    .line 11
    iget-object v8, v8, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 12
    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const v10, 0x3b9aca00

    int-to-long v10, v10

    rem-long/2addr v8, v10

    long-to-int v9, v8

    .line 13
    iget-object v8, v0, Le/a/y/c/t;->j:Lcom/truecaller/flashsdk/models/QueuedFlash;

    .line 14
    iget-object v8, v8, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    if-eqz v2, :cond_4

    .line 15
    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v2, "sender"

    invoke-static {v8, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/flashsdk/models/Sender;->b()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v8, "name"

    .line 16
    invoke-static {v2, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, " "

    invoke-static {v2, v8, v3, v4}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v10

    const/4 v15, 0x6

    if-eqz v10, :cond_5

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v3, v3, v15}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_5
    new-array v8, v4, [Ljava/lang/Object;

    aput-object v2, v8, v3

    .line 17
    iget-object v2, v0, Le/a/y/c/t;->j:Lcom/truecaller/flashsdk/models/QueuedFlash;

    .line 18
    iget-object v2, v2, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string v3, "flash.payload"

    .line 19
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Payload;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v5

    const-string v2, "%s: %s"

    const-string v10, "java.lang.String.format(format, *args)"

    invoke-static {v8, v4, v2, v10}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    sget-object v10, Lcom/truecaller/flashsdk/ui/send/SendActivity;->N:Lcom/truecaller/flashsdk/ui/send/SendActivity$b;

    .line 21
    iget-object v11, v0, Le/a/y/c/t;->k:Lcom/truecaller/flashsdk/core/KidFlashService;

    iget-object v8, v0, Le/a/y/c/t;->j:Lcom/truecaller/flashsdk/models/QueuedFlash;

    .line 22
    iget-object v8, v8, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 23
    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v8

    const-string v12, "flash.sender.phone"

    invoke-static {v8, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v8, v0, Le/a/y/c/t;->j:Lcom/truecaller/flashsdk/models/QueuedFlash;

    .line 24
    iget-object v8, v8, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 25
    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/flashsdk/models/Sender;->b()Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xe0

    const-string v7, "notification"

    move v8, v15

    move-object v15, v7

    move/from16 v16, v9

    .line 26
    invoke-static/range {v10 .. v20}, Lcom/truecaller/flashsdk/ui/send/SendActivity$b;->a(Lcom/truecaller/flashsdk/ui/send/SendActivity$b;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object v7

    .line 27
    iget-object v10, v0, Le/a/y/c/t;->k:Lcom/truecaller/flashsdk/core/KidFlashService;

    const/high16 v11, 0x44000000    # 512.0f

    invoke-static {v10, v9, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 28
    new-instance v10, Landroid/content/Intent;

    const-string v12, "com.truecaller.flashsdk.receiver.ACTION_CALL_PHONE"

    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    iget-object v12, v0, Le/a/y/c/t;->j:Lcom/truecaller/flashsdk/models/QueuedFlash;

    const-string v13, "flash"

    invoke-virtual {v10, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v12, "notification_id"

    .line 30
    invoke-virtual {v10, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    iget-object v12, v0, Le/a/y/c/t;->k:Lcom/truecaller/flashsdk/core/KidFlashService;

    invoke-static {v12, v9, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 32
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v11

    .line 33
    iget-object v12, v0, Le/a/y/c/t;->i:Lcom/truecaller/flashsdk/core/KidFlashService;

    iget-object v13, v0, Le/a/y/c/t;->k:Lcom/truecaller/flashsdk/core/KidFlashService;

    .line 34
    invoke-virtual {v12, v13}, Lcom/truecaller/flashsdk/core/KidFlashService;->c(Landroid/content/Context;)Ln3/k/a/q;

    move-result-object v12

    .line 35
    sget v13, Lcom/truecaller/flashsdk/R$drawable;->ic_state_missed:I

    .line 36
    iget-object v14, v12, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v13, v14, Landroid/app/Notification;->icon:I

    .line 37
    iget-object v13, v0, Le/a/y/c/t;->k:Lcom/truecaller/flashsdk/core/KidFlashService;

    sget v14, Lcom/truecaller/flashsdk/R$color;->truecolor:I

    .line 38
    sget-object v15, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 39
    invoke-static {v13, v14}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v13

    .line 40
    iput v13, v12, Ln3/k/a/q;->D:I

    .line 41
    iget-object v13, v0, Le/a/y/c/t;->i:Lcom/truecaller/flashsdk/core/KidFlashService;

    sget v14, Lcom/truecaller/flashsdk/R$string;->missed_flash:I

    invoke-virtual {v13, v14}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 42
    iput-boolean v5, v12, Ln3/k/a/q;->m:Z

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 44
    iget-object v15, v12, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide v13, v15, Landroid/app/Notification;->when:J

    .line 45
    invoke-virtual {v12, v2}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 46
    invoke-virtual {v12, v11}, Ln3/k/a/q;->w(Landroid/net/Uri;)Ln3/k/a/q;

    .line 47
    sget v11, Lcom/truecaller/flashsdk/R$drawable;->ic_reply_call:I

    iget-object v13, v0, Le/a/y/c/t;->i:Lcom/truecaller/flashsdk/core/KidFlashService;

    sget v14, Lcom/truecaller/flashsdk/R$string;->call_back:I

    invoke-virtual {v13, v14}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v11, v13, v10}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    .line 48
    sget v10, Lcom/truecaller/flashsdk/R$drawable;->ic_stat_flash:I

    iget-object v11, v0, Le/a/y/c/t;->i:Lcom/truecaller/flashsdk/core/KidFlashService;

    sget v13, Lcom/truecaller/flashsdk/R$string;->reply:I

    invoke-virtual {v11, v13}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v10, v11, v7}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    const/16 v10, 0x10

    .line 49
    invoke-virtual {v12, v10, v5}, Ln3/k/a/q;->p(IZ)V

    const-string v10, "createNotificationBuilde\u2026     .setAutoCancel(true)"

    .line 50
    invoke-static {v12, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v10, v0, Le/a/y/c/t;->j:Lcom/truecaller/flashsdk/models/QueuedFlash;

    .line 52
    iget-object v10, v10, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 53
    invoke-static {v10, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v10

    const-string v11, "location"

    invoke-static {v10, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, v0, Le/a/y/c/t;->j:Lcom/truecaller/flashsdk/models/QueuedFlash;

    .line 54
    iget-object v10, v10, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 55
    invoke-static {v10, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/truecaller/flashsdk/models/Payload;->a()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_6

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    move v10, v5

    :goto_3
    if-nez v10, :cond_b

    .line 56
    iget-object v2, v0, Le/a/y/c/t;->j:Lcom/truecaller/flashsdk/models/QueuedFlash;

    .line 57
    iget-object v2, v2, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 58
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Payload;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "flash.payload.attachment"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ","

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static {v2, v3, v7, v7, v8}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v2

    .line 59
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_a

    .line 60
    iget-object v3, v0, Le/a/y/c/t;->j:Lcom/truecaller/flashsdk/models/QueuedFlash;

    .line 61
    iget-object v3, v3, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 62
    new-instance v7, Landroid/content/Intent;

    .line 63
    iget-object v8, v0, Le/a/y/c/t;->i:Lcom/truecaller/flashsdk/core/KidFlashService;

    sget v10, Lcom/truecaller/flashsdk/R$string;->geo_loc:I

    new-array v11, v4, [Ljava/lang/Object;

    const-string v13, "payload"

    invoke-static {v3, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/flashsdk/models/Payload;->a()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v11, v14

    invoke-virtual {v3}, Lcom/truecaller/flashsdk/models/Payload;->a()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v5

    invoke-virtual {v8, v10, v11}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v10, "android.intent.action.VIEW"

    .line 64
    invoke-direct {v7, v10, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 65
    iget-object v8, v0, Le/a/y/c/t;->i:Lcom/truecaller/flashsdk/core/KidFlashService;

    sget v11, Lcom/truecaller/flashsdk/R$string;->map_activity:I

    invoke-virtual {v8, v11}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    iget-object v8, v0, Le/a/y/c/t;->i:Lcom/truecaller/flashsdk/core/KidFlashService;

    invoke-virtual {v8}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_8

    .line 67
    new-instance v7, Landroid/content/Intent;

    .line 68
    iget-object v8, v0, Le/a/y/c/t;->i:Lcom/truecaller/flashsdk/core/KidFlashService;

    sget v11, Lcom/truecaller/flashsdk/R$string;->map_browser:I

    new-array v13, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/truecaller/flashsdk/models/Payload;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-virtual {v8, v11, v13}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 69
    invoke-direct {v7, v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 70
    :cond_8
    iget-object v3, v0, Le/a/y/c/t;->k:Lcom/truecaller/flashsdk/core/KidFlashService;

    const/high16 v8, 0x44000000    # 512.0f

    .line 71
    invoke-static {v3, v9, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 72
    iget-object v7, v0, Le/a/y/c/t;->i:Lcom/truecaller/flashsdk/core/KidFlashService;

    .line 73
    invoke-virtual {v7}, Lcom/truecaller/flashsdk/core/KidFlashService;->f()Ls1/w/f;

    move-result-object v7

    .line 74
    sget-object v8, Lq3/a/t0;->d:Lq3/a/g0;

    .line 75
    invoke-interface {v7, v8}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v10, Le/a/y/c/t$a;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v2, v11}, Le/a/y/c/t$a;-><init>(Le/a/y/c/t;Ljava/util/List;Ls1/w/d;)V

    const/4 v2, 0x2

    move v13, v9

    move-object v9, v10

    move v10, v2

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v2

    iput-object v3, v0, Le/a/y/c/t;->e:Ljava/lang/Object;

    iput-object v12, v0, Le/a/y/c/t;->f:Ljava/lang/Object;

    iput v13, v0, Le/a/y/c/t;->g:I

    iput v5, v0, Le/a/y/c/t;->h:I

    .line 76
    check-cast v2, Lq3/a/o0;

    .line 77
    invoke-virtual {v2, v0}, Lq3/a/u1;->A(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_9

    return-object v1

    :cond_9
    move-object v5, v3

    move-object v3, v12

    .line 78
    :goto_4
    check-cast v2, Landroid/graphics/Bitmap;

    .line 79
    new-instance v6, Ln3/k/a/n;

    invoke-direct {v6}, Ln3/k/a/n;-><init>()V

    .line 80
    iput-object v2, v6, Ln3/k/a/n;->e:Landroid/graphics/Bitmap;

    .line 81
    invoke-virtual {v3, v6}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 82
    iput-object v5, v3, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    move-object v2, v3

    goto :goto_6

    :cond_a
    move v13, v9

    goto :goto_5

    :cond_b
    move v13, v9

    .line 83
    new-instance v3, Ln3/k/a/o;

    invoke-direct {v3}, Ln3/k/a/o;-><init>()V

    invoke-virtual {v3, v2}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-virtual {v12, v3}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 84
    iput-object v7, v12, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const-string v2, "notificationBuilder.setS\u2026tentIntent(pendingIntent)"

    .line 85
    invoke-static {v12, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    move-object v2, v12

    .line 86
    :goto_6
    iget-object v3, v0, Le/a/y/c/t;->i:Lcom/truecaller/flashsdk/core/KidFlashService;

    iget-object v5, v0, Le/a/y/c/t;->j:Lcom/truecaller/flashsdk/models/QueuedFlash;

    const/4 v6, 0x0

    invoke-static {v3, v5, v6, v4}, Lcom/truecaller/flashsdk/core/KidFlashService;->a(Lcom/truecaller/flashsdk/core/KidFlashService;Lcom/truecaller/flashsdk/models/Flash;II)Lq3/a/n0;

    move-result-object v3

    iput-object v2, v0, Le/a/y/c/t;->e:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v0, Le/a/y/c/t;->f:Ljava/lang/Object;

    iput v13, v0, Le/a/y/c/t;->g:I

    iput v4, v0, Le/a/y/c/t;->h:I

    check-cast v3, Lq3/a/o0;

    .line 87
    invoke-virtual {v3, v0}, Lq3/a/u1;->A(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_c

    return-object v1

    :cond_c
    move v1, v13

    .line 88
    :goto_7
    check-cast v3, Landroid/graphics/Bitmap;

    .line 89
    invoke-virtual {v2, v3}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    .line 90
    iget-object v3, v0, Le/a/y/c/t;->i:Lcom/truecaller/flashsdk/core/KidFlashService;

    .line 91
    sget v4, Lcom/truecaller/flashsdk/core/KidFlashService;->x:I

    .line 92
    invoke-virtual {v3}, Lcom/truecaller/flashsdk/core/KidFlashService;->e()Le/a/h4/n;

    move-result-object v3

    .line 93
    invoke-virtual {v2}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v2

    const-string v4, "notificationBuilder.build()"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    .line 94
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1

    :cond_d
    const-string v1, "deviceUtils"

    .line 95
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1
.end method
