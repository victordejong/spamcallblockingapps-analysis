.class public Lorg/apache/avro/specific/SpecificData;
.super Lorg/apache/avro/generic/GenericData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/specific/SpecificData$SchemaConstructable;
    }
.end annotation


# static fields
.field public static final CLASS_PROP:Ljava/lang/String; = "java-class"

.field private static final CTOR_CACHE:Lorg/apache/avro/util/tc/LazyValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/util/tc/LazyValue<",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field public static final ELEMENT_PROP:Ljava/lang/String; = "java-element-class"

.field private static final INSTANCE:Lorg/apache/avro/specific/SpecificData;

.field public static final KEY_CLASS_PROP:Ljava/lang/String; = "java-key-class"

.field private static final NO_ARG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final NO_CLASS:Ljava/lang/Class;

.field private static final NULL_SCHEMA:Lorg/apache/avro/Schema;

.field public static final RESERVED_WORDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCHEMA_ARG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private classCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private final schemaClassCache:Lorg/apache/avro/util/tc/LazyValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/util/tc/LazyValue<",
            "Lorg/apache/avro/Schema;",
            ">;"
        }
    .end annotation
.end field

.field private final schemaTypeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lorg/apache/avro/Schema;",
            ">;"
        }
    .end annotation
.end field

.field public stringableClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private useCustomCoderFlag:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 55

    .line 1
    new-instance v0, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v0}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v0, Lorg/apache/avro/specific/SpecificData;->INSTANCE:Lorg/apache/avro/specific/SpecificData;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 2
    sput-object v1, Lorg/apache/avro/specific/SpecificData;->NO_ARG:[Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 3
    const-class v2, Lorg/apache/avro/Schema;

    aput-object v2, v1, v0

    sput-object v1, Lorg/apache/avro/specific/SpecificData;->SCHEMA_ARG:[Ljava/lang/Class;

    .line 4
    new-instance v0, Lorg/apache/avro/specific/SpecificData$1;

    invoke-direct {v0}, Lorg/apache/avro/specific/SpecificData$1;-><init>()V

    sput-object v0, Lorg/apache/avro/specific/SpecificData;->CTOR_CACHE:Lorg/apache/avro/util/tc/LazyValue;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "abstract"

    const-string v2, "assert"

    const-string v3, "boolean"

    const-string v4, "break"

    const-string v5, "byte"

    const-string v6, "case"

    const-string v7, "catch"

    const-string v8, "char"

    const-string v9, "class"

    const-string v10, "const"

    const-string v11, "continue"

    const-string v12, "default"

    const-string v13, "do"

    const-string v14, "double"

    const-string v15, "else"

    const-string v16, "enum"

    const-string v17, "extends"

    const-string v18, "false"

    const-string v19, "final"

    const-string v20, "finally"

    const-string v21, "float"

    const-string v22, "for"

    const-string v23, "goto"

    const-string v24, "if"

    const-string v25, "implements"

    const-string v26, "import"

    const-string v27, "instanceof"

    const-string v28, "int"

    const-string v29, "interface"

    const-string v30, "long"

    const-string v31, "native"

    const-string v32, "new"

    const-string v33, "null"

    const-string v34, "package"

    const-string v35, "private"

    const-string v36, "protected"

    const-string v37, "public"

    const-string v38, "return"

    const-string v39, "short"

    const-string v40, "static"

    const-string v41, "strictfp"

    const-string v42, "super"

    const-string v43, "switch"

    const-string v44, "synchronized"

    const-string v45, "this"

    const-string v46, "throw"

    const-string v47, "throws"

    const-string v48, "transient"

    const-string v49, "true"

    const-string v50, "try"

    const-string v51, "void"

    const-string v52, "volatile"

    const-string v53, "while"

    const-string v54, "Builder"

    filled-new-array/range {v1 .. v54}, [Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/apache/avro/specific/SpecificData;->RESERVED_WORDS:Ljava/util/Set;

    .line 7
    new-instance v0, Lorg/apache/avro/specific/SpecificData$2;

    invoke-direct {v0}, Lorg/apache/avro/specific/SpecificData$2;-><init>()V

    .line 8
    const-class v0, Lorg/apache/avro/specific/SpecificData$2;

    sput-object v0, Lorg/apache/avro/specific/SpecificData;->NO_CLASS:Ljava/lang/Class;

    .line 9
    sget-object v0, Lorg/apache/avro/Schema$Type;->NULL:Lorg/apache/avro/Schema$Type;

    invoke-static {v0}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lorg/apache/avro/specific/SpecificData;->NULL_SCHEMA:Lorg/apache/avro/Schema;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/generic/GenericData;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/math/BigDecimal;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/math/BigInteger;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/net/URI;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/net/URL;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Ljava/io/File;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/avro/specific/SpecificData;->stringableClasses:Ljava/util/Set;

    const-string v0, "org.apache.org.apache.avro.specific.use_custom_coders"

    const-string v1, "false"

    .line 3
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/avro/specific/SpecificData;->useCustomCoderFlag:Z

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/specific/SpecificData;->classCache:Ljava/util/Map;

    .line 5
    new-instance v0, Lorg/apache/avro/specific/SpecificData$3;

    invoke-direct {v0, p0}, Lorg/apache/avro/specific/SpecificData$3;-><init>(Lorg/apache/avro/specific/SpecificData;)V

    iput-object v0, p0, Lorg/apache/avro/specific/SpecificData;->schemaClassCache:Lorg/apache/avro/util/tc/LazyValue;

    .line 6
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/avro/specific/SpecificData;->schemaTypeCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 7
    invoke-direct {p0, p1}, Lorg/apache/avro/generic/GenericData;-><init>(Ljava/lang/ClassLoader;)V

    .line 8
    new-instance p1, Ljava/util/HashSet;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/math/BigDecimal;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/math/BigInteger;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/net/URI;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljava/net/URL;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Ljava/io/File;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/apache/avro/specific/SpecificData;->stringableClasses:Ljava/util/Set;

    const-string p1, "org.apache.org.apache.avro.specific.use_custom_coders"

    const-string v0, "false"

    .line 9
    invoke-static {p1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/avro/specific/SpecificData;->useCustomCoderFlag:Z

    .line 10
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/avro/specific/SpecificData;->classCache:Ljava/util/Map;

    .line 11
    new-instance p1, Lorg/apache/avro/specific/SpecificData$3;

    invoke-direct {p1, p0}, Lorg/apache/avro/specific/SpecificData$3;-><init>(Lorg/apache/avro/specific/SpecificData;)V

    iput-object p1, p0, Lorg/apache/avro/specific/SpecificData;->schemaClassCache:Lorg/apache/avro/util/tc/LazyValue;

    .line 12
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/specific/SpecificData;->schemaTypeCache:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/specific/SpecificData;->SCHEMA_ARG:[Ljava/lang/Class;

    return-object v0
.end method

.method public static synthetic access$100()[Ljava/lang/Class;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/specific/SpecificData;->NO_ARG:[Ljava/lang/Class;

    return-object v0
.end method

.method public static get()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/specific/SpecificData;->INSTANCE:Lorg/apache/avro/specific/SpecificData;

    return-object v0
.end method

.method public static getClassName(Lorg/apache/avro/Schema;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_2

    const-string v1, ""

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "$"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "."

    .line 5
    :goto_0
    invoke-static {v0, v1, p0}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static getDecoder(Ljava/io/ObjectInput;)Lorg/apache/avro/io/BinaryDecoder;
    .locals 2

    .line 1
    invoke-static {}, Lorg/apache/avro/io/DecoderFactory;->get()Lorg/apache/avro/io/DecoderFactory;

    move-result-object v0

    new-instance v1, Lorg/apache/avro/specific/ExternalizableInput;

    invoke-direct {v1, p0}, Lorg/apache/avro/specific/ExternalizableInput;-><init>(Ljava/io/ObjectInput;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Lorg/apache/avro/io/DecoderFactory;->directBinaryDecoder(Ljava/io/InputStream;Lorg/apache/avro/io/BinaryDecoder;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object p0

    return-object p0
.end method

.method public static getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;
    .locals 2

    .line 1
    invoke-static {}, Lorg/apache/avro/io/EncoderFactory;->get()Lorg/apache/avro/io/EncoderFactory;

    move-result-object v0

    new-instance v1, Lorg/apache/avro/specific/ExternalizableOutput;

    invoke-direct {v1, p0}, Lorg/apache/avro/specific/ExternalizableOutput;-><init>(Ljava/io/ObjectOutput;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Lorg/apache/avro/io/EncoderFactory;->directBinaryEncoder(Ljava/io/OutputStream;Lorg/apache/avro/io/BinaryEncoder;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p0

    return-object p0
.end method

.method public static getForClass(Ljava/lang/Class;)Lorg/apache/avro/specific/SpecificData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/apache/avro/specific/SpecificData;"
        }
    .end annotation

    .line 1
    const-class v0, Lorg/apache/avro/specific/SpecificRecordBase;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "MODEL$"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/avro/specific/SpecificData;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {v0, p0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 6
    :catch_1
    invoke-static {}, Lorg/apache/avro/specific/SpecificData;->get()Lorg/apache/avro/specific/SpecificData;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    invoke-static {}, Lorg/apache/avro/specific/SpecificData;->get()Lorg/apache/avro/specific/SpecificData;

    move-result-object p0

    return-object p0
.end method

.method public static getForSchema(Lorg/apache/avro/Schema;)Lorg/apache/avro/specific/SpecificData;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    sget-object v1, Lorg/apache/avro/Schema$Type;->RECORD:Lorg/apache/avro/Schema$Type;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lorg/apache/avro/specific/SpecificData;->getClassName(Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lorg/apache/avro/specific/SpecificData;->getForClass(Ljava/lang/Class;)Lorg/apache/avro/specific/SpecificData;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 5
    :catch_0
    invoke-static {}, Lorg/apache/avro/specific/SpecificData;->get()Lorg/apache/avro/specific/SpecificData;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-static {}, Lorg/apache/avro/specific/SpecificData;->get()Lorg/apache/avro/specific/SpecificData;

    move-result-object p0

    return-object p0
.end method

.method private getNestedClassName(Lorg/apache/avro/Schema;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1

    const-string v1, ""

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "$"

    .line 4
    invoke-static {v0, v1, p1}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private getWrapper(Lorg/apache/avro/Schema;)Ljava/lang/Class;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/avro/specific/SpecificData;->getClass(Lorg/apache/avro/Schema;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_0
    const-class p1, Ljava/lang/Boolean;

    return-object p1

    .line 4
    :pswitch_1
    const-class p1, Ljava/lang/Double;

    return-object p1

    .line 5
    :pswitch_2
    const-class p1, Ljava/lang/Float;

    return-object p1

    .line 6
    :pswitch_3
    const-class p1, Ljava/lang/Long;

    return-object p1

    .line 7
    :pswitch_4
    const-class p1, Ljava/lang/Integer;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static newInstance(Ljava/lang/Class;Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-class v0, Lorg/apache/avro/specific/SpecificData$SchemaConstructable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    .line 2
    :try_start_0
    sget-object v1, Lorg/apache/avro/specific/SpecificData;->CTOR_CACHE:Lorg/apache/avro/util/tc/LazyValue;

    invoke-virtual {v1, p0}, Lorg/apache/avro/util/tc/LazyValue;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public synthetic a(Lorg/apache/avro/Schema;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/avro/generic/GenericData;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getClassName(Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/avro/util/ClassUtils;->forName(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/avro/generic/GenericData;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-direct {p0, p1}, Lorg/apache/avro/specific/SpecificData;->getNestedClassName(Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/apache/avro/util/ClassUtils;->forName(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3
    :catch_1
    sget-object p1, Lorg/apache/avro/specific/SpecificData;->NO_CLASS:Ljava/lang/Class;

    :goto_0
    return-object p1
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/avro/Schema;Z)I
    .locals 2

    .line 1
    invoke-virtual {p3}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    sub-int/2addr p1, p2

    return p1

    .line 4
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/avro/generic/GenericData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/avro/Schema;Z)I

    move-result p1

    return p1
.end method

.method public createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object p1

    return-object p1
.end method

.method public createDatumReader(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/avro/specific/SpecificDatumReader;

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/avro/specific/SpecificDatumReader;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/specific/SpecificData;)V

    return-object v0
.end method

.method public createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/avro/specific/SpecificDatumWriter;

    invoke-direct {v0, p1, p0}, Lorg/apache/avro/specific/SpecificDatumWriter;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/specific/SpecificData;)V

    return-object v0
.end method

.method public createEnum(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lorg/apache/avro/specific/SpecificData;->getClass(Lorg/apache/avro/Schema;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/apache/avro/generic/GenericData;->createEnum(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object p2, Lorg/apache/avro/specific/SpecificData;->RESERVED_WORDS:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "$"

    .line 4
    invoke-static {p1, p2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_1
    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public createFixed(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lorg/apache/avro/specific/SpecificData;->getClass(Lorg/apache/avro/Schema;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/apache/avro/generic/GenericData;->createFixed(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, p2}, Lorg/apache/avro/specific/SpecificData;->newInstance(Ljava/lang/Class;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lorg/apache/avro/Schema;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/avro/Schema;",
            ">;)",
            "Lorg/apache/avro/Schema;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    const-class v1, Ljava/lang/CharSequence;

    move-object v2, p1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    sget-object p1, Lorg/apache/avro/Schema$Type;->STRING:Lorg/apache/avro/Schema$Type;

    invoke-static {p1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    const-class v1, Ljava/nio/ByteBuffer;

    if-ne p1, v1, :cond_1

    .line 4
    sget-object p1, Lorg/apache/avro/Schema$Type;->BYTES:Lorg/apache/avro/Schema$Type;

    invoke-static {p1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    const-class v1, Ljava/lang/Integer;

    if-eq p1, v1, :cond_14

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_2

    goto/16 :goto_6

    .line 6
    :cond_2
    const-class v1, Ljava/lang/Long;

    if-eq p1, v1, :cond_13

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_3

    goto/16 :goto_5

    .line 7
    :cond_3
    const-class v1, Ljava/lang/Float;

    if-eq p1, v1, :cond_12

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_4

    goto/16 :goto_4

    .line 8
    :cond_4
    const-class v1, Ljava/lang/Double;

    if-eq p1, v1, :cond_11

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_5

    goto/16 :goto_3

    .line 9
    :cond_5
    const-class v1, Ljava/lang/Boolean;

    if-eq p1, v1, :cond_10

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_6

    goto/16 :goto_2

    .line 10
    :cond_6
    const-class v1, Ljava/lang/Void;

    if-eq p1, v1, :cond_f

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_7

    goto/16 :goto_1

    .line 11
    :cond_7
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_c

    .line 12
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 13
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 14
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 15
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    .line 16
    array-length v0, p1

    if-ne v0, v3, :cond_8

    .line 17
    aget-object p1, p1, v2

    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/specific/SpecificData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lorg/apache/avro/Schema;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/avro/Schema;->createArray(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    .line 18
    :cond_8
    new-instance p1, Lorg/apache/avro/AvroTypeException;

    const-string p2, "No array type specified."

    invoke-direct {p1, p2}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_9
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 20
    aget-object v0, p1, v2

    .line 21
    aget-object p1, p1, v3

    .line 22
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_a

    const-class v1, Ljava/lang/CharSequence;

    move-object v2, v0

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 23
    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/specific/SpecificData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lorg/apache/avro/Schema;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/avro/Schema;->createMap(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    .line 24
    :cond_a
    new-instance p1, Lorg/apache/avro/AvroTypeException;

    const-string p2, "Map key class not CharSequence: "

    invoke-static {p2, v0}, Le/d/c/a/a;->F2(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_b
    invoke-virtual {p0, v0, p2}, Lorg/apache/avro/specific/SpecificData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    :cond_c
    if-eqz v0, :cond_e

    .line 26
    check-cast p1, Ljava/lang/Class;

    .line 27
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Schema;

    if-nez v1, :cond_d

    :try_start_0
    const-string v1, "SCHEMA$"

    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Schema;

    .line 30
    invoke-static {v1}, Lorg/apache/avro/specific/SpecificData;->getClassName(Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 31
    new-instance v2, Lorg/apache/avro/Schema$Parser;

    invoke-direct {v2}, Lorg/apache/avro/Schema$Parser;-><init>()V

    .line 32
    invoke-virtual {v1}, Lorg/apache/avro/Schema;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/avro/Schema;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/avro/Schema$Parser;->parse(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    new-instance p2, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {p2, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 34
    :catch_1
    new-instance p2, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Not a Specific class: "

    invoke-static {v0, p1}, Le/d/c/a/a;->w2(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 35
    :cond_d
    :goto_0
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 36
    :cond_e
    new-instance p2, Lorg/apache/avro/AvroTypeException;

    const-string v0, "Unknown type: "

    invoke-static {v0, p1}, Le/d/c/a/a;->F2(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 37
    :cond_f
    :goto_1
    sget-object p1, Lorg/apache/avro/Schema$Type;->NULL:Lorg/apache/avro/Schema$Type;

    invoke-static {p1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    .line 38
    :cond_10
    :goto_2
    sget-object p1, Lorg/apache/avro/Schema$Type;->BOOLEAN:Lorg/apache/avro/Schema$Type;

    invoke-static {p1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    .line 39
    :cond_11
    :goto_3
    sget-object p1, Lorg/apache/avro/Schema$Type;->DOUBLE:Lorg/apache/avro/Schema$Type;

    invoke-static {p1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    .line 40
    :cond_12
    :goto_4
    sget-object p1, Lorg/apache/avro/Schema$Type;->FLOAT:Lorg/apache/avro/Schema$Type;

    invoke-static {p1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    .line 41
    :cond_13
    :goto_5
    sget-object p1, Lorg/apache/avro/Schema$Type;->LONG:Lorg/apache/avro/Schema$Type;

    invoke-static {p1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    .line 42
    :cond_14
    :goto_6
    sget-object p1, Lorg/apache/avro/Schema$Type;->INT:Lorg/apache/avro/Schema$Type;

    invoke-static {p1}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object p1

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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/avro/specific/SpecificData;->isStringable(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 3
    :cond_1
    invoke-super {p0, p1}, Lorg/apache/avro/generic/GenericData;->createString(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getClass(Lorg/apache/avro/Schema;)Ljava/lang/Class;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    const-string v1, "Unknown type: "

    invoke-static {v1, p1}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    return-object p1

    .line 4
    :pswitch_1
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p1

    .line 5
    :pswitch_2
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object p1

    .line 6
    :pswitch_3
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p1

    .line 7
    :pswitch_4
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p1

    .line 8
    :pswitch_5
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p1

    .line 9
    :pswitch_6
    const-class p1, Ljava/nio/ByteBuffer;

    return-object p1

    :pswitch_7
    const-string v0, "org.apache.avro.java.string"

    .line 10
    invoke-virtual {p1, v0}, Lorg/apache/avro/JsonProperties;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "String"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    const-class p1, Ljava/lang/String;

    return-object p1

    .line 12
    :cond_0
    const-class p1, Ljava/lang/CharSequence;

    return-object p1

    .line 13
    :pswitch_8
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/apache/avro/specific/SpecificData;->NULL_SCHEMA:Lorg/apache/avro/Schema;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 15
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Schema;

    invoke-virtual {v1, v0}, Lorg/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/Schema;

    invoke-direct {p0, p1}, Lorg/apache/avro/specific/SpecificData;->getWrapper(Lorg/apache/avro/Schema;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 16
    :cond_1
    const-class p1, Ljava/lang/Object;

    return-object p1

    .line 17
    :pswitch_9
    const-class p1, Ljava/util/Map;

    return-object p1

    .line 18
    :pswitch_a
    const-class p1, Ljava/util/List;

    return-object p1

    .line 19
    :pswitch_b
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 20
    :cond_2
    iget-object v2, p0, Lorg/apache/avro/specific/SpecificData;->classCache:Ljava/util/Map;

    new-instance v3, Lw3/a/a/c/a;

    invoke-direct {v3, p0, p1}, Lw3/a/a/c/a;-><init>(Lorg/apache/avro/specific/SpecificData;Lorg/apache/avro/Schema;)V

    invoke-static {v2, v0, v3}, Lorg/apache/avro/util/tc/Java8Support;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Lorg/apache/avro/util/tc/Java8Support$MappingFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    .line 21
    sget-object v0, Lorg/apache/avro/specific/SpecificData;->NO_CLASS:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, p1

    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_b
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

.method public getEnumSchema(Ljava/lang/Object;)Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/avro/specific/SpecificData;->getSchema(Ljava/lang/reflect/Type;)Lorg/apache/avro/Schema;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/avro/generic/GenericData;->getEnumSchema(Ljava/lang/Object;)Lorg/apache/avro/Schema;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getNewRecordSupplier(Lorg/apache/avro/Schema;)Lorg/apache/avro/generic/GenericData$InstanceSupplier;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/specific/SpecificData;->getClass(Lorg/apache/avro/Schema;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lorg/apache/avro/generic/GenericData;->getNewRecordSupplier(Lorg/apache/avro/Schema;)Lorg/apache/avro/generic/GenericData$InstanceSupplier;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    const-class v1, Lorg/apache/avro/specific/SpecificData$SchemaConstructable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    .line 4
    sget-object v2, Lorg/apache/avro/specific/SpecificData;->CTOR_CACHE:Lorg/apache/avro/util/tc/LazyValue;

    invoke-virtual {v2, v0}, Lorg/apache/avro/util/tc/LazyValue;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_0
    new-instance p1, Lw3/a/a/c/c;

    invoke-direct {p1, v0, v2, v1}, Lw3/a/a/c/c;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public getProtocol(Ljava/lang/Class;)Lorg/apache/avro/Protocol;
    .locals 3

    :try_start_0
    const-string v0, "PROTOCOL"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/Protocol;

    .line 2
    invoke-virtual {v0}, Lorg/apache/avro/Protocol;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/apache/avro/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/avro/Protocol;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/avro/Protocol;->parse(Ljava/lang/String;)Lorg/apache/avro/Protocol;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {v0, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :catch_1
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    const-string v1, "Not a Specific protocol: "

    invoke-static {v1, p1}, Le/d/c/a/a;->w2(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchema(Ljava/lang/reflect/Type;)Lorg/apache/avro/Schema;
    .locals 2

    .line 1
    :try_start_0
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/avro/specific/SpecificData;->schemaClassCache:Lorg/apache/avro/util/tc/LazyValue;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lorg/apache/avro/util/tc/LazyValue;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/Schema;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/specific/SpecificData;->schemaTypeCache:Ljava/util/Map;

    new-instance v1, Lw3/a/a/c/b;

    invoke-direct {v1, p0}, Lw3/a/a/c/b;-><init>(Lorg/apache/avro/specific/SpecificData;)V

    invoke-static {v0, p1, v1}, Lorg/apache/avro/util/tc/Java8Support;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Lorg/apache/avro/util/tc/Java8Support$MappingFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/Schema;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    instance-of v0, p1, Lorg/apache/avro/AvroRuntimeException;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/avro/AvroRuntimeException;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {v0, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    throw p1
.end method

.method public getSchemaName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/avro/specific/SpecificData;->isStringable(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lorg/apache/avro/Schema$Type;->STRING:Lorg/apache/avro/Schema$Type;

    invoke-virtual {p1}, Lorg/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/avro/generic/GenericData;->getSchemaName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isEnum(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lorg/apache/avro/generic/GenericData;->isEnum(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isStringType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public isStringable(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/specific/SpecificData;->stringableClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public newRecord(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lorg/apache/avro/specific/SpecificData;->getClass(Lorg/apache/avro/Schema;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/apache/avro/generic/GenericData;->newRecord(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, p2}, Lorg/apache/avro/specific/SpecificData;->newInstance(Ljava/lang/Class;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public setCustomCoders(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/avro/specific/SpecificData;->useCustomCoderFlag:Z

    return-void
.end method

.method public useCustomCoders()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/avro/specific/SpecificData;->useCustomCoderFlag:Z

    return v0
.end method
