.class public Lcom/hiya/common/phone/java/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hiya/common/phone/java/a;->a:[C

    return-void
.end method

.method public static final a([BZ)[C
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1
    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    new-array v0, v1, [C

    return-object v0

    .line 2
    :cond_1
    div-int/lit8 v3, v2, 0x3

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v4, v2, -0x1

    .line 3
    div-int/lit8 v5, v4, 0x3

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    shl-int/2addr v5, v6

    if-eqz p1, :cond_2

    add-int/lit8 v7, v5, -0x1

    .line 4
    div-int/lit8 v7, v7, 0x4c

    shl-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    add-int/2addr v5, v7

    .line 5
    new-array v7, v5, [C

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    const/16 v11, 0xa

    if-ge v8, v3, :cond_4

    add-int/lit8 v12, v8, 0x1

    .line 6
    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/lit8 v13, v12, 0x1

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v8, v12

    add-int/lit8 v12, v13, 0x1

    aget-byte v13, v0, v13

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v8, v13

    add-int/lit8 v13, v9, 0x1

    .line 7
    sget-object v14, Lcom/hiya/common/phone/java/a;->a:[C

    ushr-int/lit8 v15, v8, 0x12

    and-int/lit8 v15, v15, 0x3f

    aget-char v15, v14, v15

    aput-char v15, v7, v9

    add-int/lit8 v9, v13, 0x1

    ushr-int/lit8 v15, v8, 0xc

    and-int/lit8 v15, v15, 0x3f

    .line 8
    aget-char v15, v14, v15

    aput-char v15, v7, v13

    add-int/lit8 v13, v9, 0x1

    ushr-int/lit8 v15, v8, 0x6

    and-int/lit8 v15, v15, 0x3f

    .line 9
    aget-char v15, v14, v15

    aput-char v15, v7, v9

    add-int/lit8 v9, v13, 0x1

    and-int/lit8 v8, v8, 0x3f

    .line 10
    aget-char v8, v14, v8

    aput-char v8, v7, v13

    if-eqz p1, :cond_3

    add-int/lit8 v10, v10, 0x1

    const/16 v8, 0x13

    if-ne v10, v8, :cond_3

    add-int/lit8 v8, v5, -0x2

    if-ge v9, v8, :cond_3

    add-int/lit8 v8, v9, 0x1

    const/16 v10, 0xd

    .line 11
    aput-char v10, v7, v9

    add-int/lit8 v9, v8, 0x1

    .line 12
    aput-char v11, v7, v8

    const/4 v10, 0x0

    :cond_3
    move v8, v12

    goto :goto_2

    :cond_4
    sub-int/2addr v2, v3

    if-lez v2, :cond_7

    .line 13
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v11

    if-ne v2, v6, :cond_5

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x2

    :cond_5
    or-int v0, v3, v1

    add-int/lit8 v1, v5, -0x4

    .line 14
    sget-object v3, Lcom/hiya/common/phone/java/a;->a:[C

    shr-int/lit8 v4, v0, 0xc

    aget-char v4, v3, v4

    aput-char v4, v7, v1

    add-int/lit8 v1, v5, -0x3

    ushr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    .line 15
    aget-char v4, v3, v4

    aput-char v4, v7, v1

    add-int/lit8 v1, v5, -0x2

    const/16 v4, 0x3d

    if-ne v2, v6, :cond_6

    and-int/lit8 v0, v0, 0x3f

    .line 16
    aget-char v0, v3, v0

    goto :goto_3

    :cond_6
    const/16 v0, 0x3d

    :goto_3
    aput-char v0, v7, v1

    add-int/lit8 v5, v5, -0x1

    .line 17
    aput-char v4, v7, v5

    :cond_7
    return-object v7
.end method

.method public static final b([BZ)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/hiya/common/phone/java/a;->a([BZ)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
