.class public final Le/a/l/o2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/z4/d;

.field public final c:Le/a/p5/c;

.field public final d:Le/a/l/p2/v0;

.field public final e:Le/a/l/a2;

.field public final f:Le/a/i4/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/z4/d;Le/a/p5/c;Le/a/l/p2/v0;Le/a/l/a2;Le/a/i4/e;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumScreenNavigator"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/o2/c;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/l/o2/c;->b:Le/a/z4/d;

    iput-object p3, p0, Le/a/l/o2/c;->c:Le/a/p5/c;

    iput-object p4, p0, Le/a/l/o2/c;->d:Le/a/l/p2/v0;

    iput-object p5, p0, Le/a/l/o2/c;->e:Le/a/l/a2;

    iput-object p6, p0, Le/a/l/o2/c;->f:Le/a/i4/e;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/o2/c;->b:Le/a/z4/d;

    const-string v1, "premiumLostConsumableType"

    invoke-interface {v0, v1}, Le/a/z4/d;->remove(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/l/o2/c;->b:Le/a/z4/d;

    const-string v1, "premiumLostConsumableNotificationCount"

    invoke-interface {v0, v1}, Le/a/z4/d;->remove(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/l/o2/c;->b:Le/a/z4/d;

    const-string v1, "premiumLostConsumableNotificationTimestamp"

    invoke-interface {v0, v1}, Le/a/z4/d;->remove(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/a/l/o2/c;->b:Le/a/z4/d;

    const-string v1, "showLostPremiumConsumableNotification"

    invoke-interface {v0, v1}, Le/a/z4/d;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l/o2/c;->a:Landroid/content/Context;

    .line 2
    iget-object v1, p0, Le/a/l/o2/c;->b:Le/a/z4/d;

    const-string v2, "premiumLostConsumableType"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Le/a/z4/d;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x308060

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "gold"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    const v1, 0x7f12046b

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(\n     \u2026onPremium\n        }\n    )"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l/o2/c;->a:Landroid/content/Context;

    .line 2
    iget-object v1, p0, Le/a/l/o2/c;->b:Le/a/z4/d;

    const-string v2, "premiumLostConsumableType"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Le/a/z4/d;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x308060

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "gold"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f12046c

    goto :goto_1

    :cond_1
    :goto_0
    const v1, 0x7f12046d

    .line 4
    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(\n     \u2026lePremium\n        }\n    )"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/l/o2/c;->b:Le/a/z4/d;

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    const-string v1, "premiumLostConsumableNotificationCount"

    invoke-interface {v0, v1, p1, p2}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final e()V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/l/o2/c;->b:Le/a/z4/d;

    iget-object v1, p0, Le/a/l/o2/c;->c:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v1

    const-string v3, "premiumLostConsumableNotificationTimestamp"

    invoke-interface {v0, v3, v1, v2}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    .line 2
    iget-object v0, p0, Le/a/l/o2/c;->b:Le/a/z4/d;

    const-string v1, "showLostPremiumConsumableNotification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/z4/d;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    iget-object v3, p0, Le/a/l/o2/c;->e:Le/a/l/a2;

    .line 4
    iget-object v4, p0, Le/a/l/o2/c;->a:Landroid/content/Context;

    .line 5
    sget-object v5, Lcom/truecaller/premium/PremiumLaunchContext;->CONSUMABLE_LOST:Lcom/truecaller/premium/PremiumLaunchContext;

    .line 6
    iget-object v0, p0, Le/a/l/o2/c;->b:Le/a/z4/d;

    const-string v1, "premiumLostConsumableType"

    invoke-interface {v0, v1}, Le/a/z4/d;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 7
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v6, 0x308060

    const-string v7, "gold"

    if-eq v1, v6, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v6, v7

    goto :goto_2

    :cond_2
    :goto_1
    const-string v0, "premium"

    move-object v6, v0

    :goto_2
    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    .line 9
    invoke-static/range {v3 .. v9}, Le/a/c/p/a;->J(Le/a/l/a2;Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;ILjava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 10
    iget-object v1, p0, Le/a/l/o2/c;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0xc000000

    invoke-static {v1, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 11
    new-instance v1, Ln3/k/a/q;

    iget-object v3, p0, Le/a/l/o2/c;->a:Landroid/content/Context;

    iget-object v4, p0, Le/a/l/o2/c;->f:Le/a/i4/e;

    invoke-interface {v4}, Le/a/i4/e;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Le/a/l/o2/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 13
    invoke-virtual {p0}, Le/a/l/o2/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 14
    new-instance v3, Ln3/k/a/o;

    invoke-direct {v3}, Ln3/k/a/o;-><init>()V

    invoke-virtual {p0}, Le/a/l/o2/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-virtual {v1, v3}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 15
    iget-object v3, p0, Le/a/l/o2/c;->a:Landroid/content/Context;

    const v4, 0x7f0805bd

    .line 16
    sget-object v5, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 17
    invoke-static {v3, v4}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 18
    invoke-static {v3}, Le/a/b0/q/o;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    .line 19
    iget-object v3, p0, Le/a/l/o2/c;->a:Landroid/content/Context;

    const v4, 0x7f06068b

    .line 20
    invoke-static {v3, v4}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 21
    iput v3, v1, Ln3/k/a/q;->D:I

    const/4 v3, -0x1

    .line 22
    invoke-virtual {v1, v3}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    const v3, 0x7f0816fb

    .line 23
    iget-object v4, v1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v3, v4, Landroid/app/Notification;->icon:I

    .line 24
    iput-object v0, v1, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/16 v0, 0x10

    .line 25
    invoke-virtual {v1, v0, v2}, Ln3/k/a/q;->p(IZ)V

    const-string v0, "NotificationCompat.Build\u2026     .setAutoCancel(true)"

    .line 26
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Le/a/l/o2/c;->f:Le/a/i4/e;

    const v2, 0x7f0a0d63

    .line 28
    invoke-virtual {v1}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v1

    const-string v3, "builder.build()"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "notificationPremiumCOnsumableLost"

    .line 29
    invoke-interface {v0, v2, v1, v3}, Le/a/i4/e;->j(ILandroid/app/Notification;Ljava/lang/String;)V

    return-void
.end method
