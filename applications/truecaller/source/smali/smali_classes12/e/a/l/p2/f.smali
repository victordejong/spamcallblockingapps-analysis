.class public final Le/a/l/p2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/z4/d;

.field public final b:Landroid/content/Context;

.field public final c:Le/a/b0/o/a;

.field public final d:Le/a/i4/e;

.field public final e:Le/a/l/a2;

.field public final f:Le/a/p5/c;

.field public final g:Le/a/l/a/y;

.field public final h:Le/a/l/p2/v0;


# direct methods
.method public constructor <init>(Le/a/z4/d;Landroid/content/Context;Le/a/b0/o/a;Le/a/i4/e;Le/a/l/a2;Le/a/p5/c;Le/a/l/a/y;Le/a/l/p2/v0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "generalSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumScreenNavigator"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumPurchaseSupportedCheck"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/f;->a:Le/a/z4/d;

    iput-object p2, p0, Le/a/l/p2/f;->b:Landroid/content/Context;

    iput-object p3, p0, Le/a/l/p2/f;->c:Le/a/b0/o/a;

    iput-object p4, p0, Le/a/l/p2/f;->d:Le/a/i4/e;

    iput-object p5, p0, Le/a/l/p2/f;->e:Le/a/l/a2;

    iput-object p6, p0, Le/a/l/p2/f;->f:Le/a/p5/c;

    iput-object p7, p0, Le/a/l/p2/f;->g:Le/a/l/a/y;

    iput-object p8, p0, Le/a/l/p2/f;->h:Le/a/l/p2/v0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/p2/f;->a:Le/a/z4/d;

    const-string v1, "premiumFreePromoReceived"

    invoke-interface {v0, v1}, Le/a/z4/d;->remove(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/l/p2/f;->a:Le/a/z4/d;

    const-string v1, "premiumFreePromoEnded"

    invoke-interface {v0, v1}, Le/a/z4/d;->remove(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/l/p2/f;->a:Le/a/z4/d;

    const-string v1, "premiumFreePromoNotificationCount"

    invoke-interface {v0, v1}, Le/a/z4/d;->remove(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/a/l/p2/f;->a:Le/a/z4/d;

    const-string v1, "premiumFreePromoNotificationTime"

    invoke-interface {v0, v1}, Le/a/z4/d;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 14

    .line 1
    iget-object v0, p0, Le/a/l/p2/f;->a:Le/a/z4/d;

    const-string v1, "premiumFreePromoEnded"

    invoke-interface {v0, v1}, Le/a/z4/d;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/a/l/p2/f;->h:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Le/a/l/p2/f;->g:Le/a/l/a/y;

    invoke-virtual {v0}, Le/a/l/a/y;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Le/a/l/p2/f;->c:Le/a/b0/o/a;

    const-string v1, "premiumHadPremiumBlockingFeatures"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/l/p2/f;->a:Le/a/z4/d;

    const-string v1, "premiumFreePromoNotificationCount"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 4
    iget-object v0, p0, Le/a/l/p2/f;->a:Le/a/z4/d;

    const-string v6, "premiumFreePromoNotificationTime"

    invoke-interface {v0, v6, v2, v3}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-wide/16 v9, 0x3

    cmp-long v0, v4, v9

    if-ltz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Le/a/l/p2/f;->a()V

    goto/16 :goto_0

    :cond_1
    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0, v7, v8}, Lw3/b/a/b;-><init>(J)V

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lw3/b/a/b;->D(I)Lw3/b/a/b;

    move-result-object v0

    const-string v2, "DateTime(timestamp).plusDays(7)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lw3/b/a/e0/c;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-wide/16 v2, 0x1

    add-long/2addr v4, v2

    .line 7
    iget-object v0, p0, Le/a/l/p2/f;->a:Le/a/z4/d;

    invoke-interface {v0, v1, v4, v5}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    .line 8
    iget-object v0, p0, Le/a/l/p2/f;->a:Le/a/z4/d;

    iget-object v1, p0, Le/a/l/p2/f;->f:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v1

    invoke-interface {v0, v6, v1, v2}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    .line 9
    iget-object v7, p0, Le/a/l/p2/f;->e:Le/a/l/a2;

    iget-object v8, p0, Le/a/l/p2/f;->b:Landroid/content/Context;

    sget-object v9, Lcom/truecaller/premium/PremiumLaunchContext;->PREMIUM_FREE_PROMO:Lcom/truecaller/premium/PremiumLaunchContext;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Le/a/c/p/a;->J(Le/a/l/a2;Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;ILjava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 10
    iget-object v1, p0, Le/a/l/p2/f;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 11
    iget-object v1, p0, Le/a/l/p2/f;->b:Landroid/content/Context;

    const v2, 0x7f1204a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026emiumFreePromoNudgeTitle)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Le/a/l/p2/f;->b:Landroid/content/Context;

    const v3, 0x7f1204a4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getString(R.stri\u2026iumFreePromoNudgeMessage)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v3, Ln3/k/a/q;

    iget-object v4, p0, Le/a/l/p2/f;->b:Landroid/content/Context;

    iget-object v5, p0, Le/a/l/p2/f;->d:Le/a/i4/e;

    invoke-interface {v5}, Le/a/i4/e;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, v1}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 15
    invoke-virtual {v3, v2}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 16
    new-instance v1, Ln3/k/a/o;

    invoke-direct {v1}, Ln3/k/a/o;-><init>()V

    invoke-virtual {v1, v2}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-virtual {v3, v1}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 17
    iget-object v1, p0, Le/a/l/p2/f;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804ba

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v3, v1}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    .line 18
    iget-object v1, p0, Le/a/l/p2/f;->b:Landroid/content/Context;

    .line 19
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    const v2, 0x7f06068b

    .line 20
    invoke-static {v1, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 21
    iput v1, v3, Ln3/k/a/q;->D:I

    const/4 v1, 0x4

    .line 22
    invoke-virtual {v3, v1}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    const v1, 0x7f0816fb

    .line 23
    iget-object v2, v3, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v1, v2, Landroid/app/Notification;->icon:I

    .line 24
    iput-object v0, v3, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 25
    invoke-virtual {v3, v1, v0}, Ln3/k/a/q;->p(IZ)V

    const-string v0, "NotificationCompat.Build\u2026     .setAutoCancel(true)"

    .line 26
    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Le/a/l/p2/f;->d:Le/a/i4/e;

    const v1, 0x7f0a0d64

    .line 28
    invoke-virtual {v3}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v2

    const-string v3, "builder.build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "notificationPremiumFreePromo"

    .line 29
    invoke-interface {v0, v1, v2, v3}, Le/a/i4/e;->j(ILandroid/app/Notification;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
