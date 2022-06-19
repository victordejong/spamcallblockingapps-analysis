.class public Lcom/hiya/stingray/data/sync/RequestsQueueService;
.super Lcom/hiya/stingray/data/sync/a;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/data/sync/c;


# instance fields
.field g:Lcom/hiya/stingray/data/sync/f;

.field h:Lcom/hiya/stingray/q/d/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/data/sync/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/job/JobParameters;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/data/sync/a;->c()V

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/data/sync/a;->b()Lcom/hiya/stingray/s/d/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/hiya/stingray/s/d/i;->c(Lcom/hiya/stingray/data/sync/RequestsQueueService;)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/data/sync/RequestsQueueService;->g:Lcom/hiya/stingray/data/sync/f;

    invoke-virtual {v0, p0}, Lcom/hiya/stingray/data/sync/f;->f(Lcom/hiya/stingray/data/sync/c;)V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/data/sync/RequestsQueueService;->h:Lcom/hiya/stingray/q/d/a;

    const-string v1, "request_queue_last_job_schedule_time"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/d/a;->w0(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "onStart Job with id: %d, RequestsQueueService time: %d"

    invoke-static {v1, v0}, Lr/a/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/data/sync/RequestsQueueService;->g:Lcom/hiya/stingray/data/sync/f;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/data/sync/f;->g(Landroid/app/job/JobParameters;)Z

    move-result p1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Stopping job - %d with time %d"

    invoke-static {v1, v0}, Lr/a/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/data/sync/RequestsQueueService;->g:Lcom/hiya/stingray/data/sync/f;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/data/sync/f;->h(Landroid/app/job/JobParameters;)Z

    move-result p1

    return p1
.end method
