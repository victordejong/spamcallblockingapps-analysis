.class public abstract Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/api/model/PhotoMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/libraries/places/api/model/PhotoMetadata;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;->zza()Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/PhotoMetadata;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const-string v5, "Width must not be < 0, but was: %s."

    .line 3
    invoke-static {v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzft;->zza(ZLjava/lang/String;I)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/PhotoMetadata;->getHeight()I

    move-result v1

    if-ltz v1, :cond_1

    move v2, v3

    :cond_1
    const-string v4, "Height must not be < 0, but was: %s."

    .line 5
    invoke-static {v2, v4, v1}, Lcom/google/android/libraries/places/internal/zzft;->zza(ZLjava/lang/String;I)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/PhotoMetadata;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v3

    const-string v2, "PhotoReference must not be null or empty."

    .line 7
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzft;->zzb(ZLjava/lang/Object;)V

    return-object v0
.end method

.method public abstract getAttributions()Ljava/lang/String;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract setAttributions(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;
.end method

.method public abstract setHeight(I)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;
.end method

.method public abstract setWidth(I)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;
.end method

.method public abstract zza(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;
.end method

.method public abstract zza()Lcom/google/android/libraries/places/api/model/PhotoMetadata;
.end method
