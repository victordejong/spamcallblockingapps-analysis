.class public final Lcom/google/android/gms/internal/measurement/zzcx;
.super Lcom/google/android/gms/internal/measurement/zzdt;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Ljava/lang/String;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Landroid/content/Context;

.field public final synthetic zzd:Landroid/os/Bundle;

.field public final synthetic zze:Lcom/google/android/gms/internal/measurement/zzee;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzee;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zze:Lcom/google/android/gms/internal/measurement/zzee;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zzc:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zzd:Landroid/os/Bundle;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzdt;-><init>(Lcom/google/android/gms/internal/measurement/zzee;Z)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 15

    const-string v0, "com.google.android.gms.measurement.dynamite"

    const-string v1, "null reference"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zze:Lcom/google/android/gms/internal/measurement/zzee;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zza:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zzb:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzee;->zzQ(Lcom/google/android/gms/internal/measurement/zzee;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zza:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zze:Lcom/google/android/gms/internal/measurement/zzee;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzee;->zzi(Lcom/google/android/gms/internal/measurement/zzee;)Ljava/lang/String;

    move-result-object v6

    move-object v11, v4

    move-object v12, v5

    move-object v10, v6

    goto :goto_0

    :cond_0
    move-object v10, v5

    move-object v11, v10

    move-object v12, v11

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zzc:Landroid/content/Context;

    .line 2
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zze:Lcom/google/android/gms/internal/measurement/zzee;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zzc:Landroid/content/Context;

    .line 4
    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/internal/measurement/zzee;->zzf(Landroid/content/Context;Z)Lcom/google/android/gms/internal/measurement/zzcc;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzee;->zzr(Lcom/google/android/gms/internal/measurement/zzee;Lcom/google/android/gms/internal/measurement/zzcc;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zze:Lcom/google/android/gms/internal/measurement/zzee;

    .line 5
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzee;->zze(Lcom/google/android/gms/internal/measurement/zzee;)Lcom/google/android/gms/internal/measurement/zzcc;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zze:Lcom/google/android/gms/internal/measurement/zzee;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzee;->zzi(Lcom/google/android/gms/internal/measurement/zzee;)Ljava/lang/String;

    return-void

    .line 6
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zzc:Landroid/content/Context;

    .line 7
    invoke-static {v4, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zzc:Landroid/content/Context;

    .line 8
    invoke-static {v5, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 9
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ge v0, v4, :cond_2

    move v9, v3

    goto :goto_1

    :cond_2
    move v9, v2

    .line 10
    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcl;

    int-to-long v7, v5

    const-wide/32 v5, 0xd6dd

    iget-object v13, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zzd:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zzc:Landroid/content/Context;

    .line 11
    invoke-static {v4}, Ln3/g0/y;->q2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    move-object v4, v0

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/internal/measurement/zzcl;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zze:Lcom/google/android/gms/internal/measurement/zzee;

    .line 12
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzee;->zze(Lcom/google/android/gms/internal/measurement/zzee;)Lcom/google/android/gms/internal/measurement/zzcc;

    move-result-object v4

    .line 13
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zzc:Landroid/content/Context;

    .line 15
    new-instance v5, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v5, v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 16
    iget-wide v6, p0, Lcom/google/android/gms/internal/measurement/zzdt;->zzh:J

    invoke-interface {v4, v5, v0, v6, v7}, Lcom/google/android/gms/internal/measurement/zzcc;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzcl;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzcx;->zze:Lcom/google/android/gms/internal/measurement/zzee;

    .line 17
    invoke-static {v1, v0, v3, v2}, Lcom/google/android/gms/internal/measurement/zzee;->zzs(Lcom/google/android/gms/internal/measurement/zzee;Ljava/lang/Exception;ZZ)V

    return-void
.end method
