.class public Lorg/apache/avro/generic/GenericData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/generic/GenericData$InstanceSupplier;,
        Lorg/apache/avro/generic/GenericData$EnumSymbol;,
        Lorg/apache/avro/generic/GenericData$Fixed;,
        Lorg/apache/avro/generic/GenericData$Array;,
        Lorg/apache/avro/generic/GenericData$Record;,
        Lorg/apache/avro/generic/GenericData$StringType;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/avro/generic/GenericData;

.field private static final STRINGS:Lorg/apache/avro/Schema;

.field public static final STRING_PROP:Ljava/lang/String; = "org.apache.avro.java.string"

.field public static final STRING_TYPE_STRING:Ljava/lang/String; = "String"

.field private static final TOSTRING_CIRCULAR_REFERENCE_ERROR_TEXT:Ljava/lang/String; = " \">>> CIRCULAR REFERENCE CANNOT BE PUT IN JSON STRING, ABORTING RECURSION <<<\" "


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private conversions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/avro/Conversion<",
            "*>;>;"
        }
    .end annotation
.end field

.field private conversionsByClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/avro/Conversion<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final defaultValueCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/avro/Schema$Field;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/avro/generic/GenericData;

    invoke-direct {v0}, Lorg/apache/avro/generic/GenericData;-><init>()V

    sput-object v0, Lorg/apache/avro/generic/GenericData;->INSTANCE:Lorg/apache/avro/generic/GenericData;

    .line 2
    sget-object v0, Lorg/apache/avro/Schema$Type;->STRING:Lorg/apache/avro/Schema$Type;

    invoke-static {v0}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lorg/apache/avro/generic/GenericData;->STRINGS:Lorg/apache/avro/Schema;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/generic/GenericData;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/generic/GenericData;->conversions:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/generic/GenericData;->conversionsByClass:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/avro/generic/GenericData;->defaultValueCache:Ljava/util/Map;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/avro/generic/GenericData;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public static synthetic access$000()Lorg/apache/avro/generic/GenericData;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/generic/GenericData;->INSTANCE:Lorg/apache/avro/generic/GenericData;

    return-object v0
.end method

.method private deepCopyRaw(Lorg/apache/avro/Schema;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deep copy failed for schema \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\" and value \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return-object v0

    :pswitch_1
    return-object p2

    .line 3
    :pswitch_2
    check-cast p2, Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    .line 5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sub-int/2addr v0, p1

    .line 6
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p2, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {p2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 9
    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_3
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->createString(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_4
    check-cast p2, Lorg/apache/avro/generic/GenericFixed;

    invoke-interface {p2}, Lorg/apache/avro/generic/GenericFixed;->bytes()[B

    move-result-object p2

    invoke-virtual {p0, v0, p2, p1}, Lorg/apache/avro/generic/GenericData;->createFixed(Ljava/lang/Object;[BLorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/generic/GenericData;->resolveUnion(Lorg/apache/avro/Schema;Ljava/lang/Object;)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/Schema;

    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/generic/GenericData;->deepCopy(Lorg/apache/avro/Schema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_6
    check-cast p2, Ljava/util/Map;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 15
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 16
    sget-object v2, Lorg/apache/avro/generic/GenericData;->STRINGS:Lorg/apache/avro/Schema;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/avro/generic/GenericData;->deepCopy(Lorg/apache/avro/Schema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getValueType()Lorg/apache/avro/Schema;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lorg/apache/avro/generic/GenericData;->deepCopy(Lorg/apache/avro/Schema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0

    .line 17
    :pswitch_7
    check-cast p2, Ljava/util/List;

    .line 18
    new-instance v0, Lorg/apache/avro/generic/GenericData$Array;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 19
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/avro/generic/GenericData;->deepCopy(Lorg/apache/avro/Schema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0

    .line 21
    :pswitch_8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lorg/apache/avro/generic/GenericData;->createEnum(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_9
    invoke-virtual {p0, p2, p1}, Lorg/apache/avro/generic/GenericData;->getRecordState(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v1

    .line 23
    invoke-virtual {p0, v0, p1}, Lorg/apache/avro/generic/GenericData;->newRecord(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    invoke-virtual {p0, v0, p1}, Lorg/apache/avro/generic/GenericData;->getRecordState(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v8

    .line 25
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/avro/Schema$Field;

    .line 26
    invoke-virtual {v2}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v5

    .line 27
    invoke-virtual {v2}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-virtual {v2}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v2

    invoke-virtual {p0, p2, v4, v5, v1}, Lorg/apache/avro/generic/GenericData;->getField(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/avro/generic/GenericData;->deepCopy(Lorg/apache/avro/Schema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, p0

    move-object v3, v0

    move-object v7, v8

    .line 29
    invoke-virtual/range {v2 .. v7}, Lorg/apache/avro/generic/GenericData;->setField(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static get()Lorg/apache/avro/generic/GenericData;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/generic/GenericData;->INSTANCE:Lorg/apache/avro/generic/GenericData;

    return-object v0
.end method

.method public static setStringType(Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData$StringType;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/generic/GenericData$StringType;->String:Lorg/apache/avro/generic/GenericData$StringType;

    if-ne p1, v0, :cond_0

    const-string p1, "org.apache.avro.java.string"

    const-string v0, "String"

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/apache/avro/Schema;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static writeEscapedString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_8

    const/16 v3, 0xd

    if-eq v2, v3, :cond_7

    const/16 v3, 0x22

    if-eq v2, v3, :cond_6

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_5

    packed-switch v2, :pswitch_data_0

    if-ltz v2, :cond_0

    const/16 v3, 0x1f

    if-le v2, v3, :cond_2

    :cond_0
    const/16 v3, 0x7f

    if-lt v2, v3, :cond_1

    const/16 v3, 0x9f

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x2000

    if-lt v2, v3, :cond_4

    const/16 v3, 0x20ff

    if-gt v2, v3, :cond_4

    .line 3
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\u"

    .line 4
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v0

    .line 5
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_3

    const/16 v4, 0x30

    .line 6
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 8
    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_0
    const-string v2, "\\n"

    .line 9
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_1
    const-string v2, "\\t"

    .line 10
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_2
    const-string v2, "\\b"

    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string v2, "\\\\"

    .line 12
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const-string v2, "\\\""

    .line 13
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const-string v2, "\\r"

    .line 14
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const-string v2, "\\f"

    .line 15
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addLogicalTypeConversion(Lorg/apache/avro/Conversion;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Conversion<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData;->conversions:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/avro/Conversion;->getLogicalTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/Conversion;->getConvertedType()Ljava/lang/Class;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/apache/avro/generic/GenericData;->conversionsByClass:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    iget-object v2, p0, Lorg/apache/avro/generic/GenericData;->conversionsByClass:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-virtual {p1}, Lorg/apache/avro/Conversion;->getLogicalTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/avro/Schema;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/avro/generic/GenericData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/avro/Schema;Z)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/avro/Schema;Z)I
    .locals 5

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p3}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v2, 0x1

    if-eq v1, v2, :cond_e

    const/4 v3, 0x2

    if-eq v1, v3, :cond_9

    const/4 v3, 0x3

    if-eq v1, v3, :cond_7

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    const/4 p3, 0x6

    if-eq v1, p3, :cond_2

    const/16 p3, 0xd

    if-eq v1, p3, :cond_1

    .line 3
    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_1
    return v0

    .line 4
    :cond_2
    instance-of p3, p1, Lorg/apache/avro/util/Utf8;

    if-eqz p3, :cond_3

    check-cast p1, Lorg/apache/avro/util/Utf8;

    goto :goto_0

    :cond_3
    new-instance p3, Lorg/apache/avro/util/Utf8;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/apache/avro/util/Utf8;-><init>(Ljava/lang/String;)V

    move-object p1, p3

    .line 5
    :goto_0
    instance-of p3, p2, Lorg/apache/avro/util/Utf8;

    if-eqz p3, :cond_4

    check-cast p2, Lorg/apache/avro/util/Utf8;

    goto :goto_1

    :cond_4
    new-instance p3, Lorg/apache/avro/util/Utf8;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Lorg/apache/avro/util/Utf8;-><init>(Ljava/lang/String;)V

    move-object p2, p3

    .line 6
    :goto_1
    invoke-virtual {p1, p2}, Lorg/apache/avro/util/Utf8;->compareTo(Lorg/apache/avro/util/Utf8;)I

    move-result p1

    return p1

    .line 7
    :cond_5
    invoke-virtual {p0, p3, p1}, Lorg/apache/avro/generic/GenericData;->resolveUnion(Lorg/apache/avro/Schema;Ljava/lang/Object;)I

    move-result v0

    .line 8
    invoke-virtual {p0, p3, p2}, Lorg/apache/avro/generic/GenericData;->resolveUnion(Lorg/apache/avro/Schema;Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 9
    invoke-virtual {p3}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/avro/Schema;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/avro/generic/GenericData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/avro/Schema;Z)I

    move-result p1

    goto :goto_2

    :cond_6
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    :goto_2
    return p1

    :cond_7
    if-eqz p4, :cond_8

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 11
    :cond_8
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    const-string p2, "Can\'t compare maps!"

    invoke-direct {p1, p2}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_9
    check-cast p1, Ljava/util/Collection;

    .line 13
    check-cast p2, Ljava/util/Collection;

    .line 14
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 15
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 16
    invoke-virtual {p3}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object p3

    .line 17
    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3, p3, p4}, Lorg/apache/avro/generic/GenericData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/avro/Schema;Z)I

    move-result v1

    if-eqz v1, :cond_a

    return v1

    .line 19
    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    move v0, v2

    goto :goto_3

    :cond_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 v0, -0x1

    :cond_d
    :goto_3
    return v0

    .line 20
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/avro/Schema;->getEnumOrdinal(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/apache/avro/Schema;->getEnumOrdinal(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1

    .line 21
    :cond_f
    invoke-virtual {p3}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_10
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Schema$Field;

    .line 22
    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->order()Lorg/apache/avro/Schema$Field$Order;

    move-result-object v2

    sget-object v3, Lorg/apache/avro/Schema$Field$Order;->IGNORE:Lorg/apache/avro/Schema$Field$Order;

    if-ne v2, v3, :cond_11

    goto :goto_4

    .line 23
    :cond_11
    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v2

    .line 24
    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual {p0, p1, v3, v2}, Lorg/apache/avro/generic/GenericData;->getField(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, p2, v3, v2}, Lorg/apache/avro/generic/GenericData;->getField(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v3

    invoke-virtual {p0, v4, v2, v3, p4}, Lorg/apache/avro/generic/GenericData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/avro/Schema;Z)I

    move-result v2

    if-eqz v2, :cond_10

    .line 26
    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->order()Lorg/apache/avro/Schema$Field$Order;

    move-result-object p1

    sget-object p2, Lorg/apache/avro/Schema$Field$Order;->DESCENDING:Lorg/apache/avro/Schema$Field$Order;

    if-ne p1, p2, :cond_12

    neg-int v2, v2

    :cond_12
    return v2

    :cond_13
    return v0
.end method

.method public createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1}, Lorg/apache/avro/generic/GenericData;->createDatumReader(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object p1

    return-object p1
.end method

.method public createDatumReader(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/avro/generic/GenericDatumReader;

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/avro/generic/GenericDatumReader;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V

    return-object v0
.end method

.method public createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/avro/generic/GenericDatumWriter;

    invoke-direct {v0, p1, p0}, Lorg/apache/avro/generic/GenericDatumWriter;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V

    return-object v0
.end method

.method public createEnum(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/avro/generic/GenericData$EnumSymbol;

    invoke-direct {v0, p2, p1}, Lorg/apache/avro/generic/GenericData$EnumSymbol;-><init>(Lorg/apache/avro/Schema;Ljava/lang/String;)V

    return-object v0
.end method

.method public createFixed(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/apache/avro/generic/GenericFixed;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/avro/generic/GenericFixed;

    invoke-interface {v0}, Lorg/apache/avro/generic/GenericFixed;->bytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lorg/apache/avro/generic/GenericData$Fixed;

    invoke-direct {p1, p2}, Lorg/apache/avro/generic/GenericData$Fixed;-><init>(Lorg/apache/avro/Schema;)V

    return-object p1
.end method

.method public createFixed(Ljava/lang/Object;[BLorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 2

    .line 3
    invoke-virtual {p0, p1, p3}, Lorg/apache/avro/generic/GenericData;->createFixed(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/generic/GenericFixed;

    .line 4
    invoke-interface {p1}, Lorg/apache/avro/generic/GenericFixed;->bytes()[B

    move-result-object v0

    invoke-virtual {p3}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result p3

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public createString(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    instance-of v0, p1, Lorg/apache/avro/util/Utf8;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lorg/apache/avro/util/Utf8;

    check-cast p1, Lorg/apache/avro/util/Utf8;

    invoke-direct {v0, p1}, Lorg/apache/avro/util/Utf8;-><init>(Lorg/apache/avro/util/Utf8;)V

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lorg/apache/avro/util/Utf8;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/avro/util/Utf8;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public deepCopy(Lorg/apache/avro/Schema;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/avro/Schema;",
            "TT;)TT;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getLogicalType()Lorg/apache/avro/LogicalType;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/avro/generic/GenericData;->deepCopyRaw(Lorg/apache/avro/Schema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/apache/avro/generic/GenericData;->getConversionByClass(Ljava/lang/Class;Lorg/apache/avro/LogicalType;)Lorg/apache/avro/Conversion;

    move-result-object v1

    if-nez v1, :cond_2

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/apache/avro/generic/GenericData;->deepCopyRaw(Lorg/apache/avro/Schema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    invoke-static {p2, p1, v0, v1}, Lorg/apache/avro/Conversions;->convertToRawType(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;Lorg/apache/avro/Conversion;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/apache/avro/generic/GenericData;->deepCopyRaw(Lorg/apache/avro/Schema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    invoke-static {p2, p1, v0, v1}, Lorg/apache/avro/Conversions;->convertToLogicalType(Ljava/lang/Object;Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalType;Lorg/apache/avro/Conversion;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getArrayAsCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getConversionByClass(Ljava/lang/Class;)Lorg/apache/avro/Conversion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/apache/avro/Conversion<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData;->conversionsByClass:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/Conversion;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getConversionByClass(Ljava/lang/Class;Lorg/apache/avro/LogicalType;)Lorg/apache/avro/Conversion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/apache/avro/LogicalType;",
            ")",
            "Lorg/apache/avro/Conversion<",
            "TT;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData;->conversionsByClass:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p2}, Lorg/apache/avro/LogicalType;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/Conversion;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getConversionFor(Lorg/apache/avro/LogicalType;)Lorg/apache/avro/Conversion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/LogicalType;",
            ")",
            "Lorg/apache/avro/Conversion<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData;->conversions:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/avro/LogicalType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/Conversion;

    return-object p1
.end method

.method public getConversions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/avro/Conversion<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData;->conversions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Lorg/apache/avro/util/internal/Accessor;->defaultValue(Lorg/apache/avro/Schema$Field;)Le/k/a/c/l;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Le/k/a/c/l;->F()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    sget-object v3, Lorg/apache/avro/Schema$Type;->NULL:Lorg/apache/avro/Schema$Type;

    if-eq v1, v3, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    sget-object v4, Lorg/apache/avro/Schema$Type;->UNION:Lorg/apache/avro/Schema$Type;

    if-ne v1, v4, :cond_1

    invoke-virtual {p1}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Schema;

    invoke-virtual {v1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    if-ne v1, v3, :cond_1

    :cond_0
    return-object v2

    .line 4
    :cond_1
    iget-object v1, p0, Lorg/apache/avro/generic/GenericData;->defaultValueCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 5
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    invoke-static {}, Lorg/apache/avro/io/EncoderFactory;->get()Lorg/apache/avro/io/EncoderFactory;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/apache/avro/io/EncoderFactory;->binaryEncoder(Ljava/io/OutputStream;Lorg/apache/avro/io/BinaryEncoder;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/avro/util/internal/Accessor;->encode(Lorg/apache/avro/io/Encoder;Lorg/apache/avro/Schema;Le/k/a/c/l;)V

    .line 8
    invoke-interface {v3}, Ljava/io/Flushable;->flush()V

    .line 9
    invoke-static {}, Lorg/apache/avro/io/DecoderFactory;->get()Lorg/apache/avro/io/DecoderFactory;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/avro/io/DecoderFactory;->binaryDecoder([BLorg/apache/avro/io/BinaryDecoder;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/avro/generic/GenericData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lorg/apache/avro/io/DatumReader;->read(Ljava/lang/Object;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData;->defaultValueCache:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {v0, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_0
    return-object v1

    .line 13
    :cond_3
    new-instance v0, Lorg/apache/avro/AvroMissingFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not set and has no default value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/avro/AvroMissingFieldException;-><init>(Ljava/lang/String;Lorg/apache/avro/Schema$Field;)V

    throw v0
.end method

.method public getEnumSchema(Ljava/lang/Object;)Lorg/apache/avro/Schema;
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/avro/generic/GenericContainer;

    invoke-interface {p1}, Lorg/apache/avro/generic/GenericContainer;->getSchema()Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1
.end method

.method public getField(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/avro/generic/IndexedRecord;

    invoke-interface {p1, p3}, Lorg/apache/avro/generic/IndexedRecord;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getField(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericData;->getField(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFixedSchema(Ljava/lang/Object;)Lorg/apache/avro/Schema;
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/avro/generic/GenericContainer;

    invoke-interface {p1}, Lorg/apache/avro/generic/GenericContainer;->getSchema()Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1
.end method

.method public getNewRecordSupplier(Lorg/apache/avro/Schema;)Lorg/apache/avro/generic/GenericData$InstanceSupplier;
    .locals 0

    .line 1
    new-instance p1, Lw3/a/a/b/a;

    invoke-direct {p1, p0}, Lw3/a/a/b/a;-><init>(Lorg/apache/avro/generic/GenericData;)V

    return-object p1
.end method

.method public getRecordSchema(Ljava/lang/Object;)Lorg/apache/avro/Schema;
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/avro/generic/GenericContainer;

    invoke-interface {p1}, Lorg/apache/avro/generic/GenericContainer;->getSchema()Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1
.end method

.method public getRecordState(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSchemaName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_d

    .line 1
    sget-object v0, Lorg/apache/avro/JsonProperties;->NULL_VALUE:Lorg/apache/avro/JsonProperties$Null;

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isRecord(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->getRecordSchema(Ljava/lang/Object;)Lorg/apache/avro/Schema;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isEnum(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->getEnumSchema(Ljava/lang/Object;)Lorg/apache/avro/Schema;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    sget-object p1, Lorg/apache/avro/Schema$Type;->ARRAY:Lorg/apache/avro/Schema$Type;

    invoke-virtual {p1}, Lorg/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isMap(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    sget-object p1, Lorg/apache/avro/Schema$Type;->MAP:Lorg/apache/avro/Schema$Type;

    invoke-virtual {p1}, Lorg/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isFixed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->getFixedSchema(Ljava/lang/Object;)Lorg/apache/avro/Schema;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12
    :cond_5
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    sget-object p1, Lorg/apache/avro/Schema$Type;->STRING:Lorg/apache/avro/Schema$Type;

    invoke-virtual {p1}, Lorg/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 14
    :cond_6
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isBytes(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    sget-object p1, Lorg/apache/avro/Schema$Type;->BYTES:Lorg/apache/avro/Schema$Type;

    invoke-virtual {p1}, Lorg/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 16
    :cond_7
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isInteger(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 17
    sget-object p1, Lorg/apache/avro/Schema$Type;->INT:Lorg/apache/avro/Schema$Type;

    invoke-virtual {p1}, Lorg/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 18
    :cond_8
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isLong(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 19
    sget-object p1, Lorg/apache/avro/Schema$Type;->LONG:Lorg/apache/avro/Schema$Type;

    invoke-virtual {p1}, Lorg/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 20
    :cond_9
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isFloat(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 21
    sget-object p1, Lorg/apache/avro/Schema$Type;->FLOAT:Lorg/apache/avro/Schema$Type;

    invoke-virtual {p1}, Lorg/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 22
    :cond_a
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isDouble(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 23
    sget-object p1, Lorg/apache/avro/Schema$Type;->DOUBLE:Lorg/apache/avro/Schema$Type;

    invoke-virtual {p1}, Lorg/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 24
    :cond_b
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 25
    sget-object p1, Lorg/apache/avro/Schema$Type;->BOOLEAN:Lorg/apache/avro/Schema$Type;

    invoke-virtual {p1}, Lorg/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 26
    :cond_c
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "Unknown datum type %s: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_d
    :goto_0
    sget-object p1, Lorg/apache/avro/Schema$Type;->NULL:Lorg/apache/avro/Schema$Type;

    invoke-virtual {p1}, Lorg/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode(Ljava/lang/Object;Lorg/apache/avro/Schema;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    if-eq v1, v2, :cond_7

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    const/4 p2, 0x6

    if-eq v1, p2, :cond_2

    const/16 p2, 0xd

    if-eq v1, p2, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1

    :cond_1
    return v0

    .line 3
    :cond_2
    instance-of p2, p1, Lorg/apache/avro/util/Utf8;

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p2, Lorg/apache/avro/util/Utf8;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/avro/util/Utf8;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1

    .line 4
    :cond_4
    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lorg/apache/avro/generic/GenericData;->resolveUnion(Lorg/apache/avro/Schema;Ljava/lang/Object;)I

    move-result p2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/avro/Schema;

    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/generic/GenericData;->hashCode(Ljava/lang/Object;Lorg/apache/avro/Schema;)I

    move-result p1

    return p1

    .line 5
    :cond_5
    check-cast p1, Ljava/util/Collection;

    .line 6
    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object p2

    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-virtual {p0, v2, v0, p2}, Lorg/apache/avro/generic/GenericData;->hashCodeAdd(ILjava/lang/Object;Lorg/apache/avro/Schema;)I

    move-result v2

    goto :goto_1

    :cond_6
    return v2

    .line 9
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/avro/Schema;->getEnumOrdinal(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 10
    :cond_8
    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/Schema$Field;

    .line 11
    invoke-virtual {v0}, Lorg/apache/avro/Schema$Field;->order()Lorg/apache/avro/Schema$Field$Order;

    move-result-object v1

    sget-object v3, Lorg/apache/avro/Schema$Field$Order;->IGNORE:Lorg/apache/avro/Schema$Field$Order;

    if-ne v1, v3, :cond_9

    goto :goto_2

    .line 12
    :cond_9
    invoke-virtual {v0}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v3

    invoke-virtual {p0, p1, v1, v3}, Lorg/apache/avro/generic/GenericData;->getField(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, Lorg/apache/avro/generic/GenericData;->hashCodeAdd(ILjava/lang/Object;Lorg/apache/avro/Schema;)I

    move-result v2

    goto :goto_2

    :cond_a
    return v2
.end method

.method public hashCodeAdd(ILjava/lang/Object;Lorg/apache/avro/Schema;)I
    .locals 0

    mul-int/lit8 p1, p1, 0x1f

    .line 1
    invoke-virtual {p0, p2, p3}, Lorg/apache/avro/generic/GenericData;->hashCode(Ljava/lang/Object;Lorg/apache/avro/Schema;)I

    move-result p2

    add-int/2addr p2, p1

    return p2
.end method

.method public induce(Ljava/lang/Object;)Lorg/apache/avro/Schema;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isRecord(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->getRecordSchema(Ljava/lang/Object;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isArray(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->getArrayAsCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Lorg/apache/avro/generic/GenericData;->induce(Ljava/lang/Object;)Lorg/apache/avro/Schema;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v2}, Lorg/apache/avro/generic/GenericData;->induce(Ljava/lang/Object;)Lorg/apache/avro/Schema;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Lorg/apache/avro/AvroTypeException;

    const-string v0, "No mixed type arrays."

    invoke-direct {p1, v0}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-eqz v1, :cond_4

    .line 8
    invoke-static {v1}, Lorg/apache/avro/Schema;->createArray(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    .line 9
    :cond_4
    new-instance v0, Lorg/apache/avro/AvroTypeException;

    const-string v1, "Empty array: "

    invoke-static {v1, p1}, Le/d/c/a/a;->x2(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_5
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isMap(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 11
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v1, :cond_6

    .line 13
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/avro/generic/GenericData;->induce(Ljava/lang/Object;)Lorg/apache/avro/Schema;

    move-result-object v1

    goto :goto_1

    .line 14
    :cond_6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/avro/generic/GenericData;->induce(Ljava/lang/Object;)Lorg/apache/avro/Schema;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    .line 15
    :cond_7
    new-instance p1, Lorg/apache/avro/AvroTypeException;

    const-string v0, "No mixed type map values."

    invoke-direct {p1, v0}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    if-eqz v1, :cond_9

    .line 16
    invoke-static {v1}, Lorg/apache/avro/Schema;->createMap(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    .line 17
    :cond_9
    new-instance v0, Lorg/apache/avro/AvroTypeException;

    const-string v1, "Empty map: "

    invoke-static {v1, p1}, Le/d/c/a/a;->x2(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_a
    instance-of v0, p1, Lorg/apache/avro/generic/GenericFixed;

    if-eqz v0, :cond_b

    .line 19
    check-cast p1, Lorg/apache/avro/generic/GenericFixed;

    invoke-interface {p1}, Lorg/apache/avro/generic/GenericFixed;->bytes()[B

    move-result-object p1

    array-length p1, p1

    invoke-static {v1, v1, v1, p1}, Lorg/apache/avro/Schema;->createFixed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    .line 20
    :cond_b
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 21
    sget-object p1, Lorg/apache/avro/Schema$Type;->STRING:Lorg/apache/avro/Schema$Type;

    invoke-static {p1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    .line 22
    :cond_c
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isBytes(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 23
    sget-object p1, Lorg/apache/avro/Schema$Type;->BYTES:Lorg/apache/avro/Schema$Type;

    invoke-static {p1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    .line 24
    :cond_d
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isInteger(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 25
    sget-object p1, Lorg/apache/avro/Schema$Type;->INT:Lorg/apache/avro/Schema$Type;

    invoke-static {p1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    .line 26
    :cond_e
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isLong(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 27
    sget-object p1, Lorg/apache/avro/Schema$Type;->LONG:Lorg/apache/avro/Schema$Type;

    invoke-static {p1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    .line 28
    :cond_f
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isFloat(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 29
    sget-object p1, Lorg/apache/avro/Schema$Type;->FLOAT:Lorg/apache/avro/Schema$Type;

    invoke-static {p1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    .line 30
    :cond_10
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isDouble(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 31
    sget-object p1, Lorg/apache/avro/Schema$Type;->DOUBLE:Lorg/apache/avro/Schema$Type;

    invoke-static {p1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    .line 32
    :cond_11
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 33
    sget-object p1, Lorg/apache/avro/Schema$Type;->BOOLEAN:Lorg/apache/avro/Schema$Type;

    invoke-static {p1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    :cond_12
    if-nez p1, :cond_13

    .line 34
    sget-object p1, Lorg/apache/avro/Schema$Type;->NULL:Lorg/apache/avro/Schema$Type;

    invoke-static {p1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    .line 35
    :cond_13
    new-instance v0, Lorg/apache/avro/AvroTypeException;

    const-string v1, "Can\'t create schema for: "

    invoke-static {v1, p1}, Le/d/c/a/a;->x2(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public instanceOf(Lorg/apache/avro/Schema;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    :pswitch_0
    new-instance p2, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Unexpected type: "

    invoke-static {v0, p1}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_1
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 3
    :pswitch_2
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isBoolean(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4
    :pswitch_3
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isDouble(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5
    :pswitch_4
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isFloat(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 6
    :pswitch_5
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isLong(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7
    :pswitch_6
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isInteger(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 8
    :pswitch_7
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isBytes(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 9
    :pswitch_8
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isString(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 10
    :pswitch_9
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isFixed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 11
    :cond_1
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->getFixedSchema(Ljava/lang/Object;)Lorg/apache/avro/Schema;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 12
    :pswitch_a
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isMap(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 13
    :pswitch_b
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isArray(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 14
    :pswitch_c
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isEnum(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 15
    :cond_2
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->getEnumSchema(Ljava/lang/Object;)Lorg/apache/avro/Schema;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 16
    :pswitch_d
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isRecord(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 17
    :cond_3
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->getRecordSchema(Ljava/lang/Object;)Lorg/apache/avro/Schema;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_1

    .line 18
    :cond_5
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->getRecordSchema(Ljava/lang/Object;)Lorg/apache/avro/Schema;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isArray(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Ljava/util/Collection;

    return p1
.end method

.method public isBoolean(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Ljava/lang/Boolean;

    return p1
.end method

.method public isBytes(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Ljava/nio/ByteBuffer;

    return p1
.end method

.method public isDouble(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Ljava/lang/Double;

    return p1
.end method

.method public isEnum(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lorg/apache/avro/generic/GenericEnumSymbol;

    return p1
.end method

.method public isFixed(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lorg/apache/avro/generic/GenericFixed;

    return p1
.end method

.method public isFloat(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Ljava/lang/Float;

    return p1
.end method

.method public isInteger(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Ljava/lang/Integer;

    return p1
.end method

.method public isLong(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Ljava/lang/Long;

    return p1
.end method

.method public isMap(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Ljava/util/Map;

    return p1
.end method

.method public isRecord(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lorg/apache/avro/generic/IndexedRecord;

    return p1
.end method

.method public isString(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Ljava/lang/CharSequence;

    return p1
.end method

.method public newArray(Ljava/lang/Object;ILorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/apache/avro/generic/GenericArray;

    if-eqz v0, :cond_0

    .line 2
    move-object p2, p1

    check-cast p2, Lorg/apache/avro/generic/GenericArray;

    invoke-interface {p2}, Lorg/apache/avro/generic/GenericArray;->reset()V

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 4
    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->clear()V

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Lorg/apache/avro/generic/GenericData$Array;

    invoke-direct {p1, p2, p3}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    return-object p1
.end method

.method public newMap(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    move-object p2, p1

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    return-object p1
.end method

.method public newRecord(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/apache/avro/generic/IndexedRecord;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/apache/avro/generic/IndexedRecord;

    .line 3
    invoke-interface {p1}, Lorg/apache/avro/generic/GenericContainer;->getSchema()Lorg/apache/avro/Schema;

    move-result-object v0

    if-ne v0, p2, :cond_0

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Lorg/apache/avro/generic/GenericData$Record;

    invoke-direct {p1, p2}, Lorg/apache/avro/generic/GenericData$Record;-><init>(Lorg/apache/avro/Schema;)V

    return-object p1
.end method

.method public resolveUnion(Lorg/apache/avro/Schema;Ljava/lang/Object;)I
    .locals 4

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData;->conversionsByClass:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/avro/Schema;

    invoke-virtual {v3}, Lorg/apache/avro/Schema;->getLogicalType()Lorg/apache/avro/LogicalType;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v3}, Lorg/apache/avro/LogicalType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/avro/Conversion;

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->getSchemaName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/Schema;->getIndexNamed(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 8
    :cond_2
    new-instance v0, Lorg/apache/avro/UnresolvedUnionException;

    invoke-direct {v0, p1, p2}, Lorg/apache/avro/UnresolvedUnionException;-><init>(Lorg/apache/avro/Schema;Ljava/lang/Object;)V

    throw v0
.end method

.method public setField(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/avro/generic/IndexedRecord;

    invoke-interface {p1, p3, p4}, Lorg/apache/avro/generic/IndexedRecord;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setField(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/avro/generic/GenericData;->setField(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/util/IdentityHashMap;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/avro/generic/GenericData;->toString(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/IdentityHashMap;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/IdentityHashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isRecord(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "}"

    const-string v2, "{"

    const-string v3, ", "

    const/4 v4, 0x0

    const-string v5, " \">>> CIRCULAR REFERENCE CANNOT BE PUT IN JSON STRING, ABORTING RECURSION <<<\" "

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p3, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 7
    :cond_0
    invoke-virtual {p3, p1, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->getRecordSchema(Ljava/lang/Object;)Lorg/apache/avro/Schema;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/avro/Schema$Field;

    .line 11
    invoke-virtual {v5}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, p2, p3}, Lorg/apache/avro/generic/GenericData;->toString(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/IdentityHashMap;)V

    const-string v6, ": "

    .line 12
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v5}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v5

    invoke-virtual {p0, p1, v6, v5}, Lorg/apache/avro/generic/GenericData;->getField(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, p2, p3}, Lorg/apache/avro/generic/GenericData;->toString(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/IdentityHashMap;)V

    add-int/lit8 v4, v4, 0x1

    .line 14
    invoke-virtual {v0}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 15
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p3, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 18
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    invoke-virtual {p3, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 21
    :cond_4
    invoke-virtual {p3, p1, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->getArrayAsCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "["

    .line 23
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-long v1, v1

    .line 25
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 26
    invoke-virtual {p0, v5, p2, p3}, Lorg/apache/avro/generic/GenericData;->toString(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/IdentityHashMap;)V

    add-int/lit8 v5, v4, 0x1

    int-to-long v6, v4

    cmp-long v4, v6, v1

    if-gez v4, :cond_5

    .line 27
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    move v4, v5

    goto :goto_1

    :cond_6
    const-string v0, "]"

    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p3, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 30
    :cond_7
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isMap(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "\""

    if-eqz v0, :cond_b

    .line 31
    invoke-virtual {p3, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 32
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 33
    :cond_8
    invoke-virtual {p3, p1, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 36
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 37
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p2}, Lorg/apache/avro/generic/GenericData;->writeEscapedString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    const-string v7, "\": "

    .line 39
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, p2, p3}, Lorg/apache/avro/generic/GenericData;->toString(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/IdentityHashMap;)V

    add-int/lit8 v4, v4, 0x1

    .line 41
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 42
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 43
    :cond_a
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p3, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 45
    :cond_b
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isString(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isEnum(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    .line 46
    :cond_c
    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData;->isBytes(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 47
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 49
    sget-object p3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/avro/generic/GenericData;->writeEscapedString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 50
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 51
    :cond_d
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_10

    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 54
    :cond_f
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 57
    :cond_10
    instance-of v0, p1, Lorg/apache/avro/generic/GenericData;

    if-eqz v0, :cond_12

    .line 58
    invoke-virtual {p3, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 59
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 60
    :cond_11
    invoke-virtual {p3, p1, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/avro/generic/GenericData;->toString(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/IdentityHashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {p3, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 63
    :cond_12
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 64
    :cond_13
    :goto_3
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/avro/generic/GenericData;->writeEscapedString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 66
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    return-void

    :catchall_0
    move-exception p1

    .line 67
    throw p1
.end method

.method public validate(Lorg/apache/avro/Schema;Ljava/lang/Object;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 2
    :pswitch_1
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isBoolean(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :pswitch_2
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isDouble(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4
    :pswitch_3
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isFloat(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5
    :pswitch_4
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isLong(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 6
    :pswitch_5
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isInteger(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7
    :pswitch_6
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isBytes(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 8
    :pswitch_7
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isString(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 9
    :pswitch_8
    instance-of v0, p2, Lorg/apache/avro/generic/GenericFixed;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/apache/avro/generic/GenericFixed;

    invoke-interface {p2}, Lorg/apache/avro/generic/GenericFixed;->bytes()[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result p1

    if-ne p2, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    .line 10
    :pswitch_9
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/generic/GenericData;->resolveUnion(Lorg/apache/avro/Schema;Ljava/lang/Object;)I

    move-result v0

    .line 11
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/Schema;

    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/generic/GenericData;->validate(Lorg/apache/avro/Schema;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Lorg/apache/avro/UnresolvedUnionException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v2

    .line 12
    :pswitch_a
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isMap(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 13
    :cond_2
    check-cast p2, Ljava/util/Map;

    .line 14
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 15
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getValueType()Lorg/apache/avro/Schema;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lorg/apache/avro/generic/GenericData;->validate(Lorg/apache/avro/Schema;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_4
    return v1

    .line 16
    :pswitch_b
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 17
    :cond_5
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->getArrayAsCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lorg/apache/avro/generic/GenericData;->validate(Lorg/apache/avro/Schema;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    :cond_7
    return v1

    .line 19
    :pswitch_c
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isEnum(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return v2

    .line 20
    :cond_8
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 21
    :pswitch_d
    invoke-virtual {p0, p2}, Lorg/apache/avro/generic/GenericData;->isRecord(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return v2

    .line 22
    :cond_9
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/Schema$Field;

    .line 23
    invoke-virtual {v0}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v0

    invoke-virtual {p0, p2, v4, v0}, Lorg/apache/avro/generic/GenericData;->getField(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lorg/apache/avro/generic/GenericData;->validate(Lorg/apache/avro/Schema;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    return v2

    :cond_b
    return v1

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
