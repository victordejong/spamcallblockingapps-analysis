.class public Lorg/apache/avro/util/internal/Accessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/util/internal/Accessor$EncoderFactoryAccessor;,
        Lorg/apache/avro/util/internal/Accessor$ResolvingGrammarGeneratorAccessor;,
        Lorg/apache/avro/util/internal/Accessor$FieldAccessor;,
        Lorg/apache/avro/util/internal/Accessor$JsonPropertiesAccessor;
    }
.end annotation


# static fields
.field private static volatile fieldAccessor:Lorg/apache/avro/util/internal/Accessor$FieldAccessor;

.field private static volatile jsonPropertiesAccessor:Lorg/apache/avro/util/internal/Accessor$JsonPropertiesAccessor;

.field private static volatile resolvingGrammarGeneratorAccessor:Lorg/apache/avro/util/internal/Accessor$ResolvingGrammarGeneratorAccessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProp(Lorg/apache/avro/JsonProperties;Ljava/lang/String;Le/k/a/c/l;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/util/internal/Accessor;->jsonPropertiesAccessor:Lorg/apache/avro/util/internal/Accessor$JsonPropertiesAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/avro/util/internal/Accessor$JsonPropertiesAccessor;->addProp(Lorg/apache/avro/JsonProperties;Ljava/lang/String;Le/k/a/c/l;)V

    return-void
.end method

.method public static createField(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;Le/k/a/c/l;)Lorg/apache/avro/Schema$Field;
    .locals 1

    .line 2
    invoke-static {}, Lorg/apache/avro/util/internal/Accessor;->fieldAccessor()Lorg/apache/avro/util/internal/Accessor$FieldAccessor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/avro/util/internal/Accessor$FieldAccessor;->createField(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;Le/k/a/c/l;)Lorg/apache/avro/Schema$Field;

    move-result-object p0

    return-object p0
.end method

.method public static createField(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;Le/k/a/c/l;ZLorg/apache/avro/Schema$Field$Order;)Lorg/apache/avro/Schema$Field;
    .locals 7

    .line 1
    invoke-static {}, Lorg/apache/avro/util/internal/Accessor;->fieldAccessor()Lorg/apache/avro/util/internal/Accessor$FieldAccessor;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/avro/util/internal/Accessor$FieldAccessor;->createField(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;Le/k/a/c/l;ZLorg/apache/avro/Schema$Field$Order;)Lorg/apache/avro/Schema$Field;

    move-result-object p0

    return-object p0
.end method

.method public static defaultValue(Lorg/apache/avro/Schema$Field;)Le/k/a/c/l;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/util/internal/Accessor;->fieldAccessor:Lorg/apache/avro/util/internal/Accessor$FieldAccessor;

    invoke-virtual {v0, p0}, Lorg/apache/avro/util/internal/Accessor$FieldAccessor;->defaultValue(Lorg/apache/avro/Schema$Field;)Le/k/a/c/l;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Lorg/apache/avro/io/Encoder;Lorg/apache/avro/Schema;Le/k/a/c/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/avro/util/internal/Accessor;->resolvingGrammarGeneratorAccessor()Lorg/apache/avro/util/internal/Accessor$ResolvingGrammarGeneratorAccessor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/avro/util/internal/Accessor$ResolvingGrammarGeneratorAccessor;->encode(Lorg/apache/avro/io/Encoder;Lorg/apache/avro/Schema;Le/k/a/c/l;)V

    return-void
.end method

.method private static ensureLoaded(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static fieldAccessor()Lorg/apache/avro/util/internal/Accessor$FieldAccessor;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/util/internal/Accessor;->fieldAccessor:Lorg/apache/avro/util/internal/Accessor$FieldAccessor;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lorg/apache/avro/Schema$Field;

    invoke-static {v0}, Lorg/apache/avro/util/internal/Accessor;->ensureLoaded(Ljava/lang/Class;)V

    .line 3
    :cond_0
    sget-object v0, Lorg/apache/avro/util/internal/Accessor;->fieldAccessor:Lorg/apache/avro/util/internal/Accessor$FieldAccessor;

    return-object v0
.end method

.method private static resolvingGrammarGeneratorAccessor()Lorg/apache/avro/util/internal/Accessor$ResolvingGrammarGeneratorAccessor;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/util/internal/Accessor;->resolvingGrammarGeneratorAccessor:Lorg/apache/avro/util/internal/Accessor$ResolvingGrammarGeneratorAccessor;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;

    invoke-static {v0}, Lorg/apache/avro/util/internal/Accessor;->ensureLoaded(Ljava/lang/Class;)V

    .line 3
    :cond_0
    sget-object v0, Lorg/apache/avro/util/internal/Accessor;->resolvingGrammarGeneratorAccessor:Lorg/apache/avro/util/internal/Accessor$ResolvingGrammarGeneratorAccessor;

    return-object v0
.end method

.method public static setAccessor(Lorg/apache/avro/util/internal/Accessor$FieldAccessor;)V
    .locals 1

    .line 4
    sget-object v0, Lorg/apache/avro/util/internal/Accessor;->fieldAccessor:Lorg/apache/avro/util/internal/Accessor$FieldAccessor;

    if-nez v0, :cond_0

    .line 5
    sput-object p0, Lorg/apache/avro/util/internal/Accessor;->fieldAccessor:Lorg/apache/avro/util/internal/Accessor$FieldAccessor;

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "FieldAccessor already initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setAccessor(Lorg/apache/avro/util/internal/Accessor$JsonPropertiesAccessor;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/util/internal/Accessor;->jsonPropertiesAccessor:Lorg/apache/avro/util/internal/Accessor$JsonPropertiesAccessor;

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lorg/apache/avro/util/internal/Accessor;->jsonPropertiesAccessor:Lorg/apache/avro/util/internal/Accessor$JsonPropertiesAccessor;

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "JsonPropertiesAccessor already initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setAccessor(Lorg/apache/avro/util/internal/Accessor$ResolvingGrammarGeneratorAccessor;)V
    .locals 1

    .line 7
    sget-object v0, Lorg/apache/avro/util/internal/Accessor;->resolvingGrammarGeneratorAccessor:Lorg/apache/avro/util/internal/Accessor$ResolvingGrammarGeneratorAccessor;

    if-nez v0, :cond_0

    .line 8
    sput-object p0, Lorg/apache/avro/util/internal/Accessor;->resolvingGrammarGeneratorAccessor:Lorg/apache/avro/util/internal/Accessor$ResolvingGrammarGeneratorAccessor;

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ResolvingGrammarGeneratorAccessor already initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
