.class public final Lcom/google/android/gms/internal/measurement/zzmg;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/measurement/zzkm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzkm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzkm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmg;->zza:Lcom/google/android/gms/internal/measurement/zzkm;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/measurement/zzmg;)Lcom/google/android/gms/internal/measurement/zzkm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmg;->zza:Lcom/google/android/gms/internal/measurement/zzkm;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmg;->zza:Lcom/google/android/gms/internal/measurement/zzkm;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkl;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzg(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzmf;-><init>(Lcom/google/android/gms/internal/measurement/zzmg;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzme;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzme;-><init>(Lcom/google/android/gms/internal/measurement/zzmg;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmg;->zza:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zze()Lcom/google/android/gms/internal/measurement/zzkm;
    .locals 0

    return-object p0
.end method

.method public final zzf(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmg;->zza:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkm;->zzf(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzh()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmg;->zza:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkm;->zzh()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/measurement/zzix;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
