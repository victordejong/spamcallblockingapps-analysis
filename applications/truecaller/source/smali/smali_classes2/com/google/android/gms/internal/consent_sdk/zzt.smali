.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Le/m/a/i/c;

.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zzk;


# direct methods
.method public constructor <init>(Le/m/a/i/c;Lcom/google/android/gms/internal/consent_sdk/zzk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzt;->zza:Le/m/a/i/c;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzt;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzt;->zza:Le/m/a/i/c;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzt;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzk;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzk;->zza()Le/m/a/i/f;

    move-result-object v1

    invoke-interface {v0, v1}, Le/m/a/i/c;->a(Le/m/a/i/f;)V

    return-void
.end method
