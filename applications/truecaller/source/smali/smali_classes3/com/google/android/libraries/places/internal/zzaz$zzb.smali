.class public Lcom/google/android/libraries/places/internal/zzaz$zzb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/zzaz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field private mainText:Ljava/lang/String;

.field private mainTextMatchedSubstrings:[Lcom/google/android/libraries/places/internal/zzaz$zza;

.field private secondaryText:Ljava/lang/String;

.field private secondaryTextMatchedSubstrings:[Lcom/google/android/libraries/places/internal/zzaz$zza;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaz$zzb;->mainText:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaz$zzb;->secondaryText:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzgi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Lcom/google/android/libraries/places/internal/zzaz$zza;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaz$zzb;->mainTextMatchedSubstrings:[Lcom/google/android/libraries/places/internal/zzaz$zza;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzgi;->zza([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzd()Lcom/google/android/libraries/places/internal/zzgi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Lcom/google/android/libraries/places/internal/zzaz$zza;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaz$zzb;->secondaryTextMatchedSubstrings:[Lcom/google/android/libraries/places/internal/zzaz$zza;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzgi;->zza([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
