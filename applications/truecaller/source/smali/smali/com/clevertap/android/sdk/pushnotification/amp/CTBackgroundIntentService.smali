.class public Lcom/clevertap/android/sdk/pushnotification/amp/CTBackgroundIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "CTBackgroundIntentService"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    sget-object v0, Le/h/a/c/p;->e:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Le/h/a/c/p;->h(Landroid/content/Context;)Le/h/a/c/p;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 5
    iget-object v2, v0, Le/h/a/c/x;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 6
    iget-boolean v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->f:Z

    if-eqz v2, :cond_4

    .line 7
    iget-object v0, v0, Le/h/a/c/x;->k:Le/h/a/c/w0/i;

    .line 8
    invoke-virtual {v0, p1, v1}, Le/h/a/c/w0/i;->n(Landroid/content/Context;Landroid/app/job/JobParameters;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    sget-object v3, Le/h/a/c/p;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/h/a/c/p;

    if-nez v2, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v2, v2, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 12
    iget-object v3, v2, Le/h/a/c/x;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 13
    iget-boolean v4, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    if-eqz v4, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    iget-boolean v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->f:Z

    if-nez v3, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    iget-object v2, v2, Le/h/a/c/x;->k:Le/h/a/c/w0/i;

    .line 16
    invoke-virtual {v2, p1, v1}, Le/h/a/c/w0/i;->n(Landroid/content/Context;Landroid/app/job/JobParameters;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
