.class public final synthetic Lcom/google/android/gms/internal/ads/zzeiq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeir;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfal;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzezz;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzeef;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeir;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzeef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zza:Lcom/google/android/gms/internal/ads/zzeir;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zzb:Lcom/google/android/gms/internal/ads/zzfal;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zzd:Lcom/google/android/gms/internal/ads/zzeef;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zza:Lcom/google/android/gms/internal/ads/zzeir;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zzb:Lcom/google/android/gms/internal/ads/zzfal;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zzd:Lcom/google/android/gms/internal/ads/zzeef;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeir;->zzd:Lcom/google/android/gms/internal/ads/zzeit;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzeit;->zzd(Lcom/google/android/gms/internal/ads/zzeit;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzeef;)V

    return-void
.end method
