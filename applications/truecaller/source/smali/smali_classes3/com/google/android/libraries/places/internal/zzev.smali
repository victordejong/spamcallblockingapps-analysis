.class public final synthetic Lcom/google/android/libraries/places/internal/zzev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzes;

.field private final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzes;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzev;->zza:Lcom/google/android/libraries/places/internal/zzes;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzev;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzev;->zza:Lcom/google/android/libraries/places/internal/zzes;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzev;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzes;->zza(Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
