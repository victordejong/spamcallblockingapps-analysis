.class public abstract Lcom/google/android/libraries/places/api/model/PhotoMetadata;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/api/model/zzq;

    invoke-direct {v0}, Lcom/google/android/libraries/places/api/model/zzq;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/api/model/zzq;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;->setWidth(I)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;->setHeight(I)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;

    move-result-object p0

    const-string v0, ""

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;->setAttributions(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getAttributions()Ljava/lang/String;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract zza()Ljava/lang/String;
.end method
