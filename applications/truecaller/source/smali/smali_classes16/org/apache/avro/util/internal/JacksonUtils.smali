.class public Lorg/apache/avro/util/internal/JacksonUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectToMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 13

    .line 1
    new-instance v0, Le/k/a/c/r;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1, v1, v1}, Le/k/a/c/r;-><init>(Le/k/a/b/e;Le/k/a/c/l0/j;Le/k/a/c/d0/l;)V

    .line 3
    sget-object v2, Le/k/a/a/p0;->g:Le/k/a/a/p0;

    sget-object v3, Le/k/a/a/f$a;->e:Le/k/a/a/f$a;

    invoke-virtual {v0, v2, v3}, Le/k/a/c/r;->j(Le/k/a/a/p0;Le/k/a/a/f$a;)Le/k/a/c/r;

    .line 4
    sget-object v2, Le/k/a/a/p0;->d:Le/k/a/a/p0;

    sget-object v3, Le/k/a/a/f$a;->a:Le/k/a/a/f$a;

    invoke-virtual {v0, v2, v3}, Le/k/a/c/r;->j(Le/k/a/a/p0;Le/k/a/a/f$a;)Le/k/a/c/r;

    .line 5
    const-class v2, Ljava/util/Map;

    .line 6
    iget-object v3, v0, Le/k/a/c/r;->b:Le/k/a/c/m0/o;

    .line 7
    sget-object v4, Le/k/a/c/m0/o;->e:Le/k/a/c/m0/n;

    invoke-virtual {v3, v1, v2, v4}, Le/k/a/c/m0/o;->b(Le/k/a/c/m0/c;Ljava/lang/reflect/Type;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object v2

    .line 8
    new-instance v3, Le/k/a/c/n0/a0;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Le/k/a/c/n0/a0;-><init>(Le/k/a/b/n;Z)V

    .line 9
    sget-object v4, Le/k/a/c/h;->c:Le/k/a/c/h;

    .line 10
    iget-object v5, v0, Le/k/a/c/r;->i:Le/k/a/c/f;

    invoke-virtual {v5, v4}, Le/k/a/c/f;->y(Le/k/a/c/h;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 11
    iput-boolean v4, v3, Le/k/a/c/n0/a0;->j:Z

    .line 12
    :cond_0
    :try_start_0
    iget-object v6, v0, Le/k/a/c/r;->f:Le/k/a/c/y;

    .line 13
    sget-object v4, Le/k/a/c/z;->c:Le/k/a/c/z;

    .line 14
    iget v5, v6, Le/k/a/c/y;->m:I

    .line 15
    iget v4, v4, Le/k/a/c/z;->b:I

    not-int v4, v4

    and-int v8, v5, v4

    if-ne v8, v5, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    new-instance v4, Le/k/a/c/y;

    iget v7, v6, Le/k/a/c/c0/k;->a:I

    iget v9, v6, Le/k/a/c/y;->n:I

    iget v10, v6, Le/k/a/c/y;->o:I

    iget v11, v6, Le/k/a/c/y;->p:I

    iget v12, v6, Le/k/a/c/y;->q:I

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Le/k/a/c/y;-><init>(Le/k/a/c/y;IIIIII)V

    move-object v6, v4

    .line 17
    :goto_0
    iget-object v4, v0, Le/k/a/c/r;->g:Le/k/a/c/l0/j;

    iget-object v5, v0, Le/k/a/c/r;->h:Le/k/a/c/l0/p;

    check-cast v4, Le/k/a/c/l0/j$a;

    .line 18
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v7, Le/k/a/c/l0/j$a;

    invoke-direct {v7, v4, v6, v5}, Le/k/a/c/l0/j$a;-><init>(Le/k/a/c/a0;Le/k/a/c/y;Le/k/a/c/l0/p;)V

    .line 20
    invoke-virtual {v7, v3, p0}, Le/k/a/c/l0/j;->V(Le/k/a/b/g;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v3}, Le/k/a/c/n0/a0;->x2()Le/k/a/b/j;

    move-result-object p0

    .line 22
    iget-object v3, v0, Le/k/a/c/r;->i:Le/k/a/c/f;

    .line 23
    invoke-virtual {v0, p0, v2}, Le/k/a/c/r;->e(Le/k/a/b/j;Le/k/a/c/i;)Le/k/a/b/m;

    move-result-object v4

    .line 24
    sget-object v5, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v4, v5, :cond_2

    .line 25
    iget-object v1, v0, Le/k/a/c/r;->j:Le/k/a/c/d0/l;

    check-cast v1, Le/k/a/c/d0/l$a;

    .line 26
    new-instance v4, Le/k/a/c/d0/l$a;

    invoke-direct {v4, v1, v3, p0}, Le/k/a/c/d0/l$a;-><init>(Le/k/a/c/d0/l$a;Le/k/a/c/f;Le/k/a/b/j;)V

    .line 27
    invoke-virtual {v0, v4, v2}, Le/k/a/c/r;->d(Le/k/a/c/g;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v0

    invoke-virtual {v0, v4}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 28
    :cond_2
    sget-object v5, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-eq v4, v5, :cond_4

    sget-object v5, Le/k/a/b/m;->k:Le/k/a/b/m;

    if-ne v4, v5, :cond_3

    goto :goto_1

    .line 29
    :cond_3
    iget-object v1, v0, Le/k/a/c/r;->j:Le/k/a/c/d0/l;

    check-cast v1, Le/k/a/c/d0/l$a;

    .line 30
    new-instance v4, Le/k/a/c/d0/l$a;

    invoke-direct {v4, v1, v3, p0}, Le/k/a/c/d0/l$a;-><init>(Le/k/a/c/d0/l$a;Le/k/a/c/f;Le/k/a/b/j;)V

    .line 31
    invoke-virtual {v0, v4, v2}, Le/k/a/c/r;->d(Le/k/a/c/g;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v0

    .line 32
    invoke-virtual {v0, p0, v4}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v1

    .line 33
    :cond_4
    :goto_1
    invoke-virtual {p0}, Le/k/a/b/j;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    check-cast v1, Ljava/util/Map;

    return-object v1

    :catch_0
    move-exception p0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static toJson(Ljava/lang/Object;Le/k/a/b/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/JsonProperties;->NULL_VALUE:Lorg/apache/avro/JsonProperties$Null;

    if-ne p0, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/k/a/b/g;->D0()V

    goto/16 :goto_3

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Le/k/a/b/g;->M1()V

    .line 5
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/avro/util/internal/JacksonUtils;->toJson(Ljava/lang/Object;Le/k/a/b/g;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/g;->t0()V

    goto/16 :goto_3

    .line 9
    :cond_2
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p1}, Le/k/a/b/g;->F1()V

    .line 11
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 12
    invoke-static {v0, p1}, Lorg/apache/avro/util/internal/JacksonUtils;->toJson(Ljava/lang/Object;Le/k/a/b/g;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p1}, Le/k/a/b/g;->p0()V

    goto/16 :goto_3

    .line 14
    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_5

    .line 15
    new-instance v0, Ljava/lang/String;

    check-cast p0, [B

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, v0}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 16
    :cond_5
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-nez v0, :cond_e

    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_6

    goto/16 :goto_2

    .line 17
    :cond_6
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 18
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Le/k/a/b/g;->F0(D)V

    goto :goto_3

    .line 19
    :cond_7
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 20
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Le/k/a/b/g;->G0(F)V

    goto :goto_3

    .line 21
    :cond_8
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 22
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Le/k/a/b/g;->K0(J)V

    goto :goto_3

    .line 23
    :cond_9
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 24
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Le/k/a/b/g;->J0(I)V

    goto :goto_3

    .line 25
    :cond_a
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 26
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Le/k/a/b/g;->k0(Z)V

    goto :goto_3

    .line 27
    :cond_b
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_c

    .line 28
    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Le/k/a/b/g;->U0(Ljava/math/BigInteger;)V

    goto :goto_3

    .line 29
    :cond_c
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_d

    .line 30
    check-cast p0, Ljava/math/BigDecimal;

    invoke-virtual {p1, p0}, Le/k/a/b/g;->Q0(Ljava/math/BigDecimal;)V

    goto :goto_3

    .line 31
    :cond_d
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Unknown datum class: "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_e
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public static toJsonNode(Ljava/lang/Object;)Le/k/a/c/l;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    new-instance v1, Le/k/a/c/n0/a0;

    new-instance v2, Le/k/a/c/r;

    .line 2
    invoke-direct {v2, v0, v0, v0}, Le/k/a/c/r;-><init>(Le/k/a/b/e;Le/k/a/c/l0/j;Le/k/a/c/d0/l;)V

    const/4 v3, 0x0

    .line 3
    invoke-direct {v1, v2, v3}, Le/k/a/c/n0/a0;-><init>(Le/k/a/b/n;Z)V

    .line 4
    invoke-static {p0, v1}, Lorg/apache/avro/util/internal/JacksonUtils;->toJson(Ljava/lang/Object;Le/k/a/b/g;)V

    .line 5
    new-instance p0, Le/k/a/c/r;

    .line 6
    invoke-direct {p0, v0, v0, v0}, Le/k/a/c/r;-><init>(Le/k/a/b/e;Le/k/a/c/l0/j;Le/k/a/c/d0/l;)V

    .line 7
    invoke-virtual {v1}, Le/k/a/c/n0/a0;->x2()Le/k/a/b/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/k/a/c/r;->i(Le/k/a/b/j;)Le/k/a/b/t;

    move-result-object p0

    check-cast p0, Le/k/a/c/l;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {v0, p0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static toObject(Le/k/a/c/l;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/apache/avro/util/internal/JacksonUtils;->toObject(Le/k/a/c/l;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toObject(Le/k/a/c/l;Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 6

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    sget-object v1, Lorg/apache/avro/Schema$Type;->UNION:Lorg/apache/avro/Schema$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/Schema;

    invoke-static {p0, p1}, Lorg/apache/avro/util/internal/JacksonUtils;->toObject(Le/k/a/c/l;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Le/k/a/c/l;->F()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    sget-object p0, Lorg/apache/avro/JsonProperties;->NULL_VALUE:Lorg/apache/avro/JsonProperties$Null;

    return-object p0

    .line 6
    :cond_2
    invoke-virtual {p0}, Le/k/a/c/l;->z()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {p0}, Le/k/a/c/l;->e()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 8
    :cond_3
    invoke-virtual {p0}, Le/k/a/c/l;->C()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p1, :cond_7

    .line 9
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    sget-object v2, Lorg/apache/avro/Schema$Type;->INT:Lorg/apache/avro/Schema$Type;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    sget-object v2, Lorg/apache/avro/Schema$Type;->LONG:Lorg/apache/avro/Schema$Type;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {p0}, Le/k/a/c/l;->k()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 12
    :cond_5
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    sget-object v2, Lorg/apache/avro/Schema$Type;->FLOAT:Lorg/apache/avro/Schema$Type;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13
    invoke-virtual {p0}, Le/k/a/c/l;->g()D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 14
    :cond_6
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object p1

    sget-object v1, Lorg/apache/avro/Schema$Type;->DOUBLE:Lorg/apache/avro/Schema$Type;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 15
    invoke-virtual {p0}, Le/k/a/c/l;->g()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 16
    :cond_7
    :goto_0
    invoke-virtual {p0}, Le/k/a/c/l;->i()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 17
    :cond_8
    invoke-virtual {p0}, Le/k/a/c/l;->E()Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz p1, :cond_d

    .line 18
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    sget-object v2, Lorg/apache/avro/Schema$Type;->LONG:Lorg/apache/avro/Schema$Type;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    .line 19
    :cond_9
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    sget-object v2, Lorg/apache/avro/Schema$Type;->INT:Lorg/apache/avro/Schema$Type;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 20
    invoke-virtual {p0}, Le/k/a/c/l;->o()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 21
    invoke-virtual {p0}, Le/k/a/c/l;->i()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 22
    :cond_a
    invoke-virtual {p0}, Le/k/a/c/l;->k()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 23
    :cond_b
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    sget-object v2, Lorg/apache/avro/Schema$Type;->FLOAT:Lorg/apache/avro/Schema$Type;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 24
    invoke-virtual {p0}, Le/k/a/c/l;->g()D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 25
    :cond_c
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object p1

    sget-object v1, Lorg/apache/avro/Schema$Type;->DOUBLE:Lorg/apache/avro/Schema$Type;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 26
    invoke-virtual {p0}, Le/k/a/c/l;->g()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 27
    :cond_d
    :goto_1
    invoke-virtual {p0}, Le/k/a/c/l;->k()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 28
    :cond_e
    invoke-virtual {p0}, Le/k/a/c/l;->A()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p0}, Le/k/a/c/l;->B()Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_7

    .line 29
    :cond_f
    invoke-virtual {p0}, Le/k/a/c/l;->I()Z

    move-result v1

    if-eqz v1, :cond_13

    if-eqz p1, :cond_12

    .line 30
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    sget-object v2, Lorg/apache/avro/Schema$Type;->STRING:Lorg/apache/avro/Schema$Type;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    sget-object v2, Lorg/apache/avro/Schema$Type;->ENUM:Lorg/apache/avro/Schema$Type;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_2

    .line 31
    :cond_10
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    sget-object v2, Lorg/apache/avro/Schema$Type;->BYTES:Lorg/apache/avro/Schema$Type;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object p1

    sget-object v1, Lorg/apache/avro/Schema$Type;->FIXED:Lorg/apache/avro/Schema$Type;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 32
    :cond_11
    invoke-virtual {p0}, Le/k/a/c/l;->L()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0

    .line 33
    :cond_12
    :goto_2
    invoke-virtual {p0}, Le/k/a/c/l;->m()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 34
    :cond_13
    invoke-virtual {p0}, Le/k/a/c/l;->y()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-virtual {p0}, Le/k/a/c/l;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/k/a/c/l;

    if-nez p1, :cond_14

    move-object v3, v0

    goto :goto_4

    .line 37
    :cond_14
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object v3

    :goto_4
    invoke-static {v2, v3}, Lorg/apache/avro/util/internal/JacksonUtils;->toObject(Le/k/a/c/l;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_15
    return-object v1

    .line 38
    :cond_16
    invoke-virtual {p0}, Le/k/a/c/l;->H()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 39
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 40
    invoke-virtual {p0}, Le/k/a/c/l;->t()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz p1, :cond_17

    .line 42
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v4

    sget-object v5, Lorg/apache/avro/Schema$Type;->MAP:Lorg/apache/avro/Schema$Type;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 43
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getValueType()Lorg/apache/avro/Schema;

    move-result-object v4

    goto :goto_6

    :cond_17
    if-eqz p1, :cond_18

    .line 44
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v4

    sget-object v5, Lorg/apache/avro/Schema$Type;->RECORD:Lorg/apache/avro/Schema$Type;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 45
    invoke-virtual {p1, v3}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v4

    goto :goto_6

    :cond_18
    move-object v4, v0

    .line 46
    :goto_6
    invoke-virtual {p0, v3}, Le/k/a/c/l;->u(Ljava/lang/String;)Le/k/a/c/l;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/apache/avro/util/internal/JacksonUtils;->toObject(Le/k/a/c/l;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v4

    .line 47
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_19
    return-object v1

    :cond_1a
    :goto_7
    if-eqz p1, :cond_1d

    .line 48
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    sget-object v2, Lorg/apache/avro/Schema$Type;->DOUBLE:Lorg/apache/avro/Schema$Type;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_8

    .line 49
    :cond_1b
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object p1

    sget-object v1, Lorg/apache/avro/Schema$Type;->FLOAT:Lorg/apache/avro/Schema$Type;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 50
    invoke-virtual {p0}, Le/k/a/c/l;->g()D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_1c
    return-object v0

    .line 51
    :cond_1d
    :goto_8
    invoke-virtual {p0}, Le/k/a/c/l;->g()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
