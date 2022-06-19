.class public final Lp3/b/c/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x200

    new-array v0, v0, [C

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-string v3, "0123456789abcdef"

    const/16 v4, 0x100

    if-ge v2, v4, :cond_0

    ushr-int/lit8 v4, v2, 0x4

    .line 1
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v2

    or-int/lit16 v4, v2, 0x100

    and-int/lit8 v5, v2, 0xf

    .line 2
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    sput-object v0, Lp3/b/c/h;->a:[C

    const/16 v0, 0x80

    new-array v0, v0, [B

    const/4 v2, -0x1

    .line 4
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    :goto_1
    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 5
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v4, v1

    .line 6
    aput-byte v4, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static a(B[CI)V
    .locals 2

    and-int/lit16 p0, p0, 0xff

    .line 1
    sget-object v0, Lp3/b/c/h;->a:[C

    aget-char v1, v0, p0

    aput-char v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    or-int/lit16 p0, p0, 0x100

    .line 2
    aget-char p0, v0, p0

    aput-char p0, p1, p2

    return-void
.end method

.method public static b(J[CI)V
    .locals 4

    const/16 v0, 0x38

    shr-long v0, p0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 1
    invoke-static {v0, p2, p3}, Lp3/b/c/h;->a(B[CI)V

    const/16 v0, 0x30

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    add-int/lit8 v1, p3, 0x2

    .line 2
    invoke-static {v0, p2, v1}, Lp3/b/c/h;->a(B[CI)V

    const/16 v0, 0x28

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    add-int/lit8 v1, p3, 0x4

    .line 3
    invoke-static {v0, p2, v1}, Lp3/b/c/h;->a(B[CI)V

    const/16 v0, 0x20

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    add-int/lit8 v1, p3, 0x6

    .line 4
    invoke-static {v0, p2, v1}, Lp3/b/c/h;->a(B[CI)V

    const/16 v0, 0x18

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    add-int/lit8 v1, p3, 0x8

    .line 5
    invoke-static {v0, p2, v1}, Lp3/b/c/h;->a(B[CI)V

    const/16 v0, 0x10

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    add-int/lit8 v1, p3, 0xa

    .line 6
    invoke-static {v0, p2, v1}, Lp3/b/c/h;->a(B[CI)V

    const/16 v0, 0x8

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    add-int/lit8 v1, p3, 0xc

    .line 7
    invoke-static {v0, p2, v1}, Lp3/b/c/h;->a(B[CI)V

    and-long/2addr p0, v2

    long-to-int p0, p0

    int-to-byte p0, p0

    add-int/lit8 p3, p3, 0xe

    .line 8
    invoke-static {p0, p2, p3}, Lp3/b/c/h;->a(B[CI)V

    return-void
.end method
