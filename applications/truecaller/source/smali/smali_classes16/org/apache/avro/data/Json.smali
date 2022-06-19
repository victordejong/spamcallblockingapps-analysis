.class public Lorg/apache/avro/data/Json;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/data/Json$JsonType;,
        Lorg/apache/avro/data/Json$ObjectReader;,
        Lorg/apache/avro/data/Json$ObjectWriter;
    }
.end annotation


# static fields
.field public static final FACTORY:Le/k/a/b/e;

.field public static final MAPPER:Le/k/a/c/r;

.field public static final SCHEMA:Lorg/apache/avro/Schema;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/k/a/b/e;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Le/k/a/b/e;-><init>(Le/k/a/b/n;)V

    .line 3
    sput-object v0, Lorg/apache/avro/data/Json;->FACTORY:Le/k/a/b/e;

    .line 4
    new-instance v2, Le/k/a/c/r;

    .line 5
    invoke-direct {v2, v0, v1, v1}, Le/k/a/c/r;-><init>(Le/k/a/b/e;Le/k/a/c/l0/j;Le/k/a/c/d0/l;)V

    .line 6
    sput-object v2, Lorg/apache/avro/data/Json;->MAPPER:Le/k/a/c/r;

    .line 7
    :try_start_0
    const-class v0, Lorg/apache/avro/data/Json;

    const-string v1, "/org/apache/org.apache.avro/data/Json.avsc"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    new-instance v1, Lorg/apache/avro/Schema$Parser;

    invoke-direct {v1}, Lorg/apache/avro/Schema$Parser;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/avro/Schema$Parser;->parse(Ljava/io/InputStream;)Lorg/apache/avro/Schema;

    move-result-object v1

    sput-object v1, Lorg/apache/avro/data/Json;->SCHEMA:Lorg/apache/avro/Schema;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 9
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 11
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/apache/avro/data/Json;->writeObject(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/avro/data/Json;->readObject(Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lorg/apache/avro/data/Json;->MAPPER:Le/k/a/c/r;

    sget-object v1, Lorg/apache/avro/data/Json;->FACTORY:Le/k/a/b/e;

    invoke-virtual {v1, p0}, Le/k/a/b/e;->g(Ljava/lang/String;)Le/k/a/b/j;

    move-result-object p0

    invoke-virtual {v0, p0}, Le/k/a/c/r;->i(Le/k/a/b/j;)Le/k/a/b/t;

    move-result-object p0

    check-cast p0, Le/k/a/c/l;

    invoke-static {p0}, Lorg/apache/avro/util/internal/JacksonUtils;->toObject(Le/k/a/c/l;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static read(Lorg/apache/avro/io/Decoder;)Le/k/a/c/l;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/k0/l;->b:Le/k/a/c/k0/l;

    invoke-static {}, Lorg/apache/avro/data/Json$JsonType;->values()[Lorg/apache/avro/data/Json$JsonType;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->readIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance p0, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Unexpected Json node type"

    invoke-direct {p0, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_0
    new-instance v1, Le/k/a/c/k0/s;

    invoke-direct {v1, v0}, Le/k/a/c/k0/s;-><init>(Le/k/a/c/k0/l;)V

    .line 4
    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->readMapStart()J

    move-result-wide v6

    :goto_0
    cmp-long v0, v6, v4

    if-lez v0, :cond_1

    move-wide v8, v4

    :goto_1
    cmp-long v0, v8, v6

    if-gez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/avro/data/Json;->read(Lorg/apache/avro/io/Decoder;)Le/k/a/c/l;

    move-result-object v10

    invoke-virtual {v1, v0, v10}, Le/k/a/c/k0/s;->O(Ljava/lang/String;Le/k/a/c/l;)Le/k/a/c/l;

    add-long/2addr v8, v2

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->mapNext()J

    move-result-wide v6

    goto :goto_0

    :cond_1
    return-object v1

    .line 7
    :pswitch_1
    new-instance v1, Le/k/a/c/k0/a;

    invoke-direct {v1, v0}, Le/k/a/c/k0/a;-><init>(Le/k/a/c/k0/l;)V

    .line 8
    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->readArrayStart()J

    move-result-wide v6

    :goto_2
    cmp-long v0, v6, v4

    if-lez v0, :cond_3

    move-wide v8, v4

    :goto_3
    cmp-long v0, v8, v6

    if-gez v0, :cond_2

    .line 9
    invoke-static {p0}, Lorg/apache/avro/data/Json;->read(Lorg/apache/avro/io/Decoder;)Le/k/a/c/l;

    move-result-object v0

    invoke-virtual {v1, v0}, Le/k/a/c/k0/a;->N(Le/k/a/c/l;)Le/k/a/c/k0/a;

    add-long/2addr v8, v2

    goto :goto_3

    .line 10
    :cond_2
    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->arrayNext()J

    move-result-wide v6

    goto :goto_2

    :cond_3
    return-object v1

    .line 11
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->readNull()V

    .line 12
    sget-object p0, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

    return-object p0

    .line 13
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->readBoolean()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Le/k/a/c/k0/e;->b:Le/k/a/c/k0/e;

    goto :goto_4

    :cond_4
    sget-object p0, Le/k/a/c/k0/e;->c:Le/k/a/c/k0/e;

    :goto_4
    return-object p0

    .line 14
    :pswitch_4
    new-instance v0, Le/k/a/c/k0/u;

    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Le/k/a/c/k0/u;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 15
    :pswitch_5
    new-instance v0, Le/k/a/c/k0/h;

    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->readDouble()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Le/k/a/c/k0/h;-><init>(D)V

    return-object v0

    .line 16
    :pswitch_6
    new-instance v0, Le/k/a/c/k0/n;

    invoke-virtual {p0}, Lorg/apache/avro/io/Decoder;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Le/k/a/c/k0/n;-><init>(J)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readObject(Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/avro/data/Json;->read(Lorg/apache/avro/io/Decoder;)Le/k/a/c/l;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/avro/util/internal/JacksonUtils;->toObject(Le/k/a/c/l;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/avro/util/internal/JacksonUtils;->toJsonNode(Ljava/lang/Object;)Le/k/a/c/l;

    move-result-object p0

    invoke-virtual {p0}, Le/k/a/c/l;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static write(Le/k/a/c/l;Lorg/apache/avro/io/Encoder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Le/k/a/b/t;->a()Le/k/a/b/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Le/k/a/b/t;->a()Le/k/a/b/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " unexpected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    sget-object p0, Lorg/apache/avro/data/Json$JsonType;->NULL:Lorg/apache/avro/data/Json$JsonType;

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 4
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto/16 :goto_2

    .line 5
    :pswitch_1
    sget-object p0, Lorg/apache/avro/data/Json$JsonType;->BOOLEAN:Lorg/apache/avro/data/Json$JsonType;

    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 6
    invoke-virtual {p1, v3}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    goto/16 :goto_2

    .line 7
    :pswitch_2
    sget-object p0, Lorg/apache/avro/data/Json$JsonType;->BOOLEAN:Lorg/apache/avro/data/Json$JsonType;

    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 8
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    goto/16 :goto_2

    .line 9
    :pswitch_3
    sget-object v0, Lorg/apache/avro/data/Json$JsonType;->DOUBLE:Lorg/apache/avro/data/Json$JsonType;

    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 10
    invoke-virtual {p0}, Le/k/a/c/l;->q()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/avro/io/Encoder;->writeDouble(D)V

    goto/16 :goto_2

    .line 11
    :pswitch_4
    sget-object v0, Lorg/apache/avro/data/Json$JsonType;->LONG:Lorg/apache/avro/data/Json$JsonType;

    invoke-virtual {p1, v3}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 12
    invoke-virtual {p0}, Le/k/a/c/l;->K()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/avro/io/Encoder;->writeLong(J)V

    goto :goto_2

    .line 13
    :pswitch_5
    sget-object v0, Lorg/apache/avro/data/Json$JsonType;->STRING:Lorg/apache/avro/data/Json$JsonType;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 14
    invoke-virtual {p0}, Le/k/a/c/l;->L()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 15
    :cond_0
    sget-object v0, Lorg/apache/avro/data/Json$JsonType;->ARRAY:Lorg/apache/avro/data/Json$JsonType;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 16
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 17
    invoke-virtual {p0}, Le/k/a/c/l;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 18
    invoke-virtual {p0}, Le/k/a/c/l;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/k/a/c/l;

    .line 19
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 20
    invoke-static {v0, p1}, Lorg/apache/avro/data/Json;->write(Le/k/a/c/l;Lorg/apache/avro/io/Encoder;)V

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    goto :goto_2

    .line 22
    :cond_2
    sget-object v0, Lorg/apache/avro/data/Json$JsonType;->OBJECT:Lorg/apache/avro/data/Json$JsonType;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 23
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeMapStart()V

    .line 24
    invoke-virtual {p0}, Le/k/a/c/l;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 25
    invoke-virtual {p0}, Le/k/a/c/l;->t()Ljava/util/Iterator;

    move-result-object v0

    .line 26
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 27
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 29
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, v1}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/avro/data/Json;->write(Le/k/a/c/l;Lorg/apache/avro/io/Encoder;)V

    goto :goto_1

    .line 31
    :cond_3
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeMapEnd()V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static writeObject(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/avro/util/internal/JacksonUtils;->toJsonNode(Ljava/lang/Object;)Le/k/a/c/l;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/avro/data/Json;->write(Le/k/a/c/l;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
