.class public final Lcom/hiya/stingray/data/sync/RemoteConfigSyncService;
.super Lcom/hiya/stingray/data/sync/a;
.source "SourceFile"


# instance fields
.field public g:Lcom/hiya/stingray/manager/x3;

.field public h:Lcom/hiya/stingray/q/d/a;

.field public i:Li/c/b0/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/data/sync/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/data/sync/a;->c()V

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/data/sync/a;->b()Lcom/hiya/stingray/s/d/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/hiya/stingray/s/d/i;->h(Lcom/hiya/stingray/data/sync/RemoteConfigSyncService;)V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/data/sync/RemoteConfigSyncService;->h:Lcom/hiya/stingray/q/d/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v2, "remote_config_last_schedule_time"

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/q/d/a;->w0(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/16 v0, 0x2329

    .line 2
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Unrecognized Job ID"

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized Job ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/data/sync/RemoteConfigSyncService;->g:Lcom/hiya/stingray/manager/x3;

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/hiya/stingray/manager/x3;->g(Lcom/hiya/stingray/manager/x3;Ljava/lang/Long;ILjava/lang/Object;)Li/c/b0/b/e;

    move-result-object v0

    .line 5
    new-instance v3, Lcom/hiya/stingray/data/sync/RemoteConfigSyncService$a;

    invoke-direct {v3, p0, p1}, Lcom/hiya/stingray/data/sync/RemoteConfigSyncService$a;-><init>(Lcom/hiya/stingray/data/sync/RemoteConfigSyncService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v3}, Li/c/b0/b/e;->n(Li/c/b0/d/a;)Li/c/b0/b/e;

    move-result-object p1

    .line 6
    sget-object v0, Lcom/hiya/stingray/data/sync/RemoteConfigSyncService$b;->f:Lcom/hiya/stingray/data/sync/RemoteConfigSyncService$b;

    invoke-virtual {p1, v0}, Li/c/b0/b/e;->A(Li/c/b0/d/p;)Li/c/b0/b/e;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Li/c/b0/b/e;->D()Li/c/b0/c/c;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/hiya/stingray/data/sync/RemoteConfigSyncService;->i:Li/c/b0/c/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return v2

    :cond_2
    const-string p1, "compositeDisposable"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "remoteConfigManager"

    .line 9
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string p1, "commonSharedPreferences"

    .line 10
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
