.class public final Lorg/bson/types/ObjectId;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/bson/types/ObjectId;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final j:I

.field private static final k:S

.field private static final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final m:[C


# instance fields
.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/bson/types/ObjectId;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lorg/bson/types/ObjectId;->m:[C

    .line 3
    :try_start_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/high16 v1, 0x1000000

    .line 4
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v1

    sput v1, Lorg/bson/types/ObjectId;->j:I

    const v1, 0x8000

    .line 5
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    int-to-short v0, v0

    sput-short v0, Lorg/bson/types/ObjectId;->k:S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v0}, Lorg/bson/types/ObjectId;-><init>(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lorg/bson/types/ObjectId;-><init>(IIZ)V

    return-void
.end method

.method constructor <init>(III)V
    .locals 0

    .line 17
    invoke-static {p1, p2, p3}, Lorg/bson/types/ObjectId;->p(III)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bson/types/ObjectId;-><init>([B)V

    return-void
.end method

.method public constructor <init>(IISI)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 5
    invoke-direct/range {v0 .. v5}, Lorg/bson/types/ObjectId;-><init>(IISIZ)V

    return-void
.end method

.method private constructor <init>(IISIZ)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    and-int v1, p2, v0

    if-nez v1, :cond_2

    if-eqz p5, :cond_1

    and-int p5, p4, v0

    if-nez p5, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The counter must be between 0 and 16777215 (it must fit in three bytes)."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    :goto_0
    iput p1, p0, Lorg/bson/types/ObjectId;->f:I

    const p1, 0xffffff

    and-int/2addr p1, p4

    .line 11
    iput p1, p0, Lorg/bson/types/ObjectId;->g:I

    .line 12
    iput p2, p0, Lorg/bson/types/ObjectId;->h:I

    .line 13
    iput-short p3, p0, Lorg/bson/types/ObjectId;->i:S

    return-void

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The machine identifier must be between 0 and 16777215 (it must fit in three bytes)."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(IIZ)V
    .locals 6

    .line 7
    sget v2, Lorg/bson/types/ObjectId;->j:I

    sget-short v3, Lorg/bson/types/ObjectId;->k:S

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/bson/types/ObjectId;-><init>(IISIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-static {p1}, Lorg/bson/types/ObjectId;->t(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bson/types/ObjectId;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "buffer"

    .line 19
    invoke-static {v0, p1}, Lorg/bson/a/a;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "buffer.remaining() >=12"

    invoke-static {v2, v0}, Lorg/bson/a/a;->b(Ljava/lang/String;Z)V

    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lorg/bson/types/ObjectId;->q(BBBB)I

    move-result v0

    iput v0, p0, Lorg/bson/types/ObjectId;->f:I

    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lorg/bson/types/ObjectId;->q(BBBB)I

    move-result v0

    iput v0, p0, Lorg/bson/types/ObjectId;->h:I

    .line 23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v0, v2}, Lorg/bson/types/ObjectId;->s(BB)S

    move-result v0

    iput-short v0, p0, Lorg/bson/types/ObjectId;->i:S

    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    invoke-static {v1, v0, v2, p1}, Lorg/bson/types/ObjectId;->q(BBBB)I

    move-result p1

    iput p1, p0, Lorg/bson/types/ObjectId;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    .line 2
    invoke-static {p1}, Lorg/bson/types/ObjectId;->d(Ljava/util/Date;)I

    move-result p1

    sget-object v0, Lorg/bson/types/ObjectId;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/bson/types/ObjectId;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;I)V
    .locals 1

    .line 3
    invoke-static {p1}, Lorg/bson/types/ObjectId;->d(Ljava/util/Date;)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/bson/types/ObjectId;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;ISI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-static {p1}, Lorg/bson/types/ObjectId;->d(Ljava/util/Date;)I

    move-result p1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bson/types/ObjectId;-><init>(IISI)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const-string v0, "bytes"

    .line 16
    invoke-static {v0, p1}, Lorg/bson/a/a;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, [B

    array-length v0, v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "bytes has length of 12"

    invoke-static {v1, p1, v0}, Lorg/bson/a/a;->a(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bson/types/ObjectId;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static d(Ljava/util/Date;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method private static h(I)B
    .locals 0

    int-to-byte p0, p0

    return p0
.end method

.method private static j(I)B
    .locals 0

    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    return p0
.end method

.method private static k(I)B
    .locals 0

    shr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    return p0
.end method

.method private static m(I)B
    .locals 0

    shr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    return p0
.end method

.method public static n(Ljava/lang/String;)Z
    .locals 5

    if-eqz p0, :cond_5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_1

    const/16 v4, 0x39

    if-gt v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x61

    if-lt v3, v4, :cond_2

    const/16 v4, 0x66

    if-gt v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x41

    if-lt v3, v4, :cond_3

    const/16 v4, 0x46

    if-gt v3, v4, :cond_3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    const/4 p0, 0x1

    return p0

    .line 3
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static p(III)[B
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 1
    invoke-static {p0}, Lorg/bson/types/ObjectId;->m(I)B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 2
    invoke-static {p0}, Lorg/bson/types/ObjectId;->k(I)B

    move-result v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 3
    invoke-static {p0}, Lorg/bson/types/ObjectId;->j(I)B

    move-result v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 4
    invoke-static {p0}, Lorg/bson/types/ObjectId;->h(I)B

    move-result p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    .line 5
    invoke-static {p1}, Lorg/bson/types/ObjectId;->m(I)B

    move-result p0

    const/4 v1, 0x4

    aput-byte p0, v0, v1

    .line 6
    invoke-static {p1}, Lorg/bson/types/ObjectId;->k(I)B

    move-result p0

    const/4 v1, 0x5

    aput-byte p0, v0, v1

    .line 7
    invoke-static {p1}, Lorg/bson/types/ObjectId;->j(I)B

    move-result p0

    const/4 v1, 0x6

    aput-byte p0, v0, v1

    .line 8
    invoke-static {p1}, Lorg/bson/types/ObjectId;->h(I)B

    move-result p0

    const/4 p1, 0x7

    aput-byte p0, v0, p1

    .line 9
    invoke-static {p2}, Lorg/bson/types/ObjectId;->m(I)B

    move-result p0

    const/16 p1, 0x8

    aput-byte p0, v0, p1

    .line 10
    invoke-static {p2}, Lorg/bson/types/ObjectId;->k(I)B

    move-result p0

    const/16 p1, 0x9

    aput-byte p0, v0, p1

    .line 11
    invoke-static {p2}, Lorg/bson/types/ObjectId;->j(I)B

    move-result p0

    const/16 p1, 0xa

    aput-byte p0, v0, p1

    .line 12
    invoke-static {p2}, Lorg/bson/types/ObjectId;->h(I)B

    move-result p0

    const/16 p1, 0xb

    aput-byte p0, v0, p1

    return-object v0
.end method

.method private static q(BBBB)I
    .locals 0

    shl-int/lit8 p0, p0, 0x18

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    and-int/lit16 p1, p2, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, p3, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method private static s(BB)S
    .locals 0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method private static t(Ljava/lang/String;)[B
    .locals 5

    .line 1
    invoke-static {p0}, Lorg/bson/types/ObjectId;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 2
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hexadecimal representation of an ObjectId: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static v(S)B
    .locals 0

    int-to-byte p0, p0

    return p0
.end method

.method private static w(S)B
    .locals 0

    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    return p0
.end method


# virtual methods
.method public c(Lorg/bson/types/ObjectId;)I
    .locals 5

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lorg/bson/types/ObjectId;->x()[B

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lorg/bson/types/ObjectId;->x()[B

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xc

    if-ge v2, v3, :cond_2

    .line 4
    aget-byte v3, v0, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_1

    .line 5
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    if-ge v0, p1, :cond_0

    const/4 p1, -0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    :goto_1
    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/bson/types/ObjectId;

    invoke-virtual {p0, p1}, Lorg/bson/types/ObjectId;->c(Lorg/bson/types/ObjectId;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1
    const-class v2, Lorg/bson/types/ObjectId;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lorg/bson/types/ObjectId;

    .line 3
    iget v2, p0, Lorg/bson/types/ObjectId;->g:I

    iget v3, p1, Lorg/bson/types/ObjectId;->g:I

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Lorg/bson/types/ObjectId;->f:I

    iget v3, p1, Lorg/bson/types/ObjectId;->f:I

    if-eq v2, v3, :cond_3

    return v1

    .line 5
    :cond_3
    iget v2, p0, Lorg/bson/types/ObjectId;->h:I

    iget v3, p1, Lorg/bson/types/ObjectId;->h:I

    if-eq v2, v3, :cond_4

    return v1

    .line 6
    :cond_4
    iget-short v2, p0, Lorg/bson/types/ObjectId;->i:S

    iget-short p1, p1, Lorg/bson/types/ObjectId;->i:S

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/bson/types/ObjectId;->f:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lorg/bson/types/ObjectId;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Lorg/bson/types/ObjectId;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-short v1, p0, Lorg/bson/types/ObjectId;->i:S

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bson/types/ObjectId;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/nio/ByteBuffer;)V
    .locals 2

    const-string v0, "buffer"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/a/a;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "buffer.remaining() >=12"

    invoke-static {v1, v0}, Lorg/bson/a/a;->b(Ljava/lang/String;Z)V

    .line 3
    iget v0, p0, Lorg/bson/types/ObjectId;->f:I

    invoke-static {v0}, Lorg/bson/types/ObjectId;->m(I)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 4
    iget v0, p0, Lorg/bson/types/ObjectId;->f:I

    invoke-static {v0}, Lorg/bson/types/ObjectId;->k(I)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5
    iget v0, p0, Lorg/bson/types/ObjectId;->f:I

    invoke-static {v0}, Lorg/bson/types/ObjectId;->j(I)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 6
    iget v0, p0, Lorg/bson/types/ObjectId;->f:I

    invoke-static {v0}, Lorg/bson/types/ObjectId;->h(I)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 7
    iget v0, p0, Lorg/bson/types/ObjectId;->h:I

    invoke-static {v0}, Lorg/bson/types/ObjectId;->k(I)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 8
    iget v0, p0, Lorg/bson/types/ObjectId;->h:I

    invoke-static {v0}, Lorg/bson/types/ObjectId;->j(I)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 9
    iget v0, p0, Lorg/bson/types/ObjectId;->h:I

    invoke-static {v0}, Lorg/bson/types/ObjectId;->h(I)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 10
    iget-short v0, p0, Lorg/bson/types/ObjectId;->i:S

    invoke-static {v0}, Lorg/bson/types/ObjectId;->w(S)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 11
    iget-short v0, p0, Lorg/bson/types/ObjectId;->i:S

    invoke-static {v0}, Lorg/bson/types/ObjectId;->v(S)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 12
    iget v0, p0, Lorg/bson/types/ObjectId;->g:I

    invoke-static {v0}, Lorg/bson/types/ObjectId;->k(I)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 13
    iget v0, p0, Lorg/bson/types/ObjectId;->g:I

    invoke-static {v0}, Lorg/bson/types/ObjectId;->j(I)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 14
    iget v0, p0, Lorg/bson/types/ObjectId;->g:I

    invoke-static {v0}, Lorg/bson/types/ObjectId;->h(I)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public x()[B
    .locals 1

    const/16 v0, 0xc

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lorg/bson/types/ObjectId;->u(Ljava/nio/ByteBuffer;)V

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 9

    const/16 v0, 0x18

    new-array v0, v0, [C

    .line 1
    invoke-virtual {p0}, Lorg/bson/types/ObjectId;->x()[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v5, v1, v3

    add-int/lit8 v6, v4, 0x1

    .line 2
    sget-object v7, Lorg/bson/types/ObjectId;->m:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v7, v8

    aput-char v8, v0, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    .line 3
    aget-char v5, v7, v5

    aput-char v5, v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method
