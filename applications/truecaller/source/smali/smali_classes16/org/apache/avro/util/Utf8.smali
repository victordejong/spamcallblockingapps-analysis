.class public Lorg/apache/avro/util/Utf8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/avro/util/Utf8;",
        ">;",
        "Ljava/lang/CharSequence;"
    }
.end annotation


# static fields
.field private static final EMPTY:[B

.field private static final MAX_LENGTH:I

.field private static final MAX_LENGTH_PROPERTY:Ljava/lang/String; = "org.apache.org.apache.avro.limits.string.maxLength"


# instance fields
.field private bytes:[B

.field private hash:I

.field private length:I

.field private string:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    sput-object v0, Lorg/apache/avro/util/Utf8;->EMPTY:[B

    const-string v0, "org.apache.org.apache.avro.limits.string.maxLength"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-static {v0}, Lorg/apache/avro/util/tc/Java8Support;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    const-class v2, Lorg/apache/avro/util/Utf8;

    invoke-static {v2}, Lw3/d/c;->b(Ljava/lang/Class;)Lw3/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse property org.apache.org.apache.avro.limits.string.maxLength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lw3/d/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const v0, 0x7fffffff

    .line 5
    :goto_0
    sput v0, Lorg/apache/avro/util/Utf8;->MAX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/apache/avro/util/Utf8;->EMPTY:[B

    iput-object v0, p0, Lorg/apache/avro/util/Utf8;->bytes:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lorg/apache/avro/util/Utf8;->getBytesFor(Ljava/lang/String;)[B

    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    invoke-static {v1}, Lorg/apache/avro/util/Utf8;->checkLength(I)V

    .line 7
    iput-object v0, p0, Lorg/apache/avro/util/Utf8;->bytes:[B

    .line 8
    iput v1, p0, Lorg/apache/avro/util/Utf8;->length:I

    .line 9
    iput-object p1, p0, Lorg/apache/avro/util/Utf8;->string:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/util/Utf8;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iget v0, p1, Lorg/apache/avro/util/Utf8;->length:I

    iput v0, p0, Lorg/apache/avro/util/Utf8;->length:I

    .line 12
    iget-object v0, p1, Lorg/apache/avro/util/Utf8;->bytes:[B

    iget v1, p1, Lorg/apache/avro/util/Utf8;->length:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/avro/util/Utf8;->bytes:[B

    .line 13
    iget-object v0, p1, Lorg/apache/avro/util/Utf8;->string:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/avro/util/Utf8;->string:Ljava/lang/String;

    .line 14
    iget p1, p1, Lorg/apache/avro/util/Utf8;->hash:I

    iput p1, p0, Lorg/apache/avro/util/Utf8;->hash:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    array-length v0, p1

    .line 17
    invoke-static {v0}, Lorg/apache/avro/util/Utf8;->checkLength(I)V

    .line 18
    iput-object p1, p0, Lorg/apache/avro/util/Utf8;->bytes:[B

    .line 19
    iput v0, p0, Lorg/apache/avro/util/Utf8;->length:I

    return-void
.end method

.method private static checkLength(I)V
    .locals 3

    .line 1
    sget v0, Lorg/apache/avro/util/Utf8;->MAX_LENGTH:I

    if-gt p0, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    const-string v1, "String length "

    const-string v2, " exceeds maximum allowed"

    invoke-static {v1, p0, v2}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBytesFor(Ljava/lang/String;)[B
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/util/Utf8;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/avro/util/Utf8;

    invoke-virtual {p0, p1}, Lorg/apache/avro/util/Utf8;->compareTo(Lorg/apache/avro/util/Utf8;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/avro/util/Utf8;)I
    .locals 6

    .line 2
    iget-object v0, p0, Lorg/apache/avro/util/Utf8;->bytes:[B

    iget v2, p0, Lorg/apache/avro/util/Utf8;->length:I

    iget-object v3, p1, Lorg/apache/avro/util/Utf8;->bytes:[B

    iget v5, p1, Lorg/apache/avro/util/Utf8;->length:I

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lorg/apache/avro/io/BinaryData;->compareBytes([BII[BII)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/avro/util/Utf8;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/avro/util/Utf8;

    .line 3
    iget v1, p0, Lorg/apache/avro/util/Utf8;->length:I

    iget v3, p1, Lorg/apache/avro/util/Utf8;->length:I

    if-eq v1, v3, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object p1, p1, Lorg/apache/avro/util/Utf8;->bytes:[B

    move v1, v2

    .line 5
    :goto_0
    iget v3, p0, Lorg/apache/avro/util/Utf8;->length:I

    if-ge v1, v3, :cond_4

    .line 6
    iget-object v3, p0, Lorg/apache/avro/util/Utf8;->bytes:[B

    aget-byte v3, v3, v1

    aget-byte v4, p1, v1

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public getByteLength()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/avro/util/Utf8;->length:I

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/util/Utf8;->bytes:[B

    return-object v0
.end method

.method public getLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/avro/util/Utf8;->length:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lorg/apache/avro/util/Utf8;->hash:I

    if-nez v0, :cond_1

    .line 2
    iget-object v1, p0, Lorg/apache/avro/util/Utf8;->bytes:[B

    .line 3
    iget v2, p0, Lorg/apache/avro/util/Utf8;->length:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    aget-byte v4, v1, v3

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput v0, p0, Lorg/apache/avro/util/Utf8;->hash:I

    :cond_1
    return v0
.end method

.method public length()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/util/Utf8;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/String;)Lorg/apache/avro/util/Utf8;
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/apache/avro/util/Utf8;->getBytesFor(Ljava/lang/String;)[B

    move-result-object v0

    .line 2
    array-length v1, v0

    .line 3
    invoke-static {v1}, Lorg/apache/avro/util/Utf8;->checkLength(I)V

    .line 4
    iput-object v0, p0, Lorg/apache/avro/util/Utf8;->bytes:[B

    .line 5
    iput v1, p0, Lorg/apache/avro/util/Utf8;->length:I

    .line 6
    iput-object p1, p0, Lorg/apache/avro/util/Utf8;->string:Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lorg/apache/avro/util/Utf8;->hash:I

    return-object p0
.end method

.method public set(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;
    .locals 4

    .line 8
    iget-object v0, p0, Lorg/apache/avro/util/Utf8;->bytes:[B

    array-length v0, v0

    iget v1, p1, Lorg/apache/avro/util/Utf8;->length:I

    if-ge v0, v1, :cond_0

    .line 9
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/avro/util/Utf8;->bytes:[B

    .line 10
    :cond_0
    iput v1, p0, Lorg/apache/avro/util/Utf8;->length:I

    .line 11
    iget-object v0, p1, Lorg/apache/avro/util/Utf8;->bytes:[B

    iget-object v2, p0, Lorg/apache/avro/util/Utf8;->bytes:[B

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object v0, p1, Lorg/apache/avro/util/Utf8;->string:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/avro/util/Utf8;->string:Ljava/lang/String;

    .line 13
    iget p1, p1, Lorg/apache/avro/util/Utf8;->hash:I

    iput p1, p0, Lorg/apache/avro/util/Utf8;->hash:I

    return-object p0
.end method

.method public setByteLength(I)Lorg/apache/avro/util/Utf8;
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/apache/avro/util/Utf8;->checkLength(I)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/util/Utf8;->bytes:[B

    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 3
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/avro/util/Utf8;->bytes:[B

    .line 4
    :cond_0
    iput p1, p0, Lorg/apache/avro/util/Utf8;->length:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/apache/avro/util/Utf8;->string:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lorg/apache/avro/util/Utf8;->hash:I

    return-object p0
.end method

.method public setLength(I)Lorg/apache/avro/util/Utf8;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/util/Utf8;->setByteLength(I)Lorg/apache/avro/util/Utf8;

    move-result-object p1

    return-object p1
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/util/Utf8;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lorg/apache/avro/util/Utf8;->length:I

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/util/Utf8;->string:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/avro/util/Utf8;->bytes:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/avro/util/Utf8;->length:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v0, p0, Lorg/apache/avro/util/Utf8;->string:Ljava/lang/String;

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/apache/avro/util/Utf8;->string:Ljava/lang/String;

    return-object v0
.end method
