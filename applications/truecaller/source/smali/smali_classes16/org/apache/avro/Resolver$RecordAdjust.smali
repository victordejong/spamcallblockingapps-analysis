.class public Lorg/apache/avro/Resolver$RecordAdjust;
.super Lorg/apache/avro/Resolver$Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Resolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecordAdjust"
.end annotation


# instance fields
.field public final defaults:[Ljava/lang/Object;

.field public final fieldActions:[Lorg/apache/avro/Resolver$Action;

.field public final firstDefault:I

.field public final instanceSupplier:Lorg/apache/avro/generic/GenericData$InstanceSupplier;

.field public final readerOrder:[Lorg/apache/avro/Schema$Field;


# direct methods
.method private constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;[Lorg/apache/avro/Resolver$Action;[Lorg/apache/avro/Schema$Field;I[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Resolver$Action$Type;->RECORD:Lorg/apache/avro/Resolver$Action$Type;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/avro/Resolver$Action;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Resolver$Action$Type;)V

    .line 2
    iput-object p4, p0, Lorg/apache/avro/Resolver$RecordAdjust;->fieldActions:[Lorg/apache/avro/Resolver$Action;

    .line 3
    iput-object p5, p0, Lorg/apache/avro/Resolver$RecordAdjust;->readerOrder:[Lorg/apache/avro/Schema$Field;

    .line 4
    iput p6, p0, Lorg/apache/avro/Resolver$RecordAdjust;->firstDefault:I

    .line 5
    iput-object p7, p0, Lorg/apache/avro/Resolver$RecordAdjust;->defaults:[Ljava/lang/Object;

    .line 6
    invoke-virtual {p3, p2}, Lorg/apache/avro/generic/GenericData;->getNewRecordSupplier(Lorg/apache/avro/Schema;)Lorg/apache/avro/generic/GenericData$InstanceSupplier;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/Resolver$RecordAdjust;->instanceSupplier:Lorg/apache/avro/generic/GenericData$InstanceSupplier;

    return-void
.end method

.method public static resolve(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Ljava/util/Map;)Lorg/apache/avro/Resolver$Action;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/generic/GenericData;",
            "Ljava/util/Map<",
            "Lorg/apache/avro/Schema$SeenPair;",
            "Lorg/apache/avro/Resolver$Action;",
            ">;)",
            "Lorg/apache/avro/Resolver$Action;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 1
    new-instance v12, Lorg/apache/avro/Schema$SeenPair;

    invoke-direct {v12, v8, v9}, Lorg/apache/avro/Schema$SeenPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/Resolver$Action;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v13

    .line 4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v14

    .line 5
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v16, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Schema$Field;

    .line 6
    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v1

    if-eqz v1, :cond_1

    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    new-array v7, v0, [Lorg/apache/avro/Resolver$Action;

    .line 8
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Lorg/apache/avro/Schema$Field;

    sub-int v0, v0, v16

    .line 9
    new-array v5, v0, [Ljava/lang/Object;

    .line 10
    new-instance v4, Lorg/apache/avro/Resolver$RecordAdjust;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v15, v4

    move-object v4, v7

    move-object/from16 v18, v5

    move-object v5, v6

    move-object/from16 v19, v6

    move/from16 v6, v16

    move-object/from16 v20, v7

    move-object/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lorg/apache/avro/Resolver$RecordAdjust;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;[Lorg/apache/avro/Resolver$Action;[Lorg/apache/avro/Schema$Field;I[Ljava/lang/Object;)V

    .line 11
    invoke-interface {v11, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v17, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/avro/Schema$Field;

    .line 13
    invoke-virtual {v2}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v3

    if-eqz v3, :cond_3

    add-int/lit8 v4, v1, 0x1

    .line 14
    aput-object v3, v19, v1

    add-int/lit8 v1, v17, 0x1

    .line 15
    invoke-virtual {v2}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v2

    invoke-virtual {v3}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v3

    invoke-static {v2, v3, v10, v11}, Lorg/apache/avro/Resolver;->access$000(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Ljava/util/Map;)Lorg/apache/avro/Resolver$Action;

    move-result-object v2

    aput-object v2, v20, v17

    move/from16 v17, v1

    move v1, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v17, 0x1

    .line 16
    new-instance v4, Lorg/apache/avro/Resolver$Skip;

    invoke-virtual {v2}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v2

    invoke-direct {v4, v2, v10}, Lorg/apache/avro/Resolver$Skip;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V

    aput-object v4, v20, v17

    move/from16 v17, v3

    goto :goto_1

    .line 17
    :cond_4
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/avro/Schema$Field;

    .line 18
    invoke-virtual {v2}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v3

    if-nez v3, :cond_5

    .line 19
    invoke-virtual {v2}, Lorg/apache/avro/Schema$Field;->defaultValue()Le/k/a/c/l;

    move-result-object v3

    if-nez v3, :cond_6

    .line 20
    new-instance v0, Lorg/apache/avro/Resolver$ErrorAction;

    sget-object v1, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;->MISSING_REQUIRED_FIELD:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    invoke-direct {v0, v8, v9, v10, v1}, Lorg/apache/avro/Resolver$ErrorAction;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Resolver$ErrorAction$ErrorType;)V

    .line 21
    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_6
    sub-int v3, v1, v16

    .line 22
    invoke-virtual {v10, v2}, Lorg/apache/avro/generic/GenericData;->getDefaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v18, v3

    add-int/lit8 v3, v1, 0x1

    .line 23
    aput-object v2, v19, v1

    move v1, v3

    goto :goto_2

    :cond_7
    return-object v15
.end method


# virtual methods
.method public noReorder()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v3, v0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 1
    iget-object v4, p0, Lorg/apache/avro/Resolver$RecordAdjust;->readerOrder:[Lorg/apache/avro/Schema$Field;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 2
    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v4

    if-ne v3, v4, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    and-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
