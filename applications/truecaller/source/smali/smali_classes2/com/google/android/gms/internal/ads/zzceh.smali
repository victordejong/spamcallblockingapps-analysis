.class public final Lcom/google/android/gms/internal/ads/zzceh;
.super Lcom/google/android/gms/internal/ads/zzcfb;
.source "SourceFile"


# instance fields
.field private final zzb:Lcom/google/android/gms/common/util/Clock;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzceh;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/ads/internal/util/zzg;",
            ">;"
        }
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzcfa;",
            ">;"
        }
    .end annotation
.end field

.field private final zzg:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzcdz;",
            ">;"
        }
    .end annotation
.end field

.field private final zzh:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/common/util/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final zzi:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzceb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzj:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzced;",
            ">;"
        }
    .end annotation
.end field

.field private final zzk:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzcfg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/ads/internal/util/zzg;Lcom/google/android/gms/internal/ads/zzcfa;Lcom/google/android/gms/internal/ads/zzceg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcfb;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzceh;->zzc:Lcom/google/android/gms/internal/ads/zzceh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzceh;->zzb:Lcom/google/android/gms/common/util/Clock;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzglb;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgla;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzceh;->zzd:Lcom/google/android/gms/internal/ads/zzgln;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzglb;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgla;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzceh;->zze:Lcom/google/android/gms/internal/ads/zzgln;

    .line 3
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzglb;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgla;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzceh;->zzf:Lcom/google/android/gms/internal/ads/zzgln;

    new-instance p5, Lcom/google/android/gms/internal/ads/zzcea;

    .line 4
    invoke-direct {p5, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzcea;-><init>(Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;)V

    .line 5
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzgkz;->zza(Lcom/google/android/gms/internal/ads/zzgln;)Lcom/google/android/gms/internal/ads/zzgln;

    move-result-object p5

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzceh;->zzg:Lcom/google/android/gms/internal/ads/zzgln;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzglb;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgla;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzceh;->zzh:Lcom/google/android/gms/internal/ads/zzgln;

    new-instance p5, Lcom/google/android/gms/internal/ads/zzcec;

    .line 7
    invoke-direct {p5, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcec;-><init>(Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;)V

    .line 8
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzgkz;->zza(Lcom/google/android/gms/internal/ads/zzgln;)Lcom/google/android/gms/internal/ads/zzgln;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzceh;->zzi:Lcom/google/android/gms/internal/ads/zzgln;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzcee;

    .line 9
    invoke-direct {p4, p2, p3}, Lcom/google/android/gms/internal/ads/zzcee;-><init>(Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzceh;->zzj:Lcom/google/android/gms/internal/ads/zzgln;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcfh;

    .line 10
    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzcfh;-><init>(Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;)V

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgkz;->zza(Lcom/google/android/gms/internal/ads/zzgln;)Lcom/google/android/gms/internal/ads/zzgln;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzceh;->zzk:Lcom/google/android/gms/internal/ads/zzgln;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcdz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzceh;->zzg:Lcom/google/android/gms/internal/ads/zzgln;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgln;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcdz;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzced;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzced;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzceh;->zzb:Lcom/google/android/gms/common/util/Clock;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzceh;->zzi:Lcom/google/android/gms/internal/ads/zzgln;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgln;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzceb;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzced;-><init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzceb;)V

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzcfg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzceh;->zzk:Lcom/google/android/gms/internal/ads/zzgln;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgln;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcfg;

    return-object v0
.end method
