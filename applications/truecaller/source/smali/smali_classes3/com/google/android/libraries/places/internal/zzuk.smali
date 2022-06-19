.class public final Lcom/google/android/libraries/places/internal/zzuk;
.super Lcom/google/android/libraries/places/internal/zzuq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzuq;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/libraries/places/internal/zzuj;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzuj;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzuk;->zza:Lcom/google/android/libraries/places/internal/zzuj;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzuq;-><init>(Lcom/google/android/libraries/places/internal/zzuj;Lcom/google/android/libraries/places/internal/zzui;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzuj;Lcom/google/android/libraries/places/internal/zzui;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzuk;-><init>(Lcom/google/android/libraries/places/internal/zzuj;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzul;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzuk;->zza:Lcom/google/android/libraries/places/internal/zzuj;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzul;-><init>(Lcom/google/android/libraries/places/internal/zzuj;Lcom/google/android/libraries/places/internal/zzui;)V

    return-object v0
.end method
