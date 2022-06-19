.class public Lv3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lv3/i;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u0014\u0008\u0016\u0018\u0000 A2\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002:\u0001\u000fB\u0011\u0008\u0000\u0012\u0006\u0010B\u001a\u00020\u001d\u00a2\u0006\u0004\u0008C\u0010DJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000cH\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u000eJ\u000f\u0010\u0014\u001a\u00020\u0000H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016H\u0010\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0016H\u0010\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u001dH\u0010\u00a2\u0006\u0004\u0008 \u0010\u001fJ\'\u0010%\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u0016H\u0010\u00a2\u0006\u0004\u0008%\u0010&J/\u0010*\u001a\u00020)2\u0006\u0010#\u001a\u00020\u00162\u0006\u0010\'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008*\u0010+J/\u0010,\u001a\u00020)2\u0006\u0010#\u001a\u00020\u00162\u0006\u0010\'\u001a\u00020\u001d2\u0006\u0010(\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u0015\u0010/\u001a\u00020)2\u0006\u0010.\u001a\u00020\u0000\u00a2\u0006\u0004\u0008/\u00100J\u001a\u00102\u001a\u00020)2\u0008\u0010\'\u001a\u0004\u0018\u000101H\u0096\u0002\u00a2\u0006\u0004\u00082\u00103J\u000f\u00104\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u00084\u0010\u001cJ\u000f\u00105\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u00085\u0010\u000eR$\u0010;\u001a\u0004\u0018\u00010\u000c8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u00086\u00107\u001a\u0004\u00088\u0010\u000e\"\u0004\u00089\u0010:R\"\u00104\u001a\u00020\u00168\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010<\u001a\u0004\u0008=\u0010\u001c\"\u0004\u0008>\u0010?R\u001c\u0010B\u001a\u00020\u001d8\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010@\u001a\u0004\u0008A\u0010\u001f\u00a8\u0006E"
    }
    d2 = {
        "Lv3/i;",
        "Ljava/io/Serializable;",
        "",
        "Ljava/io/ObjectInputStream;",
        "in",
        "Ls1/s;",
        "readObject",
        "(Ljava/io/ObjectInputStream;)V",
        "Ljava/io/ObjectOutputStream;",
        "out",
        "writeObject",
        "(Ljava/io/ObjectOutputStream;)V",
        "",
        "r",
        "()Ljava/lang/String;",
        "a",
        "algorithm",
        "c",
        "(Ljava/lang/String;)Lv3/i;",
        "g",
        "p",
        "()Lv3/i;",
        "",
        "pos",
        "",
        "i",
        "(I)B",
        "f",
        "()I",
        "",
        "q",
        "()[B",
        "h",
        "Lv3/f;",
        "buffer",
        "offset",
        "byteCount",
        "s",
        "(Lv3/f;II)V",
        "other",
        "otherOffset",
        "",
        "m",
        "(ILv3/i;II)Z",
        "n",
        "(I[BII)Z",
        "prefix",
        "o",
        "(Lv3/i;)Z",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "hashCode",
        "toString",
        "b",
        "Ljava/lang/String;",
        "getUtf8$okio",
        "setUtf8$okio",
        "(Ljava/lang/String;)V",
        "utf8",
        "I",
        "getHashCode$okio",
        "setHashCode$okio",
        "(I)V",
        "[B",
        "e",
        "data",
        "<init>",
        "([B)V",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final d:Lv3/i;

.field public static final e:Lv3/i$a;


# instance fields
.field public transient a:I

.field public transient b:Ljava/lang/String;

.field private final c:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv3/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv3/i$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lv3/i;->e:Lv3/i$a;

    .line 1
    new-instance v0, Lv3/i;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lv3/i;-><init>([B)V

    sput-object v0, Lv3/i;->d:Lv3/i;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/i;->c:[B

    return-void
.end method

.method public static final d(Ljava/lang/String;)Lv3/i;
    .locals 3

    const-string v0, "$this$encodeUtf8"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lv3/i;

    const-string v1, "$this$asUtf8ToByteArray"

    .line 3
    invoke-static {p0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {v0, v1}, Lv3/i;-><init>([B)V

    .line 6
    iput-object p0, v0, Lv3/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final varargs j([B)Lv3/i;
    .locals 1

    const-string v0, "data"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v0, "java.util.Arrays.copyOf(this, size)"

    invoke-static {p0, v0}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lv3/i;

    invoke-direct {v0, p0}, Lv3/i;-><init>([B)V

    return-object v0
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const-string v1, "$this$readByteString"

    .line 2
    invoke-static {p1, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_3

    .line 3
    new-array v3, v0, [B

    :goto_1
    if-ge v1, v0, :cond_2

    sub-int v4, v0, v1

    .line 4
    invoke-virtual {p1, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    add-int/2addr v1, v4

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Lv3/i;

    invoke-direct {p1, v3}, Lv3/i;-><init>([B)V

    .line 7
    const-class v0, Lv3/i;

    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "field"

    .line 8
    invoke-static {v0, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 9
    iget-object p1, p1, Lv3/i;->c:[B

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string p1, "byteCount < 0: "

    .line 10
    invoke-static {p1, v0}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv3/i;->c:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lv3/i;->c:[B

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 12

    .line 1
    iget-object v0, p0, Lv3/i;->c:[B

    .line 2
    sget-object v1, Lv3/a;->a:[B

    .line 3
    sget-object v1, Lv3/a;->a:[B

    const-string v2, "$this$encodeBase64"

    .line 4
    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "map"

    invoke-static {v1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    array-length v2, v0

    const/4 v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    .line 6
    new-array v2, v2, [B

    .line 7
    array-length v4, v0

    array-length v5, v0

    rem-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_0

    add-int/lit8 v7, v5, 0x1

    .line 8
    aget-byte v5, v0, v5

    add-int/lit8 v8, v7, 0x1

    .line 9
    aget-byte v7, v0, v7

    add-int/lit8 v9, v8, 0x1

    .line 10
    aget-byte v8, v0, v8

    add-int/lit8 v10, v6, 0x1

    and-int/lit16 v11, v5, 0xff

    shr-int/2addr v11, v3

    .line 11
    aget-byte v11, v1, v11

    aput-byte v11, v2, v6

    add-int/lit8 v6, v10, 0x1

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    and-int/lit16 v11, v7, 0xff

    shr-int/lit8 v11, v11, 0x4

    or-int/2addr v5, v11

    .line 12
    aget-byte v5, v1, v5

    aput-byte v5, v2, v10

    add-int/lit8 v5, v6, 0x1

    and-int/lit8 v7, v7, 0xf

    shl-int/2addr v7, v3

    and-int/lit16 v10, v8, 0xff

    shr-int/lit8 v10, v10, 0x6

    or-int/2addr v7, v10

    .line 13
    aget-byte v7, v1, v7

    aput-byte v7, v2, v6

    add-int/lit8 v6, v5, 0x1

    and-int/lit8 v7, v8, 0x3f

    .line 14
    aget-byte v7, v1, v7

    aput-byte v7, v2, v5

    move v5, v9

    goto :goto_0

    .line 15
    :cond_0
    array-length v7, v0

    sub-int/2addr v7, v4

    const/16 v4, 0x3d

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    if-eq v7, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v5, 0x1

    .line 16
    aget-byte v5, v0, v5

    .line 17
    aget-byte v0, v0, v7

    add-int/lit8 v7, v6, 0x1

    and-int/lit16 v8, v5, 0xff

    shr-int/2addr v8, v3

    .line 18
    aget-byte v8, v1, v8

    aput-byte v8, v2, v6

    add-int/lit8 v6, v7, 0x1

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    and-int/lit16 v8, v0, 0xff

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v5, v8

    .line 19
    aget-byte v5, v1, v5

    aput-byte v5, v2, v7

    add-int/lit8 v5, v6, 0x1

    and-int/lit8 v0, v0, 0xf

    shl-int/2addr v0, v3

    .line 20
    aget-byte v0, v1, v0

    aput-byte v0, v2, v6

    int-to-byte v0, v4

    .line 21
    aput-byte v0, v2, v5

    goto :goto_1

    .line 22
    :cond_2
    aget-byte v0, v0, v5

    add-int/lit8 v5, v6, 0x1

    and-int/lit16 v7, v0, 0xff

    shr-int/lit8 v3, v7, 0x2

    .line 23
    aget-byte v3, v1, v3

    aput-byte v3, v2, v6

    add-int/lit8 v3, v5, 0x1

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x4

    .line 24
    aget-byte v0, v1, v0

    aput-byte v0, v2, v5

    add-int/lit8 v0, v3, 0x1

    int-to-byte v1, v4

    .line 25
    aput-byte v1, v2, v3

    .line 26
    aput-byte v1, v2, v0

    :goto_1
    const-string v0, "$this$toUtf8String"

    .line 27
    invoke-static {v2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public c(Ljava/lang/String;)Lv3/i;
    .locals 2

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lv3/i;

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iget-object v1, p0, Lv3/i;->c:[B

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    const-string v1, "MessageDigest.getInstance(algorithm).digest(data)"

    invoke-static {p1, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lv3/i;-><init>([B)V

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 8

    .line 1
    check-cast p1, Lv3/i;

    const-string v0, "other"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lv3/i;->f()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lv3/i;->f()I

    move-result v1

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v2, :cond_1

    .line 6
    invoke-virtual {p0, v4}, Lv3/i;->i(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    .line 7
    invoke-virtual {p1, v4}, Lv3/i;->i(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    if-ne v6, v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-ge v6, v7, :cond_3

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    if-ge v0, v1, :cond_3

    :goto_1
    move v3, v5

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    :goto_2
    return v3
.end method

.method public final e()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/i;->c:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    instance-of v2, p1, Lv3/i;

    if-eqz v2, :cond_1

    check-cast p1, Lv3/i;

    .line 2
    invoke-virtual {p1}, Lv3/i;->f()I

    move-result v2

    .line 3
    iget-object v3, p0, Lv3/i;->c:[B

    .line 4
    array-length v4, v3

    if-ne v2, v4, :cond_1

    array-length v2, v3

    invoke-virtual {p1, v1, v3, v1, v2}, Lv3/i;->n(I[BII)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/i;->c:[B

    .line 2
    array-length v0, v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lv3/i;->c:[B

    .line 2
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v5, v0, v3

    add-int/lit8 v6, v4, 0x1

    .line 4
    sget-object v7, Lv3/d0/b;->a:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v7, v8

    aput-char v8, v1, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    .line 5
    aget-char v5, v7, v5

    aput-char v5, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public h()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/i;->c:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lv3/i;->a:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lv3/i;->c:[B

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .line 4
    iput v0, p0, Lv3/i;->a:I

    :goto_0
    return v0
.end method

.method public i(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/i;->c:[B

    .line 2
    aget-byte p1, v0, p1

    return p1
.end method

.method public m(ILv3/i;II)Z
    .locals 1

    const-string v0, "other"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lv3/i;->c:[B

    .line 2
    invoke-virtual {p2, p3, v0, p1, p4}, Lv3/i;->n(I[BII)Z

    move-result p1

    return p1
.end method

.method public n(I[BII)Z
    .locals 2

    const-string v0, "other"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lv3/i;->c:[B

    .line 2
    array-length v1, v0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_0

    if-ltz p3, :cond_0

    .line 3
    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_0

    .line 4
    invoke-static {v0, p1, p2, p3, p4}, Ls1/a/a/a/v0/f/d;->v([BI[BII)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final o(Lv3/i;)Z
    .locals 2

    const-string v0, "prefix"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lv3/i;->f()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, p1, v1, v0}, Lv3/i;->m(ILv3/i;II)Z

    move-result p1

    return p1
.end method

.method public p()Lv3/i;
    .locals 6

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lv3/i;->c:[B

    .line 2
    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 3
    aget-byte v2, v1, v0

    const/16 v3, 0x41

    int-to-byte v3, v3

    if-lt v2, v3, :cond_4

    const/16 v4, 0x5a

    int-to-byte v4, v4

    if-le v2, v4, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const-string v5, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v1, v5}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    .line 5
    aput-byte v2, v1, v0

    .line 6
    :goto_1
    array-length v0, v1

    if-ge v5, v0, :cond_3

    .line 7
    aget-byte v0, v1, v5

    if-lt v0, v3, :cond_2

    if-le v0, v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 8
    aput-byte v0, v1, v5

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 9
    :cond_3
    new-instance v0, Lv3/i;

    invoke-direct {v0, v1}, Lv3/i;-><init>([B)V

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move-object v0, p0

    :goto_4
    return-object v0
.end method

.method public q()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/i;->c:[B

    .line 2
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v0, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lv3/i;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lv3/i;->h()[B

    move-result-object v0

    const-string v1, "$this$toUtf8String"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 5
    iput-object v2, p0, Lv3/i;->b:Ljava/lang/String;

    move-object v0, v2

    :cond_0
    return-object v0
.end method

.method public s(Lv3/f;II)V
    .locals 2

    const-string v0, "buffer"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$commonWrite"

    .line 1
    invoke-static {p0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lv3/i;->c:[B

    .line 3
    invoke-virtual {p1, v0, p2, p3}, Lv3/f;->z0([BII)Lv3/f;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lv3/i;->c:[B

    .line 2
    array-length v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-string v1, "[size=0]"

    goto/16 :goto_1e

    .line 3
    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_2
    :goto_1
    const/16 v6, 0x40

    if-ge v3, v2, :cond_47

    .line 4
    aget-byte v7, v1, v3

    const/16 v8, 0xa

    const/16 v9, 0xd

    const/16 v10, 0x9f

    const/16 v11, 0x7f

    const/16 v12, 0x1f

    const v14, 0xfffd

    const/high16 v15, 0x10000

    if-ltz v7, :cond_13

    add-int/lit8 v16, v4, 0x1

    if-ne v4, v6, :cond_3

    goto/16 :goto_1b

    :cond_3
    if-eq v7, v8, :cond_8

    if-eq v7, v9, :cond_8

    if-ltz v7, :cond_4

    if-ge v12, v7, :cond_6

    :cond_4
    if-le v11, v7, :cond_5

    goto :goto_2

    :cond_5
    if-lt v10, v7, :cond_7

    :cond_6
    const/4 v4, 0x1

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_46

    :cond_8
    if-ne v7, v14, :cond_9

    goto/16 :goto_1a

    :cond_9
    if-ge v7, v15, :cond_a

    const/4 v4, 0x1

    goto :goto_4

    :cond_a
    const/4 v4, 0x2

    :goto_4
    add-int/2addr v5, v4

    add-int/lit8 v3, v3, 0x1

    :goto_5
    move/from16 v4, v16

    if-ge v3, v2, :cond_2

    .line 5
    aget-byte v7, v1, v3

    if-ltz v7, :cond_2

    add-int/lit8 v7, v3, 0x1

    .line 6
    aget-byte v3, v1, v3

    add-int/lit8 v16, v4, 0x1

    if-ne v4, v6, :cond_b

    goto/16 :goto_1b

    :cond_b
    if-eq v3, v8, :cond_10

    if-eq v3, v9, :cond_10

    if-ltz v3, :cond_c

    if-ge v12, v3, :cond_e

    :cond_c
    if-le v11, v3, :cond_d

    goto :goto_6

    :cond_d
    if-lt v10, v3, :cond_f

    :cond_e
    const/4 v4, 0x1

    goto :goto_7

    :cond_f
    :goto_6
    const/4 v4, 0x0

    :goto_7
    if-nez v4, :cond_46

    :cond_10
    if-ne v3, v14, :cond_11

    goto/16 :goto_1a

    :cond_11
    if-ge v3, v15, :cond_12

    const/4 v3, 0x1

    goto :goto_8

    :cond_12
    const/4 v3, 0x2

    :goto_8
    add-int/2addr v5, v3

    move v3, v7

    goto :goto_5

    :cond_13
    shr-int/lit8 v14, v7, 0x5

    const/4 v15, -0x2

    const/16 v13, 0x80

    if-ne v14, v15, :cond_20

    add-int/lit8 v7, v3, 0x1

    if-gt v2, v7, :cond_14

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    .line 7
    :cond_14
    aget-byte v14, v1, v3

    .line 8
    aget-byte v7, v1, v7

    and-int/lit16 v15, v7, 0xc0

    if-ne v15, v13, :cond_15

    const/4 v15, 0x1

    goto :goto_9

    :cond_15
    const/4 v15, 0x0

    :goto_9
    if-nez v15, :cond_16

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    :cond_16
    xor-int/lit16 v7, v7, 0xf80

    shl-int/lit8 v14, v14, 0x6

    xor-int/2addr v7, v14

    if-ge v7, v13, :cond_17

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    :cond_17
    add-int/lit8 v13, v4, 0x1

    if-ne v4, v6, :cond_18

    goto/16 :goto_1b

    :cond_18
    if-eq v7, v8, :cond_1d

    if-eq v7, v9, :cond_1d

    if-ltz v7, :cond_19

    if-ge v12, v7, :cond_1b

    :cond_19
    if-le v11, v7, :cond_1a

    goto :goto_a

    :cond_1a
    if-lt v10, v7, :cond_1c

    :cond_1b
    const/4 v4, 0x1

    goto :goto_b

    :cond_1c
    :goto_a
    const/4 v4, 0x0

    :goto_b
    if-nez v4, :cond_46

    :cond_1d
    const v4, 0xfffd

    if-ne v7, v4, :cond_1e

    goto/16 :goto_1a

    :cond_1e
    const/high16 v4, 0x10000

    if-ge v7, v4, :cond_1f

    const/4 v4, 0x1

    move/from16 v16, v4

    goto :goto_c

    :cond_1f
    const/16 v16, 0x2

    :goto_c
    add-int v5, v5, v16

    add-int/lit8 v3, v3, 0x2

    move v4, v13

    goto/16 :goto_1

    :cond_20
    shr-int/lit8 v10, v7, 0x4

    const v11, 0xd800

    const v12, 0xdfff

    if-ne v10, v15, :cond_31

    add-int/lit8 v7, v3, 0x2

    if-gt v2, v7, :cond_21

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    .line 9
    :cond_21
    aget-byte v10, v1, v3

    add-int/lit8 v14, v3, 0x1

    .line 10
    aget-byte v14, v1, v14

    and-int/lit16 v15, v14, 0xc0

    if-ne v15, v13, :cond_22

    const/4 v15, 0x1

    goto :goto_d

    :cond_22
    const/4 v15, 0x0

    :goto_d
    if-nez v15, :cond_23

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    .line 11
    :cond_23
    aget-byte v7, v1, v7

    and-int/lit16 v15, v7, 0xc0

    if-ne v15, v13, :cond_24

    const/4 v13, 0x1

    goto :goto_e

    :cond_24
    const/4 v13, 0x0

    :goto_e
    if-nez v13, :cond_25

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    :cond_25
    const v13, -0x1e080

    xor-int/2addr v7, v13

    shl-int/lit8 v13, v14, 0x6

    xor-int/2addr v7, v13

    shl-int/lit8 v10, v10, 0xc

    xor-int/2addr v7, v10

    const/16 v10, 0x800

    if-ge v7, v10, :cond_26

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    :cond_26
    if-le v11, v7, :cond_27

    goto :goto_f

    :cond_27
    if-lt v12, v7, :cond_28

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    :cond_28
    :goto_f
    add-int/lit8 v10, v4, 0x1

    if-ne v4, v6, :cond_29

    goto/16 :goto_1b

    :cond_29
    if-eq v7, v8, :cond_2e

    if-eq v7, v9, :cond_2e

    if-ltz v7, :cond_2a

    const/16 v4, 0x1f

    if-ge v4, v7, :cond_2c

    :cond_2a
    const/16 v4, 0x7f

    if-le v4, v7, :cond_2b

    goto :goto_10

    :cond_2b
    const/16 v4, 0x9f

    if-lt v4, v7, :cond_2d

    :cond_2c
    const/4 v4, 0x1

    goto :goto_11

    :cond_2d
    :goto_10
    const/4 v4, 0x0

    :goto_11
    if-nez v4, :cond_46

    :cond_2e
    const v4, 0xfffd

    if-ne v7, v4, :cond_2f

    goto/16 :goto_1a

    :cond_2f
    const/high16 v4, 0x10000

    if-ge v7, v4, :cond_30

    const/4 v13, 0x1

    goto :goto_12

    :cond_30
    const/4 v13, 0x2

    :goto_12
    add-int/2addr v5, v13

    add-int/lit8 v3, v3, 0x3

    move v4, v10

    goto/16 :goto_1

    :cond_31
    shr-int/lit8 v7, v7, 0x3

    if-ne v7, v15, :cond_45

    add-int/lit8 v7, v3, 0x3

    if-gt v2, v7, :cond_32

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    .line 12
    :cond_32
    aget-byte v9, v1, v3

    add-int/lit8 v10, v3, 0x1

    .line 13
    aget-byte v10, v1, v10

    and-int/lit16 v14, v10, 0xc0

    if-ne v14, v13, :cond_33

    const/4 v14, 0x1

    goto :goto_13

    :cond_33
    const/4 v14, 0x0

    :goto_13
    if-nez v14, :cond_34

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    :cond_34
    add-int/lit8 v14, v3, 0x2

    .line 14
    aget-byte v14, v1, v14

    and-int/lit16 v15, v14, 0xc0

    if-ne v15, v13, :cond_35

    const/4 v15, 0x1

    goto :goto_14

    :cond_35
    const/4 v15, 0x0

    :goto_14
    if-nez v15, :cond_36

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    .line 15
    :cond_36
    aget-byte v7, v1, v7

    and-int/lit16 v15, v7, 0xc0

    if-ne v15, v13, :cond_37

    const/4 v13, 0x1

    goto :goto_15

    :cond_37
    const/4 v13, 0x0

    :goto_15
    if-nez v13, :cond_38

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    :cond_38
    const v13, 0x381f80

    xor-int/2addr v7, v13

    shl-int/lit8 v13, v14, 0x6

    xor-int/2addr v7, v13

    shl-int/lit8 v10, v10, 0xc

    xor-int/2addr v7, v10

    shl-int/lit8 v9, v9, 0x12

    xor-int/2addr v7, v9

    const v9, 0x10ffff

    if-le v7, v9, :cond_39

    if-ne v4, v6, :cond_46

    goto :goto_1b

    :cond_39
    if-le v11, v7, :cond_3a

    goto :goto_16

    :cond_3a
    if-lt v12, v7, :cond_3b

    if-ne v4, v6, :cond_46

    goto :goto_1b

    :cond_3b
    :goto_16
    const/high16 v9, 0x10000

    if-ge v7, v9, :cond_3c

    if-ne v4, v6, :cond_46

    goto :goto_1b

    :cond_3c
    add-int/lit8 v9, v4, 0x1

    if-ne v4, v6, :cond_3d

    goto :goto_1b

    :cond_3d
    if-eq v7, v8, :cond_42

    const/16 v4, 0xd

    if-eq v7, v4, :cond_42

    if-ltz v7, :cond_3e

    const/16 v4, 0x1f

    if-ge v4, v7, :cond_40

    :cond_3e
    const/16 v4, 0x7f

    if-le v4, v7, :cond_3f

    goto :goto_17

    :cond_3f
    const/16 v4, 0x9f

    if-lt v4, v7, :cond_41

    :cond_40
    const/4 v4, 0x1

    goto :goto_18

    :cond_41
    :goto_17
    const/4 v4, 0x0

    :goto_18
    if-nez v4, :cond_46

    :cond_42
    const v4, 0xfffd

    if-ne v7, v4, :cond_43

    goto :goto_1a

    :cond_43
    const/high16 v4, 0x10000

    if-ge v7, v4, :cond_44

    const/4 v13, 0x1

    goto :goto_19

    :cond_44
    const/4 v13, 0x2

    :goto_19
    add-int/2addr v5, v13

    add-int/lit8 v3, v3, 0x4

    move v4, v9

    goto/16 :goto_1

    :cond_45
    if-ne v4, v6, :cond_46

    goto :goto_1b

    :cond_46
    :goto_1a
    const/4 v5, -0x1

    :cond_47
    :goto_1b
    const-string v1, "\u2026]"

    const/16 v2, 0x5d

    const-string v3, "[size="

    const/4 v4, -0x1

    if-ne v5, v4, :cond_4c

    .line 16
    iget-object v4, v0, Lv3/i;->c:[B

    .line 17
    array-length v4, v4

    if-gt v4, v6, :cond_48

    const-string v1, "[hex="

    .line 18
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lv3/i;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1e

    .line 19
    :cond_48
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 20
    iget-object v3, v0, Lv3/i;->c:[B

    .line 21
    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v3, v0, Lv3/i;->c:[B

    .line 23
    array-length v4, v3

    if-gt v6, v4, :cond_49

    const/4 v4, 0x1

    goto :goto_1c

    :cond_49
    const/4 v4, 0x0

    :goto_1c
    if-eqz v4, :cond_4b

    .line 24
    array-length v4, v3

    if-ne v6, v4, :cond_4a

    move-object v4, v0

    goto :goto_1d

    :cond_4a
    const-string v4, "$this$copyOfRangeImpl"

    .line 25
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    array-length v4, v3

    invoke-static {v6, v4}, Le/q/f/a/d/a;->S(II)V

    const/4 v4, 0x0

    .line 27
    invoke-static {v3, v4, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const-string v4, "java.util.Arrays.copyOfR\u2026this, fromIndex, toIndex)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v4, Lv3/i;

    invoke-direct {v4, v3}, Lv3/i;-><init>([B)V

    .line 29
    :goto_1d
    invoke-virtual {v4}, Lv3/i;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_4b
    const-string v1, "endIndex > length("

    .line 30
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 31
    iget-object v2, v0, Lv3/i;->c:[B

    .line 32
    array-length v2, v2

    const/16 v3, 0x29

    invoke-static {v1, v2, v3}, Le/d/c/a/a;->I2(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 33
    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lv3/i;->r()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 34
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v7, v8}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "\\"

    const-string v9, "\\\\"

    const/4 v10, 0x4

    .line 35
    invoke-static {v7, v8, v9, v6, v10}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    const-string v9, "\\n"

    .line 36
    invoke-static {v7, v8, v9, v6, v10}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\r"

    const-string v9, "\\r"

    .line 37
    invoke-static {v7, v8, v9, v6, v10}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    .line 38
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v5, v4, :cond_4d

    .line 39
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 40
    iget-object v3, v0, Lv3/i;->c:[B

    .line 41
    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    .line 42
    :cond_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[text="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1e
    return-object v1
.end method
