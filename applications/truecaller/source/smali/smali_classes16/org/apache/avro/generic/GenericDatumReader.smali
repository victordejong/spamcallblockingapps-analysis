.class public Lorg/apache/avro/generic/GenericDatumReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/io/DatumReader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/avro/io/DatumReader<",
        "TD;>;"
    }
.end annotation


# static fields
.field private static final RESOLVER_CACHE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/avro/util/WeakIdentityHashMap<",
            "Lorg/apache/avro/Schema;",
            "Ljava/util/Map<",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/io/ResolvingDecoder;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private actual:Lorg/apache/avro/Schema;

.field private final creator:Ljava/lang/Thread;

.field private creatorResolver:Lorg/apache/avro/io/ResolvingDecoder;

.field private final data:Lorg/apache/avro/generic/GenericData;

.field private expected:Lorg/apache/avro/Schema;

.field private stringClassCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/avro/Schema;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private final stringCtorCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/avro/generic/GenericDatumReader$1;

    invoke-direct {v0}, Lorg/apache/avro/generic/GenericDatumReader$1;-><init>()V

    sput-object v0, Lorg/apache/avro/generic/GenericDatumReader;->RESOLVER_CACHE:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/apache/avro/generic/GenericData;->get()Lorg/apache/avro/generic/GenericData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lorg/apache/avro/generic/GenericDatumReader;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema;)V
    .locals 1

    .line 2
    invoke-static {}, Lorg/apache/avro/generic/GenericData;->get()Lorg/apache/avro/generic/GenericData;

    move-result-object v0

    invoke-direct {p0, p1, p1, v0}, Lorg/apache/avro/generic/GenericDatumReader;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)V
    .locals 1

    .line 3
    invoke-static {}, Lorg/apache/avro/generic/GenericData;->get()Lorg/apache/avro/generic/GenericData;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/avro/generic/GenericDatumReader;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V
    .locals 0

    .line 4
    invoke-direct {p0, p3}, Lorg/apache/avro/generic/GenericDatumReader;-><init>(Lorg/apache/avro/generic/GenericData;)V

    .line 5
    iput-object p1, p0, Lorg/apache/avro/generic/GenericDatumReader;->actual:Lorg/apache/avro/Schema;

    .line 6
    iput-object p2, p0, Lorg/apache/avro/generic/GenericDatumReader;->expected:Lorg/apache/avro/Schema;

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/generic/GenericData;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lorg/apache/avro/generic/GenericDatumReader;->creatorResolver:Lorg/apache/avro/io/ResolvingDecoder;

    .line 9
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/generic/GenericDatumReader;->stringClassCache:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/generic/GenericDatumReader;->stringCtorCache:Ljava/util/Map;

    .line 11
    iput-object p1, p0, Lorg/apache/avro/generic/GenericDatumReader;->data:Lorg/apache/avro/generic/GenericData;

    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/generic/GenericDatumReader;->creator:Ljava/lang/Thread;

    return-void
.end method

.method private getStringClass(Lorg/apache/avro/Schema;)Ljava/lang/Class;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericDatumReader;->stringClassCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericDatumReader;->findStringClass(Lorg/apache/avro/Schema;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/apache/avro/generic/GenericDatumReader;->stringClassCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private pruneArray(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/apache/avro/generic/GenericArray;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/apache/avro/generic/GenericArray;

    invoke-interface {v0}, Lorg/apache/avro/generic/GenericArray;->prune()V

    :cond_0
    return-object p1
.end method

.method public static skip(Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown type: "

    invoke-static {v0, p0}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/avro/io/Decoder;->readNull()V

    goto/16 :goto_3

    .line 4
    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/avro/io/Decoder;->readBoolean()Z

    goto/16 :goto_3

    .line 5
    :pswitch_2
    invoke-virtual {p1}, Lorg/apache/avro/io/Decoder;->readDouble()D

    goto/16 :goto_3

    .line 6
    :pswitch_3
    invoke-virtual {p1}, Lorg/apache/avro/io/Decoder;->readFloat()F

    goto/16 :goto_3

    .line 7
    :pswitch_4
    invoke-virtual {p1}, Lorg/apache/avro/io/Decoder;->readLong()J

    goto/16 :goto_3

    .line 8
    :pswitch_5
    invoke-virtual {p1}, Lorg/apache/avro/io/Decoder;->readInt()I

    goto/16 :goto_3

    .line 9
    :pswitch_6
    invoke-virtual {p1}, Lorg/apache/avro/io/Decoder;->skipBytes()V

    goto/16 :goto_3

    .line 10
    :pswitch_7
    invoke-virtual {p1}, Lorg/apache/avro/io/Decoder;->skipString()V

    goto/16 :goto_3

    .line 11
    :pswitch_8
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/avro/io/Decoder;->skipFixed(I)V

    goto :goto_3

    .line 12
    :pswitch_9
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/avro/io/Decoder;->readIndex()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/avro/Schema;

    invoke-static {p0, p1}, Lorg/apache/avro/generic/GenericDatumReader;->skip(Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)V

    goto :goto_3

    .line 13
    :pswitch_a
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getValueType()Lorg/apache/avro/Schema;

    move-result-object p0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lorg/apache/avro/io/Decoder;->skipMap()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    move-wide v7, v3

    :goto_0
    cmp-long v0, v7, v5

    if-gez v0, :cond_0

    .line 15
    invoke-virtual {p1}, Lorg/apache/avro/io/Decoder;->skipString()V

    .line 16
    invoke-static {p0, p1}, Lorg/apache/avro/generic/GenericDatumReader;->skip(Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)V

    add-long/2addr v7, v1

    goto :goto_0

    .line 17
    :pswitch_b
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object p0

    .line 18
    :cond_1
    invoke-virtual {p1}, Lorg/apache/avro/io/Decoder;->skipArray()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    move-wide v7, v3

    :goto_1
    cmp-long v0, v7, v5

    if-gez v0, :cond_1

    .line 19
    invoke-static {p0, p1}, Lorg/apache/avro/generic/GenericDatumReader;->skip(Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)V

    add-long/2addr v7, v1

    goto :goto_1

    .line 20
    :pswitch_c
    invoke-virtual {p1}, Lorg/apache/avro/io/Decoder;->readEnum()I

    goto :goto_3

    .line 21
    :pswitch_d
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/Schema$Field;

    .line 22
    invoke-virtual {v0}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/avro/generic/GenericDatumReader;->skip(Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)V

    goto :goto_2

    :cond_2
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addToArray(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public convert(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;Lorg/apache/avro/Conversion;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            "Lorg/apache/avro/Conversion<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4}, Lorg/apache/avro/Conversions;->convertToLogicalType(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;Lorg/apache/avro/Conversion;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createBytes([B)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public createEnum(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericDatumReader;->data:Lorg/apache/avro/generic/GenericData;

    invoke-virtual {v0, p1, p2}, Lorg/apache/avro/generic/GenericData;->createEnum(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createFixed(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericDatumReader;->data:Lorg/apache/avro/generic/GenericData;

    invoke-virtual {v0, p1, p2}, Lorg/apache/avro/generic/GenericData;->createFixed(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createFixed(Ljava/lang/Object;[BLorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/avro/generic/GenericDatumReader;->data:Lorg/apache/avro/generic/GenericData;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/avro/generic/GenericData;->createFixed(Ljava/lang/Object;[BLorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/avro/util/Utf8;

    invoke-direct {v0, p1}, Lorg/apache/avro/util/Utf8;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public findStringClass(Lorg/apache/avro/Schema;)Ljava/lang/Class;
    .locals 1

    const-string v0, "org.apache.avro.java.string"

    .line 1
    invoke-virtual {p1, v0}, Lorg/apache/avro/JsonProperties;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    const-class p1, Ljava/lang/CharSequence;

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lorg/apache/avro/generic/GenericData$StringType;->valueOf(Ljava/lang/String;)Lorg/apache/avro/generic/GenericData$StringType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 4
    const-class p1, Ljava/lang/CharSequence;

    return-object p1

    .line 5
    :cond_1
    const-class p1, Ljava/lang/String;

    return-object p1
.end method

.method public getData()Lorg/apache/avro/generic/GenericData;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericDatumReader;->data:Lorg/apache/avro/generic/GenericData;

    return-object v0
.end method

.method public getExpected()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericDatumReader;->expected:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public final getResolver(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/io/ResolvingDecoder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/apache/avro/generic/GenericDatumReader;->creator:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/avro/generic/GenericDatumReader;->creatorResolver:Lorg/apache/avro/io/ResolvingDecoder;

    if-eqz v1, :cond_0

    return-object v1

    .line 3
    :cond_0
    sget-object v1, Lorg/apache/avro/generic/GenericDatumReader;->RESOLVER_CACHE:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/avro/util/WeakIdentityHashMap;

    invoke-virtual {v2, p1}, Lorg/apache/avro/util/WeakIdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_1

    .line 4
    new-instance v2, Lorg/apache/avro/util/WeakIdentityHashMap;

    invoke-direct {v2}, Lorg/apache/avro/util/WeakIdentityHashMap;-><init>()V

    .line 5
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/util/WeakIdentityHashMap;

    invoke-virtual {v1, p1, v2}, Lorg/apache/avro/util/WeakIdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/io/ResolvingDecoder;

    if-nez v1, :cond_2

    .line 7
    invoke-static {}, Lorg/apache/avro/io/DecoderFactory;->get()Lorg/apache/avro/io/DecoderFactory;

    move-result-object v1

    invoke-static {p1, p2}, Lorg/apache/avro/Schema;->applyAliases(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, p2, v3}, Lorg/apache/avro/io/DecoderFactory;->resolvingDecoder(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)Lorg/apache/avro/io/ResolvingDecoder;

    move-result-object v1

    .line 8
    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    iget-object p1, p0, Lorg/apache/avro/generic/GenericDatumReader;->creator:Ljava/lang/Thread;

    if-ne v0, p1, :cond_3

    .line 10
    iput-object v1, p0, Lorg/apache/avro/generic/GenericDatumReader;->creatorResolver:Lorg/apache/avro/io/ResolvingDecoder;

    :cond_3
    return-object v1
.end method

.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericDatumReader;->actual:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public newArray(Ljava/lang/Object;ILorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericDatumReader;->data:Lorg/apache/avro/generic/GenericData;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/avro/generic/GenericData;->newArray(Ljava/lang/Object;ILorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newInstanceFromString(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/avro/generic/GenericDatumReader;->stringCtorCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Class;

    .line 2
    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 4
    iget-object v3, p0, Lorg/apache/avro/generic/GenericDatumReader;->stringCtorCache:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    aput-object p2, p1, v1

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 6
    :goto_0
    new-instance p2, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {p2, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public newMap(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericDatumReader;->data:Lorg/apache/avro/generic/GenericData;

    invoke-virtual {v0, p1, p2}, Lorg/apache/avro/generic/GenericData;->newMap(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newRecord(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericDatumReader;->data:Lorg/apache/avro/generic/GenericData;

    invoke-virtual {v0, p1, p2}, Lorg/apache/avro/generic/GenericData;->newRecord(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public peekArray(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/apache/avro/generic/GenericArray;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/avro/generic/GenericArray;

    invoke-interface {p1}, Lorg/apache/avro/generic/GenericArray;->peek()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public read(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericDatumReader;->readWithoutConversion(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getLogicalType()Lorg/apache/avro/LogicalType;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p0}, Lorg/apache/avro/generic/GenericDatumReader;->getData()Lorg/apache/avro/generic/GenericData;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/apache/avro/generic/GenericData;->getConversionFor(Lorg/apache/avro/LogicalType;)Lorg/apache/avro/Conversion;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/avro/generic/GenericDatumReader;->convert(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;Lorg/apache/avro/Conversion;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public read(Ljava/lang/Object;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lorg/apache/avro/io/Decoder;",
            ")TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericDatumReader;->actual:Lorg/apache/avro/Schema;

    iget-object v1, p0, Lorg/apache/avro/generic/GenericDatumReader;->expected:Lorg/apache/avro/Schema;

    invoke-virtual {p0, v0, v1}, Lorg/apache/avro/generic/GenericDatumReader;->getResolver(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/io/ResolvingDecoder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Lorg/apache/avro/io/ValidatingDecoder;->configure(Lorg/apache/avro/io/Decoder;)Lorg/apache/avro/io/ValidatingDecoder;

    .line 3
    iget-object p2, p0, Lorg/apache/avro/generic/GenericDatumReader;->expected:Lorg/apache/avro/Schema;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/avro/generic/GenericDatumReader;->read(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Lorg/apache/avro/io/ResolvingDecoder;->drain()V

    return-object p1
.end method

.method public readArray(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p2 .. p2}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object v7

    .line 2
    invoke-virtual/range {p3 .. p3}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v4, v2, v8

    if-lez v4, :cond_3

    .line 3
    invoke-virtual {v7}, Lorg/apache/avro/Schema;->getLogicalType()Lorg/apache/avro/LogicalType;

    move-result-object v10

    .line 4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/avro/generic/GenericDatumReader;->getData()Lorg/apache/avro/generic/GenericData;

    move-result-object v4

    invoke-virtual {v4, v10}, Lorg/apache/avro/generic/GenericData;->getConversionFor(Lorg/apache/avro/LogicalType;)Lorg/apache/avro/Conversion;

    move-result-object v11

    long-to-int v4, v2

    .line 5
    invoke-virtual {v6, v0, v4, v1}, Lorg/apache/avro/generic/GenericDatumReader;->newArray(Ljava/lang/Object;ILorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v12

    move-wide v13, v2

    move-wide v15, v8

    :goto_0
    const-wide/16 v17, 0x1

    if-eqz v10, :cond_0

    if-eqz v11, :cond_0

    move-wide/from16 v19, v8

    :goto_1
    cmp-long v0, v19, v13

    if-gez v0, :cond_1

    add-long v4, v15, v19

    .line 6
    invoke-virtual {v6, v12}, Lorg/apache/avro/generic/GenericDatumReader;->peekArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p0

    move-object v2, v7

    move-object v3, v10

    move-wide v8, v4

    move-object v4, v11

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/avro/generic/GenericDatumReader;->readWithConversion(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;Lorg/apache/avro/Conversion;Lorg/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-virtual {v6, v12, v8, v9, v0}, Lorg/apache/avro/generic/GenericDatumReader;->addToArray(Ljava/lang/Object;JLjava/lang/Object;)V

    add-long v19, v19, v17

    const-wide/16 v8, 0x0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_2
    cmp-long v2, v0, v13

    if-gez v2, :cond_1

    add-long v2, v15, v0

    .line 8
    invoke-virtual {v6, v12}, Lorg/apache/avro/generic/GenericDatumReader;->peekArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v5, p3

    invoke-virtual {v6, v4, v7, v5}, Lorg/apache/avro/generic/GenericDatumReader;->readWithoutConversion(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v12, v2, v3, v4}, Lorg/apache/avro/generic/GenericDatumReader;->addToArray(Ljava/lang/Object;JLjava/lang/Object;)V

    add-long v0, v0, v17

    goto :goto_2

    :cond_1
    move-object/from16 v5, p3

    add-long/2addr v15, v13

    .line 9
    invoke-virtual/range {p3 .. p3}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v13

    const-wide/16 v2, 0x0

    cmp-long v0, v13, v2

    if-gtz v0, :cond_2

    .line 10
    invoke-direct {v6, v12}, Lorg/apache/avro/generic/GenericDatumReader;->pruneArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    move-wide v8, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v6, v0, v2, v1}, Lorg/apache/avro/generic/GenericDatumReader;->newArray(Ljava/lang/Object;ILorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/apache/avro/generic/GenericDatumReader;->pruneArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p3}, Lorg/apache/avro/generic/GenericDatumReader;->readBytes(Ljava/lang/Object;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readBytes(Ljava/lang/Object;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lorg/apache/avro/io/Decoder;->readBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public readEnum(Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/avro/io/Decoder;->readEnum()I

    move-result p2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lorg/apache/avro/generic/GenericDatumReader;->createEnum(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readField(Ljava/lang/Object;Lorg/apache/avro/Schema$Field;Ljava/lang/Object;Lorg/apache/avro/io/ResolvingDecoder;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericDatumReader;->data:Lorg/apache/avro/generic/GenericData;

    invoke-virtual {p2}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object p2

    invoke-virtual {p0, p3, p2, p4}, Lorg/apache/avro/generic/GenericDatumReader;->read(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/avro/generic/GenericData;->setField(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public readFixed(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericDatumReader;->data:Lorg/apache/avro/generic/GenericData;

    invoke-virtual {v0, p1, p2}, Lorg/apache/avro/generic/GenericData;->createFixed(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/generic/GenericFixed;

    .line 2
    invoke-interface {p1}, Lorg/apache/avro/generic/GenericFixed;->bytes()[B

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1, p2}, Lorg/apache/avro/io/Decoder;->readFixed([BII)V

    return-object p1
.end method

.method public readInt(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lorg/apache/avro/io/Decoder;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public readMap(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 1
    invoke-virtual/range {p2 .. p2}, Lorg/apache/avro/Schema;->getValueType()Lorg/apache/avro/Schema;

    move-result-object v9

    .line 2
    invoke-virtual/range {p3 .. p3}, Lorg/apache/avro/io/ValidatingDecoder;->readMapStart()J

    move-result-wide v0

    .line 3
    invoke-virtual {v9}, Lorg/apache/avro/Schema;->getLogicalType()Lorg/apache/avro/LogicalType;

    move-result-object v10

    .line 4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/avro/generic/GenericDatumReader;->getData()Lorg/apache/avro/generic/GenericData;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/apache/avro/generic/GenericData;->getConversionFor(Lorg/apache/avro/LogicalType;)Lorg/apache/avro/Conversion;

    move-result-object v11

    long-to-int v2, v0

    move-object/from16 v3, p1

    .line 5
    invoke-virtual {v6, v3, v2}, Lorg/apache/avro/generic/GenericDatumReader;->newMap(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v12

    const-wide/16 v13, 0x0

    cmp-long v2, v0, v13

    if-lez v2, :cond_4

    move-wide v15, v0

    :goto_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    if-eqz v10, :cond_1

    if-eqz v11, :cond_1

    move v4, v0

    :goto_1
    int-to-long v0, v4

    cmp-long v0, v0, v15

    if-gez v0, :cond_0

    .line 6
    invoke-virtual {v6, v5, v7, v8}, Lorg/apache/avro/generic/GenericDatumReader;->readMapKey(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object v3

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object v2, v9

    move-object v13, v3

    move-object v3, v10

    move v14, v4

    move-object v4, v11

    move-object/from16 v17, v10

    move-object v10, v5

    move-object/from16 v5, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Lorg/apache/avro/generic/GenericDatumReader;->readWithConversion(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;Lorg/apache/avro/Conversion;Lorg/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-virtual {v6, v12, v13, v0}, Lorg/apache/avro/generic/GenericDatumReader;->addToMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v4, v14, 0x1

    move-object v5, v10

    move-object/from16 v10, v17

    const-wide/16 v13, 0x0

    goto :goto_1

    :cond_0
    move-object/from16 v17, v10

    goto :goto_3

    :cond_1
    move-object/from16 v17, v10

    move-object v10, v5

    :goto_2
    int-to-long v1, v0

    cmp-long v1, v1, v15

    if-gez v1, :cond_2

    .line 9
    invoke-virtual {v6, v10, v7, v8}, Lorg/apache/avro/generic/GenericDatumReader;->readMapKey(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v10, v9, v8}, Lorg/apache/avro/generic/GenericDatumReader;->readWithoutConversion(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v12, v1, v2}, Lorg/apache/avro/generic/GenericDatumReader;->addToMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 10
    :cond_2
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lorg/apache/avro/io/ValidatingDecoder;->mapNext()J

    move-result-wide v15

    const-wide/16 v0, 0x0

    cmp-long v2, v15, v0

    if-gtz v2, :cond_3

    goto :goto_4

    :cond_3
    move-wide v13, v0

    move-object/from16 v10, v17

    goto :goto_0

    :cond_4
    :goto_4
    return-object v12
.end method

.method public readMapKey(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericDatumReader;->readString(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readRecord(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericDatumReader;->data:Lorg/apache/avro/generic/GenericData;

    invoke-virtual {v0, p1, p2}, Lorg/apache/avro/generic/GenericData;->newRecord(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/apache/avro/generic/GenericDatumReader;->data:Lorg/apache/avro/generic/GenericData;

    invoke-virtual {v1, v0, p2}, Lorg/apache/avro/generic/GenericData;->getRecordState(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-virtual {p3}, Lorg/apache/avro/io/ResolvingDecoder;->readFieldOrder()[Lorg/apache/avro/Schema$Field;

    move-result-object v7

    array-length v8, v7

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, v8, :cond_1

    aget-object v3, v7, v9

    .line 4
    invoke-virtual {v3}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v1

    .line 5
    invoke-virtual {v3}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 6
    iget-object v4, p0, Lorg/apache/avro/generic/GenericDatumReader;->data:Lorg/apache/avro/generic/GenericData;

    invoke-virtual {v4, v0, v2, v1, p2}, Lorg/apache/avro/generic/GenericData;->getField(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    :cond_0
    move-object v1, p0

    move-object v2, v0

    move-object v5, p3

    move-object v6, p2

    .line 7
    invoke-virtual/range {v1 .. v6}, Lorg/apache/avro/generic/GenericDatumReader;->readField(Ljava/lang/Object;Lorg/apache/avro/Schema$Field;Ljava/lang/Object;Lorg/apache/avro/io/ResolvingDecoder;Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public readString(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/avro/generic/GenericDatumReader;->getStringClass(Lorg/apache/avro/Schema;)Ljava/lang/Class;

    move-result-object p2

    .line 2
    const-class v0, Ljava/lang/String;

    if-ne p2, v0, :cond_0

    .line 3
    invoke-virtual {p3}, Lorg/apache/avro/io/Decoder;->readString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    const-class v0, Ljava/lang/CharSequence;

    if-ne p2, v0, :cond_1

    .line 5
    invoke-virtual {p0, p1, p3}, Lorg/apache/avro/generic/GenericDatumReader;->readString(Ljava/lang/Object;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p3}, Lorg/apache/avro/io/Decoder;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/apache/avro/generic/GenericDatumReader;->newInstanceFromString(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readString(Ljava/lang/Object;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    instance-of v0, p1, Lorg/apache/avro/util/Utf8;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/avro/util/Utf8;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lorg/apache/avro/io/Decoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object p1

    return-object p1
.end method

.method public readWithConversion(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;Lorg/apache/avro/Conversion;Lorg/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/LogicalType;",
            "Lorg/apache/avro/Conversion<",
            "*>;",
            "Lorg/apache/avro/io/ResolvingDecoder;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p5}, Lorg/apache/avro/generic/GenericDatumReader;->readWithoutConversion(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/avro/generic/GenericDatumReader;->convert(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;Lorg/apache/avro/Conversion;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readWithoutConversion(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    const-string p3, "Unknown type: "

    invoke-static {p3, p2}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    invoke-virtual {p3}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :pswitch_1
    invoke-virtual {p3}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_2
    invoke-virtual {p3}, Lorg/apache/avro/io/ResolvingDecoder;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_3
    invoke-virtual {p3}, Lorg/apache/avro/io/ResolvingDecoder;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_4
    invoke-virtual {p3}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_5
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericDatumReader;->readInt(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_6
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericDatumReader;->readBytes(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_7
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericDatumReader;->readString(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_8
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericDatumReader;->readFixed(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_9
    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p3}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/avro/Schema;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericDatumReader;->read(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_a
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericDatumReader;->readMap(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_b
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericDatumReader;->readArray(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_c
    invoke-virtual {p0, p2, p3}, Lorg/apache/avro/generic/GenericDatumReader;->readEnum(Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_d
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericDatumReader;->readRecord(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setExpected(Lorg/apache/avro/Schema;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/avro/generic/GenericDatumReader;->expected:Lorg/apache/avro/Schema;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/apache/avro/generic/GenericDatumReader;->creatorResolver:Lorg/apache/avro/io/ResolvingDecoder;

    return-void
.end method

.method public setSchema(Lorg/apache/avro/Schema;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/apache/avro/generic/GenericDatumReader;->actual:Lorg/apache/avro/Schema;

    .line 2
    iget-object v0, p0, Lorg/apache/avro/generic/GenericDatumReader;->expected:Lorg/apache/avro/Schema;

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lorg/apache/avro/generic/GenericDatumReader;->expected:Lorg/apache/avro/Schema;

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/apache/avro/generic/GenericDatumReader;->creatorResolver:Lorg/apache/avro/io/ResolvingDecoder;

    return-void
.end method
