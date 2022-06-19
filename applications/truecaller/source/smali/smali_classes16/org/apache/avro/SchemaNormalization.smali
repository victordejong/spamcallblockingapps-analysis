.class public Lorg/apache/avro/SchemaNormalization;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/SchemaNormalization$FP64;
    }
.end annotation


# static fields
.field public static final EMPTY64:J = -0x3ea2dec55b28586bL


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static build(Ljava/util/Map;Lorg/apache/avro/Schema;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/avro/Schema;",
            "Ljava/lang/Appendable;",
            ")",
            "Ljava/lang/Appendable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x2c

    const/4 v4, 0x0

    const-string v5, "}"

    const/16 v6, 0x22

    const-string v7, "\""

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_5

    const/4 v8, 0x2

    if-eq v1, v8, :cond_3

    const/4 v8, 0x3

    if-eq v1, v8, :cond_3

    const/4 v8, 0x4

    if-eq v1, v8, :cond_0

    const/4 v8, 0x5

    if-eq v1, v8, :cond_5

    .line 3
    invoke-interface {p2, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x5b

    .line 4
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 5
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/Schema;

    if-nez v2, :cond_1

    .line 6
    invoke-interface {p2, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    :cond_1
    move v2, v4

    .line 7
    :goto_1
    invoke-static {p0, v0, p2}, Lorg/apache/avro/SchemaNormalization;->build(Ljava/util/Map;Lorg/apache/avro/Schema;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_2
    const/16 p0, 0x5d

    .line 8
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v1, "{\"type\":\""

    .line 9
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 10
    sget-object v1, Lorg/apache/avro/Schema$Type;->ARRAY:Lorg/apache/avro/Schema$Type;

    if-ne v0, v1, :cond_4

    .line 11
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object p1

    const-string v0, ",\"items\":"

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/avro/SchemaNormalization;->build(Ljava/util/Map;Lorg/apache/avro/Schema;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getValueType()Lorg/apache/avro/Schema;

    move-result-object p1

    const-string v0, ",\"values\":"

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/avro/SchemaNormalization;->build(Ljava/util/Map;Lorg/apache/avro/Schema;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 13
    :goto_2
    invoke-interface {p2, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0

    .line 14
    :cond_5
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 16
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0

    .line 17
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 18
    invoke-interface {p0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "{\"name\":"

    .line 19
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string v1, ",\"type\":\""

    .line 20
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 21
    sget-object v1, Lorg/apache/avro/Schema$Type;->ENUM:Lorg/apache/avro/Schema$Type;

    const-string v8, "]"

    if-ne v0, v1, :cond_9

    const-string p0, ",\"symbols\":["

    .line 22
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 23
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez v2, :cond_7

    .line 24
    invoke-interface {p2, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_4

    :cond_7
    move v2, v4

    .line 25
    :goto_4
    invoke-interface {p2, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_3

    .line 26
    :cond_8
    invoke-interface {p2, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_7

    .line 27
    :cond_9
    sget-object v1, Lorg/apache/avro/Schema$Type;->FIXED:Lorg/apache/avro/Schema$Type;

    if-ne v0, v1, :cond_a

    const-string p0, ",\"size\":"

    .line 28
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_7

    :cond_a
    const-string v0, ",\"fields\":["

    .line 29
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 30
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/Schema$Field;

    if-nez v2, :cond_b

    .line 31
    invoke-interface {p2, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_6

    :cond_b
    move v2, v4

    :goto_6
    const-string v1, "{\"name\":\""

    .line 32
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 33
    invoke-virtual {v0}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v0

    const-string v1, ",\"type\":"

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/avro/SchemaNormalization;->build(Ljava/util/Map;Lorg/apache/avro/Schema;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_5

    .line 34
    :cond_c
    invoke-interface {p2, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 35
    :goto_7
    invoke-interface {p2, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method public static fingerprint(Ljava/lang/String;[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "CRC-64-AVRO"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Lorg/apache/avro/SchemaNormalization;->fingerprint64([B)J

    move-result-wide p0

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    long-to-int v3, p0

    int-to-byte v3, v3

    .line 3
    aput-byte v3, v1, v2

    shr-long/2addr p0, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 4
    :cond_1
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static fingerprint64([B)J
    .locals 10

    .line 1
    array-length v0, p0

    const-wide v1, -0x3ea2dec55b28586bL    # -7636202.575662513

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-byte v4, p0, v3

    const/16 v5, 0x8

    ushr-long v5, v1, v5

    .line 2
    invoke-static {}, Lorg/apache/avro/SchemaNormalization$FP64;->access$000()[J

    move-result-object v7

    int-to-long v8, v4

    xor-long/2addr v1, v8

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    aget-wide v1, v7, v1

    xor-long/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static parsingFingerprint(Ljava/lang/String;Lorg/apache/avro/Schema;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/avro/SchemaNormalization;->toParsingForm(Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/avro/SchemaNormalization;->fingerprint(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static parsingFingerprint64(Lorg/apache/avro/Schema;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/apache/avro/SchemaNormalization;->toParsingForm(Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/avro/SchemaNormalization;->fingerprint64([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toParsingForm(Lorg/apache/avro/Schema;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0, v1}, Lorg/apache/avro/SchemaNormalization;->build(Ljava/util/Map;Lorg/apache/avro/Schema;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
