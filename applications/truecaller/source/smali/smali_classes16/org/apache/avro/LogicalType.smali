.class public Lorg/apache/avro/LogicalType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INCOMPATIBLE_PROPS:[Ljava/lang/String;

.field public static final LOGICAL_TYPE_PROP:Ljava/lang/String; = "logicalType"


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "org.apache.avro.java.string"

    const-string v1, "java-class"

    const-string v2, "java-key-class"

    const-string v3, "java-element-class"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/avro/LogicalType;->INCOMPATIBLE_PROPS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/LogicalType;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addToSchema(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/LogicalType;->validate(Lorg/apache/avro/Schema;)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/LogicalType;->name:Ljava/lang/String;

    const-string v1, "logicalType"

    invoke-virtual {p1, v1, v0}, Lorg/apache/avro/Schema;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p0}, Lorg/apache/avro/Schema;->setLogicalType(Lorg/apache/avro/LogicalType;)V

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/LogicalType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public validate(Lorg/apache/avro/Schema;)V
    .locals 5

    .line 1
    sget-object v0, Lorg/apache/avro/LogicalType;->INCOMPATIBLE_PROPS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {p1, v3}, Lorg/apache/avro/JsonProperties;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "logicalType cannot be used with "

    invoke-static {v0, v3}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method
