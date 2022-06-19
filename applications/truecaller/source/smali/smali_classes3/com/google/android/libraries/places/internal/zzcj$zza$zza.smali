.class public Lcom/google/android/libraries/places/internal/zzcj$zza$zza;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/zzcj$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private northeast:Lcom/google/android/libraries/places/internal/zzcj$zza$zzb;

.field private southwest:Lcom/google/android/libraries/places/internal/zzcj$zza$zzb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/libraries/places/internal/zzcj$zza$zzb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcj$zza$zza;->northeast:Lcom/google/android/libraries/places/internal/zzcj$zza$zzb;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/libraries/places/internal/zzcj$zza$zzb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcj$zza$zza;->southwest:Lcom/google/android/libraries/places/internal/zzcj$zza$zzb;

    return-object v0
.end method
