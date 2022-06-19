.class public abstract Lcom/google/android/libraries/places/internal/zzgo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Ljava/util/Comparator;)Lcom/google/android/libraries/places/internal/zzgo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/android/libraries/places/internal/zzgo<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/android/libraries/places/internal/zzgo;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/android/libraries/places/internal/zzgo;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzga;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzga;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
