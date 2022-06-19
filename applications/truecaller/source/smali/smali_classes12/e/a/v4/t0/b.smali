.class public final Le/a/v4/t0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v4/t0/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "context"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "data"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v3

    invoke-virtual {v3}, Le/a/b0/g/a;->W()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "requestId"

    .line 2
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    .line 3
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v8

    :goto_0
    const-string v5, "name"

    .line 4
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v5, v8

    :goto_1
    const-string v6, "ttl"

    .line 6
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x0

    if-eqz v7, :cond_2

    .line 7
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v9

    .line 8
    :goto_2
    new-instance v6, Lcom/truecaller/sdk/push/PushAppData;

    invoke-direct {v6, v4, v5, v1}, Lcom/truecaller/sdk/push/PushAppData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "pushAppData"

    .line 9
    invoke-static {v6, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "a"

    .line 11
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12
    invoke-static {v0, v4}, Lcom/truecaller/sdk/ConfirmProfileActivity;->getLaunchIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    .line 13
    sget v7, Lcom/truecaller/sdk/R$string;->SdkNotificationWebSignInTitle:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, v6, Lcom/truecaller/sdk/push/PushAppData;->b:Ljava/lang/String;

    aput-object v11, v10, v9

    invoke-virtual {v0, v7, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "context.getString(R.stri\u2026nTitle, pushAppData.name)"

    invoke-static {v7, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x2

    .line 14
    invoke-static {v10}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v10

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    instance-of v12, v11, Le/a/h4/q/g;

    if-nez v12, :cond_3

    move-object v11, v8

    :cond_3
    check-cast v11, Le/a/h4/q/g;

    if-eqz v11, :cond_6

    .line 16
    invoke-interface {v11}, Le/a/h4/q/g;->n()Le/a/h4/n;

    move-result-object v11

    const-string v12, "profile_share"

    .line 17
    invoke-interface {v11, v12}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/high16 v13, 0xc000000

    .line 18
    invoke-static {v0, v9, v5, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 19
    new-instance v9, Landroid/content/Intent;

    const-class v14, Lcom/truecaller/sdk/push/SdkActionReceiver;

    const-string v15, "com.truecaller.sdk.web_request_reject"

    invoke-direct {v9, v15, v8, v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    invoke-virtual {v9, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v4, 0x10

    .line 21
    invoke-static {v0, v4, v9, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 22
    new-instance v13, Ln3/k/a/q;

    invoke-direct {v13, v0, v12}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    sget v12, Lcom/truecaller/sdk/R$drawable;->notification_logo:I

    .line 24
    iget-object v14, v13, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v12, v14, Landroid/app/Notification;->icon:I

    .line 25
    invoke-virtual {v13, v7}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const/4 v7, 0x3

    new-array v7, v7, [J

    .line 26
    fill-array-data v7, :array_0

    .line 27
    iget-object v12, v13, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v7, v12, Landroid/app/Notification;->vibrate:[J

    .line 28
    invoke-virtual {v13, v10}, Ln3/k/a/q;->w(Landroid/net/Uri;)Ln3/k/a/q;

    const v7, -0xffff01

    const/4 v10, 0x1

    .line 29
    invoke-virtual {v13, v7, v10, v10}, Ln3/k/a/q;->r(III)Ln3/k/a/q;

    .line 30
    iput v10, v13, Ln3/k/a/q;->l:I

    const/4 v7, 0x2

    .line 31
    invoke-virtual {v13, v7, v10}, Ln3/k/a/q;->p(IZ)V

    .line 32
    sget v7, Lcom/truecaller/sdk/R$drawable;->ic_notification_done:I

    .line 33
    sget v10, Lcom/truecaller/sdk/R$string;->SdkNotificationAccept:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 34
    invoke-virtual {v13, v7, v10, v5}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    .line 35
    sget v7, Lcom/truecaller/sdk/R$drawable;->ic_notification_reject:I

    .line 36
    sget v10, Lcom/truecaller/sdk/R$string;->SdkNotificationReject:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 37
    invoke-virtual {v13, v7, v10, v9}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    .line 38
    sget v7, Lcom/truecaller/sdk/R$string;->SdkNotificationOneTapLogin:I

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 39
    iput-object v5, v13, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 40
    iget-object v5, v13, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v9, v5, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const-string v5, "NotificationCompat.Build\u2026eteIntent(dismissPending)"

    .line 41
    invoke-static {v13, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v13}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v5

    const-string v7, "mBuilder.build()"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11, v4, v5}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    .line 43
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.truecaller.sdk.EventsTrackerHolder"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Le/a/v4/l;

    .line 45
    sget-object v2, Le/a/l5/a/i3;->d:Lorg/apache/avro/Schema;

    new-instance v2, Le/a/l5/a/i3$b;

    invoke-direct {v2, v8}, Le/a/l5/a/i3$b;-><init>(Le/a/l5/a/i3$a;)V

    .line 46
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "EventType"

    const-string v7, "NotificationShown"

    .line 47
    invoke-static {v5, v7}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    .line 48
    iget-object v5, v6, Lcom/truecaller/sdk/push/PushAppData;->a:Ljava/lang/String;

    if-eqz v5, :cond_4

    const-string v9, "WebRequestId"

    .line 49
    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v5, v6, Lcom/truecaller/sdk/push/PushAppData;->a:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_4
    iget-object v3, v6, Lcom/truecaller/sdk/push/PushAppData;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 52
    iget-object v3, v6, Lcom/truecaller/sdk/push/PushAppData;->b:Ljava/lang/String;

    const-string v5, "PartnerName"

    .line 53
    invoke-virtual {v7, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v3, v6, Lcom/truecaller/sdk/push/PushAppData;->b:Ljava/lang/String;

    const-string v5, "pushAppData.name"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "partnerName"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v3, "eventWeb"

    .line 55
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 57
    iput-object v4, v2, Le/a/l5/a/i3$b;->a:Ljava/util/Map;

    .line 58
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v3

    const/4 v4, 0x1

    aput-boolean v4, v3, v5

    .line 59
    invoke-interface {v1}, Le/a/v4/l;->a()Le/a/q2/a;

    move-result-object v1

    invoke-virtual {v2}, Le/a/l5/a/i3$b;->a()Le/a/l5/a/i3;

    move-result-object v2

    const-string v3, "eventWeb.build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    instance-of v1, v0, Le/a/v4/l;

    if-eqz v1, :cond_7

    .line 62
    check-cast v0, Le/a/v4/l;

    invoke-interface {v0}, Le/a/v4/l;->a()Le/a/q2/a;

    move-result-object v10

    const-string v5, "TrueSDK_Notification"

    const-string v9, "event.build()"

    move-object v6, v8

    .line 63
    invoke-static/range {v5 .. v10}, Le/d/c/a/a;->G0(Ljava/lang/String;Ljava/lang/Double;Ljava/util/HashMap;Le/a/q2/g$a;Ljava/lang/String;Le/a/q2/a;)V

    goto :goto_3

    .line 64
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Application class does not implement "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Le/a/h4/q/g;

    invoke-static {v2, v1}, Le/d/c/a/a;->a2(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    return-void

    :array_0
    .array-data 8
        0x1f4
        0x64
        0x1f4
    .end array-data
.end method
