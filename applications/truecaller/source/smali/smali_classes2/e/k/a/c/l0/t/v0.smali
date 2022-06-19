.class public Le/k/a/c/l0/t/v0;
.super Le/k/a/c/l0/t/q0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/q0<",
        "Le/k/a/c/n0/a0;",
        ">;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/n0/a0;

    invoke-direct {p0, v0}, Le/k/a/c/l0/t/q0;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Le/k/a/c/n0/a0;

    invoke-virtual {p0, p1, p2}, Le/k/a/c/l0/t/v0;->p(Le/k/a/c/n0/a0;Le/k/a/b/g;)V

    return-void
.end method

.method public g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Le/k/a/c/n0/a0;

    .line 2
    sget-object p3, Le/k/a/b/m;->o:Le/k/a/b/m;

    .line 3
    invoke-virtual {p4, p1, p3}, Le/k/a/c/j0/h;->d(Ljava/lang/Object;Le/k/a/b/m;)Le/k/a/b/z/b;

    move-result-object p3

    .line 4
    invoke-virtual {p4, p2, p3}, Le/k/a/c/j0/h;->e(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    move-result-object p3

    .line 5
    invoke-virtual {p0, p1, p2}, Le/k/a/c/l0/t/v0;->p(Le/k/a/c/n0/a0;Le/k/a/b/g;)V

    .line 6
    invoke-virtual {p4, p2, p3}, Le/k/a/c/j0/h;->f(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    return-void
.end method

.method public p(Le/k/a/c/n0/a0;Le/k/a/b/g;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le/k/a/c/n0/a0;->k:Le/k/a/c/n0/a0$b;

    .line 2
    iget-boolean p1, p1, Le/k/a/c/n0/a0;->i:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget-object v3, v0, Le/k/a/c/n0/a0$b;->d:Ljava/util/TreeMap;

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    add-int/2addr v4, v1

    const/16 v5, 0x10

    if-lt v4, v5, :cond_5

    .line 4
    iget-object v0, v0, Le/k/a/c/n0/a0$b;->a:Le/k/a/c/n0/a0$b;

    if-nez v0, :cond_2

    goto :goto_5

    :cond_2
    if-eqz p1, :cond_4

    .line 5
    iget-object v3, v0, Le/k/a/c/n0/a0$b;->d:Ljava/util/TreeMap;

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    move v3, v2

    :goto_4
    move v4, v2

    .line 6
    :cond_5
    invoke-virtual {v0, v4}, Le/k/a/c/n0/a0$b;->k(I)Le/k/a/b/m;

    move-result-object v5

    if-nez v5, :cond_6

    :goto_5
    return-void

    :cond_6
    if-eqz v3, :cond_8

    .line 7
    invoke-virtual {v0, v4}, Le/k/a/c/n0/a0$b;->f(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 8
    invoke-virtual {p2, v6}, Le/k/a/b/g;->l1(Ljava/lang/Object;)V

    .line 9
    :cond_7
    invoke-virtual {v0, v4}, Le/k/a/c/n0/a0$b;->g(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 10
    invoke-virtual {p2, v6}, Le/k/a/b/g;->Z1(Ljava/lang/Object;)V

    .line 11
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 12
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Internal error: should never end up through this code path"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :pswitch_0
    invoke-virtual {p2}, Le/k/a/b/g;->D0()V

    goto :goto_2

    .line 14
    :pswitch_1
    invoke-virtual {p2, v2}, Le/k/a/b/g;->k0(Z)V

    goto :goto_2

    .line 15
    :pswitch_2
    invoke-virtual {p2, v1}, Le/k/a/b/g;->k0(Z)V

    goto :goto_2

    .line 16
    :pswitch_3
    iget-object v5, v0, Le/k/a/c/n0/a0$b;->c:[Ljava/lang/Object;

    aget-object v5, v5, v4

    .line 17
    instance-of v6, v5, Ljava/lang/Double;

    if-eqz v6, :cond_9

    .line 18
    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Le/k/a/b/g;->F0(D)V

    goto :goto_2

    .line 19
    :cond_9
    instance-of v6, v5, Ljava/math/BigDecimal;

    if-eqz v6, :cond_a

    .line 20
    check-cast v5, Ljava/math/BigDecimal;

    invoke-virtual {p2, v5}, Le/k/a/b/g;->Q0(Ljava/math/BigDecimal;)V

    goto :goto_2

    .line 21
    :cond_a
    instance-of v6, v5, Ljava/lang/Float;

    if-eqz v6, :cond_b

    .line 22
    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {p2, v5}, Le/k/a/b/g;->G0(F)V

    goto :goto_2

    :cond_b
    if-nez v5, :cond_c

    .line 23
    invoke-virtual {p2}, Le/k/a/b/g;->D0()V

    goto :goto_2

    .line 24
    :cond_c
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_d

    .line 25
    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Le/k/a/b/g;->L0(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 26
    :cond_d
    new-instance p1, Le/k/a/b/f;

    new-array v0, v1, [Ljava/lang/Object;

    .line 27
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Unrecognized value type for VALUE_NUMBER_FLOAT: %s, cannot serialize"

    .line 28
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Le/k/a/b/f;-><init>(Ljava/lang/String;Le/k/a/b/g;)V

    throw p1

    .line 29
    :pswitch_4
    iget-object v5, v0, Le/k/a/c/n0/a0$b;->c:[Ljava/lang/Object;

    aget-object v5, v5, v4

    .line 30
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_e

    .line 31
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p2, v5}, Le/k/a/b/g;->J0(I)V

    goto/16 :goto_2

    .line 32
    :cond_e
    instance-of v6, v5, Ljava/math/BigInteger;

    if-eqz v6, :cond_f

    .line 33
    check-cast v5, Ljava/math/BigInteger;

    invoke-virtual {p2, v5}, Le/k/a/b/g;->U0(Ljava/math/BigInteger;)V

    goto/16 :goto_2

    .line 34
    :cond_f
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_10

    .line 35
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Le/k/a/b/g;->K0(J)V

    goto/16 :goto_2

    .line 36
    :cond_10
    instance-of v6, v5, Ljava/lang/Short;

    if-eqz v6, :cond_11

    .line 37
    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    invoke-virtual {p2, v5}, Le/k/a/b/g;->W0(S)V

    goto/16 :goto_2

    .line 38
    :cond_11
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {p2, v5}, Le/k/a/b/g;->J0(I)V

    goto/16 :goto_2

    .line 39
    :pswitch_5
    iget-object v5, v0, Le/k/a/c/n0/a0$b;->c:[Ljava/lang/Object;

    aget-object v5, v5, v4

    .line 40
    instance-of v6, v5, Le/k/a/b/p;

    if-eqz v6, :cond_12

    .line 41
    check-cast v5, Le/k/a/b/p;

    invoke-virtual {p2, v5}, Le/k/a/b/g;->S1(Le/k/a/b/p;)V

    goto/16 :goto_2

    .line 42
    :cond_12
    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 43
    :pswitch_6
    iget-object v5, v0, Le/k/a/c/n0/a0$b;->c:[Ljava/lang/Object;

    aget-object v5, v5, v4

    .line 44
    instance-of v6, v5, Le/k/a/c/n0/w;

    if-eqz v6, :cond_15

    .line 45
    check-cast v5, Le/k/a/c/n0/w;

    .line 46
    iget-object v5, v5, Le/k/a/c/n0/w;->a:Ljava/lang/Object;

    instance-of v6, v5, Le/k/a/c/m;

    if-eqz v6, :cond_13

    .line 47
    invoke-virtual {p2, v5}, Le/k/a/b/g;->j1(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 48
    :cond_13
    instance-of v6, v5, Le/k/a/b/p;

    if-eqz v6, :cond_14

    .line 49
    check-cast v5, Le/k/a/b/p;

    invoke-virtual {p2, v5}, Le/k/a/b/g;->B1(Le/k/a/b/p;)V

    goto/16 :goto_2

    .line 50
    :cond_14
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Le/k/a/b/g;->E1(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 51
    :cond_15
    instance-of v6, v5, Le/k/a/c/m;

    if-eqz v6, :cond_16

    .line 52
    invoke-virtual {p2, v5}, Le/k/a/b/g;->j1(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 53
    :cond_16
    invoke-virtual {p2, v5}, Le/k/a/b/g;->n0(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 54
    :pswitch_7
    iget-object v5, v0, Le/k/a/c/n0/a0$b;->c:[Ljava/lang/Object;

    aget-object v5, v5, v4

    .line 55
    instance-of v6, v5, Le/k/a/b/p;

    if-eqz v6, :cond_17

    .line 56
    check-cast v5, Le/k/a/b/p;

    invoke-virtual {p2, v5}, Le/k/a/b/g;->z0(Le/k/a/b/p;)V

    goto/16 :goto_2

    .line 57
    :cond_17
    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 58
    :pswitch_8
    invoke-virtual {p2}, Le/k/a/b/g;->p0()V

    goto/16 :goto_2

    .line 59
    :pswitch_9
    invoke-virtual {p2}, Le/k/a/b/g;->F1()V

    goto/16 :goto_2

    .line 60
    :pswitch_a
    invoke-virtual {p2}, Le/k/a/b/g;->t0()V

    goto/16 :goto_2

    .line 61
    :pswitch_b
    invoke-virtual {p2}, Le/k/a/b/g;->M1()V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
