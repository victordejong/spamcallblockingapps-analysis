.class public Le/a/i4/x/d;
.super Le/a/i4/n;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/o5/f0;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/content/BroadcastReceiver;

.field public final e:Landroid/content/SharedPreferences;

.field public final f:Le/a/b0/q/y;

.field public final g:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/truecaller/notifications/enhancing/SourcedContact;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Le/a/i4/e;

.field public final i:Le/a/q5/d;

.field public final j:Le/a/q5/k/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/b0/q/y;Le/a/o5/f0;Le/a/i4/e;Le/a/q5/d;Le/a/q5/k/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Le/a/i4/n;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Le/a/i4/x/d;->g:Ljava/util/LinkedHashSet;

    .line 3
    iput-object p1, p0, Le/a/i4/x/d;->a:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Le/a/i4/x/d;->b:Le/a/o5/f0;

    .line 5
    iput-object p4, p0, Le/a/i4/x/d;->h:Le/a/i4/e;

    .line 6
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Le/a/i4/x/d;->c:Landroid/os/Handler;

    .line 7
    iput-object p2, p0, Le/a/i4/x/d;->f:Le/a/b0/q/y;

    const-string p2, "enhancedNumbers"

    const/4 p3, 0x0

    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Le/a/i4/x/d;->e:Landroid/content/SharedPreferences;

    .line 9
    iput-object p5, p0, Le/a/i4/x/d;->i:Le/a/q5/d;

    .line 10
    iput-object p6, p0, Le/a/i4/x/d;->j:Le/a/q5/k/a;

    .line 11
    new-instance p2, Le/a/i4/x/d$a;

    invoke-direct {p2, p0}, Le/a/i4/x/d$a;-><init>(Le/a/i4/x/d;)V

    iput-object p2, p0, Le/a/i4/x/d;->d:Landroid/content/BroadcastReceiver;

    .line 12
    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "com.truecaller.ACTION_ENHANCED_NOTIFICATION_DELETED"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p4, "com.truecaller.permission.ENHANCED_NOTIFICATION"

    const/4 p5, 0x0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i4/x/d;->a:Landroid/content/Context;

    iget-object v1, p0, Le/a/i4/x/d;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public b(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/i4/x/d;->i:Le/a/q5/d;

    invoke-interface {v0}, Le/a/q5/d;->u()Le/a/q5/c;

    move-result-object v0

    invoke-virtual {v0}, Le/a/q5/c;->a()Z

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/i4/x/d;->b:Le/a/o5/f0;

    invoke-interface {v1}, Le/a/o5/f0;->a()Z

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/truecaller/notifications/NotificationHandlerService;->k:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Le/a/i4/x/d;->h(Landroid/service/notification/StatusBarNotification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Error handling notification"

    .line 6
    invoke-static {p1, v0}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final e()V
    .locals 11

    .line 1
    iget-object v0, p0, Le/a/i4/x/d;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/i4/x/d;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    const v1, 0x7f0a0c5d

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/i4/x/d;->h:Le/a/i4/e;

    invoke-interface {v0, v1}, Le/a/i4/e;->f(I)V

    goto/16 :goto_3

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/i4/x/d;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 5
    iget-object v2, p0, Le/a/i4/x/d;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/notifications/enhancing/SourcedContact;

    .line 6
    iget-object v5, v5, Lcom/truecaller/notifications/enhancing/SourcedContact;->c:Ljava/lang/Long;

    add-int/lit8 v6, v4, 0x1

    if-nez v5, :cond_1

    const-wide/16 v7, 0x0

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_1
    aput-wide v7, v0, v4

    move v4, v6

    goto :goto_0

    .line 8
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.truecaller.ACTION_ENHANCED_NOTIFICATION_DELETED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "ids"

    .line 9
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 10
    iget-object v0, p0, Le/a/i4/x/d;->a:Landroid/content/Context;

    iget-object v4, p0, Le/a/i4/x/d;->g:Ljava/util/LinkedHashSet;

    invoke-static {v0, v4}, Lcom/truecaller/notifications/enhancing/SourcedContactListActivity;->pa(Landroid/content/Context;Ljava/util/LinkedHashSet;)Landroid/content/Intent;

    move-result-object v0

    .line 11
    iget-object v4, p0, Le/a/i4/x/d;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 12
    iget-object v5, p0, Le/a/i4/x/d;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, p0, Le/a/i4/x/d;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v8}, Ljava/util/LinkedHashSet;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const v8, 0x7f10000e

    invoke-virtual {v4, v8, v5, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 13
    iget-object v7, p0, Le/a/i4/x/d;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v7}, Ljava/util/LinkedHashSet;->size()I

    move-result v7

    if-ne v7, v6, :cond_3

    .line 14
    iget-object v7, p0, Le/a/i4/x/d;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v7}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/truecaller/notifications/enhancing/SourcedContact;

    .line 15
    iget-object v8, v7, Lcom/truecaller/notifications/enhancing/SourcedContact;->e:Ljava/lang/String;

    const v9, 0x7f120271

    new-array v10, v6, [Ljava/lang/Object;

    .line 16
    iget-object v7, v7, Lcom/truecaller/notifications/enhancing/SourcedContact;->b:Ljava/lang/String;

    aput-object v7, v10, v3

    .line 17
    invoke-virtual {v4, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 18
    :cond_3
    iget-object v7, p0, Le/a/i4/x/d;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v7}, Ljava/util/LinkedHashSet;->size()I

    move-result v7

    new-array v9, v6, [Ljava/lang/Object;

    iget-object v10, p0, Le/a/i4/x/d;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v10}, Ljava/util/LinkedHashSet;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v4, v8, v7, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const v3, 0x7f120272

    .line 19
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 20
    :goto_2
    new-instance v4, Ln3/k/a/q;

    iget-object v7, p0, Le/a/i4/x/d;->a:Landroid/content/Context;

    iget-object v9, p0, Le/a/i4/x/d;->h:Le/a/i4/e;

    invoke-interface {v9}, Le/a/i4/e;->d()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v7, v9}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v4, v5}, Ln3/k/a/q;->z(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 22
    invoke-virtual {v4, v8}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 23
    invoke-virtual {v4, v3}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 24
    iget-object v3, p0, Le/a/i4/x/d;->a:Landroid/content/Context;

    const v5, 0x7f0a0e3e

    const/high16 v7, 0x14000000

    .line 25
    invoke-static {v3, v5, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 26
    iget-object v3, v4, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const v2, 0x7f0816fb

    .line 27
    iput v2, v3, Landroid/app/Notification;->icon:I

    const/16 v2, 0x10

    .line 28
    invoke-virtual {v4, v2, v6}, Ln3/k/a/q;->p(IZ)V

    .line 29
    iget-object v2, p0, Le/a/i4/x/d;->a:Landroid/content/Context;

    const v3, 0x7f0a0e3f

    .line 30
    invoke-static {v2, v3, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 31
    iput-object v0, v4, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 32
    iget-object v0, p0, Le/a/i4/x/d;->a:Landroid/content/Context;

    const v2, 0x7f060024

    .line 33
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 34
    invoke-static {v0, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 35
    iput v0, v4, Ln3/k/a/q;->D:I

    .line 36
    iget-object v0, p0, Le/a/i4/x/d;->h:Le/a/i4/e;

    invoke-virtual {v4}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v2

    const-string v3, "enhanceNotification"

    invoke-interface {v0, v1, v2, v3}, Le/a/i4/e;->j(ILandroid/app/Notification;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Le/a/i4/x/d;->i:Le/a/q5/d;

    invoke-interface {v0}, Le/a/q5/d;->m()I

    move-result v1

    add-int/2addr v1, v6

    invoke-interface {v0, v1}, Le/a/q5/d;->q(I)V

    :goto_3
    return-void
.end method

.method public final f(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/i4/x/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 3
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, ""

    .line 4
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final g(Landroid/service/notification/StatusBarNotification;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            "Ljava/util/Collection<",
            "Lcom/truecaller/notifications/enhancing/SourcedContact;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/i4/x/d;->f:Le/a/b0/q/y;

    invoke-virtual {v0, p3}, Le/a/b0/q/y;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    const-string v0, ", "

    .line 3
    invoke-static {v0, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1}, Le/a/i4/x/d;->f(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 6
    iget-object v1, p0, Le/a/i4/x/d;->e:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v7, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    sub-long/2addr v8, v10

    cmp-long v1, v8, v4

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v3

    .line 8
    :goto_2
    iget-object v4, p0, Le/a/i4/x/d;->a:Landroid/content/Context;

    invoke-static {v4, v7}, Le/a/l4/k;->z(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v1, :cond_1

    if-nez v4, :cond_1

    .line 9
    iget-object v1, p0, Le/a/i4/x/d;->a:Landroid/content/Context;

    invoke-virtual {p0, v1, v7}, Le/a/i4/n;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 11
    iget-object v4, p0, Le/a/i4/x/d;->j:Le/a/q5/k/a;

    invoke-interface {v4, v0}, Le/a/q5/k/a;->m(Ljava/lang/String;)V

    .line 12
    new-instance v10, Lcom/truecaller/notifications/enhancing/SourcedContact;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-static {v1, v2}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v1, v3}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object v11

    move-object v1, v10

    move-object v2, v4

    move-object v3, v0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    move-object v8, v9

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Lcom/truecaller/notifications/enhancing/SourcedContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 14
    invoke-interface {p2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    .line 16
    :cond_5
    iget-object v1, p0, Le/a/i4/x/d;->j:Le/a/q5/k/a;

    invoke-interface {v1, v0}, Le/a/q5/k/a;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final h(Landroid/service/notification/StatusBarNotification;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3
    iget-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    iget-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Le/a/i4/x/d;->g(Landroid/service/notification/StatusBarNotification;Ljava/util/Collection;Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Le/a/i4/x/d;->g(Landroid/service/notification/StatusBarNotification;Ljava/util/Collection;Ljava/lang/String;)V

    .line 6
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.people"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 8
    invoke-virtual {p0, p1, v1, v4}, Le/a/i4/x/d;->g(Landroid/service/notification/StatusBarNotification;Ljava/util/Collection;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Le/a/i4/x/d;->j:Le/a/q5/k/a;

    invoke-virtual {p0, p1}, Le/a/i4/x/d;->f(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/q5/k/a;->f(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Le/a/i4/x/d;->c:Landroid/os/Handler;

    new-instance v0, Le/a/i4/x/a;

    invoke-direct {v0, p0, v1}, Le/a/i4/x/a;-><init>(Le/a/i4/x/d;Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method
