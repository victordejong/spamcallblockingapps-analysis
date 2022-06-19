.class public abstract Le/m/b/x/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(ZLjava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-static {p2}, Le/m/b/x/d/g;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    move-object p1, p0

    check-cast p1, Le/m/b/x/c/j/b;

    .line 4
    iget-object p1, p1, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto/16 :goto_9

    .line 5
    :cond_1
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 6
    check-cast p2, Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Le/m/b/x/c/j/b;

    .line 7
    iget-object p1, p1, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {p1, p2}, Le/m/e/g0/c;->t0(Ljava/lang/String;)Le/m/e/g0/c;

    goto/16 :goto_9

    .line 8
    :cond_2
    instance-of v1, p2, Ljava/lang/Number;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Le/m/b/x/c/j/b;

    .line 10
    iget-object p2, p2, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {p2, p1}, Le/m/e/g0/c;->t0(Ljava/lang/String;)Le/m/e/g0/c;

    goto/16 :goto_9

    .line 11
    :cond_3
    instance-of p1, p2, Ljava/math/BigDecimal;

    if-eqz p1, :cond_4

    .line 12
    check-cast p2, Ljava/math/BigDecimal;

    move-object p1, p0

    check-cast p1, Le/m/b/x/c/j/b;

    .line 13
    iget-object p1, p1, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {p1, p2}, Le/m/e/g0/c;->p0(Ljava/lang/Number;)Le/m/e/g0/c;

    goto/16 :goto_9

    .line 14
    :cond_4
    instance-of p1, p2, Ljava/math/BigInteger;

    if-eqz p1, :cond_5

    .line 15
    check-cast p2, Ljava/math/BigInteger;

    move-object p1, p0

    check-cast p1, Le/m/b/x/c/j/b;

    .line 16
    iget-object p1, p1, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {p1, p2}, Le/m/e/g0/c;->p0(Ljava/lang/Number;)Le/m/e/g0/c;

    goto/16 :goto_9

    .line 17
    :cond_5
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_6

    .line 18
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    move-object v0, p0

    check-cast v0, Le/m/b/x/c/j/b;

    .line 19
    iget-object v0, v0, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {v0, p1, p2}, Le/m/e/g0/c;->k0(J)Le/m/e/g0/c;

    goto/16 :goto_9

    .line 20
    :cond_6
    instance-of p1, p2, Ljava/lang/Float;

    if-eqz p1, :cond_8

    .line 21
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    move v2, v3

    .line 23
    :goto_0
    invoke-static {v2}, Ln3/g0/y;->checkArgument2(Z)V

    .line 24
    move-object p2, p0

    check-cast p2, Le/m/b/x/c/j/b;

    .line 25
    iget-object p2, p2, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    float-to-double v0, p1

    invoke-virtual {p2, v0, v1}, Le/m/e/g0/c;->W(D)Le/m/e/g0/c;

    goto/16 :goto_9

    .line 26
    :cond_8
    instance-of p1, p2, Ljava/lang/Integer;

    if-nez p1, :cond_b

    instance-of p1, p2, Ljava/lang/Short;

    if-nez p1, :cond_b

    instance-of p1, p2, Ljava/lang/Byte;

    if-eqz p1, :cond_9

    goto :goto_2

    .line 27
    :cond_9
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    .line 28
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_1

    :cond_a
    move v2, v3

    .line 29
    :goto_1
    invoke-static {v2}, Ln3/g0/y;->checkArgument2(Z)V

    .line 30
    move-object v0, p0

    check-cast v0, Le/m/b/x/c/j/b;

    .line 31
    iget-object v0, v0, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {v0, p1, p2}, Le/m/e/g0/c;->W(D)Le/m/e/g0/c;

    goto/16 :goto_9

    .line 32
    :cond_b
    :goto_2
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    move-object p2, p0

    check-cast p2, Le/m/b/x/c/j/b;

    .line 33
    iget-object p2, p2, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Le/m/e/g0/c;->k0(J)Le/m/e/g0/c;

    goto/16 :goto_9

    .line 34
    :cond_c
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    .line 35
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    move-object p2, p0

    check-cast p2, Le/m/b/x/c/j/b;

    .line 36
    iget-object p2, p2, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {p2, p1}, Le/m/e/g0/c;->z0(Z)Le/m/e/g0/c;

    goto/16 :goto_9

    .line 37
    :cond_d
    instance-of v1, p2, Le/m/b/x/d/i;

    if-eqz v1, :cond_e

    .line 38
    check-cast p2, Le/m/b/x/d/i;

    invoke-virtual {p2}, Le/m/b/x/d/i;->b()Ljava/lang/String;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Le/m/b/x/c/j/b;

    .line 39
    iget-object p2, p2, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {p2, p1}, Le/m/e/g0/c;->t0(Ljava/lang/String;)Le/m/e/g0/c;

    goto/16 :goto_9

    .line 40
    :cond_e
    instance-of v1, p2, Ljava/lang/Iterable;

    if-nez v1, :cond_f

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_f
    instance-of v1, p2, Ljava/util/Map;

    if-nez v1, :cond_11

    instance-of v1, p2, Le/m/b/x/d/k;

    if-nez v1, :cond_11

    .line 41
    move-object v0, p0

    check-cast v0, Le/m/b/x/c/j/b;

    .line 42
    iget-object v1, v0, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {v1}, Le/m/e/g0/c;->d()Le/m/e/g0/c;

    .line 43
    invoke-static {p2}, Le/m/b/x/d/l;->l(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 44
    invoke-virtual {p0, p1, v1}, Le/m/b/x/c/d;->b(ZLjava/lang/Object;)V

    goto :goto_3

    .line 45
    :cond_10
    iget-object p1, v0, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {p1}, Le/m/e/g0/c;->l()Le/m/e/g0/c;

    goto/16 :goto_9

    .line 46
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 47
    check-cast p2, Ljava/lang/Enum;

    invoke-static {p2}, Le/m/b/x/d/j;->c(Ljava/lang/Enum;)Le/m/b/x/d/j;

    move-result-object p1

    .line 48
    iget-object p1, p1, Le/m/b/x/d/j;->d:Ljava/lang/String;

    if-nez p1, :cond_12

    .line 49
    move-object p1, p0

    check-cast p1, Le/m/b/x/c/j/b;

    .line 50
    iget-object p1, p1, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto/16 :goto_9

    .line 51
    :cond_12
    move-object p2, p0

    check-cast p2, Le/m/b/x/c/j/b;

    .line 52
    iget-object p2, p2, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {p2, p1}, Le/m/e/g0/c;->t0(Ljava/lang/String;)Le/m/e/g0/c;

    goto/16 :goto_9

    .line 53
    :cond_13
    move-object v1, p0

    check-cast v1, Le/m/b/x/c/j/b;

    .line 54
    iget-object v4, v1, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {v4}, Le/m/e/g0/c;->j()Le/m/e/g0/c;

    .line 55
    instance-of v4, p2, Ljava/util/Map;

    if-eqz v4, :cond_14

    instance-of v4, p2, Le/m/b/x/d/k;

    if-nez v4, :cond_14

    move v4, v2

    goto :goto_4

    :cond_14
    move v4, v3

    :goto_4
    const/4 v5, 0x0

    if-eqz v4, :cond_15

    move-object v0, v5

    goto :goto_5

    .line 56
    :cond_15
    invoke-static {v0}, Le/m/b/x/d/f;->b(Ljava/lang/Class;)Le/m/b/x/d/f;

    move-result-object v0

    .line 57
    :goto_5
    invoke-static {p2}, Le/m/b/x/d/g;->e(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_16
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 59
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v4, :cond_17

    move v8, p1

    goto :goto_8

    .line 60
    :cond_17
    invoke-virtual {v0, v6}, Le/m/b/x/d/f;->a(Ljava/lang/String;)Le/m/b/x/d/j;

    move-result-object v8

    if-nez v8, :cond_18

    move-object v8, v5

    goto :goto_7

    .line 61
    :cond_18
    iget-object v8, v8, Le/m/b/x/d/j;->b:Ljava/lang/reflect/Field;

    :goto_7
    if-eqz v8, :cond_19

    .line 62
    const-class v9, Le/m/b/x/c/h;

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    if-eqz v8, :cond_19

    move v8, v2

    goto :goto_8

    :cond_19
    move v8, v3

    .line 63
    :goto_8
    iget-object v9, v1, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {v9, v6}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 64
    invoke-virtual {p0, v8, v7}, Le/m/b/x/c/d;->b(ZLjava/lang/Object;)V

    goto :goto_6

    .line 65
    :cond_1a
    iget-object p1, v1, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {p1}, Le/m/e/g0/c;->q()Le/m/e/g0/c;

    :goto_9
    return-void
.end method
