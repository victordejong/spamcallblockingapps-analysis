.class public final Ls1/a/a/a/v0/j/t/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/List;Ls1/a/a/a/v0/a/i;)Ls1/a/a/a/v0/j/t/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ls1/a/a/a/v0/a/i;",
            ")",
            "Ls1/a/a/a/v0/j/t/b;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-static {v1}, Ls1/a/a/a/v0/j/t/i;->b(Ljava/lang/Object;)Ls1/a/a/a/v0/j/t/g;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Ls1/a/a/a/v0/j/t/i$a;

    invoke-direct {p0, p1}, Ls1/a/a/a/v0/j/t/i$a;-><init>(Ls1/a/a/a/v0/a/i;)V

    new-instance p1, Ls1/a/a/a/v0/j/t/b;

    invoke-direct {p1, v0, p0}, Ls1/a/a/a/v0/j/t/b;-><init>(Ljava/util/List;Ls1/z/b/l;)V

    return-object p1
.end method

.method public static final b(Ljava/lang/Object;)Ls1/a/a/a/v0/j/t/g;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ls1/a/a/a/v0/j/t/g<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    instance-of v1, p0, Ljava/lang/Byte;

    if-eqz v1, :cond_0

    new-instance v0, Ls1/a/a/a/v0/j/t/d;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/j/t/d;-><init>(B)V

    goto/16 :goto_7

    .line 2
    :cond_0
    instance-of v1, p0, Ljava/lang/Short;

    if-eqz v1, :cond_1

    new-instance v0, Ls1/a/a/a/v0/j/t/v;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/j/t/v;-><init>(S)V

    goto/16 :goto_7

    .line 3
    :cond_1
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    new-instance v0, Ls1/a/a/a/v0/j/t/n;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/j/t/n;-><init>(I)V

    goto/16 :goto_7

    .line 4
    :cond_2
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_3

    new-instance v0, Ls1/a/a/a/v0/j/t/t;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ls1/a/a/a/v0/j/t/t;-><init>(J)V

    goto/16 :goto_7

    .line 5
    :cond_3
    instance-of v1, p0, Ljava/lang/Character;

    if-eqz v1, :cond_4

    new-instance v0, Ls1/a/a/a/v0/j/t/e;

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/j/t/e;-><init>(C)V

    goto/16 :goto_7

    .line 6
    :cond_4
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_5

    new-instance v0, Ls1/a/a/a/v0/j/t/m;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/j/t/m;-><init>(F)V

    goto/16 :goto_7

    .line 7
    :cond_5
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_6

    new-instance v0, Ls1/a/a/a/v0/j/t/j;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ls1/a/a/a/v0/j/t/j;-><init>(D)V

    goto/16 :goto_7

    .line 8
    :cond_6
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    new-instance v0, Ls1/a/a/a/v0/j/t/c;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/j/t/c;-><init>(Z)V

    goto/16 :goto_7

    .line 9
    :cond_7
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_8

    new-instance v0, Ls1/a/a/a/v0/j/t/w;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/j/t/w;-><init>(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 10
    :cond_8
    instance-of v1, p0, [B

    const-string v2, "$this$toMutableList"

    const/4 v3, 0x0

    const-string v4, "$this$toList"

    const/4 v5, 0x1

    if-eqz v1, :cond_b

    check-cast p0, [B

    .line 11
    invoke-static {p0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    array-length v1, p0

    if-eqz v1, :cond_a

    if-eq v1, v5, :cond_9

    .line 13
    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    array-length v1, p0

    :goto_0
    if-ge v3, v1, :cond_a

    aget-byte v2, p0, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_9
    aget-byte p0, p0, v3

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-static {p0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 17
    :cond_a
    sget-object p0, Ls1/a/a/a/v0/a/i;->g:Ls1/a/a/a/v0/a/i;

    invoke-static {v0, p0}, Ls1/a/a/a/v0/j/t/i;->a(Ljava/util/List;Ls1/a/a/a/v0/a/i;)Ls1/a/a/a/v0/j/t/b;

    move-result-object v0

    goto/16 :goto_7

    .line 18
    :cond_b
    instance-of v1, p0, [S

    if-eqz v1, :cond_e

    check-cast p0, [S

    .line 19
    invoke-static {p0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    array-length v1, p0

    if-eqz v1, :cond_d

    if-eq v1, v5, :cond_c

    .line 21
    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    array-length v1, p0

    :goto_1
    if-ge v3, v1, :cond_d

    aget-short v2, p0, v3

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 24
    :cond_c
    aget-short p0, p0, v3

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-static {p0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 25
    :cond_d
    sget-object p0, Ls1/a/a/a/v0/a/i;->h:Ls1/a/a/a/v0/a/i;

    invoke-static {v0, p0}, Ls1/a/a/a/v0/j/t/i;->a(Ljava/util/List;Ls1/a/a/a/v0/a/i;)Ls1/a/a/a/v0/j/t/b;

    move-result-object v0

    goto/16 :goto_7

    .line 26
    :cond_e
    instance-of v1, p0, [I

    if-eqz v1, :cond_11

    check-cast p0, [I

    .line 27
    invoke-static {p0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    array-length v1, p0

    if-eqz v1, :cond_10

    if-eq v1, v5, :cond_f

    .line 29
    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    array-length v1, p0

    :goto_2
    if-ge v3, v1, :cond_10

    aget v2, p0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 32
    :cond_f
    aget p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 33
    :cond_10
    sget-object p0, Ls1/a/a/a/v0/a/i;->i:Ls1/a/a/a/v0/a/i;

    invoke-static {v0, p0}, Ls1/a/a/a/v0/j/t/i;->a(Ljava/util/List;Ls1/a/a/a/v0/a/i;)Ls1/a/a/a/v0/j/t/b;

    move-result-object v0

    goto/16 :goto_7

    .line 34
    :cond_11
    instance-of v1, p0, [J

    if-eqz v1, :cond_12

    check-cast p0, [J

    invoke-static {p0}, Le/q/f/a/d/a;->g3([J)Ljava/util/List;

    move-result-object p0

    sget-object v0, Ls1/a/a/a/v0/a/i;->k:Ls1/a/a/a/v0/a/i;

    invoke-static {p0, v0}, Ls1/a/a/a/v0/j/t/i;->a(Ljava/util/List;Ls1/a/a/a/v0/a/i;)Ls1/a/a/a/v0/j/t/b;

    move-result-object v0

    goto/16 :goto_7

    .line 35
    :cond_12
    instance-of v1, p0, [C

    if-eqz v1, :cond_15

    check-cast p0, [C

    .line 36
    invoke-static {p0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    array-length v1, p0

    if-eqz v1, :cond_14

    if-eq v1, v5, :cond_13

    .line 38
    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    array-length v1, p0

    :goto_3
    if-ge v3, v1, :cond_14

    aget-char v2, p0, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 41
    :cond_13
    aget-char p0, p0, v3

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    invoke-static {p0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 42
    :cond_14
    sget-object p0, Ls1/a/a/a/v0/a/i;->f:Ls1/a/a/a/v0/a/i;

    invoke-static {v0, p0}, Ls1/a/a/a/v0/j/t/i;->a(Ljava/util/List;Ls1/a/a/a/v0/a/i;)Ls1/a/a/a/v0/j/t/b;

    move-result-object v0

    goto/16 :goto_7

    .line 43
    :cond_15
    instance-of v1, p0, [F

    if-eqz v1, :cond_18

    check-cast p0, [F

    .line 44
    invoke-static {p0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    array-length v1, p0

    if-eqz v1, :cond_17

    if-eq v1, v5, :cond_16

    .line 46
    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    array-length v1, p0

    :goto_4
    if-ge v3, v1, :cond_17

    aget v2, p0, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 49
    :cond_16
    aget p0, p0, v3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 50
    :cond_17
    sget-object p0, Ls1/a/a/a/v0/a/i;->j:Ls1/a/a/a/v0/a/i;

    invoke-static {v0, p0}, Ls1/a/a/a/v0/j/t/i;->a(Ljava/util/List;Ls1/a/a/a/v0/a/i;)Ls1/a/a/a/v0/j/t/b;

    move-result-object v0

    goto/16 :goto_7

    .line 51
    :cond_18
    instance-of v1, p0, [D

    if-eqz v1, :cond_1b

    check-cast p0, [D

    .line 52
    invoke-static {p0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    array-length v1, p0

    if-eqz v1, :cond_1a

    if-eq v1, v5, :cond_19

    .line 54
    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    array-length v1, p0

    :goto_5
    if-ge v3, v1, :cond_1a

    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 57
    :cond_19
    aget-wide v0, p0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 58
    :cond_1a
    sget-object p0, Ls1/a/a/a/v0/a/i;->l:Ls1/a/a/a/v0/a/i;

    invoke-static {v0, p0}, Ls1/a/a/a/v0/j/t/i;->a(Ljava/util/List;Ls1/a/a/a/v0/a/i;)Ls1/a/a/a/v0/j/t/b;

    move-result-object v0

    goto :goto_7

    .line 59
    :cond_1b
    instance-of v1, p0, [Z

    if-eqz v1, :cond_1e

    check-cast p0, [Z

    .line 60
    invoke-static {p0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    array-length v1, p0

    if-eqz v1, :cond_1d

    if-eq v1, v5, :cond_1c

    .line 62
    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    array-length v1, p0

    :goto_6
    if-ge v3, v1, :cond_1d

    aget-boolean v2, p0, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 65
    :cond_1c
    aget-boolean p0, p0, v3

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 66
    :cond_1d
    sget-object p0, Ls1/a/a/a/v0/a/i;->e:Ls1/a/a/a/v0/a/i;

    invoke-static {v0, p0}, Ls1/a/a/a/v0/j/t/i;->a(Ljava/util/List;Ls1/a/a/a/v0/a/i;)Ls1/a/a/a/v0/j/t/b;

    move-result-object v0

    goto :goto_7

    :cond_1e
    if-nez p0, :cond_1f

    .line 67
    new-instance v0, Ls1/a/a/a/v0/j/t/u;

    invoke-direct {v0}, Ls1/a/a/a/v0/j/t/u;-><init>()V

    goto :goto_7

    :cond_1f
    const/4 v0, 0x0

    :goto_7
    return-object v0
.end method
