.class public final Lg/g/b/a/i/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/client/callerid/prefs/Cache;

.field private final c:Landroid/app/job/JobScheduler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/client/callerid/prefs/Cache;Landroid/app/job/JobScheduler;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cache"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jobScheduler"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/b/a/i/d/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lg/g/b/a/i/d/b;->b:Lcom/hiya/client/callerid/prefs/Cache;

    iput-object p3, p0, Lg/g/b/a/i/d/b;->c:Landroid/app/job/JobScheduler;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/a/i/d/b;->c:Landroid/app/job/JobScheduler;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method public final b(Lg/g/b/a/g/b/a$a;)Z
    .locals 5

    const-string v0, "cacheDownloadPref"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lg/g/b/a/i/d/b;->a:Landroid/content/Context;

    const-class v2, Lcom/hiya/client/callerid/job/services/ProfileCacheDownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "profile_cache_last_scheduled_time"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 4
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const/16 v3, 0x7b

    invoke-direct {v2, v3, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 5
    iget-object v0, p0, Lg/g/b/a/i/d/b;->b:Lcom/hiya/client/callerid/prefs/Cache;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/prefs/Cache;->k()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 6
    invoke-static {p1}, Lg/g/b/a/g/b/c;->a(Lg/g/b/a/g/b/a$a;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    .line 10
    iget-object v1, p0, Lg/g/b/a/i/d/b;->c:Landroid/app/job/JobScheduler;

    invoke-virtual {v1, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lg/g/b/a/i/d/b;->c:Landroid/app/job/JobScheduler;

    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v0

    const-string v1, "jobScheduler.allPendingJobs"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    const-string v2, "it"

    .line 3
    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v4

    sget-object v2, Lcom/hiya/client/callerid/prefs/Cache;->c:Lcom/hiya/client/callerid/prefs/Cache$a;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/prefs/Cache$a;->a()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gez v2, :cond_0

    .line 4
    invoke-static {}, Lg/g/b/a/i/d/c;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/hiya/client/callerid/prefs/Cache$WrongProfileCacheFrequency;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/hiya/client/callerid/prefs/Cache$WrongProfileCacheFrequency;-><init>(J)V

    invoke-static {v0, v2}, Lcom/hiya/client/support/logging/d;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iget-object v0, p0, Lg/g/b/a/i/d/b;->c:Landroid/app/job/JobScheduler;

    invoke-virtual {v0, v3}, Landroid/app/job/JobScheduler;->cancel(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
