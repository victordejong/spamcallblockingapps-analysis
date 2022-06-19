.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzp;

.field private final zzb:Landroid/app/Activity;

.field private final zzc:Le/m/a/i/e;

.field private final zzd:Le/m/a/i/d;

.field private final zze:Le/m/a/i/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzp;Landroid/app/Activity;Le/m/a/i/e;Le/m/a/i/d;Le/m/a/i/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzs;->zza:Lcom/google/android/gms/internal/consent_sdk/zzp;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzs;->zzb:Landroid/app/Activity;

    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzs;->zzd:Le/m/a/i/d;

    iput-object p5, p0, Lcom/google/android/gms/internal/consent_sdk/zzs;->zze:Le/m/a/i/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzs;->zza:Lcom/google/android/gms/internal/consent_sdk/zzp;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzs;->zzb:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzs;->zzc:Le/m/a/i/e;

    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzs;->zzd:Le/m/a/i/d;

    iget-object v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzs;->zze:Le/m/a/i/c;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzb(Landroid/app/Activity;Le/m/a/i/e;Le/m/a/i/d;Le/m/a/i/c;)V

    return-void
.end method
