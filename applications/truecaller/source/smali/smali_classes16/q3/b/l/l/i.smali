.class public final Lq3/b/l/l/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x7e

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-gt v1, v2, :cond_0

    const/16 v2, 0xb

    .line 1
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    const/4 v3, 0x3

    aput-byte v3, v0, v1

    const/16 v4, 0xa

    aput-byte v3, v0, v4

    const/16 v4, 0xd

    aput-byte v3, v0, v4

    aput-byte v3, v0, v2

    const/16 v2, 0x2c

    const/4 v3, 0x4

    aput-byte v3, v0, v2

    const/16 v2, 0x3a

    const/4 v3, 0x5

    aput-byte v3, v0, v2

    const/16 v2, 0x7b

    const/4 v3, 0x6

    aput-byte v3, v0, v2

    const/16 v2, 0x7d

    const/4 v3, 0x7

    aput-byte v3, v0, v2

    const/16 v2, 0x5b

    const/16 v3, 0x8

    aput-byte v3, v0, v2

    const/16 v2, 0x5d

    aput-byte v1, v0, v2

    const/16 v1, 0x22

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 2
    sput-object v0, Lq3/b/l/l/i;->a:[B

    return-void
.end method

.method public static final a(C)B
    .locals 1

    const/16 v0, 0x7e

    if-ge p0, v0, :cond_0

    .line 1
    sget-object v0, Lq3/b/l/l/i;->a:[B

    aget-byte p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
