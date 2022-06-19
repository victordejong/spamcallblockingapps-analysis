.class public final synthetic Lcom/google/android/libraries/places/internal/zzay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzaq;

.field private final zzb:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

.field private final zzc:J

.field private final zzd:Lcom/google/android/libraries/places/internal/zzg;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzaq;Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;JLcom/google/android/libraries/places/internal/zzg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzay;->zza:Lcom/google/android/libraries/places/internal/zzaq;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzay;->zzb:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    iput-wide p3, p0, Lcom/google/android/libraries/places/internal/zzay;->zzc:J

    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzay;->zzd:Lcom/google/android/libraries/places/internal/zzg;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzay;->zza:Lcom/google/android/libraries/places/internal/zzaq;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzay;->zzb:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzay;->zzc:J

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzay;->zzd:Lcom/google/android/libraries/places/internal/zzg;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzaq;->zza(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;JLcom/google/android/libraries/places/internal/zzg;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    move-result-object p1

    return-object p1
.end method
