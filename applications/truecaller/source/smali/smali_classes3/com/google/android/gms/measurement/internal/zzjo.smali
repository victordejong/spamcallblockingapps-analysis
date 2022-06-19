.class public final synthetic Lcom/google/android/gms/measurement/internal/zzjo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzjr;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzeh;

.field public final synthetic c:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzjr;Lcom/google/android/gms/measurement/internal/zzeh;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjo;->a:Lcom/google/android/gms/measurement/internal/zzjr;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjo;->b:Lcom/google/android/gms/measurement/internal/zzeh;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjo;->c:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjo;->a:Lcom/google/android/gms/measurement/internal/zzjr;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjo;->b:Lcom/google/android/gms/measurement/internal/zzeh;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjo;->c:Landroid/app/job/JobParameters;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v3, "AppMeasurementJobService processed last upload request."

    .line 3
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjr;->a:Landroid/content/Context;

    .line 4
    check-cast v0, Lcom/google/android/gms/measurement/internal/zzjq;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->b(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
