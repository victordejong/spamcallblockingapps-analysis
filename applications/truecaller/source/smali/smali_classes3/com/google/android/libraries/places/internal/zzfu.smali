.class public final Lcom/google/android/libraries/places/internal/zzfu;
.super Lcom/google/android/libraries/places/internal/zzfx;
.source "SourceFile"


# instance fields
.field private final synthetic zzb:Lcom/google/android/libraries/places/internal/zzfv;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzfv;Lcom/google/android/libraries/places/internal/zzfs;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzfu;->zzb:Lcom/google/android/libraries/places/internal/zzfv;

    invoke-direct {p0, p2, p3}, Lcom/google/android/libraries/places/internal/zzfx;-><init>(Lcom/google/android/libraries/places/internal/zzfs;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final zza(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzfu;->zzb:Lcom/google/android/libraries/places/internal/zzfv;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzfv;->zza:Lcom/google/android/libraries/places/internal/zzfd;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzfx;->zza:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzfd;->zza(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public final zzb(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method
