.class public final synthetic Lcom/google/android/gms/internal/ads/zzfih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzxv;

.field private final zzb:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzxv;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfih;->zza:Lcom/google/android/gms/internal/ads/zzxv;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfih;->zzb:I

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfih;->zza:Lcom/google/android/gms/internal/ads/zzxv;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfih;->zzb:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfkk;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzxz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgeg;->zzao()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfkk;->zza([B)Lcom/google/android/gms/internal/ads/zzfki;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzfki;->zzc(I)Lcom/google/android/gms/internal/ads/zzfki;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfki;->zza()V

    .line 7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1
.end method
