.class public final Lcom/google/android/gms/measurement/AppMeasurementJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzjq;


# instance fields
.field public a:Lcom/google/android/gms/measurement/internal/zzjr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/app/job/JobParameters;Z)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public final c()Lcom/google/android/gms/measurement/internal/zzjr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->a:Lcom/google/android/gms/measurement/internal/zzjr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzjr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->a:Lcom/google/android/gms/measurement/internal/zzjr;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->a:Lcom/google/android/gms/measurement/internal/zzjr;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->c()Lcom/google/android/gms/measurement/internal/zzjr;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjr;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/google/android/gms/measurement/internal/zzfr;->q(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzcl;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Local AppMeasurementService is starting up"

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->c()Lcom/google/android/gms/measurement/internal/zzjr;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjr;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/google/android/gms/measurement/internal/zzfr;->q(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzcl;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Local AppMeasurementService is shutting down"

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 6
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->c()Lcom/google/android/gms/measurement/internal/zzjr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzjr;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->c()Lcom/google/android/gms/measurement/internal/zzjr;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjr;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/measurement/internal/zzfr;->q(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzcl;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Local AppMeasurementJobService called. action"

    .line 6
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "com.google.android.gms.measurement.UPLOAD"

    .line 7
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzjo;-><init>(Lcom/google/android/gms/measurement/internal/zzjr;Lcom/google/android/gms/measurement/internal/zzeh;Landroid/app/job/JobParameters;)V

    .line 8
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzjr;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->K(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    new-instance v1, Le/m/a/f/l/a/e3;

    invoke-direct {v1, p1, v2}, Le/m/a/f/l/a/e3;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;Ljava/lang/Runnable;)V

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfo;->n(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->c()Lcom/google/android/gms/measurement/internal/zzjr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzjr;->b(Landroid/content/Intent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final zzc(I)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
