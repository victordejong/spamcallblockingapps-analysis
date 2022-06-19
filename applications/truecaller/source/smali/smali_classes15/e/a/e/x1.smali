.class public final Le/a/e/x1;
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
    c = "com.truecaller.ui.TruecallerInitNotificationHelper$fetchNotificationCount$1"
    f = "TruecallerInitNotificationHelper.kt"
    l = {
        0x22,
        0x2e,
        0x32
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public final synthetic g:Le/a/e/w1;

.field public final synthetic h:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Le/a/e/w1;Ljava/lang/ref/WeakReference;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e/x1;->g:Le/a/e/w1;

    iput-object p2, p0, Le/a/e/x1;->h:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/e/x1;

    iget-object v0, p0, Le/a/e/x1;->g:Le/a/e/w1;

    iget-object v1, p0, Le/a/e/x1;->h:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0, v1, p2}, Le/a/e/x1;-><init>(Le/a/e/w1;Ljava/lang/ref/WeakReference;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/e/x1;

    iget-object v0, p0, Le/a/e/x1;->g:Le/a/e/w1;

    iget-object v1, p0, Le/a/e/x1;->h:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0, v1, p2}, Le/a/e/x1;-><init>(Le/a/e/w1;Ljava/lang/ref/WeakReference;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/e/x1;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/e/x1;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v3, :cond_0

    iget v1, v0, Le/a/e/x1;->e:I

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
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto/16 :goto_6

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/e/x1;->g:Le/a/e/w1;

    .line 5
    iget-object v2, v2, Le/a/e/w1;->f:Ls1/w/f;

    .line 6
    new-instance v7, Le/a/e/x1$b;

    invoke-direct {v7, v0, v4}, Le/a/e/x1$b;-><init>(Le/a/e/x1;Ls1/w/d;)V

    iput v6, v0, Le/a/e/x1;->f:I

    invoke-static {v2, v7, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_0
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v7, 0x0

    if-nez v2, :cond_b

    .line 7
    iget-object v2, v0, Le/a/e/x1;->g:Le/a/e/w1;

    .line 8
    iget-object v2, v2, Le/a/e/w1;->e:Le/a/l/o2/c;

    .line 9
    iget-object v8, v2, Le/a/l/o2/c;->d:Le/a/l/p2/v0;

    invoke-interface {v8}, Le/a/l/p2/v0;->H()Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, v2, Le/a/l/o2/c;->b:Le/a/z4/d;

    const-string v9, "premiumLostConsumableType"

    invoke-interface {v8, v9}, Le/a/z4/d;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    goto/16 :goto_3

    .line 10
    :cond_5
    iget-object v8, v2, Le/a/l/o2/c;->c:Le/a/p5/c;

    invoke-interface {v8}, Le/a/p5/c;->c()J

    move-result-wide v8

    .line 11
    iget-object v10, v2, Le/a/l/o2/c;->b:Le/a/z4/d;

    const-wide/16 v11, 0x0

    const-string v13, "premiumLostConsumableNotificationCount"

    invoke-interface {v10, v13, v11, v12}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 12
    iget-object v10, v2, Le/a/l/o2/c;->b:Le/a/z4/d;

    const-string v15, "premiumLostConsumableNotificationTimestamp"

    invoke-interface {v10, v15, v8, v9}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v10, v13, v11

    if-nez v10, :cond_6

    .line 13
    new-instance v10, Lw3/b/a/b;

    invoke-direct {v10, v3, v4}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v10, v6}, Lw3/b/a/b;->D(I)Lw3/b/a/b;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Lw3/b/a/e0/c;->h(J)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 14
    invoke-virtual {v2, v13, v14}, Le/a/l/o2/c;->d(J)V

    .line 15
    invoke-virtual {v2}, Le/a/l/o2/c;->e()V

    goto :goto_2

    :cond_6
    const-wide/16 v10, 0x1

    cmp-long v10, v13, v10

    if-nez v10, :cond_7

    goto :goto_1

    :cond_7
    const-wide/16 v10, 0x2

    cmp-long v10, v13, v10

    if-nez v10, :cond_8

    .line 16
    :goto_1
    new-instance v10, Lw3/b/a/b;

    invoke-direct {v10, v3, v4}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v10, v6}, Lw3/b/a/b;->K(I)Lw3/b/a/b;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Lw3/b/a/e0/c;->h(J)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 17
    invoke-virtual {v2, v13, v14}, Le/a/l/o2/c;->d(J)V

    .line 18
    invoke-virtual {v2}, Le/a/l/o2/c;->e()V

    goto :goto_2

    :cond_8
    const-wide/16 v10, 0x3

    cmp-long v10, v13, v10

    if-nez v10, :cond_9

    .line 19
    new-instance v10, Lw3/b/a/b;

    invoke-direct {v10, v3, v4}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v10, v5}, Lw3/b/a/b;->K(I)Lw3/b/a/b;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Lw3/b/a/e0/c;->h(J)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 20
    invoke-virtual {v2, v13, v14}, Le/a/l/o2/c;->d(J)V

    .line 21
    invoke-virtual {v2}, Le/a/l/o2/c;->e()V

    :goto_2
    move v2, v6

    goto :goto_4

    .line 22
    :cond_9
    invoke-virtual {v2}, Le/a/l/o2/c;->a()V

    :cond_a
    :goto_3
    move v2, v7

    :cond_b
    :goto_4
    if-nez v2, :cond_d

    .line 23
    iget-object v2, v0, Le/a/e/x1;->g:Le/a/e/w1;

    .line 24
    iget-object v2, v2, Le/a/e/w1;->c:Le/a/l/p2/a0;

    .line 25
    iget-object v3, v2, Le/a/l/p2/a0;->b:Le/a/b0/o/a;

    const-string v4, "premiumHadPremiumBlockingFeatures"

    invoke-interface {v3, v4}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_5

    .line 26
    :cond_c
    iget-object v8, v2, Le/a/l/p2/a0;->d:Le/a/l/a2;

    iget-object v9, v2, Le/a/l/p2/a0;->a:Landroid/content/Context;

    sget-object v10, Lcom/truecaller/premium/PremiumLaunchContext;->PREMIUM_FEATURES_LOST_NOTIFICATION:Lcom/truecaller/premium/PremiumLaunchContext;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xc

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Le/a/c/p/a;->J(Le/a/l/a2;Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;ILjava/lang/Object;)Landroid/content/Intent;

    move-result-object v3

    .line 27
    iget-object v8, v2, Le/a/l/p2/a0;->a:Landroid/content/Context;

    const/high16 v9, 0xc000000

    invoke-static {v8, v7, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 28
    iget-object v7, v2, Le/a/l/p2/a0;->a:Landroid/content/Context;

    const v8, 0x7f120466

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "context.getString(R.stri\u2026PremiumBlockingLostTitle)"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v8, v2, Le/a/l/p2/a0;->a:Landroid/content/Context;

    const v9, 0x7f120465

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "context.getString(R.stri\u2026emiumBlockingLostMessage)"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v9, Ln3/k/a/q;

    iget-object v10, v2, Le/a/l/p2/a0;->a:Landroid/content/Context;

    iget-object v11, v2, Le/a/l/p2/a0;->c:Le/a/i4/e;

    invoke-interface {v11}, Le/a/i4/e;->d()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v9, v7}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 32
    invoke-virtual {v9, v8}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 33
    new-instance v7, Ln3/k/a/o;

    invoke-direct {v7}, Ln3/k/a/o;-><init>()V

    invoke-virtual {v7, v8}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-virtual {v9, v7}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 34
    iget-object v7, v2, Le/a/l/p2/a0;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08033f

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v9, v7}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    .line 35
    iget-object v7, v2, Le/a/l/p2/a0;->a:Landroid/content/Context;

    const v8, 0x7f06068b

    .line 36
    sget-object v10, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 37
    invoke-static {v7, v8}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v7

    .line 38
    iput v7, v9, Ln3/k/a/q;->D:I

    const/4 v7, -0x1

    .line 39
    invoke-virtual {v9, v7}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    const v7, 0x7f0816fb

    .line 40
    iget-object v8, v9, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v7, v8, Landroid/app/Notification;->icon:I

    .line 41
    iput-object v3, v9, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/16 v3, 0x10

    .line 42
    invoke-virtual {v9, v3, v6}, Ln3/k/a/q;->p(IZ)V

    const-string v3, "NotificationCompat.Build\u2026     .setAutoCancel(true)"

    .line 43
    invoke-static {v9, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v3, v2, Le/a/l/p2/a0;->c:Le/a/i4/e;

    const v6, 0x7f0a0d62

    .line 45
    invoke-virtual {v9}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v7

    const-string v8, "builder.build()"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "notificationPremiumBlocking"

    .line 46
    invoke-interface {v3, v6, v7, v8}, Le/a/i4/e;->j(ILandroid/app/Notification;Ljava/lang/String;)V

    .line 47
    iget-object v2, v2, Le/a/l/p2/a0;->b:Le/a/b0/o/a;

    invoke-interface {v2, v4}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    .line 48
    :cond_d
    :goto_5
    iget-object v2, v0, Le/a/e/x1;->g:Le/a/e/w1;

    .line 49
    iget-object v2, v2, Le/a/e/w1;->f:Ls1/w/f;

    .line 50
    new-instance v3, Le/a/e/x1$c;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Le/a/e/x1$c;-><init>(Le/a/e/x1;Ls1/w/d;)V

    iput v5, v0, Le/a/e/x1;->f:I

    invoke-static {v2, v3, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_e

    return-object v1

    :cond_e
    :goto_6
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 51
    iget-object v3, v0, Le/a/e/x1;->g:Le/a/e/w1;

    .line 52
    iget-object v3, v3, Le/a/e/w1;->f:Ls1/w/f;

    .line 53
    new-instance v5, Le/a/e/x1$a;

    invoke-direct {v5, v0, v4}, Le/a/e/x1$a;-><init>(Le/a/e/x1;Ls1/w/d;)V

    iput v2, v0, Le/a/e/x1;->e:I

    const/4 v4, 0x3

    iput v4, v0, Le/a/e/x1;->f:I

    invoke-static {v3, v5, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_f

    return-object v1

    :cond_f
    move v1, v2

    :goto_7
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 54
    iget-object v3, v0, Le/a/e/x1;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/e/w1$a;

    if-eqz v3, :cond_10

    invoke-interface {v3, v2, v1}, Le/a/e/w1$a;->J3(II)V

    .line 55
    :cond_10
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
