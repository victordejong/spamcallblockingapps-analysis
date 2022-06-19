.class public Lcom/clevertap/android/sdk/pushnotification/amp/CTBackgroundJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/clevertap/android/sdk/pushnotification/amp/CTBackgroundJobService$a;

    invoke-direct {v1, p0, p1}, Lcom/clevertap/android/sdk/pushnotification/amp/CTBackgroundJobService$a;-><init>(Lcom/clevertap/android/sdk/pushnotification/amp/CTBackgroundJobService;Landroid/app/job/JobParameters;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
