.class public final Lcom/google/android/gms/internal/auth-api-phone/zzw;
.super Lcom/google/android/gms/internal/auth-api-phone/zzab;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth-api-phone/zzu;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth-api-phone/zzab;-><init>(Lcom/google/android/gms/internal/auth-api-phone/zzw;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/auth-api-phone/zzj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth-api-phone/zzz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth-api-phone/zzz;-><init>(Lcom/google/android/gms/internal/auth-api-phone/zzw;)V

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/auth-api-phone/zzj;->zza(Lcom/google/android/gms/internal/auth-api-phone/zzl;)V

    return-void
.end method
