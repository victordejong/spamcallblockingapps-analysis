.class public Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public a:Z

.field public b:Le/h/a/c/p;

.field public c:Landroid/widget/RemoteViews;

.field public d:Landroid/widget/RemoteViews;

.field public e:Landroid/widget/RemoteViews;

.field public f:Landroid/widget/RemoteViews;

.field public g:Ljava/lang/String;

.field public h:Le/h/a/b/e;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/lang/String;

.field public s:I

.field public t:Z

.field public u:Landroid/app/NotificationManager;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->a:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->m:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->o:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->p:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->q:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->s:I

    return-void
.end method

.method public static a(Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "clickedStar"

    :try_start_0
    const-string v4, "notificationId"

    .line 2
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "default_dl"

    const/4 v6, 0x0

    .line 3
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "wzrk_dl"

    if-eqz v5, :cond_1

    :try_start_1
    const-string v3, "config"

    .line 4
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    iput-object v3, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->D:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-object v3, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->u:Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :try_start_2
    const-string v4, "com.clevertap.android.sdk.pushnotification.CTNotificationIntentService"

    .line 6
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :catch_0
    :try_start_3
    invoke-static {v1, v3}, Le/h/a/c/j0;->l(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.clevertap.PUSH_EVENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "ct_type"

    const-string v5, "com.clevertap.ACTION_BUTTON_CLICK"

    .line 10
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, "dl"

    .line 12
    iget-object v0, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->l:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_a

    .line 14
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v5, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->l:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "wzrk_acts"

    .line 15
    invoke-virtual {v3, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v4, "wzrk_from"

    const-string v5, "CTPushNotificationReceiver"

    .line 16
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x34000000

    .line 17
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 18
    iget-object v4, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->D:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v1, v2, v4}, Le/h/a/b/g;->t(Landroid/content/Context;Landroid/os/Bundle;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V

    .line 19
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 20
    iget-object v0, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->l:Ljava/lang/String;

    invoke-virtual {v3, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a

    .line 22
    :cond_1
    iget-object v5, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 23
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v9, "wzrk_c2a"

    const/4 v10, 0x1

    if-ne v10, v8, :cond_2

    :try_start_4
    const-string v8, "rating_1"

    .line 24
    invoke-virtual {v2, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v8, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 26
    iget-object v5, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 27
    :cond_2
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v11, 0x2

    if-ne v11, v8, :cond_4

    const-string v5, "rating_2"

    .line 28
    invoke-virtual {v2, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v5, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v10, :cond_3

    .line 30
    iget-object v5, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    .line 31
    :cond_3
    iget-object v5, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 32
    :cond_4
    :goto_0
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v12, 0x3

    if-ne v12, v8, :cond_6

    const-string v5, "rating_3"

    .line 33
    invoke-virtual {v2, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v5, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v11, :cond_5

    .line 35
    iget-object v5, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    .line 36
    :cond_5
    iget-object v5, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 37
    :cond_6
    :goto_1
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v13, 0x4

    if-ne v13, v8, :cond_8

    const-string v5, "rating_4"

    .line 38
    invoke-virtual {v2, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v5, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v12, :cond_7

    .line 40
    iget-object v5, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_2

    .line 41
    :cond_7
    iget-object v5, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 42
    :cond_8
    :goto_2
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v14, 0x5

    if-ne v14, v8, :cond_a

    const-string v5, "rating_5"

    .line 43
    invoke-virtual {v2, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v5, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v13, :cond_9

    .line 45
    iget-object v5, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_3

    .line 46
    :cond_9
    iget-object v5, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 47
    :cond_a
    :goto_3
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    invoke-static {v1, v4}, Le/h/a/b/g;->o(Landroid/content/Context;I)Landroid/app/Notification;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 49
    iget-object v15, v9, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iput-object v15, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    .line 50
    iget-object v15, v9, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v15, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->d:Landroid/widget/RemoteViews;

    .line 51
    :cond_b
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    if-ne v10, v15, :cond_c

    .line 52
    iget-object v15, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    sget v10, Lcom/clevertap/android/pushtemplates/R$id;->star1:I

    sget v14, Lcom/clevertap/android/pushtemplates/R$drawable;->pt_star_filled:I

    invoke-virtual {v15, v10, v14}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_4

    .line 53
    :cond_c
    iget-object v10, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    sget v14, Lcom/clevertap/android/pushtemplates/R$id;->star1:I

    sget v15, Lcom/clevertap/android/pushtemplates/R$drawable;->pt_star_outline:I

    invoke-virtual {v10, v14, v15}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 54
    :goto_4
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v11, v10, :cond_d

    .line 55
    iget-object v10, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    sget v11, Lcom/clevertap/android/pushtemplates/R$id;->star1:I

    sget v14, Lcom/clevertap/android/pushtemplates/R$drawable;->pt_star_filled:I

    invoke-virtual {v10, v11, v14}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 56
    iget-object v10, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    sget v11, Lcom/clevertap/android/pushtemplates/R$id;->star2:I

    invoke-virtual {v10, v11, v14}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_5

    .line 57
    :cond_d
    iget-object v10, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    sget v11, Lcom/clevertap/android/pushtemplates/R$id;->star2:I

    sget v14, Lcom/clevertap/android/pushtemplates/R$drawable;->pt_star_outline:I

    invoke-virtual {v10, v11, v14}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 58
    :goto_5
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v12, v10, :cond_e

    .line 59
    iget-object v10, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    sget v11, Lcom/clevertap/android/pushtemplates/R$id;->star1:I

    sget v12, Lcom/clevertap/android/pushtemplates/R$drawable;->pt_star_filled:I

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 60
    iget-object v10, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    sget v11, Lcom/clevertap/android/pushtemplates/R$id;->star2:I

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 61
    iget-object v10, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    sget v11, Lcom/clevertap/android/pushtemplates/R$id;->star3:I

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_6

    .line 62
    :cond_e
    iget-object v10, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    sget v11, Lcom/clevertap/android/pushtemplates/R$id;->star3:I

    sget v12, Lcom/clevertap/android/pushtemplates/R$drawable;->pt_star_outline:I

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 63
    :goto_6
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v13, v10, :cond_f

    .line 64
    iget-object v10, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    sget v11, Lcom/clevertap/android/pushtemplates/R$id;->star1:I

    sget v12, Lcom/clevertap/android/pushtemplates/R$drawable;->pt_star_filled:I

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 65
    iget-object v10, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    sget v11, Lcom/clevertap/android/pushtemplates/R$id;->star2:I

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 66
    iget-object v10, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    sget v11, Lcom/clevertap/android/pushtemplates/R$id;->star3:I

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 67
    iget-object v10, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    sget v11, Lcom/clevertap/android/pushtemplates/R$id;->star4:I

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_7

    .line 68
    :cond_f
    iget-object v10, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    sget v11, Lcom/clevertap/android/pushtemplates/R$id;->star4:I

    sget v12, Lcom/clevertap/android/pushtemplates/R$drawable;->pt_star_outline:I

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 69
    :goto_7
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x5

    if-ne v6, v3, :cond_10

    .line 70
    iget-object v3, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    sget v6, Lcom/clevertap/android/pushtemplates/R$id;->star1:I

    sget v10, Lcom/clevertap/android/pushtemplates/R$drawable;->pt_star_filled:I

    invoke-virtual {v3, v6, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 71
    iget-object v3, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    sget v6, Lcom/clevertap/android/pushtemplates/R$id;->star2:I

    invoke-virtual {v3, v6, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 72
    iget-object v3, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    sget v6, Lcom/clevertap/android/pushtemplates/R$id;->star3:I

    invoke-virtual {v3, v6, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 73
    iget-object v3, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    sget v6, Lcom/clevertap/android/pushtemplates/R$id;->star4:I

    invoke-virtual {v3, v6, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 74
    iget-object v3, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    sget v6, Lcom/clevertap/android/pushtemplates/R$id;->star5:I

    invoke-virtual {v3, v6, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_8

    .line 75
    :cond_10
    iget-object v3, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    sget v6, Lcom/clevertap/android/pushtemplates/R$id;->star5:I

    sget v10, Lcom/clevertap/android/pushtemplates/R$drawable;->pt_star_outline:I

    invoke-virtual {v3, v6, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 76
    :goto_8
    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v3, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    sget v6, Lcom/clevertap/android/pushtemplates/R$id;->tVRatingConfirmation:I

    .line 78
    invoke-static {v2, v1}, Ln3/g0/y;->V(Landroid/os/Bundle;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 79
    invoke-virtual {v3, v6, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 80
    invoke-virtual/range {p0 .. p1}, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->j(Landroid/content/Context;)V

    if-eqz v9, :cond_11

    .line 81
    new-instance v3, Ln3/k/a/q;

    invoke-direct {v3, v1, v9}, Ln3/k/a/q;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    goto :goto_9

    .line 82
    :cond_11
    iget-boolean v3, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->t:Z

    const-string v6, "pt_silent_sound_channel"

    invoke-virtual {v0, v3, v6, v1}, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->g(ZLjava/lang/String;Landroid/content/Context;)Ln3/k/a/q;

    move-result-object v3

    .line 83
    :goto_9
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;

    invoke-direct {v6, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    invoke-static {v1, v2, v6}, Le/h/a/b/i/g;->c(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 85
    iget-object v7, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->u:Landroid/app/NotificationManager;

    if-eqz v7, :cond_12

    .line 86
    iget v7, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->s:I

    .line 87
    iget-object v9, v3, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v7, v9, Landroid/app/Notification;->icon:I

    .line 88
    iget-object v7, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->d:Landroid/widget/RemoteViews;

    .line 89
    iput-object v7, v3, Ln3/k/a/q;->G:Landroid/widget/RemoteViews;

    .line 90
    iget-object v7, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e:Landroid/widget/RemoteViews;

    .line 91
    iput-object v7, v3, Ln3/k/a/q;->H:Landroid/widget/RemoteViews;

    .line 92
    iget-object v7, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->i:Ljava/lang/String;

    .line 93
    invoke-virtual {v3, v7}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 94
    iget-object v7, v3, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v6, v7, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const/16 v6, 0x10

    const/4 v7, 0x1

    .line 95
    invoke-virtual {v3, v6, v7}, Ln3/k/a/q;->p(IZ)V

    .line 96
    invoke-virtual {v3}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v3

    .line 97
    iget-object v6, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->u:Landroid/app/NotificationManager;

    invoke-virtual {v6, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_12
    const/16 v3, 0x1f

    if-ge v8, v3, :cond_13

    .line 98
    iget-object v3, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->D:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v6, "Rating Submitted"

    .line 99
    invoke-static/range {p2 .. p2}, Le/h/a/b/g;->a(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v7

    .line 100
    invoke-static {v1, v3, v6, v7}, Le/h/a/b/g;->s(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 101
    iget-object v6, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->D:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->f(Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/String;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    :cond_13
    :goto_a
    return-void
.end method

.method public static b(Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "notificationId"

    .line 2
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "wzrk_dl"

    .line 3
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->a:Z

    const-string v2, "close"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    const-string v1, "wzrk_c2a"

    const-string v2, "5cta_close"

    .line 5
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->u:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->D:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {p1, p2, p0}, Le/h/a/b/g;->t(Landroid/content/Context;Landroid/os/Bundle;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V

    return-void
.end method

.method public static c(Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pt_current_position"

    const-string v1, "notificationId"

    .line 2
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 3
    invoke-static {p1, v8}, Le/h/a/b/g;->o(Landroid/content/Context;I)Landroid/app/Notification;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iput-object v3, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->c:Landroid/widget/RemoteViews;

    .line 5
    iget-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v3, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->d:Landroid/widget/RemoteViews;

    :cond_0
    const/4 v3, 0x0

    .line 6
    iget-object v4, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->v:Ljava/lang/String;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v3, v5

    .line 7
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->c:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v4, p1}, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->h(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    if-nez v3, :cond_3

    .line 8
    iget-object v4, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->d:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v4, p1}, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->h(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 9
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 10
    iget-object v9, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->c:Landroid/widget/RemoteViews;

    sget v10, Lcom/clevertap/android/pushtemplates/R$id;->carousel_image:I

    invoke-virtual {v9, v10, v4}, Landroid/widget/RemoteViews;->setDisplayedChild(II)V

    const-string v9, "pt_image_list"

    .line 11
    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->m:Ljava/util/ArrayList;

    const-string v9, "pt_deeplink_list"

    .line 12
    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    const-string v9, "pt_big_text_list"

    .line 13
    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->o:Ljava/util/ArrayList;

    const-string v9, "pt_small_text_list"

    .line 14
    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->p:Ljava/util/ArrayList;

    const-string v9, "pt_price_list"

    .line 15
    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->q:Ljava/util/ArrayList;

    .line 16
    iget-object v9, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v3, :cond_4

    .line 17
    iget-object v3, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->c:Landroid/widget/RemoteViews;

    sget v10, Lcom/clevertap/android/pushtemplates/R$id;->title:I

    iget-object v11, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->o:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v3, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 18
    :cond_4
    iget-object v3, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->c:Landroid/widget/RemoteViews;

    sget v10, Lcom/clevertap/android/pushtemplates/R$id;->product_name:I

    iget-object v11, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->o:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v3, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 19
    :goto_1
    iget-object v3, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->c:Landroid/widget/RemoteViews;

    sget v10, Lcom/clevertap/android/pushtemplates/R$id;->msg:I

    iget-object v11, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->p:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v3, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 20
    iget-object v3, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->c:Landroid/widget/RemoteViews;

    sget v10, Lcom/clevertap/android/pushtemplates/R$id;->product_price:I

    iget-object v11, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->q:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v10, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v3, "img1"

    .line 23
    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "pt_buy_now_dl"

    .line 25
    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "buynow"

    .line 26
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->c:Landroid/widget/RemoteViews;

    sget v3, Lcom/clevertap/android/pushtemplates/R$id;->product_action:I

    .line 28
    invoke-static {p1, v0, v9, v8}, Le/h/a/b/i/g;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 29
    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    if-eqz v2, :cond_5

    .line 30
    new-instance v0, Ln3/k/a/q;

    invoke-direct {v0, p1, v2}, Ln3/k/a/q;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    :goto_2
    move-object v10, v0

    goto :goto_3

    .line 31
    :cond_5
    iget-boolean v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->t:Z

    const-string v1, "pt_silent_sound_channel"

    invoke-virtual {p0, v0, v1, p1}, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->g(ZLjava/lang/String;Landroid/content/Context;)Ln3/k/a/q;

    move-result-object v0

    goto :goto_2

    .line 32
    :goto_3
    invoke-virtual {p2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Bundle;

    const-string v0, "wzrk_dl"

    .line 33
    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/16 v4, 0x14

    const/4 v5, 0x0

    move-object v0, p1

    move v1, v8

    .line 34
    invoke-static/range {v0 .. v5}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 35
    iget-object v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->u:Landroid/app/NotificationManager;

    if-eqz v0, :cond_6

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    invoke-static {p1, p2, v0}, Le/h/a/b/i/g;->c(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 38
    invoke-virtual {p0, p1}, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->j(Landroid/content/Context;)V

    .line 39
    iget-object v2, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->d:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->c:Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->i:Ljava/lang/String;

    move-object v0, p0

    move-object v1, v10

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->i(Ln3/k/a/q;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 40
    invoke-virtual {v10}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->u:Landroid/app/NotificationManager;

    invoke-virtual {v1, v8, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_6
    return-void
.end method

.method public static d(Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;Landroid/content/Context;Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 12

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Landroid/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-static {p1, p2, v1}, Le/h/a/b/i/g;->c(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "config"

    .line 5
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    iput-object v2, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->D:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    if-eqz v0, :cond_c

    const-string v2, "pt_input_reply"

    .line 6
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v3, "notificationId"

    .line 7
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v0, :cond_c

    .line 8
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v4, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->D:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    if-eqz v4, :cond_0

    .line 10
    invoke-static {p1, v4}, Le/h/a/c/p;->k(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/p;

    move-result-object v4

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1}, Le/h/a/c/p;->h(Landroid/content/Context;)Le/h/a/c/p;

    move-result-object v4

    .line 12
    :goto_0
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 13
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "pt_event_property"

    .line 15
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 16
    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "pt_event_property_"

    .line 17
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 18
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 19
    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 20
    aget-object v8, v10, v9

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 21
    :cond_2
    aget-object v9, v10, v9

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 22
    :cond_3
    invoke-static {p2}, Le/h/a/b/g;->l(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_4

    .line 24
    invoke-virtual {v4, v2, v6}, Le/h/a/c/p;->p(Ljava/lang/String;Ljava/util/Map;)V

    .line 25
    :cond_4
    iget-boolean v2, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->t:Z

    if-eqz v2, :cond_5

    .line 26
    new-instance v2, Ln3/k/a/q;

    const-string v4, "pt_silent_sound_channel"

    invoke-direct {v2, p1, v4}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 27
    :cond_5
    new-instance v2, Ln3/k/a/q;

    const/4 v4, 0x0

    .line 28
    invoke-direct {v2, p1, v4}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    :goto_2
    invoke-virtual {p0, p1}, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->j(Landroid/content/Context;)V

    .line 30
    iget v4, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->s:I

    .line 31
    iget-object v5, v2, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v4, v5, Landroid/app/Notification;->icon:I

    .line 32
    iget-object v4, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->i:Ljava/lang/String;

    .line 33
    invoke-virtual {v2, v4}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const-string v4, "pt_input_feedback"

    .line 34
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const-wide/16 v5, 0x514

    .line 35
    iput-wide v5, v2, Ln3/k/a/q;->N:J

    .line 36
    iget-object v7, v2, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v1, v7, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 38
    iget-object v1, v2, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide v7, v1, Landroid/app/Notification;->when:J

    const/16 v1, 0x10

    .line 39
    invoke-virtual {v2, v1, v9}, Ln3/k/a/q;->p(IZ)V

    .line 40
    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->w:Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v1, :cond_7

    const-string v8, "http"

    .line 41
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 42
    :try_start_0
    invoke-static {v1, v7, p1}, Le/h/a/b/g;->n(Ljava/lang/String;ZLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 43
    new-instance v8, Ln3/k/a/n;

    invoke-direct {v8}, Ln3/k/a/n;-><init>()V

    .line 44
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ln3/k/a/n;->k(Ljava/lang/CharSequence;)Ln3/k/a/n;

    .line 45
    iput-object v1, v8, Ln3/k/a/n;->e:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 46
    :cond_6
    new-instance v1, Ljava/lang/Exception;

    const-string v8, "Failed to fetch big picture!"

    invoke-direct {v1, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :catchall_0
    new-instance v8, Ln3/k/a/o;

    invoke-direct {v8}, Ln3/k/a/o;-><init>()V

    .line 48
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    goto :goto_3

    .line 49
    :cond_7
    new-instance v8, Ln3/k/a/o;

    invoke-direct {v8}, Ln3/k/a/o;-><init>()V

    .line 50
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    .line 51
    :goto_3
    invoke-virtual {v2, v8}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 52
    invoke-virtual {v2}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v1

    .line 53
    iget-object p0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->u:Landroid/app/NotificationManager;

    invoke-virtual {p0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 54
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge p0, v1, :cond_c

    const-string p0, "pt_input_auto_open"

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    .line 55
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 56
    :cond_8
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_4
    const-string p0, "wzrk_dl"

    .line 58
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 59
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 60
    new-instance v1, Landroid/content/Intent;

    .line 61
    invoke-virtual {p3, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {v1, p3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 64
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 65
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 66
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 67
    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_6

    .line 69
    :cond_b
    :goto_5
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p0, "pt_reply"

    .line 70
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p0, "wzrk_acts"

    .line 71
    invoke-virtual {v1, p0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const/high16 p0, 0x34000000

    .line 72
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_c
    :goto_6
    return-void
.end method

.method public static e(Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 14

    move-object v7, p0

    move-object v6, p1

    move-object/from16 v8, p2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pt_manual_carousel_current"

    const-string v1, "right_swipe"

    :try_start_0
    const-string v2, "notificationId"

    .line 2
    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 3
    invoke-static {p1, v9}, Le/h/a/b/g;->o(Landroid/content/Context;I)Landroid/app/Notification;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 4
    iget-object v2, v10, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iput-object v2, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->f:Landroid/widget/RemoteViews;

    .line 5
    iget-object v2, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v2, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->d:Landroid/widget/RemoteViews;

    .line 6
    :cond_0
    iget-object v2, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->f:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v2, p1}, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->h(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 7
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "pt_image_list"

    .line 8
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->m:Ljava/util/ArrayList;

    const-string v3, "pt_deeplink_list"

    .line 9
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    .line 11
    iget-object v2, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->f:Landroid/widget/RemoteViews;

    sget v11, Lcom/clevertap/android/pushtemplates/R$id;->carousel_image:I

    invoke-virtual {v2, v11}, Landroid/widget/RemoteViews;->showNext(I)V

    .line 12
    iget-object v2, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->f:Landroid/widget/RemoteViews;

    sget v11, Lcom/clevertap/android/pushtemplates/R$id;->carousel_image_right:I

    invoke-virtual {v2, v11}, Landroid/widget/RemoteViews;->showNext(I)V

    .line 13
    iget-object v2, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->f:Landroid/widget/RemoteViews;

    sget v11, Lcom/clevertap/android/pushtemplates/R$id;->carousel_image_left:I

    invoke-virtual {v2, v11}, Landroid/widget/RemoteViews;->showNext(I)V

    .line 14
    iget-object v2, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v5

    if-ne v3, v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    .line 15
    :cond_2
    iget-object v2, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->f:Landroid/widget/RemoteViews;

    sget v11, Lcom/clevertap/android/pushtemplates/R$id;->carousel_image:I

    invoke-virtual {v2, v11}, Landroid/widget/RemoteViews;->showPrevious(I)V

    .line 16
    iget-object v2, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->f:Landroid/widget/RemoteViews;

    sget v11, Lcom/clevertap/android/pushtemplates/R$id;->carousel_image_right:I

    invoke-virtual {v2, v11}, Landroid/widget/RemoteViews;->showPrevious(I)V

    .line 17
    iget-object v2, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->f:Landroid/widget/RemoteViews;

    sget v11, Lcom/clevertap/android/pushtemplates/R$id;->carousel_image_left:I

    invoke-virtual {v2, v11}, Landroid/widget/RemoteViews;->showPrevious(I)V

    if-nez v3, :cond_3

    .line 18
    iget-object v2, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v5

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v3, -0x1

    :goto_0
    const-string v11, ""

    .line 19
    iget-object v12, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget-object v13, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->m:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ne v12, v13, :cond_4

    .line 20
    iget-object v4, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    goto :goto_1

    .line 21
    :cond_4
    iget-object v12, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v12, v5, :cond_5

    .line 22
    iget-object v5, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    goto :goto_1

    .line 23
    :cond_5
    iget-object v5, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v2, :cond_6

    .line 24
    iget-object v4, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    goto :goto_1

    .line 25
    :cond_6
    iget-object v5, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v2, :cond_7

    .line 26
    iget-object v5, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    .line 27
    :cond_7
    :goto_1
    invoke-virtual {v8, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "wzrk_dl"

    .line 29
    invoke-virtual {v8, v0, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "manual_carousel_from"

    .line 30
    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    iget-object v11, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->f:Landroid/widget/RemoteViews;

    sget v12, Lcom/clevertap/android/pushtemplates/R$id;->rightArrowPos0:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    move v1, v9

    move-object/from16 v2, p2

    .line 32
    invoke-static/range {v0 .. v5}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 33
    invoke-virtual {v11, v12, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 34
    iget-object v11, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->f:Landroid/widget/RemoteViews;

    sget v12, Lcom/clevertap/android/pushtemplates/R$id;->leftArrowPos0:I

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, p1

    move v1, v9

    move-object/from16 v2, p2

    .line 35
    invoke-static/range {v0 .. v5}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 36
    invoke-virtual {v11, v12, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p1

    move v1, v9

    move-object/from16 v2, p2

    .line 37
    invoke-static/range {v0 .. v5}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object v11

    if-eqz v10, :cond_8

    .line 38
    new-instance v0, Ln3/k/a/q;

    invoke-direct {v0, p1, v10}, Ln3/k/a/q;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    :goto_2
    move-object v10, v0

    goto :goto_3

    .line 39
    :cond_8
    iget-boolean v0, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->t:Z

    const-string v1, "pt_silent_sound_channel"

    invoke-virtual {p0, v0, v1, p1}, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->g(ZLjava/lang/String;Landroid/content/Context;)Ln3/k/a/q;

    move-result-object v0

    goto :goto_2

    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    move v1, v9

    move-object/from16 v2, p2

    .line 40
    invoke-static/range {v0 .. v5}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 41
    invoke-virtual {p0, p1}, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->j(Landroid/content/Context;)V

    .line 42
    iget-object v2, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->d:Landroid/widget/RemoteViews;

    iget-object v3, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->f:Landroid/widget/RemoteViews;

    iget-object v4, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->i:Ljava/lang/String;

    move-object v0, p0

    move-object v1, v10

    move-object v5, v11

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->i(Ln3/k/a/q;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 43
    invoke-virtual {v10}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v0

    .line 44
    iget-object v1, v7, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->u:Landroid/app/NotificationManager;

    invoke-virtual {v1, v9, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public final f(Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/String;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v0, 0x3e8

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2
    iget-object v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->u:Landroid/app/NotificationManager;

    invoke-virtual {v0, p3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3
    iget-object p3, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->B:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    .line 5
    invoke-static {p5}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object p5

    invoke-virtual {p5}, Le/h/a/c/y0/b;->b()Le/h/a/c/y0/k;

    move-result-object p5

    .line 6
    new-instance v0, Le/h/a/b/f;

    invoke-direct {v0, p3, p1}, Le/h/a/b/f;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 7
    iget-object p3, p5, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 8
    new-instance v1, Le/h/a/c/y0/j;

    const-string v2, "PushTemplatesUtils#showToast"

    invoke-direct {v1, p5, v2, v0}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 9
    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    :cond_0
    new-instance p3, Landroid/content/Intent;

    const-string p5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p3, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p3, "wzrk_dl"

    .line 12
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 13
    new-instance p5, Landroid/content/Intent;

    .line 14
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p5, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 15
    invoke-static {p1, p5}, Le/h/a/c/j0;->m(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p5

    if-nez p5, :cond_2

    return-void

    .line 17
    :cond_2
    :goto_0
    invoke-virtual {p5, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 18
    invoke-virtual {p5, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "wzrk_acts"

    .line 19
    invoke-virtual {p5, p2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string p2, "wzrk_from"

    const-string p3, "CTPushNotificationReceiver"

    .line 20
    invoke-virtual {p5, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x34000000

    .line 21
    invoke-virtual {p5, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 22
    invoke-virtual {p1, p5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final g(ZLjava/lang/String;Landroid/content/Context;)Ln3/k/a/q;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Ln3/k/a/q;

    invoke-direct {p1, p3, p2}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ln3/k/a/q;

    const/4 p2, 0x0

    .line 3
    invoke-direct {p1, p3, p2}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method public final h(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 5

    .line 1
    sget v0, Lcom/clevertap/android/pushtemplates/R$id;->app_name:I

    invoke-static {p2}, Le/h/a/b/g;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2
    sget v1, Lcom/clevertap/android/pushtemplates/R$id;->timestamp:I

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-static {p2, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p1, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5
    iget-object p2, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->C:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt p2, v2, :cond_0

    .line 7
    sget p2, Lcom/clevertap/android/pushtemplates/R$id;->subtitle:I

    iget-object v2, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->C:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_0
    sget p2, Lcom/clevertap/android/pushtemplates/R$id;->subtitle:I

    iget-object v2, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->C:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_1
    sget p2, Lcom/clevertap/android/pushtemplates/R$id;->subtitle:I

    const/16 v2, 0x8

    invoke-virtual {p1, p2, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10
    sget p2, Lcom/clevertap/android/pushtemplates/R$id;->sep_subtitle:I

    invoke-virtual {p1, p2, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11
    :goto_0
    iget-object p2, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->z:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 12
    iget-object p2, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->z:Ljava/lang/String;

    const-string v2, "#A6A6A6"

    invoke-static {p2, v2}, Le/h/a/b/g;->j(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 13
    iget-object p2, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->z:Ljava/lang/String;

    invoke-static {p2, v2}, Le/h/a/b/g;->j(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 14
    sget p2, Lcom/clevertap/android/pushtemplates/R$id;->subtitle:I

    iget-object v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->z:Ljava/lang/String;

    invoke-static {v0, v2}, Le/h/a/b/g;->j(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_2
    return-void
.end method

.method public final i(Ln3/k/a/q;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->s:I

    .line 2
    iget-object v1, p1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 3
    iput-object p2, p1, Ln3/k/a/q;->G:Landroid/widget/RemoteViews;

    .line 4
    iput-object p3, p1, Ln3/k/a/q;->H:Landroid/widget/RemoteViews;

    .line 5
    invoke-static {p4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 6
    iget-object p2, p1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object p6, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 7
    iput-object p5, p1, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/4 p2, 0x5

    .line 8
    invoke-virtual {p1, p2}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 10
    iget-object p4, p1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide p2, p4, Landroid/app/Notification;->when:J

    const/16 p2, 0x10

    const/4 p3, 0x1

    .line 11
    invoke-virtual {p1, p2, p3}, Ln3/k/a/q;->p(IZ)V

    return-void
.end method

.method public final j(Landroid/content/Context;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "CLEVERTAP_NOTIFICATION_ICON"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 4
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    if-eqz v2, :cond_2

    .line 6
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->s:I

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    :catchall_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 10
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 11
    iput p1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->s:I

    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "notification"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x1a

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-lt v0, v5, :cond_4

    const-string v6, "pt_silent_sound_channel"

    .line 3
    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 4
    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 5
    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v7

    if-lt v0, v5, :cond_1

    if-eqz v7, :cond_1

    .line 6
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v7

    if-eqz v7, :cond_1

    move v7, v3

    goto :goto_0

    :cond_1
    move v7, v4

    :goto_0
    if-nez v7, :cond_4

    :cond_2
    const-string v7, "android.resource://"

    .line 7
    invoke-static {v7}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/raw/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "pt_silent_sound"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 9
    new-instance v8, Landroid/app/NotificationChannel;

    const/4 v9, 0x4

    const-string v10, "Silent Channel"

    invoke-direct {v8, v6, v10, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    if-eqz v7, :cond_3

    .line 10
    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v9, 0x5

    .line 11
    invoke-virtual {v6, v9}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    .line 12
    invoke-virtual {v8, v7, v6}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    :cond_3
    const-string v6, "A channel to silently update notifications"

    .line 13
    invoke-virtual {v8, v6}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v8, v4}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 15
    invoke-virtual {v2, v8}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 16
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "wzrk_acct_id"

    .line 18
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 19
    invoke-static {p1, v6}, Le/h/a/c/p;->e(Landroid/content/Context;Ljava/lang/String;)Le/h/a/c/p;

    move-result-object v6

    .line 20
    iput-object v6, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->b:Le/h/a/c/p;

    const-string v6, "pt_id"

    .line 21
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->g:Ljava/lang/String;

    const-string v6, "pt_msg"

    .line 22
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->j:Ljava/lang/String;

    const-string v6, "pt_msg_summary"

    .line 23
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->k:Ljava/lang/String;

    const-string v6, "pt_title"

    .line 24
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->i:Ljava/lang/String;

    const-string v6, "pt_default_dl"

    .line 25
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->l:Ljava/lang/String;

    .line 26
    invoke-static {v2}, Le/h/a/b/g;->m(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->m:Ljava/util/ArrayList;

    .line 27
    invoke-static {v2}, Le/h/a/b/g;->k(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->n:Ljava/util/ArrayList;

    .line 28
    invoke-static {v2}, Le/h/a/b/g;->h(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->o:Ljava/util/ArrayList;

    .line 29
    invoke-static {v2}, Le/h/a/b/g;->q(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->p:Ljava/util/ArrayList;

    .line 30
    invoke-static {v2}, Le/h/a/b/g;->p(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->q:Ljava/util/ArrayList;

    const-string v6, "pt_product_display_linear"

    .line 31
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->v:Ljava/lang/String;

    .line 32
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->u:Landroid/app/NotificationManager;

    const-string v1, "wzrk_cid"

    const-string v6, ""

    .line 33
    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->r:Ljava/lang/String;

    const-string v1, "pt_big_img_alt"

    .line 34
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->w:Ljava/lang/String;

    const-string v1, "pt_small_icon_clr"

    .line 35
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->x:Ljava/lang/String;

    if-lt v0, v5, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    .line 36
    :goto_2
    iput-boolean v3, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->t:Z

    const-string v1, "pt_dismiss_intent"

    .line 37
    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->A:Z

    const-string v1, "pt_rating_toast"

    .line 38
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->B:Ljava/lang/String;

    const-string v1, "pt_subtitle"

    .line 39
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->C:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->i:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const-string v1, "nt"

    .line 41
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->i:Ljava/lang/String;

    .line 42
    :cond_7
    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->j:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    const-string v1, "nm"

    .line 43
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->j:Ljava/lang/String;

    .line 44
    :cond_9
    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->k:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    const-string v1, "wzrk_nms"

    .line 45
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->k:Ljava/lang/String;

    .line 46
    :cond_b
    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->y:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    const-string v1, "wzrk_bp"

    .line 47
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->y:Ljava/lang/String;

    .line 48
    :cond_d
    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->l:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    const-string v1, "wzrk_dl"

    .line 49
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->l:Ljava/lang/String;

    .line 50
    :cond_f
    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->z:Ljava/lang/String;

    const-string v3, "wzrk_clr"

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 51
    :cond_10
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->z:Ljava/lang/String;

    .line 52
    :cond_11
    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->x:Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 53
    :cond_12
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->x:Ljava/lang/String;

    .line 54
    :cond_13
    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->C:Ljava/lang/String;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    const-string v1, "wzrk_st"

    .line 55
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->C:Ljava/lang/String;

    .line 56
    :cond_15
    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->x:Ljava/lang/String;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 57
    :cond_16
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->x:Ljava/lang/String;

    :cond_17
    if-lt v0, v5, :cond_1a

    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->r:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v0, "Unable to render notification, channelId is required but not provided in the notification payload: "

    .line 59
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 61
    :cond_18
    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->u:Landroid/app/NotificationManager;

    if-eqz v1, :cond_19

    iget-object v3, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->r:Ljava/lang/String;

    .line 62
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-nez v1, :cond_19

    const-string v0, "Unable to render notification, channelId: "

    .line 63
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->r:Ljava/lang/String;

    const-string v3, " not registered by the app."

    invoke-static {v0, v1, v3}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_19
    :goto_3
    if-eqz v0, :cond_1a

    return-void

    .line 64
    :cond_1a
    iget-object v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->g:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 65
    sget-object v1, Le/h/a/b/e;->b:Le/h/a/b/e$a;

    invoke-virtual {v1, v0}, Le/h/a/b/e$a;->a(Ljava/lang/String;)Le/h/a/b/e;

    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->h:Le/h/a/b/e;

    .line 67
    :cond_1b
    iget-object v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->b:Le/h/a/c/p;

    if-eqz v0, :cond_1c

    .line 68
    :try_start_0
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 69
    iget-object v0, v0, Le/h/a/c/x;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 70
    iput-object v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->D:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 71
    invoke-static {v0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v0

    const-string v1, "PushTemplateReceiver#renderNotification"

    .line 72
    new-instance v3, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;-><init>(Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 73
    iget-object p1, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 74
    new-instance p2, Le/h/a/c/y0/j;

    invoke-direct {p2, v0, v1, v3}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 75
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    :cond_1c
    :goto_4
    return-void
.end method
