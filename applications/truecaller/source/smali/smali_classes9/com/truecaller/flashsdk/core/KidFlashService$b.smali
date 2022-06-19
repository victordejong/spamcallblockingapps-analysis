.class public final Lcom/truecaller/flashsdk/core/KidFlashService$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/flashsdk/core/KidFlashService;->onStartCommand(Landroid/content/Intent;II)I
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
    c = "com.truecaller.flashsdk.core.KidFlashService$onStartCommand$1"
    f = "KidFlashService.kt"
    l = {
        0xdc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/flashsdk/core/KidFlashService;

.field public final synthetic g:Lcom/truecaller/flashsdk/models/QueuedFlash;

.field public final synthetic h:Lcom/truecaller/flashsdk/models/Flash;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/core/KidFlashService;Lcom/truecaller/flashsdk/models/QueuedFlash;Lcom/truecaller/flashsdk/models/Flash;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/flashsdk/core/KidFlashService$b;->f:Lcom/truecaller/flashsdk/core/KidFlashService;

    iput-object p2, p0, Lcom/truecaller/flashsdk/core/KidFlashService$b;->g:Lcom/truecaller/flashsdk/models/QueuedFlash;

    iput-object p3, p0, Lcom/truecaller/flashsdk/core/KidFlashService$b;->h:Lcom/truecaller/flashsdk/models/Flash;

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

    new-instance p1, Lcom/truecaller/flashsdk/core/KidFlashService$b;

    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService$b;->f:Lcom/truecaller/flashsdk/core/KidFlashService;

    iget-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService$b;->g:Lcom/truecaller/flashsdk/models/QueuedFlash;

    iget-object v2, p0, Lcom/truecaller/flashsdk/core/KidFlashService$b;->h:Lcom/truecaller/flashsdk/models/Flash;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/truecaller/flashsdk/core/KidFlashService$b;-><init>(Lcom/truecaller/flashsdk/core/KidFlashService;Lcom/truecaller/flashsdk/models/QueuedFlash;Lcom/truecaller/flashsdk/models/Flash;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/flashsdk/core/KidFlashService$b;

    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService$b;->f:Lcom/truecaller/flashsdk/core/KidFlashService;

    iget-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService$b;->g:Lcom/truecaller/flashsdk/models/QueuedFlash;

    iget-object v2, p0, Lcom/truecaller/flashsdk/core/KidFlashService$b;->h:Lcom/truecaller/flashsdk/models/Flash;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/truecaller/flashsdk/core/KidFlashService$b;-><init>(Lcom/truecaller/flashsdk/core/KidFlashService;Lcom/truecaller/flashsdk/models/QueuedFlash;Lcom/truecaller/flashsdk/models/Flash;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/flashsdk/core/KidFlashService$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v0, Lcom/truecaller/flashsdk/core/KidFlashService$b;->e:I

    const/4 v4, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v7, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v3, v0, Lcom/truecaller/flashsdk/core/KidFlashService$b;->f:Lcom/truecaller/flashsdk/core/KidFlashService;

    iget-object v5, v0, Lcom/truecaller/flashsdk/core/KidFlashService$b;->g:Lcom/truecaller/flashsdk/models/QueuedFlash;

    const/4 v6, 0x0

    invoke-static {v3, v5, v6, v4}, Lcom/truecaller/flashsdk/core/KidFlashService;->a(Lcom/truecaller/flashsdk/core/KidFlashService;Lcom/truecaller/flashsdk/models/Flash;II)Lq3/a/n0;

    move-result-object v3

    iput v7, v0, Lcom/truecaller/flashsdk/core/KidFlashService$b;->e:I

    check-cast v3, Lq3/a/o0;

    .line 5
    invoke-virtual {v3, v0}, Lq3/a/u1;->A(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_2

    return-object v2

    .line 6
    :cond_2
    :goto_0
    check-cast v3, Landroid/graphics/Bitmap;

    .line 7
    iget-object v2, v0, Lcom/truecaller/flashsdk/core/KidFlashService$b;->h:Lcom/truecaller/flashsdk/models/Flash;

    .line 8
    iget-object v2, v2, Lcom/truecaller/flashsdk/models/Flash;->d:Ljava/lang/String;

    const-string v8, "final"

    .line 9
    invoke-static {v8, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v9, "flashManager"

    const-string v10, "busy"

    const-string v5, "flash.payload"

    const/4 v11, 0x0

    if-eqz v2, :cond_e

    iget-object v1, v0, Lcom/truecaller/flashsdk/core/KidFlashService$b;->f:Lcom/truecaller/flashsdk/core/KidFlashService;

    iget-object v2, v0, Lcom/truecaller/flashsdk/core/KidFlashService$b;->g:Lcom/truecaller/flashsdk/models/QueuedFlash;

    .line 10
    sget v6, Lcom/truecaller/flashsdk/core/KidFlashService;->x:I

    .line 11
    invoke-virtual {v1, v2}, Lcom/truecaller/flashsdk/core/KidFlashService;->b(Lcom/truecaller/flashsdk/models/QueuedFlash;)V

    .line 12
    iget-object v6, v2, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 13
    invoke-static {v6, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_7

    .line 14
    :cond_3
    iget-object v5, v1, Lcom/truecaller/flashsdk/core/KidFlashService;->h:Le/a/y/c/b;

    if-eqz v5, :cond_d

    .line 15
    iget-object v6, v2, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    const-string v8, "flash.sender"

    .line 16
    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v12, 0x0

    invoke-interface {v5, v6, v12, v13, v2}, Le/a/y/c/b;->i(Ljava/lang/String;JLcom/truecaller/flashsdk/models/Flash;)V

    .line 17
    iget-object v5, v2, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 18
    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const v10, 0x3b9aca00

    int-to-long v12, v10

    rem-long/2addr v5, v12

    long-to-int v5, v5

    .line 19
    sget-object v12, Lcom/truecaller/flashsdk/ui/send/SendActivity;->N:Lcom/truecaller/flashsdk/ui/send/SendActivity$b;

    .line 20
    iget-object v6, v2, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 21
    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v6

    const-string v10, "flash.sender.phone"

    invoke-static {v6, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 22
    iget-object v6, v2, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 23
    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/truecaller/flashsdk/models/Sender;->b()Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xf0

    const-string v17, "notification"

    move-object v13, v1

    .line 24
    invoke-static/range {v12 .. v22}, Lcom/truecaller/flashsdk/ui/send/SendActivity$b;->a(Lcom/truecaller/flashsdk/ui/send/SendActivity$b;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object v6

    const/high16 v8, 0x44000000    # 512.0f

    .line 25
    invoke-static {v1, v5, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 26
    iget-object v8, v2, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 27
    iget-object v2, v2, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    const-string v10, "sender"

    .line 28
    invoke-static {v2, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 29
    iget-object v12, v1, Lcom/truecaller/flashsdk/core/KidFlashService;->d:Le/a/y/b/f;

    if-eqz v12, :cond_c

    invoke-interface {v12}, Le/a/y/b/f;->a()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 30
    iget-object v12, v1, Lcom/truecaller/flashsdk/core/KidFlashService;->c:Le/a/y/b/c;

    if-eqz v12, :cond_4

    invoke-interface {v12, v10}, Le/a/y/b/c;->b(Ljava/lang/String;)Lcom/truecaller/flashsdk/models/Contact;

    move-result-object v10

    goto :goto_1

    :cond_4
    const-string v1, "contactUtils"

    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11

    :cond_5
    move-object v10, v11

    :goto_1
    if-eqz v10, :cond_6

    .line 31
    invoke-virtual {v10}, Lcom/truecaller/flashsdk/models/Contact;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Sender;->b()Ljava/lang/String;

    move-result-object v10

    .line 32
    :goto_2
    iget-object v12, v1, Lcom/truecaller/flashsdk/core/KidFlashService;->e:Le/a/y/b/g0;

    if-eqz v12, :cond_b

    const-string v13, "payload"

    invoke-static {v8, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v12, v8}, Le/a/y/b/g0;->d(Lcom/truecaller/flashsdk/models/Payload;)Ljava/lang/String;

    move-result-object v12

    .line 33
    invoke-virtual {v8}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v13

    const v14, 0x2e7a5e

    if-eq v13, v14, :cond_8

    goto :goto_3

    :cond_8
    const-string v13, "call"

    .line 34
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 35
    iget-object v8, v1, Lcom/truecaller/flashsdk/core/KidFlashService;->h:Le/a/y/c/b;

    if-eqz v8, :cond_9

    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v2

    const-string v9, "sender.phone"

    invoke-static {v2, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-interface {v8, v13, v14}, Le/a/y/c/b;->p(J)V

    .line 36
    new-instance v2, Landroid/content/ComponentName;

    const-string v8, "com.truecaller.flashsdk.receiver.PhoneStateReceiver"

    invoke-direct {v2, v1, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v2, v7, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_3

    .line 38
    :cond_9
    invoke-static {v9}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11

    .line 39
    :cond_a
    :goto_3
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 40
    invoke-virtual {v1, v1}, Lcom/truecaller/flashsdk/core/KidFlashService;->c(Landroid/content/Context;)Ln3/k/a/q;

    move-result-object v4

    .line 41
    sget v8, Lcom/truecaller/flashsdk/R$color;->truecolor:I

    .line 42
    sget-object v9, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 43
    invoke-static {v1, v8}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v8

    .line 44
    iput v8, v4, Ln3/k/a/q;->D:I

    .line 45
    sget v8, Lcom/truecaller/flashsdk/R$drawable;->ic_stat_flash:I

    .line 46
    iget-object v9, v4, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v8, v9, Landroid/app/Notification;->icon:I

    .line 47
    invoke-virtual {v4, v10}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 48
    invoke-virtual {v4, v12}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const/16 v8, 0x10

    .line 49
    invoke-virtual {v4, v8, v7}, Ln3/k/a/q;->p(IZ)V

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 51
    iget-object v10, v4, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide v8, v10, Landroid/app/Notification;->when:J

    .line 52
    iput-boolean v7, v4, Ln3/k/a/q;->m:Z

    .line 53
    invoke-virtual {v4, v2}, Ln3/k/a/q;->w(Landroid/net/Uri;)Ln3/k/a/q;

    .line 54
    iput-object v6, v4, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const-string v2, "createNotificationBuilde\u2026tentIntent(pendingIntent)"

    .line 55
    invoke-static {v4, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v4, v3}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    .line 57
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/core/KidFlashService;->e()Le/a/h4/n;

    move-result-object v1

    invoke-virtual {v4}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v2

    const-string v3, "notificationBuilder.build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v5, v2}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    goto/16 :goto_7

    :cond_b
    const-string v1, "resourceProvider"

    .line 58
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11

    :cond_c
    const-string v1, "deviceUtils"

    .line 59
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11

    .line 60
    :cond_d
    invoke-static {v9}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11

    .line 61
    :cond_e
    iget-object v2, v0, Lcom/truecaller/flashsdk/core/KidFlashService$b;->f:Lcom/truecaller/flashsdk/core/KidFlashService;

    .line 62
    iget-object v2, v2, Lcom/truecaller/flashsdk/core/KidFlashService;->k:Ljava/util/Map;

    .line 63
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v7, :cond_17

    iget-object v12, v0, Lcom/truecaller/flashsdk/core/KidFlashService$b;->f:Lcom/truecaller/flashsdk/core/KidFlashService;

    iget-object v13, v0, Lcom/truecaller/flashsdk/core/KidFlashService$b;->g:Lcom/truecaller/flashsdk/models/QueuedFlash;

    .line 64
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v2, v13, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 66
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v2

    const-string v4, "flash.payload.type"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "call_me_back"

    .line 67
    invoke-static {v2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 68
    iget-boolean v4, v12, Lcom/truecaller/flashsdk/core/KidFlashService;->n:Z

    const-string v14, "flashNotificationManager"

    if-eqz v4, :cond_12

    if-eqz v2, :cond_10

    .line 69
    iget-object v1, v12, Lcom/truecaller/flashsdk/core/KidFlashService;->f:Le/a/y/h/a;

    if-eqz v1, :cond_f

    invoke-interface {v1, v13, v3}, Le/a/y/h/a;->f(Lcom/truecaller/flashsdk/models/Flash;Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_f
    invoke-static {v14}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11

    .line 70
    :cond_10
    invoke-virtual {v12}, Lcom/truecaller/flashsdk/core/KidFlashService;->f()Ls1/w/f;

    move-result-object v2

    new-instance v4, Le/a/y/c/t;

    invoke-direct {v4, v12, v13, v12, v11}, Le/a/y/c/t;-><init>(Lcom/truecaller/flashsdk/core/KidFlashService;Lcom/truecaller/flashsdk/models/QueuedFlash;Lcom/truecaller/flashsdk/core/KidFlashService;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 71
    :goto_4
    invoke-virtual {v12, v13}, Lcom/truecaller/flashsdk/core/KidFlashService;->b(Lcom/truecaller/flashsdk/models/QueuedFlash;)V

    .line 72
    new-instance v1, Lcom/truecaller/flashsdk/models/Flash;

    invoke-direct {v1}, Lcom/truecaller/flashsdk/models/Flash;-><init>()V

    .line 73
    new-instance v2, Lcom/truecaller/flashsdk/models/Payload;

    sget v3, Lcom/truecaller/flashsdk/R$string;->is_busy:I

    invoke-virtual {v12, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v10, v3, v11, v11}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 74
    iput-object v2, v1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 75
    iput-object v8, v1, Lcom/truecaller/flashsdk/models/Flash;->d:Ljava/lang/String;

    .line 76
    iget-object v2, v13, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    const-string v3, "incomingFlash.sender"

    .line 77
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v2

    const-string v3, "incomingFlash.sender.phone"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 78
    iput-wide v2, v1, Lcom/truecaller/flashsdk/models/Flash;->b:J

    .line 79
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Flash;->d()V

    .line 80
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Flash;->e()V

    .line 81
    iget-object v2, v12, Lcom/truecaller/flashsdk/core/KidFlashService;->h:Le/a/y/c/b;

    if-eqz v2, :cond_11

    invoke-interface {v2, v1}, Le/a/y/c/b;->G(Lcom/truecaller/flashsdk/models/Flash;)V

    const-string v1, "FlashBounced"

    const-string v2, "bounce"

    .line 82
    invoke-virtual {v12, v13, v1, v2}, Lcom/truecaller/flashsdk/core/KidFlashService;->h(Lcom/truecaller/flashsdk/models/QueuedFlash;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 83
    :cond_11
    invoke-static {v9}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11

    .line 84
    :cond_12
    :goto_5
    iget-boolean v1, v12, Lcom/truecaller/flashsdk/core/KidFlashService;->n:Z

    if-eqz v1, :cond_13

    goto :goto_7

    .line 85
    :cond_13
    invoke-virtual {v12, v13}, Lcom/truecaller/flashsdk/core/KidFlashService;->j(Lcom/truecaller/flashsdk/models/QueuedFlash;)V

    .line 86
    iput-boolean v7, v13, Lcom/truecaller/flashsdk/models/QueuedFlash;->i:Z

    .line 87
    iget-object v1, v12, Lcom/truecaller/flashsdk/core/KidFlashService;->h:Le/a/y/c/b;

    if-eqz v1, :cond_16

    invoke-interface {v1}, Le/a/y/c/b;->I()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 88
    invoke-virtual {v12, v13}, Lcom/truecaller/flashsdk/core/KidFlashService;->l(Lcom/truecaller/flashsdk/models/QueuedFlash;)V

    .line 89
    invoke-virtual {v12}, Lcom/truecaller/flashsdk/core/KidFlashService;->n()V

    goto :goto_6

    .line 90
    :cond_14
    iget-object v1, v12, Lcom/truecaller/flashsdk/core/KidFlashService;->f:Le/a/y/h/a;

    if-eqz v1, :cond_15

    invoke-interface {v1, v13}, Le/a/y/h/a;->b(Lcom/truecaller/flashsdk/models/QueuedFlash;)V

    .line 91
    :goto_6
    invoke-virtual {v12}, Lcom/truecaller/flashsdk/core/KidFlashService;->o()V

    goto :goto_7

    .line 92
    :cond_15
    invoke-static {v14}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11

    .line 93
    :cond_16
    invoke-static {v9}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11

    .line 94
    :cond_17
    iget-object v7, v0, Lcom/truecaller/flashsdk/core/KidFlashService$b;->f:Lcom/truecaller/flashsdk/core/KidFlashService;

    iget-object v2, v0, Lcom/truecaller/flashsdk/core/KidFlashService$b;->g:Lcom/truecaller/flashsdk/models/QueuedFlash;

    .line 95
    iget-boolean v4, v7, Lcom/truecaller/flashsdk/core/KidFlashService;->n:Z

    if-eqz v4, :cond_18

    .line 96
    invoke-virtual {v7, v2}, Lcom/truecaller/flashsdk/core/KidFlashService;->j(Lcom/truecaller/flashsdk/models/QueuedFlash;)V

    .line 97
    invoke-virtual {v7}, Lcom/truecaller/flashsdk/core/KidFlashService;->f()Ls1/w/f;

    move-result-object v4

    new-instance v5, Le/a/y/c/s;

    invoke-direct {v5, v7, v2, v3, v11}, Le/a/y/c/s;-><init>(Lcom/truecaller/flashsdk/core/KidFlashService;Lcom/truecaller/flashsdk/models/QueuedFlash;Landroid/graphics/Bitmap;Ls1/w/d;)V

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v2, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v8

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 98
    invoke-virtual {v7}, Lcom/truecaller/flashsdk/core/KidFlashService;->o()V

    goto :goto_7

    .line 99
    :cond_18
    invoke-virtual {v7, v2}, Lcom/truecaller/flashsdk/core/KidFlashService;->j(Lcom/truecaller/flashsdk/models/QueuedFlash;)V

    .line 100
    invoke-virtual {v7, v2}, Lcom/truecaller/flashsdk/core/KidFlashService;->l(Lcom/truecaller/flashsdk/models/QueuedFlash;)V

    .line 101
    invoke-virtual {v7}, Lcom/truecaller/flashsdk/core/KidFlashService;->n()V

    .line 102
    :goto_7
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
