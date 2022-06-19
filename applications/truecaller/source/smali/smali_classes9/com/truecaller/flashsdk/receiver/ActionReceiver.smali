.class public final Lcom/truecaller/flashsdk/receiver/ActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u000c\u001a\u00020\t8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000f\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/truecaller/flashsdk/receiver/ActionReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "Ls1/s;",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "Le/a/y/c/b;",
        "b",
        "Le/a/y/c/b;",
        "flashManager",
        "a",
        "Landroid/content/Intent;",
        "finishIntent",
        "Le/a/y/c/i;",
        "c",
        "Le/a/y/c/i;",
        "flashPoint",
        "<init>",
        "()V",
        "flash_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:Le/a/y/c/b;

.field public final c:Le/a/y/c/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "response_sent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/receiver/ActionReceiver;->a:Landroid/content/Intent;

    .line 3
    invoke-static {}, Le/a/y/c/c;->b()Le/a/y/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/flashsdk/receiver/ActionReceiver;->b:Le/a/y/c/b;

    .line 4
    invoke-interface {v0}, Le/a/y/c/b;->z()Le/a/y/c/i;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/flashsdk/receiver/ActionReceiver;->c:Le/a/y/c/i;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v1, "context"

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "intent"

    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "flash"

    .line 1
    invoke-virtual {v8, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2
    invoke-virtual {v8, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/truecaller/flashsdk/models/Flash;

    if-eqz v1, :cond_e

    const-string v2, "it"

    .line 3
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Flash;->c()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object v9, v3

    :goto_0
    if-eqz v9, :cond_e

    const-string v1, "intent.getParcelableExtr\u2026                ?: return"

    .line 4
    invoke-static {v9, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v10, Lcom/truecaller/flashsdk/models/Flash;

    invoke-direct {v10}, Lcom/truecaller/flashsdk/models/Flash;-><init>()V

    .line 6
    iget-object v1, v9, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    const-string v2, "incomingFlash.sender"

    .line 7
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v1

    const-string v4, "incomingFlash.sender.phone"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 8
    iput-wide v5, v10, Lcom/truecaller/flashsdk/models/Flash;->b:J

    .line 9
    invoke-virtual {v10}, Lcom/truecaller/flashsdk/models/Flash;->e()V

    .line 10
    invoke-virtual {v10}, Lcom/truecaller/flashsdk/models/Flash;->d()V

    .line 11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v5, "com.truecaller.flashsdk.receiver.ACTION_DISMISS"

    invoke-static {v5, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "busy"

    const-string v6, "final"

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x2

    if-eqz v1, :cond_1

    .line 12
    new-instance v1, Lcom/truecaller/flashsdk/models/Payload;

    sget v2, Lcom/truecaller/flashsdk/R$string;->is_busy:I

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2, v3, v3}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 13
    iput-object v6, v10, Lcom/truecaller/flashsdk/models/Flash;->d:Ljava/lang/String;

    goto/16 :goto_3

    .line 14
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v14, "com.truecaller.flashsdk.receiver.ACTION_DISMISS_SILENTLY"

    invoke-static {v14, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    new-instance v1, Ln3/k/a/x;

    invoke-direct {v1, v7}, Ln3/k/a/x;-><init>(Landroid/content/Context;)V

    .line 16
    sget v2, Lcom/truecaller/flashsdk/R$id;->call_me_back_notification_id:I

    invoke-virtual {v1, v2}, Ln3/k/a/x;->b(I)V

    .line 17
    new-instance v1, Lcom/truecaller/flashsdk/models/Payload;

    sget v2, Lcom/truecaller/flashsdk/R$string;->is_busy:I

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2, v3, v3}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 18
    iput-object v6, v10, Lcom/truecaller/flashsdk/models/Flash;->d:Ljava/lang/String;

    .line 19
    iget-object v2, v0, Lcom/truecaller/flashsdk/receiver/ActionReceiver;->c:Le/a/y/c/i;

    if-eqz v2, :cond_9

    invoke-interface {v2, v12, v3, v3}, Le/a/y/c/i;->j(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 20
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v14, "com.truecaller.flashsdk.ACTION_FLASH"

    invoke-static {v14, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21
    new-instance v1, Ln3/k/a/x;

    invoke-direct {v1, v7}, Ln3/k/a/x;-><init>(Landroid/content/Context;)V

    .line 22
    sget v14, Lcom/truecaller/flashsdk/R$id;->call_me_back_notification_id:I

    invoke-virtual {v1, v14}, Ln3/k/a/x;->b(I)V

    .line 23
    new-instance v14, Lcom/truecaller/flashsdk/models/Payload;

    sget v1, Lcom/truecaller/flashsdk/R$string;->is_busy:I

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v5, v1, v3, v3}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 24
    iput-object v6, v10, Lcom/truecaller/flashsdk/models/Flash;->d:Ljava/lang/String;

    .line 25
    iget-object v1, v0, Lcom/truecaller/flashsdk/receiver/ActionReceiver;->c:Le/a/y/c/i;

    if-eqz v1, :cond_3

    invoke-interface {v1, v13, v3, v3}, Le/a/y/c/i;->j(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v1, "name"

    .line 26
    invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 27
    iget-object v1, v0, Lcom/truecaller/flashsdk/receiver/ActionReceiver;->b:Le/a/y/c/b;

    .line 28
    iget-object v3, v9, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 29
    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v6, "notification"

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v6}, Le/a/y/c/b;->K(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 30
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.truecaller.flashsdk.receiver.ACTION_CALL_PHONE"

    invoke-static {v4, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "android.intent.action.VIEW"

    const/high16 v13, 0x10000000

    const-string v14, "android.intent.action.CALL"

    const-string v15, "android.permission.CALL_PHONE"

    if-eqz v1, :cond_6

    .line 31
    invoke-static {v7, v15}, Ln3/k/b/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    .line 32
    new-instance v1, Landroid/content/Intent;

    .line 33
    sget v5, Lcom/truecaller/flashsdk/R$string;->tel_num:I

    new-array v13, v12, [Ljava/lang/Object;

    .line 34
    iget-object v14, v9, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 35
    invoke-static {v14, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v11

    invoke-virtual {v7, v5, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 36
    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 37
    invoke-virtual {v7, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 38
    :cond_5
    new-instance v1, Landroid/content/Intent;

    .line 39
    sget v4, Lcom/truecaller/flashsdk/R$string;->tel_num:I

    new-array v5, v12, [Ljava/lang/Object;

    .line 40
    iget-object v15, v9, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 41
    invoke-static {v15, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v11

    invoke-virtual {v7, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 42
    invoke-direct {v1, v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 43
    invoke-virtual {v1, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44
    invoke-virtual {v7, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    :goto_1
    new-instance v1, Lcom/truecaller/flashsdk/models/Payload;

    sget v2, Lcom/truecaller/flashsdk/R$string;->calling_you_back:I

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "call"

    invoke-direct {v1, v4, v2, v3, v3}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 46
    iput-object v6, v10, Lcom/truecaller/flashsdk/models/Flash;->d:Ljava/lang/String;

    goto/16 :goto_3

    .line 47
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.truecaller.flashsdk.receiver.ACTION_CALL_PHONE_CALL_ME"

    invoke-static {v3, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 48
    new-instance v1, Ln3/k/a/x;

    invoke-direct {v1, v7}, Ln3/k/a/x;-><init>(Landroid/content/Context;)V

    .line 49
    sget v3, Lcom/truecaller/flashsdk/R$id;->call_me_back_notification_id:I

    invoke-virtual {v1, v3}, Ln3/k/a/x;->b(I)V

    .line 50
    invoke-static {v7, v15}, Ln3/k/b/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 51
    new-instance v1, Landroid/content/Intent;

    .line 52
    sget v3, Lcom/truecaller/flashsdk/R$string;->tel_num:I

    new-array v13, v12, [Ljava/lang/Object;

    .line 53
    iget-object v14, v9, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 54
    invoke-static {v14, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v11

    invoke-virtual {v7, v3, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 55
    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 56
    invoke-virtual {v7, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 57
    :cond_7
    new-instance v1, Landroid/content/Intent;

    .line 58
    sget v3, Lcom/truecaller/flashsdk/R$string;->tel_num:I

    new-array v4, v12, [Ljava/lang/Object;

    .line 59
    iget-object v15, v9, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 60
    invoke-static {v15, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v11

    invoke-virtual {v7, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 61
    invoke-direct {v1, v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 62
    invoke-virtual {v1, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    invoke-virtual {v7, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    :goto_2
    iget-object v1, v0, Lcom/truecaller/flashsdk/receiver/ActionReceiver;->c:Le/a/y/c/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-interface {v1, v11, v2, v2}, Le/a/y/c/i;->j(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_8
    new-instance v1, Lcom/truecaller/flashsdk/models/Payload;

    sget v3, Lcom/truecaller/flashsdk/R$string;->is_busy:I

    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v3, v2, v2}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 66
    iput-object v6, v10, Lcom/truecaller/flashsdk/models/Flash;->d:Ljava/lang/String;

    :cond_9
    :goto_3
    move-object v14, v1

    goto :goto_4

    :cond_a
    const/4 v14, 0x0

    :goto_4
    if-eqz v14, :cond_d

    .line 67
    iput-object v14, v10, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 68
    invoke-virtual {v14}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "emoji"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 69
    invoke-virtual {v14}, Lcom/truecaller/flashsdk/models/Payload;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 70
    :cond_b
    invoke-virtual {v14}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/a/m0/a1$k;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    :goto_5
    invoke-virtual {v9}, Lcom/truecaller/flashsdk/models/Flash;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 72
    invoke-virtual {v9}, Lcom/truecaller/flashsdk/models/Flash;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    aput-object v1, v3, v12

    const-string v1, "%s %s"

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v3, v2, v1, v4}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    :goto_6
    iput-object v1, v10, Lcom/truecaller/flashsdk/models/Flash;->e:Ljava/lang/String;

    .line 74
    iget-object v1, v0, Lcom/truecaller/flashsdk/receiver/ActionReceiver;->b:Le/a/y/c/b;

    invoke-interface {v1, v10}, Le/a/y/c/b;->G(Lcom/truecaller/flashsdk/models/Flash;)V

    :cond_d
    const-string v1, "notification"

    .line 75
    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/app/NotificationManager;

    const/4 v2, -0x1

    const-string v3, "notification_id"

    .line 76
    invoke-virtual {v8, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 77
    invoke-static/range {p1 .. p1}, Le/a/p5/s0/g;->s(Landroid/content/Context;)V

    .line 78
    iget-object v1, v0, Lcom/truecaller/flashsdk/receiver/ActionReceiver;->a:Landroid/content/Intent;

    const-string v2, "response_sent"

    invoke-virtual {v1, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    invoke-static/range {p1 .. p1}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v1

    iget-object v2, v0, Lcom/truecaller/flashsdk/receiver/ActionReceiver;->a:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    :cond_e
    return-void
.end method
