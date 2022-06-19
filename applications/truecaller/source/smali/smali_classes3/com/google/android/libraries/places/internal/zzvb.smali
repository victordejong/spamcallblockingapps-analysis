.class public final Lcom/google/android/libraries/places/internal/zzvb;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzsz;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzsz;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzsz;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzsz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzvb;->zza:Lcom/google/android/libraries/places/internal/zzsz;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/libraries/places/internal/zzvb;)Lcom/google/android/libraries/places/internal/zzsz;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzvb;->zza:Lcom/google/android/libraries/places/internal/zzsz;

    return-object p0
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzvb;->zza:Lcom/google/android/libraries/places/internal/zzsz;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzvd;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzvd;-><init>(Lcom/google/android/libraries/places/internal/zzvb;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzva;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzva;-><init>(Lcom/google/android/libraries/places/internal/zzvb;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzvb;->zza:Lcom/google/android/libraries/places/internal/zzsz;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zza(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzvb;->zza:Lcom/google/android/libraries/places/internal/zzsz;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzsz;->zza(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzrb;)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzvb;->zza:Lcom/google/android/libraries/places/internal/zzsz;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzsz;->zzd()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Lcom/google/android/libraries/places/internal/zzsz;
    .locals 0

    return-object p0
.end method
