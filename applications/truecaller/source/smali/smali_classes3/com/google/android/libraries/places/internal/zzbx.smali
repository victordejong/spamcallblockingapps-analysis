.class public final synthetic Lcom/google/android/libraries/places/internal/zzbx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbv;

.field private final zzb:J


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbv;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbx;->zza:Lcom/google/android/libraries/places/internal/zzbv;

    iput-wide p2, p0, Lcom/google/android/libraries/places/internal/zzbx;->zzb:J

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbx;->zza:Lcom/google/android/libraries/places/internal/zzbv;

    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbx;->zzb:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/libraries/places/internal/zzbv;->zzd(JLcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    move-result-object p1

    return-object p1
.end method
