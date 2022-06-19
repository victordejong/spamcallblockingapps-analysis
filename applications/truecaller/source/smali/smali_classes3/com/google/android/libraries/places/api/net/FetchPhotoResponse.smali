.class public abstract Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/graphics/Bitmap;)Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/api/net/zzc;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/api/net/zzc;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method
