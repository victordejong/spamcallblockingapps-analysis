.class public final Lcom/google/android/libraries/places/internal/zzej;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static zza(D)D
    .locals 2

    const-wide v0, 0x3fa41c8216c61523L    # 0.03928

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    const-wide v0, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr p0, v0

    return-wide p0

    :cond_0
    const-wide v0, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr p0, v0

    const-wide v0, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr p0, v0

    const-wide v0, 0x4003333333333333L    # 2.4

    .line 13
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static zza(DD)D
    .locals 4

    .line 7
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    .line 8
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    add-double/2addr p0, v2

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-double p2, p2

    div-double/2addr p2, p0

    return-wide p2
.end method

.method private static zza(I)D
    .locals 8

    .line 10
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzej;->zza(D)D

    move-result-wide v0

    const-wide v4, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v0, v4

    .line 11
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/zzej;->zza(D)D

    move-result-wide v4

    const-wide v6, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v4, v6

    add-double/2addr v4, v0

    .line 12
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-double v0, p0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzej;->zza(D)D

    move-result-wide v0

    const-wide v2, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public static zza(III)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzej;->zzb(III)Z

    move-result p0

    if-eqz p0, :cond_0

    return p2

    :cond_0
    return p1
.end method

.method public static zza(Landroid/widget/ImageView;I)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 5
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public static zzb(III)Z
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzej;->zza(I)D

    move-result-wide v0

    .line 2
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzej;->zza(I)D

    move-result-wide p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzej;->zza(DD)D

    move-result-wide p0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double v2, p0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    return v3

    .line 3
    :cond_0
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzej;->zza(I)D

    move-result-wide v4

    invoke-static {v4, v5, v0, v1}, Lcom/google/android/libraries/places/internal/zzej;->zza(DD)D

    move-result-wide v0

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v3
.end method
