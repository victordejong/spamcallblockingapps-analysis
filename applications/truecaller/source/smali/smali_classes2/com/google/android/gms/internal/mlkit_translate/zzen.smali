.class public abstract Lcom/google/android/gms/internal/mlkit_translate/zzen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_translate/zzem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzem<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private zzb:Lcom/google/android/gms/internal/mlkit_translate/zzem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzem<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private zzc:I

.field private final synthetic zzd:Lcom/google/android/gms/internal/mlkit_translate/zzeh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzeh;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzen;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzeh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_translate/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzem;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_translate/zzem;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzem;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzen;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzem;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzen;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzem;

    .line 4
    iget p1, p1, Lcom/google/android/gms/internal/mlkit_translate/zzeh;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzen;->zzc:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzen;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzem;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzen;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzeh;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_translate/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzem;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzen;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzem;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzen;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzeh;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzeh;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzem;Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzen;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzem;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzen;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzeh;

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_translate/zzeh;->zzb:I

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzen;->zzc:I

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_translate/zzem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_translate/zzem<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzen;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzem;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzen;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzeh;

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_translate/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzem;

    if-eq v0, v2, :cond_1

    .line 3
    iget v1, v1, Lcom/google/android/gms/internal/mlkit_translate/zzeh;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzen;->zzc:I

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzem;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzem;

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzen;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzem;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzen;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzem;

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
