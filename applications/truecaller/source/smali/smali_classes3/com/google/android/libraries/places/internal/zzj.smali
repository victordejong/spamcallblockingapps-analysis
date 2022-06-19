.class public final synthetic Lcom/google/android/libraries/places/internal/zzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzk;

.field private final zzb:Lcom/google/android/gms/tasks/CancellationToken;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzk;Lcom/google/android/gms/tasks/CancellationToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzj;->zza:Lcom/google/android/libraries/places/internal/zzk;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzj;->zzb:Lcom/google/android/gms/tasks/CancellationToken;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzj;->zza:Lcom/google/android/libraries/places/internal/zzk;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzj;->zzb:Lcom/google/android/gms/tasks/CancellationToken;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzk;->zza(Lcom/google/android/gms/tasks/CancellationToken;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
