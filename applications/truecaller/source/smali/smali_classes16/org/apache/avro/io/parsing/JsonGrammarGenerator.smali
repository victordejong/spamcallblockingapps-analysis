.class public Lorg/apache/avro/io/parsing/JsonGrammarGenerator;
.super Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/avro/io/parsing/Symbol;

    .line 1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v1}, Lorg/apache/avro/io/parsing/JsonGrammarGenerator;->generate(Lorg/apache/avro/Schema;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/apache/avro/io/parsing/Symbol;->root([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public generate(Lorg/apache/avro/Schema;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            "Ljava/util/Map<",
            "Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;",
            "Lorg/apache/avro/io/parsing/Symbol;",
            ">;)",
            "Lorg/apache/avro/io/parsing/Symbol;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected schema type"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :pswitch_0
    new-instance v0, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;

    invoke-direct {v0, p1}, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;-><init>(Lorg/apache/avro/Schema;)V

    .line 5
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/avro/io/parsing/Symbol;

    if-nez v5, :cond_1

    .line 6
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v1

    add-int/2addr v5, v4

    new-array v1, v5, [Lorg/apache/avro/io/parsing/Symbol;

    .line 7
    invoke-static {v1}, Lorg/apache/avro/io/parsing/Symbol;->seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v4

    .line 8
    invoke-interface {p2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    .line 9
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->RECORD_START:Lorg/apache/avro/io/parsing/Symbol;

    aput-object v0, v1, v5

    .line 10
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/Schema$Field;

    add-int/lit8 v5, v5, -0x1

    .line 11
    invoke-virtual {v0}, Lorg/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/avro/Schema$Field;->aliases()Ljava/util/Set;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lorg/apache/avro/io/parsing/Symbol;->fieldAdjustAction(ILjava/lang/String;Ljava/util/Set;)Lorg/apache/avro/io/parsing/Symbol$FieldAdjustAction;

    move-result-object v6

    aput-object v6, v1, v5

    add-int/lit8 v5, v5, -0x1

    .line 12
    invoke-virtual {v0}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/avro/io/parsing/JsonGrammarGenerator;->generate(Lorg/apache/avro/Schema;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    aput-object v0, v1, v5

    add-int/lit8 v5, v5, -0x1

    .line 13
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol;->FIELD_END:Lorg/apache/avro/io/parsing/Symbol;

    aput-object v0, v1, v5

    add-int/2addr v3, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v5, -0x1

    .line 14
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->RECORD_END:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, v1, v5

    move-object v5, v4

    :cond_1
    return-object v5

    :pswitch_1
    new-array v0, v4, [Lorg/apache/avro/io/parsing/Symbol;

    .line 15
    sget-object v5, Lorg/apache/avro/io/parsing/Symbol;->MAP_END:Lorg/apache/avro/io/parsing/Symbol;

    const/4 v6, 0x4

    new-array v6, v6, [Lorg/apache/avro/io/parsing/Symbol;

    sget-object v7, Lorg/apache/avro/io/parsing/Symbol;->ITEM_END:Lorg/apache/avro/io/parsing/Symbol;

    aput-object v7, v6, v3

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getValueType()Lorg/apache/avro/Schema;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/io/parsing/JsonGrammarGenerator;->generate(Lorg/apache/avro/Schema;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    aput-object p1, v6, v2

    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->MAP_KEY_MARKER:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, v6, v4

    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->STRING:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, v6, v1

    invoke-static {v5, v6}, Lorg/apache/avro/io/parsing/Symbol;->repeat(Lorg/apache/avro/io/parsing/Symbol;[Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    aput-object p1, v0, v3

    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->MAP_START:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, v0, v2

    invoke-static {v0}, Lorg/apache/avro/io/parsing/Symbol;->seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    :pswitch_2
    new-array v0, v4, [Lorg/apache/avro/io/parsing/Symbol;

    .line 16
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_END:Lorg/apache/avro/io/parsing/Symbol;

    new-array v4, v4, [Lorg/apache/avro/io/parsing/Symbol;

    sget-object v5, Lorg/apache/avro/io/parsing/Symbol;->ITEM_END:Lorg/apache/avro/io/parsing/Symbol;

    aput-object v5, v4, v3

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/io/parsing/JsonGrammarGenerator;->generate(Lorg/apache/avro/Schema;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v1, v4}, Lorg/apache/avro/io/parsing/Symbol;->repeat(Lorg/apache/avro/io/parsing/Symbol;[Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    aput-object p1, v0, v3

    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_START:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, v0, v2

    invoke-static {v0}, Lorg/apache/avro/io/parsing/Symbol;->seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    :pswitch_3
    new-array p2, v4, [Lorg/apache/avro/io/parsing/Symbol;

    .line 17
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/avro/io/parsing/Symbol;->enumLabelsAction(Ljava/util/List;)Lorg/apache/avro/io/parsing/Symbol$EnumLabelsAction;

    move-result-object p1

    aput-object p1, p2, v3

    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->ENUM:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, p2, v2

    invoke-static {p2}, Lorg/apache/avro/io/parsing/Symbol;->seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_4
    invoke-super {p0, p1, p2}, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator;->generate(Lorg/apache/avro/Schema;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
