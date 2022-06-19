.class public Lorg/apache/avro/SchemaCompatibility;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;,
        Lorg/apache/avro/SchemaCompatibility$Incompatibility;,
        Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;,
        Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;,
        Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;,
        Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;,
        Lorg/apache/avro/SchemaCompatibility$ReaderWriter;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final LOG:Lw3/d/b;

.field public static final READER_WRITER_COMPATIBLE_MESSAGE:Ljava/lang/String; = "Reader schema can always successfully decode data written using the writer schema."


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/apache/avro/SchemaCompatibility;

    invoke-static {v0}, Lw3/d/c;->b(Ljava/lang/Class;)Lw3/d/b;

    move-result-object v0

    sput-object v0, Lorg/apache/avro/SchemaCompatibility;->LOG:Lw3/d/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lw3/d/b;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/SchemaCompatibility;->LOG:Lw3/d/b;

    return-object v0
.end method

.method public static synthetic access$200(Ljava/util/Deque;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/avro/SchemaCompatibility;->asList(Ljava/util/Deque;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/avro/SchemaCompatibility;->objectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static asList(Ljava/util/Deque;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static checkReaderWriterCompatibility(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;
    .locals 5

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;-><init>(Lorg/apache/avro/SchemaCompatibility$1;)V

    invoke-virtual {v0, p0, p1}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->getCompatibility(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->getCompatibility()Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p1, v2}, Lorg/apache/avro/Schema;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v2}, Lorg/apache/avro/Schema;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Data encoded using writer schema:%n%s%nwill or may fail to decode using reader schema:%n%s%n"

    .line 4
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Lorg/apache/avro/AvroRuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown compatibility: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v1, "Reader schema can always successfully decode data written using the writer schema."

    .line 6
    :goto_0
    new-instance v2, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;

    invoke-direct {v2, v0, p0, p1, v1}, Lorg/apache/avro/SchemaCompatibility$SchemaPairCompatibility;-><init>(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/lang/String;)V

    return-object v2
.end method

.method public static lookupWriterField(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema$Field;)Lorg/apache/avro/Schema$Field;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/apache/avro/Schema$Field;->aliases()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v2}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/avro/Schema$Field;

    return-object p0

    .line 9
    :cond_3
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p0, v1, v3

    const-string p0, "Reader record field %s matches multiple fields in writer record schema %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static objectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static schemaNameEquals(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/avro/SchemaCompatibility;->objectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getAliases()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
