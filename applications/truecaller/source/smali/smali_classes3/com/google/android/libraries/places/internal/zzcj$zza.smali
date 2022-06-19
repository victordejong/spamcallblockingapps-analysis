.class public Lcom/google/android/libraries/places/internal/zzcj$zza;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/zzcj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/zzcj$zza$zza;,
        Lcom/google/android/libraries/places/internal/zzcj$zza$zzb;
    }
.end annotation


# instance fields
.field private location:Lcom/google/android/libraries/places/internal/zzcj$zza$zzb;

.field private viewport:Lcom/google/android/libraries/places/internal/zzcj$zza$zza;


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
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcj$zza;->location:Lcom/google/android/libraries/places/internal/zzcj$zza$zzb;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/libraries/places/internal/zzcj$zza$zza;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcj$zza;->viewport:Lcom/google/android/libraries/places/internal/zzcj$zza$zza;

    return-object v0
.end method
