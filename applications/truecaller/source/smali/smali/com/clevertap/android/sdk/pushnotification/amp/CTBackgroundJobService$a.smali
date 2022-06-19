.class public Lcom/clevertap/android/sdk/pushnotification/amp/CTBackgroundJobService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clevertap/android/sdk/pushnotification/amp/CTBackgroundJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/job/JobParameters;

.field public final synthetic b:Lcom/clevertap/android/sdk/pushnotification/amp/CTBackgroundJobService;


# direct methods
.method public constructor <init>(Lcom/clevertap/android/sdk/pushnotification/amp/CTBackgroundJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/clevertap/android/sdk/pushnotification/amp/CTBackgroundJobService$a;->b:Lcom/clevertap/android/sdk/pushnotification/amp/CTBackgroundJobService;

    iput-object p2, p0, Lcom/clevertap/android/sdk/pushnotification/amp/CTBackgroundJobService$a;->a:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/clevertap/android/sdk/pushnotification/amp/CTBackgroundJobService$a;->b:Lcom/clevertap/android/sdk/pushnotification/amp/CTBackgroundJobService;

    invoke-virtual {v0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/clevertap/android/sdk/pushnotification/amp/CTBackgroundJobService$a;->a:Landroid/app/job/JobParameters;

    .line 2
    sget-object v2, Le/h/a/c/p;->e:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 3
    invoke-static {v0}, Le/h/a/c/p;->h(Landroid/content/Context;)Le/h/a/c/p;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4
    iget-object v2, v2, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 5
    iget-object v3, v2, Le/h/a/c/x;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 6
    iget-boolean v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->f:Z

    if-eqz v3, :cond_4

    .line 7
    iget-object v2, v2, Le/h/a/c/x;->k:Le/h/a/c/w0/i;

    .line 8
    invoke-virtual {v2, v0, v1}, Le/h/a/c/w0/i;->n(Landroid/content/Context;Landroid/app/job/JobParameters;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 10
    sget-object v4, Le/h/a/c/p;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/h/a/c/p;

    if-eqz v3, :cond_2

    .line 11
    iget-object v4, v3, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 12
    iget-object v4, v4, Le/h/a/c/x;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 13
    iget-boolean v4, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_1

    .line 14
    iget-object v3, v3, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 15
    iget-object v4, v3, Le/h/a/c/x;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 16
    iget-boolean v4, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->f:Z

    if-nez v4, :cond_3

    goto :goto_0

    .line 17
    :cond_3
    iget-object v3, v3, Le/h/a/c/x;->k:Le/h/a/c/w0/i;

    .line 18
    invoke-virtual {v3, v0, v1}, Le/h/a/c/w0/i;->n(Landroid/content/Context;Landroid/app/job/JobParameters;)V

    goto :goto_0

    .line 19
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/clevertap/android/sdk/pushnotification/amp/CTBackgroundJobService$a;->b:Lcom/clevertap/android/sdk/pushnotification/amp/CTBackgroundJobService;

    iget-object v1, p0, Lcom/clevertap/android/sdk/pushnotification/amp/CTBackgroundJobService$a;->a:Landroid/app/job/JobParameters;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
