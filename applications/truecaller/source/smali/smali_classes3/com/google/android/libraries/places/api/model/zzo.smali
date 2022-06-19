.class public final Lcom/google/android/libraries/places/api/model/zzo;
.super Lcom/google/android/libraries/places/api/model/Period$Builder;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

.field private zzb:Lcom/google/android/libraries/places/api/model/TimeOfWeek;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/Period$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/libraries/places/api/model/Period;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/api/model/zzan;

    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzo;->zza:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    iget-object v2, p0, Lcom/google/android/libraries/places/api/model/zzo;->zzb:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/api/model/zzan;-><init>(Lcom/google/android/libraries/places/api/model/TimeOfWeek;Lcom/google/android/libraries/places/api/model/TimeOfWeek;)V

    return-object v0
.end method

.method public final getClose()Lcom/google/android/libraries/places/api/model/TimeOfWeek;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzo;->zzb:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    return-object v0
.end method

.method public final getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzo;->zza:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    return-object v0
.end method

.method public final setClose(Lcom/google/android/libraries/places/api/model/TimeOfWeek;)Lcom/google/android/libraries/places/api/model/Period$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzo;->zzb:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    return-object p0
.end method

.method public final setOpen(Lcom/google/android/libraries/places/api/model/TimeOfWeek;)Lcom/google/android/libraries/places/api/model/Period$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzo;->zza:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    return-object p0
.end method
