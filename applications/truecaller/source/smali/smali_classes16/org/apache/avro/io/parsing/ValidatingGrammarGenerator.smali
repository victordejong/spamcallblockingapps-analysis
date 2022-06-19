.class public Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    invoke-virtual {p0, p1, v1}, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator;->generate(Lorg/apache/avro/Schema;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

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

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected schema type"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/apache/avro/io/parsing/Symbol;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v5, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/avro/Schema;

    .line 8
    invoke-virtual {p0, v6, p2}, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator;->generate(Lorg/apache/avro/Schema;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v7

    aput-object v7, v4, v5

    .line 9
    invoke-virtual {v6}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    add-int/2addr v5, v2

    goto :goto_0

    :cond_0
    new-array p1, v1, [Lorg/apache/avro/io/parsing/Symbol;

    .line 10
    invoke-static {v4, v0}, Lorg/apache/avro/io/parsing/Symbol;->alt([Lorg/apache/avro/io/parsing/Symbol;[Ljava/lang/String;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p2

    aput-object p2, p1, v3

    sget-object p2, Lorg/apache/avro/io/parsing/Symbol;->UNION:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p2, p1, v2

    invoke-static {p1}, Lorg/apache/avro/io/parsing/Symbol;->seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_1
    new-instance v0, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;

    invoke-direct {v0, p1}, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;-><init>(Lorg/apache/avro/Schema;)V

    .line 12
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/io/parsing/Symbol;

    if-nez v1, :cond_2

    .line 13
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Lorg/apache/avro/io/parsing/Symbol;

    .line 14
    invoke-static {v2}, Lorg/apache/avro/io/parsing/Symbol;->seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v3

    .line 15
    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/Schema$Field;

    add-int/lit8 v1, v1, -0x1

    .line 17
    invoke-virtual {v0}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator;->generate(Lorg/apache/avro/Schema;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :cond_2
    return-object v1

    :pswitch_2
    new-array v0, v1, [Lorg/apache/avro/io/parsing/Symbol;

    .line 18
    sget-object v4, Lorg/apache/avro/io/parsing/Symbol;->MAP_END:Lorg/apache/avro/io/parsing/Symbol;

    new-array v1, v1, [Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getValueType()Lorg/apache/avro/Schema;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator;->generate(Lorg/apache/avro/Schema;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    aput-object p1, v1, v3

    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->STRING:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, v1, v2

    invoke-static {v4, v1}, Lorg/apache/avro/io/parsing/Symbol;->repeat(Lorg/apache/avro/io/parsing/Symbol;[Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    aput-object p1, v0, v3

    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->MAP_START:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, v0, v2

    invoke-static {v0}, Lorg/apache/avro/io/parsing/Symbol;->seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    :pswitch_3
    new-array v0, v1, [Lorg/apache/avro/io/parsing/Symbol;

    .line 19
    sget-object v1, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_END:Lorg/apache/avro/io/parsing/Symbol;

    new-array v4, v2, [Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator;->generate(Lorg/apache/avro/Schema;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v1, v4}, Lorg/apache/avro/io/parsing/Symbol;->repeat(Lorg/apache/avro/io/parsing/Symbol;[Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    aput-object p1, v0, v3

    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_START:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, v0, v2

    invoke-static {v0}, Lorg/apache/avro/io/parsing/Symbol;->seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    :pswitch_4
    new-array p2, v1, [Lorg/apache/avro/io/parsing/Symbol;

    .line 20
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Lorg/apache/avro/io/parsing/Symbol;->intCheckAction(I)Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;

    move-result-object p1

    aput-object p1, p2, v3

    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->ENUM:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, p2, v2

    invoke-static {p2}, Lorg/apache/avro/io/parsing/Symbol;->seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-array p2, v1, [Lorg/apache/avro/io/parsing/Symbol;

    .line 21
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result p1

    invoke-static {p1}, Lorg/apache/avro/io/parsing/Symbol;->intCheckAction(I)Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;

    move-result-object p1

    aput-object p1, p2, v3

    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->FIXED:Lorg/apache/avro/io/parsing/Symbol;

    aput-object p1, p2, v2

    invoke-static {p2}, Lorg/apache/avro/io/parsing/Symbol;->seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_6
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->BYTES:Lorg/apache/avro/io/parsing/Symbol;

    return-object p1

    .line 23
    :pswitch_7
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->STRING:Lorg/apache/avro/io/parsing/Symbol;

    return-object p1

    .line 24
    :pswitch_8
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->DOUBLE:Lorg/apache/avro/io/parsing/Symbol;

    return-object p1

    .line 25
    :pswitch_9
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->FLOAT:Lorg/apache/avro/io/parsing/Symbol;

    return-object p1

    .line 26
    :pswitch_a
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->LONG:Lorg/apache/avro/io/parsing/Symbol;

    return-object p1

    .line 27
    :pswitch_b
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->INT:Lorg/apache/avro/io/parsing/Symbol;

    return-object p1

    .line 28
    :pswitch_c
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->BOOLEAN:Lorg/apache/avro/io/parsing/Symbol;

    return-object p1

    .line 29
    :pswitch_d
    sget-object p1, Lorg/apache/avro/io/parsing/Symbol;->NULL:Lorg/apache/avro/io/parsing/Symbol;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
