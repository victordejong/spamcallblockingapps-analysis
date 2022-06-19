.class public final Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReaderWriterCompatibilityChecker"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final ROOT_REFERENCE_TOKEN:Ljava/lang/String; = ""


# instance fields
.field private final mMemoizeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/avro/SchemaCompatibility$ReaderWriter;",
            "Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->mMemoizeMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/SchemaCompatibility$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;-><init>()V

    return-void
.end method

.method private calculateCompatibility(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/Schema;",
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->compatible()Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v2

    const-string v3, "reader union lacking writer type: %s"

    const-string v4, "Unknown schema type: "

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v2, :cond_2

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 4
    new-instance p2, Lorg/apache/avro/AvroRuntimeException;

    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    return-object v0

    .line 5
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->checkSchemaNames(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->checkFixedSize(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_2
    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v6

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/avro/Schema;

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p3, v7}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, p1, v4}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->getCompatibility(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v7

    .line 10
    invoke-virtual {v7}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->getCompatibility()Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    move-result-object v7

    sget-object v8, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;->INCOMPATIBLE:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    if-ne v7, v8, :cond_0

    new-array v7, v5, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v4}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v4

    aput-object v4, v7, v6

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 12
    sget-object v7, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;->MISSING_UNION_BRANCH:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    .line 13
    invoke-static {p3}, Lorg/apache/avro/SchemaCompatibility;->access$200(Ljava/util/Deque;)Ljava/util/List;

    move-result-object v8

    .line 14
    invoke-static {v7, p1, p2, v4, v8}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->incompatible(Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/lang/String;Ljava/util/List;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    .line 15
    :cond_0
    invoke-interface {p3}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 16
    :pswitch_3
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getValueType()Lorg/apache/avro/Schema;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getValueType()Lorg/apache/avro/Schema;

    move-result-object p2

    const-string v1, "values"

    invoke-direct {p0, v1, p1, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->getCompatibility(Ljava/lang/String;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_4
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object p2

    const-string v1, "items"

    invoke-direct {p0, v1, p1, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->getCompatibility(Ljava/lang/String;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->checkSchemaNames(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->checkReaderEnumContainsAllWriterEnumSymbols(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_6
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->checkSchemaNames(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->checkReaderWriterRecordFields(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    return-object p1

    .line 22
    :cond_2
    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    sget-object v2, Lorg/apache/avro/Schema$Type;->UNION:Lorg/apache/avro/Schema$Type;

    if-ne v1, v2, :cond_4

    .line 23
    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/avro/Schema;

    .line 24
    invoke-virtual {p0, p1, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->getCompatibility(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    goto :goto_1

    :cond_3
    return-object v0

    .line 25
    :cond_4
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 26
    new-instance p2, Lorg/apache/avro/AvroRuntimeException;

    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 27
    :pswitch_7
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->typeMismatch(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    return-object p1

    .line 28
    :pswitch_8
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->typeMismatch(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_9
    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    sget-object v2, Lorg/apache/avro/Schema$Type;->INT:Lorg/apache/avro/Schema$Type;

    if-eq v1, v2, :cond_6

    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    sget-object v2, Lorg/apache/avro/Schema$Type;->LONG:Lorg/apache/avro/Schema$Type;

    if-eq v1, v2, :cond_6

    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    sget-object v2, Lorg/apache/avro/Schema$Type;->FLOAT:Lorg/apache/avro/Schema$Type;

    if-ne v1, v2, :cond_5

    goto :goto_2

    .line 30
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->typeMismatch(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    :cond_6
    :goto_2
    return-object v0

    .line 31
    :pswitch_a
    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    sget-object v2, Lorg/apache/avro/Schema$Type;->INT:Lorg/apache/avro/Schema$Type;

    if-eq v1, v2, :cond_8

    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    sget-object v2, Lorg/apache/avro/Schema$Type;->LONG:Lorg/apache/avro/Schema$Type;

    if-ne v1, v2, :cond_7

    goto :goto_3

    .line 32
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->typeMismatch(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    :cond_8
    :goto_3
    return-object v0

    .line 33
    :pswitch_b
    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    sget-object v2, Lorg/apache/avro/Schema$Type;->INT:Lorg/apache/avro/Schema$Type;

    if-ne v1, v2, :cond_9

    goto :goto_4

    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->typeMismatch(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    :goto_4
    return-object v0

    .line 34
    :pswitch_c
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->typeMismatch(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_d
    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    sget-object v2, Lorg/apache/avro/Schema$Type;->STRING:Lorg/apache/avro/Schema$Type;

    if-ne v1, v2, :cond_a

    goto :goto_5

    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->typeMismatch(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    :goto_5
    return-object v0

    .line 36
    :pswitch_e
    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    sget-object v2, Lorg/apache/avro/Schema$Type;->BYTES:Lorg/apache/avro/Schema$Type;

    if-ne v1, v2, :cond_b

    goto :goto_6

    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->typeMismatch(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    :goto_6
    return-object v0

    .line 37
    :pswitch_f
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->typeMismatch(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    return-object p1

    .line 38
    :pswitch_10
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/avro/Schema;

    .line 39
    invoke-virtual {p0, v2, p2}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->getCompatibility(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->getCompatibility()Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    move-result-object v2

    sget-object v4, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;->COMPATIBLE:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    if-ne v2, v4, :cond_c

    return-object v0

    :cond_d
    new-array v1, v5, [Ljava/lang/Object;

    .line 41
    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 42
    sget-object v2, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;->MISSING_UNION_BRANCH:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    .line 43
    invoke-static {p3}, Lorg/apache/avro/SchemaCompatibility;->access$200(Ljava/util/Deque;)Ljava/util/List;

    move-result-object p3

    invoke-static {v2, p1, p2, v1, p3}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->incompatible(Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/lang/String;Ljava/util/List;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    return-object p1

    .line 45
    :pswitch_11
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->typeMismatch(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    return-object p1

    .line 46
    :pswitch_12
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->typeMismatch(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    return-object p1

    .line 47
    :pswitch_13
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->typeMismatch(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    return-object p1

    .line 48
    :pswitch_14
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->typeMismatch(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    return-object p1

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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private checkFixedSize(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/Schema;",
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->compatible()Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    const-string v1, "size"

    .line 2
    invoke-interface {p3, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result v1

    .line 4
    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "expected: %d, found: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    sget-object v1, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;->FIXED_SIZE_MISMATCH:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    .line 7
    invoke-static {p3}, Lorg/apache/avro/SchemaCompatibility;->access$200(Ljava/util/Deque;)Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-static {v1, p1, p2, v0, v2}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->incompatible(Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/lang/String;Ljava/util/List;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {p3}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    return-object v0
.end method

.method private checkReaderEnumContainsAllWriterEnumSymbols(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/Schema;",
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->compatible()Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    const-string v1, "symbols"

    .line 2
    invoke-interface {p3, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 3
    new-instance v1, Ljava/util/TreeSet;

    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getEnumDefault()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getEnumDefault()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V

    .line 8
    invoke-static {}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->compatible()Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;->MISSING_ENUM_SYMBOLS:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lorg/apache/avro/SchemaCompatibility;->access$200(Ljava/util/Deque;)Ljava/util/List;

    move-result-object v2

    .line 11
    invoke-static {v0, p1, p2, v1, v2}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->incompatible(Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/lang/String;Ljava/util/List;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    .line 12
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    return-object v0
.end method

.method private checkReaderWriterRecordFields(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/Schema;",
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->compatible()Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    const-string v1, "fields"

    .line 2
    invoke-interface {p3, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/avro/Schema$Field;

    .line 4
    invoke-virtual {v2}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 5
    invoke-static {p2, v2}, Lorg/apache/avro/SchemaCompatibility;->lookupWriterField(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema$Field;)Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const-string v4, "type"

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {v2}, Lorg/apache/avro/Schema$Field;->hasDefaultValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7
    invoke-virtual {v2}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v3

    sget-object v5, Lorg/apache/avro/Schema$Type;->ENUM:Lorg/apache/avro/Schema$Type;

    if-ne v3, v5, :cond_0

    invoke-virtual {v2}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/avro/Schema;->getEnumDefault()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v2}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v2

    invoke-direct {p0, v4, v2, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->getCompatibility(Ljava/lang/String;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    goto :goto_1

    .line 9
    :cond_0
    sget-object v3, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;->READER_FIELD_MISSING_DEFAULT_VALUE:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    .line 10
    invoke-virtual {v2}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lorg/apache/avro/SchemaCompatibility;->access$200(Ljava/util/Deque;)Ljava/util/List;

    move-result-object v4

    .line 11
    invoke-static {v3, p1, p2, v2, v4}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->incompatible(Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/lang/String;Ljava/util/List;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v2}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v2}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v2

    invoke-virtual {v3}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v3

    invoke-direct {p0, v4, v2, v3, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->getCompatibility(Ljava/lang/String;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    .line 14
    :cond_2
    :goto_1
    invoke-interface {p3}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_3
    invoke-interface {p3}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    return-object v0
.end method

.method private checkSchemaNames(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/Schema;",
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->compatible()Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    const-string v1, "name"

    .line 2
    invoke-interface {p3, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 3
    invoke-static {p1, p2}, Lorg/apache/avro/SchemaCompatibility;->schemaNameEquals(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "expected: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    sget-object v1, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;->NAME_MISMATCH:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    .line 6
    invoke-static {p3}, Lorg/apache/avro/SchemaCompatibility;->access$200(Ljava/util/Deque;)Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-static {v1, p1, p2, v0, v2}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->incompatible(Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/lang/String;Ljava/util/List;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    .line 8
    :cond_0
    invoke-interface {p3}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    return-object v0
.end method

.method private getCompatibility(Ljava/lang/String;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/Schema;",
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;"
        }
    .end annotation

    .line 3
    invoke-interface {p4, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lorg/apache/avro/SchemaCompatibility;->access$100()Lw3/d/b;

    move-result-object p1

    const-string v0, "Checking compatibility of reader {} with writer {}"

    invoke-interface {p1, v0, p2, p3}, Lw3/d/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    new-instance p1, Lorg/apache/avro/SchemaCompatibility$ReaderWriter;

    invoke-direct {p1, p2, p3}, Lorg/apache/avro/SchemaCompatibility$ReaderWriter;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)V

    .line 6
    iget-object v0, p0, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->mMemoizeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->getCompatibility()Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    move-result-object p1

    sget-object p2, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;->RECURSION_IN_PROGRESS:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    if-ne p1, p2, :cond_1

    .line 8
    invoke-static {}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->compatible()Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->mMemoizeMap:Ljava/util/Map;

    invoke-static {}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->recursionInProgress()Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->calculateCompatibility(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object v0

    .line 11
    iget-object p2, p0, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->mMemoizeMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    :goto_0
    invoke-interface {p4}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    return-object v0
.end method

.method private typeMismatch(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/Schema;",
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "reader type: %s not compatible with writer type: %s"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;->TYPE_MISMATCH:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    .line 5
    invoke-static {p3}, Lorg/apache/avro/SchemaCompatibility;->access$200(Ljava/util/Deque;)Ljava/util/List;

    move-result-object p3

    .line 6
    invoke-static {v1, p1, p2, v0, p3}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->incompatible(Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/lang/String;Ljava/util/List;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getCompatibility(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    const-string v1, ""

    .line 2
    invoke-direct {p0, v1, p1, p2, v0}, Lorg/apache/avro/SchemaCompatibility$ReaderWriterCompatibilityChecker;->getCompatibility(Ljava/lang/String;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Deque;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    move-result-object p1

    return-object p1
.end method
