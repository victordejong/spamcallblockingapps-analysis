.class public final synthetic Lcom/google/android/gms/internal/mlkit_translate/zzib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_translate/zzhx;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_translate/zzhl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzhx;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzib;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzhx;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzib;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzhl;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzib;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzhx;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzib;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzhl;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzhl;Lcom/google/android/gms/tasks/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
