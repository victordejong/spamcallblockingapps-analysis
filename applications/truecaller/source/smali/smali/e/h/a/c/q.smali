.class public Le/h/a/c/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/p;


# direct methods
.method public constructor <init>(Le/h/a/c/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/q;->a:Le/h/a/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/q;->a:Le/h/a/c/p;

    .line 2
    iget-object v1, v0, Le/h/a/c/p;->a:Landroid/content/Context;

    .line 3
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 4
    iget-object v2, v0, Le/h/a/c/x;->b:Le/h/a/c/b0;

    .line 5
    iget-object v0, v0, Le/h/a/c/x;->k:Le/h/a/c/w0/i;

    const-string v3, "android.permission.INTERNET"

    .line 6
    invoke-static {v1, v3}, Le/h/a/c/j0;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 7
    invoke-virtual {v2}, Le/h/a/c/b0;->n()I

    .line 8
    sget-boolean v2, Le/h/a/c/d;->a:Z

    if-nez v2, :cond_1

    .line 9
    sget-boolean v2, Le/h/a/c/w;->t:Z

    if-nez v2, :cond_1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "com.clevertap.android.sdk.Application"

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    const-class v3, Lcom/clevertap/android/sdk/pushnotification/CTPushNotificationReceiver;

    .line 14
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-static {v2, v3}, Ln3/g0/y;->c2(Landroid/app/Application;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    const-class v3, Lcom/clevertap/android/sdk/pushnotification/CTNotificationIntentService;

    .line 17
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-static {v2, v3}, Ln3/g0/y;->d2(Landroid/app/Application;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    const-class v3, Lcom/clevertap/android/sdk/InAppNotificationActivity;

    invoke-static {v2, v3}, Ln3/g0/y;->b2(Landroid/app/Application;Ljava/lang/Class;)V

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    const-class v3, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;

    invoke-static {v2, v3}, Ln3/g0/y;->b2(Landroid/app/Application;Ljava/lang/Class;)V

    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    const-string v3, "com.clevertap.android.geofence.CTGeofenceReceiver"

    invoke-static {v2, v3}, Ln3/g0/y;->c2(Landroid/app/Application;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    const-string v3, "com.clevertap.android.geofence.CTLocationUpdateReceiver"

    invoke-static {v2, v3}, Ln3/g0/y;->c2(Landroid/app/Application;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    const-string v3, "com.clevertap.android.geofence.CTGeofenceBootReceiver"

    invoke-static {v2, v3}, Ln3/g0/y;->c2(Landroid/app/Application;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    const-class v3, Lcom/clevertap/android/sdk/pushnotification/amp/CTBackgroundJobService;

    .line 25
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-static {v2, v3}, Ln3/g0/y;->d2(Landroid/app/Application;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    const-class v3, Lcom/clevertap/android/sdk/pushnotification/amp/CTBackgroundIntentService;

    .line 28
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-static {v2, v3}, Ln3/g0/y;->d2(Landroid/app/Application;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 31
    :goto_1
    invoke-virtual {v0}, Le/h/a/c/w0/i;->h()Ljava/util/ArrayList;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/h/a/c/w0/g$a;

    .line 33
    sget-object v3, Le/h/a/c/w0/g$a;->e:Le/h/a/c/w0/g$a;

    if-ne v2, v3, :cond_3

    .line 34
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    const-string v3, "com.clevertap.android.sdk.pushnotification.fcm.FcmMessageListenerService"

    invoke-static {v2, v3}, Ln3/g0/y;->d2(Landroid/app/Application;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    goto :goto_2

    :catch_2
    move-exception v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_2

    .line 37
    :cond_3
    sget-object v3, Le/h/a/c/w0/g$a;->g:Le/h/a/c/w0/g$a;

    if-ne v2, v3, :cond_4

    .line 38
    :try_start_2
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    const-string v3, "com.clevertap.android.hms.CTHmsMessageService"

    invoke-static {v2, v3}, Ln3/g0/y;->d2(Landroid/app/Application;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catch_3
    move-exception v2

    .line 39
    invoke-virtual {v2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    goto :goto_2

    :catch_4
    move-exception v2

    .line 40
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_2

    .line 41
    :cond_4
    sget-object v3, Le/h/a/c/w0/g$a;->f:Le/h/a/c/w0/g$a;

    if-ne v2, v3, :cond_2

    .line 42
    :try_start_3
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    const-string v3, "com.clevertap.android.xps.XiaomiMessageReceiver"

    invoke-static {v2, v3}, Ln3/g0/y;->c2(Landroid/app/Application;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_2

    :catch_5
    move-exception v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    goto :goto_2

    :catch_6
    move-exception v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_2

    .line 45
    :cond_5
    invoke-static {v1}, Le/h/a/c/h0;->b(Landroid/content/Context;)Le/h/a/c/h0;

    move-result-object v0

    .line 46
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Le/h/a/c/h0;->m:Ljava/lang/String;

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    const/4 v0, 0x0

    return-object v0
.end method
