.class public Lcom/truecaller/referral/ReferralNotificationService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ReferralNotificationService"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Le/a/w1;

    invoke-interface {v3}, Le/a/w1;->s()Le/a/j2;

    move-result-object v3

    const-string v4, "name"

    .line 2
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "days"

    .line 3
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    invoke-static {v5, v6}, Lw3/c/a/a/a/k/a;->h(Ljava/lang/String;I)I

    move-result v5

    .line 4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x65fc90f

    const v8, -0x2b1183e1

    const v9, -0x44d0b8a9

    const/4 v10, 0x1

    const/4 v11, 0x2

    const-string v12, "promo"

    const-string v13, "joiner"

    const-string v14, "referrer"

    if-eq v6, v9, :cond_4

    if-eq v6, v8, :cond_2

    if-eq v6, v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v11

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    move v6, v10

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :goto_0
    const/4 v6, -0x1

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_8

    if-eq v6, v10, :cond_7

    if-eq v6, v11, :cond_6

    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    const-string v6, "title"

    .line 5
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_7
    const v6, 0x7f120ea4

    .line 6
    invoke-virtual {v0, v6}, Landroid/app/IntentService;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_8
    const v6, 0x7f120ea3

    .line 7
    invoke-virtual {v0, v6}, Landroid/app/IntentService;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 8
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v15

    if-eq v15, v9, :cond_d

    if-eq v15, v8, :cond_b

    if-eq v15, v7, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_3

    :cond_a
    move v7, v11

    goto :goto_4

    :cond_b
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_3

    :cond_c
    move v7, v10

    goto :goto_4

    :cond_d
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    :goto_3
    const/4 v7, -0x1

    goto :goto_4

    :cond_e
    const/4 v7, 0x0

    :goto_4
    const-string v8, "text"

    const/4 v9, 0x3

    const v15, 0x7f10005f

    if-eqz v7, :cond_11

    if-eq v7, v10, :cond_10

    if-eq v7, v11, :cond_f

    const/4 v1, 0x0

    goto :goto_5

    .line 9
    :cond_f
    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_10
    const v1, 0x7f120ea2

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v7, v9

    .line 10
    invoke-virtual {v0, v1, v7}, Landroid/app/IntentService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_11
    const/4 v1, 0x0

    const v7, 0x7f120ea1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v1

    .line 11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v10

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v15, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v11

    .line 13
    invoke-virtual {v0, v7, v9}, Landroid/app/IntentService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 14
    :goto_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_20

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_12

    goto/16 :goto_c

    .line 15
    :cond_12
    invoke-static {v2, v14}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_13

    const v7, 0x7f120eae

    goto :goto_6

    :cond_13
    const v7, 0x7f120e9f

    :goto_6
    invoke-virtual {v0, v7}, Landroid/app/IntentService;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-interface {v3}, Le/a/j2;->O1()Le/a/i4/e;

    move-result-object v3

    .line 17
    new-instance v9, Ln3/k/a/q;

    invoke-interface {v3}, Le/a/i4/e;->d()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v0, v15}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v9, v6}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 19
    invoke-virtual {v9, v1}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    new-instance v6, Ln3/k/a/o;

    invoke-direct {v6}, Ln3/k/a/o;-><init>()V

    .line 20
    invoke-virtual {v6, v1}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-virtual {v9, v6}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    const v6, 0x7f06068b

    .line 21
    sget-object v15, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 22
    invoke-static {v0, v6}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v6

    .line 23
    iput v6, v9, Ln3/k/a/q;->D:I

    const/4 v6, -0x1

    .line 24
    invoke-virtual {v9, v6}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    const v6, 0x7f0816fb

    .line 25
    iget-object v15, v9, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v6, v15, Landroid/app/Notification;->icon:I

    .line 26
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v15, -0x44d0b8a9

    if-eq v6, v15, :cond_18

    const v13, -0x2b1183e1

    if-eq v6, v13, :cond_16

    const v13, 0x65fc90f

    if-eq v6, v13, :cond_14

    goto :goto_7

    :cond_14
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    goto :goto_7

    :cond_15
    move v6, v11

    goto :goto_8

    :cond_16
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    goto :goto_7

    :cond_17
    move v6, v10

    goto :goto_8

    :cond_18
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    :goto_7
    const/4 v6, -0x1

    goto :goto_8

    :cond_19
    const/4 v6, 0x0

    :goto_8
    const-string v13, "com.truecaller.intent.action.REFERRAL_REFER_MORE_USERS"

    const-string v15, "com.truecaller.intent.action.REFERRAL_PREMIUM_GRANTED"

    if-eqz v6, :cond_1c

    if-eq v6, v10, :cond_1b

    if-eq v6, v11, :cond_1a

    const/4 v15, 0x0

    goto :goto_9

    :cond_1a
    move-object v15, v13

    goto :goto_9

    :cond_1b
    const v1, 0x7f120ea6

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v6, v16

    .line 27
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v10

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f10005f

    invoke-virtual {v4, v10, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v11

    .line 29
    invoke-virtual {v0, v1, v6}, Landroid/app/IntentService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_1c
    const/4 v1, 0x3

    const v6, 0x7f10005f

    const/4 v10, 0x0

    const v11, 0x7f120ea5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v10

    .line 30
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v10, 0x1

    aput-object v4, v1, v10

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    .line 32
    invoke-virtual {v0, v11, v1}, Landroid/app/IntentService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_9
    const-string v4, "refer_mode"

    const/high16 v5, 0xc000000

    if-nez v15, :cond_1d

    .line 33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v6, "ReferMode "

    const-string v8, " not handled."

    invoke-static {v6, v2, v8}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    goto :goto_a

    .line 34
    :cond_1d
    new-instance v6, Landroid/content/Intent;

    const-class v10, Lcom/truecaller/referral/ReferralNotificationService;

    const/4 v11, 0x0

    invoke-direct {v6, v15, v11, v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    invoke-virtual {v6, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 36
    invoke-static {v15, v13}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 37
    invoke-virtual {v1, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1e
    const/4 v6, 0x0

    .line 38
    invoke-static {v0, v6, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    move/from16 v17, v6

    move-object v6, v1

    move/from16 v1, v17

    .line 39
    :goto_a
    iput-object v6, v9, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 40
    new-instance v6, Landroid/content/Intent;

    const-class v8, Lcom/truecaller/referral/ReferralNotificationService;

    const/4 v10, 0x0

    invoke-direct {v6, v13, v10, v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    invoke-virtual {v6, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-static {v0, v1, v6, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 43
    invoke-virtual {v9, v1, v7, v4}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    const/16 v1, 0x10

    const/4 v4, 0x1

    .line 44
    invoke-virtual {v9, v1, v4}, Ln3/k/a/q;->p(IZ)V

    .line 45
    invoke-static {v2, v14}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const v1, 0x7f0a0e09

    goto :goto_b

    :cond_1f
    const v1, 0x7f0a0e08

    .line 46
    :goto_b
    invoke-virtual {v9}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v2

    const-string v4, "notificationReferral"

    invoke-interface {v3, v1, v2, v4}, Le/a/i4/e;->j(ILandroid/app/Notification;Ljava/lang/String;)V

    :cond_20
    :goto_c
    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Le/a/w1;

    invoke-interface {v1}, Le/a/w1;->s()Le/a/j2;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "com.truecaller.intent.action.REFERRAL_REFERRER_PROMO_NOTIFICATION_RECEIVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v3, "com.truecaller.intent.action.ACTION_CLEAR_CACHE_NOTIFICATION_RECEIVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v3, "com.truecaller.intent.action.REFERRAL_JOINER_NOTIFICATION_RECEIVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v3, "com.truecaller.intent.action.REFERRAL_REFERRER_NOTIFICATION_RECEIVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v3, "com.truecaller.intent.action.REFERRAL_PREMIUM_GRANTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v3, "com.truecaller.intent.action.REFERRAL_REFER_MORE_USERS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_0
    const-string v0, "promo"

    const-string v3, "referrer"

    const-string v4, "joiner"

    const-string v5, "LAUNCH_MODE"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 5
    :pswitch_0
    invoke-virtual {p0, p1, v0}, Lcom/truecaller/referral/ReferralNotificationService;->a(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6
    :pswitch_1
    invoke-interface {v1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object p1

    const-string v0, "featuresRegistry"

    .line 7
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "referralLink"

    .line 8
    invoke-static {p1}, Le/a/n/g0;->n0(Ljava/lang/String;)V

    const-string p1, "referralCode"

    .line 9
    invoke-static {p1}, Le/a/n/g0;->n0(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 10
    :pswitch_2
    invoke-virtual {p0, p1, v4}, Lcom/truecaller/referral/ReferralNotificationService;->a(Landroid/content/Intent;Ljava/lang/String;)V

    .line 11
    invoke-interface {v1}, Le/a/j2;->C1()Le/a/l/p2/r0;

    move-result-object p1

    invoke-interface {p1}, Le/a/l/p2/r0;->c()Ls1/k;

    goto/16 :goto_2

    .line 12
    :pswitch_3
    invoke-virtual {p0, p1, v3}, Lcom/truecaller/referral/ReferralNotificationService;->a(Landroid/content/Intent;Ljava/lang/String;)V

    .line 13
    invoke-interface {v1}, Le/a/j2;->C1()Le/a/l/p2/r0;

    move-result-object p1

    invoke-interface {p1}, Le/a/l/p2/r0;->c()Ls1/k;

    goto :goto_2

    :pswitch_4
    const-string v0, "text"

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p0}, Le/a/l4/k;->F(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "REFERRAL_GRANTED_MESSAGE"

    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "MODE_REFERRAL_GRANTED_VIEW"

    .line 17
    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-virtual {p0, v0}, Landroid/app/IntentService;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_5
    const-string v2, "refer_mode"

    .line 19
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {p1, v3}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 21
    invoke-static {p0}, Le/a/l4/k;->F(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "MODE_REFER_MORE_FRIENDS"

    .line 22
    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    invoke-virtual {p0, p1}, Landroid/app/IntentService;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 24
    :cond_8
    invoke-static {p1, v4}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 25
    invoke-static {p0}, Le/a/l4/k;->F(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "MODE_REFERRAL_ON_BOARDING"

    .line 26
    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, p1}, Landroid/app/IntentService;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 28
    :cond_9
    invoke-static {p1, v0}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 29
    invoke-static {p0}, Le/a/l4/k;->F(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "MODE_SHOW_REFERRAL"

    .line 30
    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, p1}, Landroid/app/IntentService;->startActivity(Landroid/content/Intent;)V

    .line 32
    :cond_a
    :goto_1
    invoke-interface {v1}, Le/a/j2;->O1()Le/a/i4/e;

    move-result-object p1

    const v0, 0x7f0a0e09

    invoke-interface {p1, v0}, Le/a/i4/e;->f(I)V

    .line 33
    invoke-interface {v1}, Le/a/j2;->O1()Le/a/i4/e;

    move-result-object p1

    const v0, 0x7f0a0e08

    invoke-interface {p1, v0}, Le/a/i4/e;->f(I)V

    .line 34
    invoke-static {p0}, Le/a/p5/s0/g;->s(Landroid/content/Context;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71c23b4f -> :sswitch_5
        -0x17b598e1 -> :sswitch_4
        0xde3ba89 -> :sswitch_3
        0x47d03cc1 -> :sswitch_2
        0x7551adeb -> :sswitch_1
        0x767bb039 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
