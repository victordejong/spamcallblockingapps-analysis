.class public Le/m/a/g/s/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final g:[I

.field public static final h:[I

.field public static final i:[I

.field public static final j:[I

.field public static final k:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    .line 1
    sput-object v1, Le/m/a/g/s/a;->a:[I

    const/4 v1, 0x2

    new-array v3, v1, [I

    .line 2
    fill-array-data v3, :array_0

    sput-object v3, Le/m/a/g/s/a;->b:[I

    new-array v3, v0, [I

    const v4, 0x101009c

    aput v4, v3, v2

    .line 3
    sput-object v3, Le/m/a/g/s/a;->c:[I

    new-array v3, v0, [I

    const v4, 0x1010367

    aput v4, v3, v2

    .line 4
    sput-object v3, Le/m/a/g/s/a;->d:[I

    new-array v3, v1, [I

    .line 5
    fill-array-data v3, :array_1

    sput-object v3, Le/m/a/g/s/a;->e:[I

    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 6
    fill-array-data v3, :array_2

    sput-object v3, Le/m/a/g/s/a;->f:[I

    new-array v3, v1, [I

    .line 7
    fill-array-data v3, :array_3

    sput-object v3, Le/m/a/g/s/a;->g:[I

    new-array v3, v1, [I

    .line 8
    fill-array-data v3, :array_4

    sput-object v3, Le/m/a/g/s/a;->h:[I

    new-array v0, v0, [I

    const v3, 0x10100a1

    aput v3, v0, v2

    .line 9
    sput-object v0, Le/m/a/g/s/a;->i:[I

    new-array v0, v1, [I

    .line 10
    fill-array-data v0, :array_5

    sput-object v0, Le/m/a/g/s/a;->j:[I

    .line 11
    const-class v0, Le/m/a/g/s/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/m/a/g/s/a;->k:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x1010367
        0x101009c
    .end array-data

    :array_1
    .array-data 4
        0x10100a1
        0x10100a7
    .end array-data

    :array_2
    .array-data 4
        0x10100a1
        0x1010367
        0x101009c
    .end array-data

    :array_3
    .array-data 4
        0x10100a1
        0x101009c
    .end array-data

    :array_4
    .array-data 4
        0x10100a1
        0x1010367
    .end array-data

    :array_5
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/res/ColorStateList;[I)I
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2
    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    const/16 v0, 0xff

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3
    invoke-static {p0, p1}, Ln3/k/c/a;->l(II)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-gt v1, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Le/m/a/g/s/a;->j:[I

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    :cond_0
    return-object p0

    .line 4
    :cond_1
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static c([I)Z
    .locals 8

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v0, :cond_4

    aget v6, p0, v2

    const v7, 0x101009e

    if-ne v6, v7, :cond_0

    move v3, v5

    goto :goto_2

    :cond_0
    const v7, 0x101009c

    if-ne v6, v7, :cond_1

    :goto_1
    move v4, v5

    goto :goto_2

    :cond_1
    const v7, 0x10100a7

    if-ne v6, v7, :cond_2

    goto :goto_1

    :cond_2
    const v7, 0x1010367

    if-ne v6, v7, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    move v1, v5

    :cond_5
    return v1
.end method
