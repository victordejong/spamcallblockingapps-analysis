.class public final synthetic Lcom/google/android/gms/internal/ads/zzcgo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcgr;


# instance fields
.field private final zza:I

.field private final zzb:Ljava/util/Map;


# direct methods
.method public constructor <init>(ILjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcgo;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgo;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/util/JsonWriter;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcgo;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgo;->zzb:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcgs;->zzl(ILjava/util/Map;Landroid/util/JsonWriter;)V

    return-void
.end method
