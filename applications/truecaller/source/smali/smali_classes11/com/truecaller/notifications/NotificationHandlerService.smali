.class public Lcom/truecaller/notifications/NotificationHandlerService;
.super Landroid/service/notification/NotificationListenerService;
.source "SourceFile"


# static fields
.field public static final g:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static j:I

.field public static final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/a/i4/n;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/os/Looper;

.field public c:Landroid/os/Handler;

.field public d:Lcom/truecaller/settings/CallingSettings;

.field public e:Le/a/o5/f0;

.field public f:Ln3/k/a/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "com.android.server.telecom"

    const-string v1, "com.android.phone"

    const-string v2, "com.google.android.dialer"

    const-string v3, "com.android.dialer"

    const-string v4, "com.android.contacts"

    const-string v5, "com.samsung.android.contacts"

    const-string v6, "com.samsung.android.dialer"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/truecaller/notifications/NotificationHandlerService;->g:Ljava/util/Collection;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/16 v2, 0x1771

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2711

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/truecaller/notifications/NotificationHandlerService;->h:Ljava/util/Collection;

    const-string v0, "missedcall"

    const-string v1, "missed_call"

    .line 3
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/truecaller/notifications/NotificationHandlerService;->i:Ljava/util/Collection;

    .line 4
    sput v3, Lcom/truecaller/notifications/NotificationHandlerService;->j:I

    .line 5
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "com.whatsapp"

    const-string v2, "com.viber.voip"

    const-string v3, "jp.naver.line.android"

    const-string v4, "org.telegram.messenger"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/truecaller/notifications/NotificationHandlerService;->k:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 2
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getCurrentInterruptionFilter()I

    move-result v0

    sput v0, Lcom/truecaller/notifications/NotificationHandlerService;->j:I

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    .line 2
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/notifications/NotificationHandlerService;->d:Lcom/truecaller/settings/CallingSettings;

    .line 4
    invoke-interface {v0}, Le/a/j2;->z3()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/notifications/NotificationHandlerService;->a:Ljava/util/Set;

    .line 5
    invoke-interface {v0}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/notifications/NotificationHandlerService;->e:Le/a/o5/f0;

    .line 6
    invoke-interface {v0}, Le/a/j2;->G5()Ln3/k/a/x;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/notifications/NotificationHandlerService;->f:Ln3/k/a/x;

    .line 7
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NotificationHandlerService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/notifications/NotificationHandlerService;->b:Landroid/os/Looper;

    .line 10
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/truecaller/notifications/NotificationHandlerService;->b:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/truecaller/notifications/NotificationHandlerService;->c:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/truecaller/notifications/NotificationHandlerService;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i4/n;

    .line 4
    invoke-virtual {v1}, Le/a/i4/n;->a()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/truecaller/notifications/NotificationHandlerService;->b:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public onInterruptionFilterChanged(I)V
    .locals 2

    .line 1
    sput p1, Lcom/truecaller/notifications/NotificationHandlerService;->j:I

    .line 2
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Le/a/j2;->b1()Le/a/r2/f;

    move-result-object p1

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l4/h;

    sget-object v0, Lcom/truecaller/presence/AvailabilityTrigger;->USER_ACTION:Lcom/truecaller/presence/AvailabilityTrigger;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Le/a/l4/h;->d(Lcom/truecaller/presence/AvailabilityTrigger;Z)V

    return-void
.end method

.method public onListenerConnected()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/truecaller/notifications/NotificationHandlerService;->c:Landroid/os/Handler;

    new-instance v1, Le/a/i4/b;

    invoke-direct {v1, p0}, Le/a/i4/b;-><init>(Lcom/truecaller/notifications/NotificationHandlerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/truecaller/notifications/NotificationHandlerService;->e:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->Q0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/truecaller/notifications/NotificationHandlerService;->e:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    goto/16 :goto_5

    .line 4
    :cond_2
    sget-object v0, Lcom/truecaller/notifications/NotificationHandlerService;->g:Ljava/util/Collection;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_5

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/truecaller/notifications/NotificationHandlerService;->d:Lcom/truecaller/settings/CallingSettings;

    const-string v2, "showMissedCallsNotifications"

    invoke-interface {v0, v2}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_5

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/truecaller/notifications/NotificationHandlerService;->f:Ln3/k/a/x;

    invoke-virtual {v0}, Ln3/k/a/x;->a()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-nez v0, :cond_e

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-gt v0, v3, :cond_5

    goto :goto_1

    .line 8
    :cond_5
    :try_start_0
    iget-object v4, p0, Lcom/truecaller/notifications/NotificationHandlerService;->f:Ln3/k/a/x;

    const-string v5, "missed_calls"

    .line 9
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v0, v3, :cond_6

    .line 10
    invoke-virtual {v4, v5}, Ln3/k/a/x;->f(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 11
    new-instance v3, Ln3/k/a/k;

    invoke-direct {v3, v0}, Ln3/k/a/k;-><init>(Landroid/app/NotificationChannel;)V

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    .line 12
    :goto_0
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget v0, v3, Ln3/k/a/k;->a:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_7

    move v0, v2

    goto :goto_2

    :catch_0
    move-exception v0

    .line 14
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    move v0, v1

    :goto_2
    if-eqz v0, :cond_8

    goto :goto_5

    .line 15
    :cond_8
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "voicemail"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_3

    :cond_9
    move v0, v1

    :goto_3
    if-eqz v0, :cond_a

    goto :goto_5

    .line 16
    :cond_a
    sget-object v0, Lcom/truecaller/notifications/NotificationHandlerService;->h:Ljava/util/Collection;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 17
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 18
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 19
    sget-object v4, Lcom/truecaller/notifications/NotificationHandlerService;->i:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 20
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v3, v2

    goto :goto_4

    :cond_c
    move v3, v1

    :goto_4
    if-nez v0, :cond_d

    if-eqz v3, :cond_e

    .line 21
    :cond_d
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/notification/NotificationListenerService;->cancelNotification(Ljava/lang/String;)V

    move v1, v2

    :cond_e
    :goto_5
    if-eqz v1, :cond_f

    return-void

    .line 22
    :cond_f
    iget-object v0, p0, Lcom/truecaller/notifications/NotificationHandlerService;->c:Landroid/os/Handler;

    new-instance v1, Le/a/i4/c;

    invoke-direct {v1, p0, p1}, Le/a/i4/c;-><init>(Lcom/truecaller/notifications/NotificationHandlerService;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/truecaller/notifications/NotificationHandlerService;->c:Landroid/os/Handler;

    new-instance v1, Le/a/i4/d;

    invoke-direct {v1, p0, p1}, Le/a/i4/d;-><init>(Lcom/truecaller/notifications/NotificationHandlerService;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/truecaller/notifications/NotificationHandlerService;->j:I

    .line 3
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
