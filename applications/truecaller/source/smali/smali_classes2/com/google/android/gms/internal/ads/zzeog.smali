.class public final Lcom/google/android/gms/internal/ads/zzeog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/google/android/gms/internal/ads/zzerx<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzfsm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final zzb:J

.field private final zzc:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfsm;JLcom/google/android/gms/common/util/Clock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TS;>;J",
            "Lcom/google/android/gms/common/util/Clock;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeog;->zza:Lcom/google/android/gms/internal/ads/zzfsm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeog;->zzc:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeog;->zzb:J

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeog;->zzb:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeog;->zzc:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
