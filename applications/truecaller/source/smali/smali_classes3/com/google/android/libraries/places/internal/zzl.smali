.class public final synthetic Lcom/google/android/libraries/places/internal/zzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzk;

.field private final zzb:Lcom/google/android/gms/location/LocationCallback;

.field private final zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzk;Lcom/google/android/gms/location/LocationCallback;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzl;->zza:Lcom/google/android/libraries/places/internal/zzk;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzl;->zzb:Lcom/google/android/gms/location/LocationCallback;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzl;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzl;->zza:Lcom/google/android/libraries/places/internal/zzk;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzl;->zzb:Lcom/google/android/gms/location/LocationCallback;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzl;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/libraries/places/internal/zzk;->zza(Lcom/google/android/gms/location/LocationCallback;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
