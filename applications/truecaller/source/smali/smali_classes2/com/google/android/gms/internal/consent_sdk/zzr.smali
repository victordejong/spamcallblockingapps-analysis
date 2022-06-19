.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzp;

.field private final zzb:Le/m/a/i/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzp;Le/m/a/i/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzr;->zza:Lcom/google/android/gms/internal/consent_sdk/zzp;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzr;->zzb:Le/m/a/i/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzr;->zza:Lcom/google/android/gms/internal/consent_sdk/zzp;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzr;->zzb:Le/m/a/i/d;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzp;->zza(Le/m/a/i/d;)V

    return-void
.end method
