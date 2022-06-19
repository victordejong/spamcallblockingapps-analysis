.class public abstract Lcom/google/android/libraries/places/api/model/AutocompletePrediction$zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/api/model/AutocompletePrediction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc()Lcom/google/android/libraries/places/api/model/zzba;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/api/model/zzf;

    invoke-direct {v0}, Lcom/google/android/libraries/places/api/model/zzf;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb()I
.end method
