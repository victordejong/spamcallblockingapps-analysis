.class public final Lcom/google/android/gms/internal/measurement/zzol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzok;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/measurement/zzhu;

.field public static final zzb:Lcom/google/android/gms/internal/measurement/zzhu;

.field public static final zzc:Lcom/google/android/gms/internal/measurement/zzhu;

.field public static final zzd:Lcom/google/android/gms/internal/measurement/zzhu;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhr;

    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhr;-><init>(Landroid/net/Uri;)V

    const-string v1, "measurement.id.lifecycle.app_in_background_parameter"

    const-wide/16 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzhu;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzol;->zza:Lcom/google/android/gms/internal/measurement/zzhu;

    const-string v1, "measurement.lifecycle.app_backgrounded_tracking"

    const/4 v4, 0x1

    .line 3
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/zzhr;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhu;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzol;->zzb:Lcom/google/android/gms/internal/measurement/zzhu;

    const-string v1, "measurement.lifecycle.app_in_background_parameter"

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/zzhr;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhu;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzol;->zzc:Lcom/google/android/gms/internal/measurement/zzhu;

    const-string v1, "measurement.id.lifecycle.app_backgrounded_tracking"

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzhu;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzol;->zzd:Lcom/google/android/gms/internal/measurement/zzhu;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzol;->zzc:Lcom/google/android/gms/internal/measurement/zzhu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhu;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
