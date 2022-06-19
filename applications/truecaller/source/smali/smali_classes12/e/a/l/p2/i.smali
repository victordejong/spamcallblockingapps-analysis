.class public final Le/a/l/p2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/i4/e;

.field public final c:Le/a/l/p2/h;

.field public final d:Le/a/l/a2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/i4/e;Le/a/l/p2/h;Le/a/l/a2;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumScreenNavigator"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/i;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/l/p2/i;->b:Le/a/i4/e;

    iput-object p3, p0, Le/a/l/p2/i;->c:Le/a/l/p2/h;

    iput-object p4, p0, Le/a/l/p2/i;->d:Le/a/l/a2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/p2/i;->a:Landroid/content/Context;

    invoke-static {v0}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Le/a/z3/e;->x()Le/a/z3/d;

    move-result-object v0

    .line 3
    iput-object p1, v0, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Le/f/a/h;->N:Z

    .line 5
    sget-object p1, Le/f/a/n/o/k;->b:Le/f/a/n/o/k;

    invoke-static {p1}, Le/f/a/r/h;->J(Le/f/a/n/o/k;)Le/f/a/r/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/z3/d;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object p1

    .line 6
    check-cast p1, Le/a/z3/d;

    .line 7
    invoke-virtual {p1}, Le/a/z3/d;->d0()Le/a/z3/d;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Le/f/a/h;->X()Le/f/a/r/c;

    move-result-object p1

    .line 9
    check-cast p1, Le/f/a/r/f;

    invoke-virtual {p1}, Le/f/a/r/f;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "GlideApp.with(context)\n \u2026 .submit()\n        .get()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public final b(Z)Z
    .locals 13

    .line 1
    iget-object v0, p0, Le/a/l/p2/i;->c:Le/a/l/p2/h;

    .line 2
    iget-object v1, v0, Le/a/l/p2/h;->i:Le/a/l/p2/v0;

    invoke-interface {v1}, Le/a/l/p2/v0;->H()Z

    move-result v1

    const-string v2, "friendUpgradedToPremiumLastShown"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    iget-object v1, v0, Le/a/l/p2/h;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Le/a/l/p2/h;->f:Le/a/s4/a;

    const-string v5, "featureFriendsUpgraded_24757"

    invoke-interface {v1, v5, v4}, Le/a/s4/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lw3/b/a/b;

    iget-object v5, v0, Le/a/l/p2/h;->e:Le/a/b0/o/a;

    const-wide/16 v6, 0x0

    invoke-interface {v5, v2, v6, v7}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Lw3/b/a/b;-><init>(J)V

    .line 5
    iget-object v0, v0, Le/a/l/p2/h;->f:Le/a/s4/a;

    const/4 v5, 0x2

    const-string v6, "friendUpgradedCoolOffWeeks_24757"

    invoke-interface {v0, v6, v5}, Le/a/s4/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lw3/b/a/b;->K(I)Lw3/b/a/b;

    move-result-object v0

    const-string v1, "DateTime(coreSettings.ge\u2026ATION_COOL_OFF_WEEKS, 2))"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lw3/b/a/e0/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-nez v0, :cond_1

    if-nez p1, :cond_1

    return v4

    .line 6
    :cond_1
    iget-object p1, p0, Le/a/l/p2/i;->c:Le/a/l/p2/h;

    .line 7
    iget-object v0, p1, Le/a/l/p2/h;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/Contact;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->u0()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object p1, p1, Le/a/l/p2/h;->h:Le/a/p5/c0;

    const v5, 0x7f1204ab

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-interface {p1, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 9
    :cond_4
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->r0()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object p1, p1, Le/a/l/p2/h;->h:Le/a/p5/c0;

    const v5, 0x7f1204a9

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-interface {p1, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    move-object p1, v1

    .line 10
    :goto_3
    iget-object v0, p0, Le/a/l/p2/i;->c:Le/a/l/p2/h;

    .line 11
    iget-object v5, v0, Le/a/l/p2/h;->d:Ls1/g;

    invoke-interface {v5}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/data/entity/Contact;

    if-eqz v5, :cond_7

    .line 12
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->u0()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v0, v0, Le/a/l/p2/h;->h:Le/a/p5/c0;

    const v5, 0x7f1204aa

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v0, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 13
    :cond_6
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->r0()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v0, v0, Le/a/l/p2/h;->h:Le/a/p5/c0;

    const v5, 0x7f1204a8

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v0, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    move-object v0, v1

    .line 14
    :goto_4
    iget-object v5, p0, Le/a/l/p2/i;->c:Le/a/l/p2/h;

    .line 15
    iget-object v5, v5, Le/a/l/p2/h;->d:Ls1/g;

    invoke-interface {v5}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/data/entity/Contact;

    if-eqz v5, :cond_9

    .line 16
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->u0()Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v5, Lcom/truecaller/premium/PremiumLaunchContext;->FRIEND_UPGRADED_TO_PREMIUM_NOTIFICATION:Lcom/truecaller/premium/PremiumLaunchContext;

    goto :goto_5

    .line 17
    :cond_8
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->r0()Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/truecaller/premium/PremiumLaunchContext;->FRIEND_UPGRADED_TO_GOLD_NOTIFICATION:Lcom/truecaller/premium/PremiumLaunchContext;

    goto :goto_5

    :cond_9
    move-object v5, v1

    :goto_5
    if-eqz p1, :cond_e

    if-eqz v0, :cond_e

    if-nez v5, :cond_a

    goto :goto_7

    .line 18
    :cond_a
    iget-object v6, p0, Le/a/l/p2/i;->c:Le/a/l/p2/h;

    .line 19
    iget-object v6, v6, Le/a/l/p2/h;->d:Ls1/g;

    invoke-interface {v6}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/truecaller/data/entity/Contact;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object v1

    :cond_b
    if-eqz v1, :cond_c

    .line 20
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 21
    iget-object v1, p0, Le/a/l/p2/i;->a:Landroid/content/Context;

    invoke-static {v1, v6, v7, v4}, Le/a/o5/q;->f(Landroid/content/Context;JZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_c

    goto :goto_6

    .line 22
    :cond_c
    iget-object v1, p0, Le/a/l/p2/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0800d3

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_6
    const-string v4, "(manager.getContactPhone\u2026R.drawable.avatar_empty))"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Le/a/l/p2/i;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 23
    invoke-virtual {p0, v5, p1, v0, v1}, Le/a/l/p2/i;->c(Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 24
    iget-object p1, p0, Le/a/l/p2/i;->c:Le/a/l/p2/h;

    .line 25
    iget-object v0, p1, Le/a/l/p2/h;->c:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 26
    iget-object v1, p1, Le/a/l/p2/h;->e:Le/a/b0/o/a;

    iget-object v4, p1, Le/a/l/p2/h;->b:Ljava/util/List;

    invoke-static {v4}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p1, Le/a/l/p2/h;->a:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e

    invoke-static/range {v5 .. v12}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "premiumAlreadyNotified"

    invoke-interface {v1, v4, v0}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p1, p1, Le/a/l/p2/h;->e:Le/a/b0/o/a;

    .line 28
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    const-string v1, "DateTime.now()"

    .line 29
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 31
    invoke-interface {p1, v2, v0, v1}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    :cond_d
    return v3

    :cond_e
    :goto_7
    return v4
.end method

.method public final c(Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/l/p2/i;->d:Le/a/l/a2;

    .line 2
    iget-object v1, p0, Le/a/l/p2/i;->a:Landroid/content/Context;

    .line 3
    sget-object v2, Lcom/truecaller/premium/PremiumLaunchContext;->FRIEND_UPGRADED_TO_GOLD_NOTIFICATION:Lcom/truecaller/premium/PremiumLaunchContext;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne p1, v2, :cond_0

    move v2, v7

    goto :goto_0

    :cond_0
    move v2, v8

    :goto_0
    if-eqz v2, :cond_1

    const-string v2, "gold"

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move-object v3, v2

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    .line 4
    invoke-static/range {v0 .. v6}, Le/a/c/p/a;->J(Le/a/l/a2;Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;ILjava/lang/Object;)Landroid/content/Intent;

    move-result-object p1

    .line 5
    iget-object v0, p0, Le/a/l/p2/i;->a:Landroid/content/Context;

    const/high16 v1, 0xc000000

    invoke-static {v0, v8, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 6
    new-instance v0, Ln3/k/a/q;

    iget-object v1, p0, Le/a/l/p2/i;->a:Landroid/content/Context;

    iget-object v2, p0, Le/a/l/p2/i;->b:Le/a/i4/e;

    invoke-interface {v2}, Le/a/i4/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p2}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 8
    invoke-virtual {v0, p3}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 9
    new-instance p2, Ln3/k/a/o;

    invoke-direct {p2}, Ln3/k/a/o;-><init>()V

    invoke-virtual {p2, p3}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-virtual {v0, p2}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 10
    invoke-virtual {v0, p4}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    .line 11
    iget-object p2, p0, Le/a/l/p2/i;->a:Landroid/content/Context;

    const p3, 0x7f06068b

    .line 12
    sget-object p4, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 13
    invoke-static {p2, p3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p2

    .line 14
    iput p2, v0, Ln3/k/a/q;->D:I

    const/4 p2, -0x1

    .line 15
    invoke-virtual {v0, p2}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    const p2, 0x7f0816fb

    .line 16
    iget-object p3, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput p2, p3, Landroid/app/Notification;->icon:I

    .line 17
    iput-object p1, v0, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/16 p1, 0x10

    .line 18
    invoke-virtual {v0, p1, v7}, Ln3/k/a/q;->p(IZ)V

    const-string p1, "NotificationCompat.Build\u2026     .setAutoCancel(true)"

    .line 19
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Le/a/l/p2/i;->b:Le/a/i4/e;

    const p2, 0x7f0a0d65

    .line 21
    invoke-virtual {v0}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object p3

    const-string p4, "builder.build()"

    invoke-static {p3, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "notificationPremiumFriendUpgraded"

    .line 22
    invoke-interface {p1, p2, p3, p4}, Le/a/i4/e;->j(ILandroid/app/Notification;Ljava/lang/String;)V

    return-void
.end method
