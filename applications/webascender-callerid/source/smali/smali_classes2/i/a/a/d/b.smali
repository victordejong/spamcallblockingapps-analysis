.class public final Li/a/a/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Li/a/a/d/b;->b()[C

    move-result-object v0

    sput-object v0, Li/a/a/d/b;->a:[C

    .line 2
    invoke-static {}, Li/a/a/d/b;->a()[B

    return-void
.end method

.method private static a()[B
    .locals 4

    const/16 v0, 0x80

    new-array v0, v0, [B

    const/4 v1, -0x1

    .line 1
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    const-string v2, "0123456789abcdef"

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v3, v1

    .line 3
    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static b()[C
    .locals 5

    const/16 v0, 0x200

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    ushr-int/lit8 v2, v1, 0x4

    const-string v3, "0123456789abcdef"

    .line 1
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    or-int/lit16 v2, v1, 0x100

    and-int/lit8 v4, v1, 0xf

    .line 2
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static c(B[CI)V
    .locals 2

    and-int/lit16 p0, p0, 0xff

    .line 1
    sget-object v0, Li/a/a/d/b;->a:[C

    aget-char v1, v0, p0

    aput-char v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    or-int/lit16 p0, p0, 0x100

    .line 2
    aget-char p0, v0, p0

    aput-char p0, p1, p2

    return-void
.end method

.method public static d(C)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Ljava/lang/CharSequence;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 3
    invoke-static {v2}, Li/a/a/d/b;->d(C)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static f(J[CI)V
    .locals 4

    const/16 v0, 0x38

    shr-long v0, p0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 1
    invoke-static {v0, p2, p3}, Li/a/a/d/b;->c(B[CI)V

    const/16 v0, 0x30

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    add-int/lit8 v1, p3, 0x2

    .line 2
    invoke-static {v0, p2, v1}, Li/a/a/d/b;->c(B[CI)V

    const/16 v0, 0x28

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    add-int/lit8 v1, p3, 0x4

    .line 3
    invoke-static {v0, p2, v1}, Li/a/a/d/b;->c(B[CI)V

    const/16 v0, 0x20

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    add-int/lit8 v1, p3, 0x6

    .line 4
    invoke-static {v0, p2, v1}, Li/a/a/d/b;->c(B[CI)V

    const/16 v0, 0x18

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    add-int/lit8 v1, p3, 0x8

    .line 5
    invoke-static {v0, p2, v1}, Li/a/a/d/b;->c(B[CI)V

    const/16 v0, 0x10

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    add-int/lit8 v1, p3, 0xa

    .line 6
    invoke-static {v0, p2, v1}, Li/a/a/d/b;->c(B[CI)V

    const/16 v0, 0x8

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    add-int/lit8 v1, p3, 0xc

    .line 7
    invoke-static {v0, p2, v1}, Li/a/a/d/b;->c(B[CI)V

    and-long/2addr p0, v2

    long-to-int p1, p0

    int-to-byte p0, p1

    add-int/lit8 p3, p3, 0xe

    .line 8
    invoke-static {p0, p2, p3}, Li/a/a/d/b;->c(B[CI)V

    return-void
.end method
