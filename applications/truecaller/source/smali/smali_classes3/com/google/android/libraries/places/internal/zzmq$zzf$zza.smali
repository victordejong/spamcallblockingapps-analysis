.class public final Lcom/google/android/libraries/places/internal/zzmq$zzf$zza;
.super Lcom/google/android/libraries/places/internal/zzsf$zza;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zztq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/zzmq$zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzsf$zza<",
        "Lcom/google/android/libraries/places/internal/zzmq$zzf;",
        "Lcom/google/android/libraries/places/internal/zzmq$zzf$zza;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zztq;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzf;->zzb()Lcom/google/android/libraries/places/internal/zzmq$zzf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzsf$zza;-><init>(Lcom/google/android/libraries/places/internal/zzsf;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzmp;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzmq$zzf$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/libraries/places/internal/zzmq$zzf$zza;
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzb:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzb()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzb:Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zza:Lcom/google/android/libraries/places/internal/zzsf;

    check-cast p1, Lcom/google/android/libraries/places/internal/zzmq$zzf;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmq$zzf;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzf;I)V

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/libraries/places/internal/zzmq$zzf$zza;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzb:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzb()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzb:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zza:Lcom/google/android/libraries/places/internal/zzsf;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzmq$zzf;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzf;->zzb(Lcom/google/android/libraries/places/internal/zzmq$zzf;I)V

    return-object p0
.end method
