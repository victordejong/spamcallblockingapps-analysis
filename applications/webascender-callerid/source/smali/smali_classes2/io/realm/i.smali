.class public Lio/realm/i;
.super Lio/realm/f0;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/m;


# instance fields
.field private final a:Lio/realm/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/x<",
            "Lio/realm/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/realm/a;Lio/realm/internal/o;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/realm/f0;-><init>()V

    .line 2
    new-instance v0, Lio/realm/x;

    invoke-direct {v0, p0}, Lio/realm/x;-><init>(Lio/realm/e0;)V

    iput-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    .line 3
    invoke-virtual {v0, p1}, Lio/realm/x;->k(Lio/realm/a;)V

    .line 4
    invoke-virtual {v0, p2}, Lio/realm/x;->l(Lio/realm/internal/o;)V

    .line 5
    invoke-virtual {v0}, Lio/realm/x;->i()V

    return-void
.end method

.method private O0(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->C()Lio/realm/j0;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/i;->R0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/j0;->h(Ljava/lang/String;)Lio/realm/h0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/realm/h0;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lio/realm/h0;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Primary key field \'%s\' cannot be changed after object was created."

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private Q0(Lio/realm/a;Lio/realm/internal/OsList;Lio/realm/RealmFieldType;Ljava/lang/Class;)Lio/realm/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/a;",
            "Lio/realm/internal/OsList;",
            "Lio/realm/RealmFieldType;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lio/realm/p<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    if-ne p3, v0, :cond_0

    .line 2
    new-instance p3, Lio/realm/m0;

    invoke-direct {p3, p1, p2, p4}, Lio/realm/m0;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p3

    .line 3
    :cond_0
    sget-object v0, Lio/realm/RealmFieldType;->INTEGER_LIST:Lio/realm/RealmFieldType;

    if-ne p3, v0, :cond_1

    .line 4
    new-instance p3, Lio/realm/o;

    invoke-direct {p3, p1, p2, p4}, Lio/realm/o;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p3

    .line 5
    :cond_1
    sget-object v0, Lio/realm/RealmFieldType;->BOOLEAN_LIST:Lio/realm/RealmFieldType;

    if-ne p3, v0, :cond_2

    .line 6
    new-instance p3, Lio/realm/c;

    invoke-direct {p3, p1, p2, p4}, Lio/realm/c;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p3

    .line 7
    :cond_2
    sget-object v0, Lio/realm/RealmFieldType;->BINARY_LIST:Lio/realm/RealmFieldType;

    if-ne p3, v0, :cond_3

    .line 8
    new-instance p3, Lio/realm/b;

    invoke-direct {p3, p1, p2, p4}, Lio/realm/b;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p3

    .line 9
    :cond_3
    sget-object v0, Lio/realm/RealmFieldType;->DOUBLE_LIST:Lio/realm/RealmFieldType;

    if-ne p3, v0, :cond_4

    .line 10
    new-instance p3, Lio/realm/g;

    invoke-direct {p3, p1, p2, p4}, Lio/realm/g;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p3

    .line 11
    :cond_4
    sget-object v0, Lio/realm/RealmFieldType;->FLOAT_LIST:Lio/realm/RealmFieldType;

    if-ne p3, v0, :cond_5

    .line 12
    new-instance p3, Lio/realm/k;

    invoke-direct {p3, p1, p2, p4}, Lio/realm/k;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p3

    .line 13
    :cond_5
    sget-object v0, Lio/realm/RealmFieldType;->DATE_LIST:Lio/realm/RealmFieldType;

    if-ne p3, v0, :cond_6

    .line 14
    new-instance p3, Lio/realm/e;

    invoke-direct {p3, p1, p2, p4}, Lio/realm/e;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p3

    .line 15
    :cond_6
    sget-object v0, Lio/realm/RealmFieldType;->DECIMAL128_LIST:Lio/realm/RealmFieldType;

    if-ne p3, v0, :cond_7

    .line 16
    new-instance p3, Lio/realm/f;

    invoke-direct {p3, p1, p2, p4}, Lio/realm/f;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p3

    .line 17
    :cond_7
    sget-object v0, Lio/realm/RealmFieldType;->OBJECT_ID_LIST:Lio/realm/RealmFieldType;

    if-ne p3, v0, :cond_8

    .line 18
    new-instance p3, Lio/realm/t;

    invoke-direct {p3, p1, p2, p4}, Lio/realm/t;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p3

    .line 19
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected list type: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d1(Ljava/lang/String;Lio/realm/c0;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/c0<",
            "Lio/realm/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/o;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lio/realm/internal/OsList;->l()Lio/realm/internal/Table;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/realm/internal/Table;->k()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p2, Lio/realm/c0;->g:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    iget-object v6, p2, Lio/realm/c0;->f:Ljava/lang/Class;

    if-nez v6, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/a;->C()Lio/realm/j0;

    move-result-object v2

    iget-object v6, p2, Lio/realm/c0;->f:Ljava/lang/Class;

    invoke-virtual {v2, v6}, Lio/realm/j0;->i(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->k()Ljava/lang/String;

    move-result-object v2

    .line 7
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v2, 0x1

    .line 8
    :goto_1
    invoke-virtual {p2}, Lio/realm/c0;->size()I

    move-result v6

    .line 9
    new-array v7, v6, [J

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_5

    .line 10
    invoke-virtual {p2, v8}, Lio/realm/c0;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/realm/internal/m;

    .line 11
    invoke-interface {v9}, Lio/realm/internal/m;->n0()Lio/realm/x;

    move-result-object v10

    invoke-virtual {v10}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v10

    iget-object v11, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v11}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v11

    if-ne v10, v11, :cond_4

    if-nez v2, :cond_3

    .line 12
    invoke-interface {v9}, Lio/realm/internal/m;->n0()Lio/realm/x;

    move-result-object v10

    invoke-virtual {v10}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v10

    invoke-interface {v10}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v10

    invoke-virtual {v0, v10}, Lio/realm/internal/Table;->x(Lio/realm/internal/Table;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_3

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    .line 15
    invoke-interface {v9}, Lio/realm/internal/m;->n0()Lio/realm/x;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->k()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    aput-object v1, v0, v3

    const-string v1, "Element at index %d is not the proper type. Was \'%s\' expected \'%s\'."

    .line 16
    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_3
    :goto_3
    invoke-interface {v9}, Lio/realm/internal/m;->n0()Lio/realm/x;

    move-result-object v9

    invoke-virtual {v9}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v9

    aput-wide v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 18
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Each element in \'list\' must belong to the same Realm instance."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_5
    invoke-virtual {p1}, Lio/realm/internal/OsList;->A()V

    :goto_4
    if-ge v5, v6, :cond_6

    .line 20
    aget-wide v0, v7, v5

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/OsList;->j(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    return-void

    .line 21
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v5

    aput-object v1, v0, v4

    const-string v1, "The elements in the list are not the proper type. Was %s expected %s."

    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j1(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    .line 3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lio/realm/i;->U0(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 4
    :cond_0
    const-class v1, Ljava/lang/Short;

    if-ne v0, v1, :cond_1

    .line 5
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-virtual {p0, p1, p2}, Lio/realm/i;->h1(Ljava/lang/String;S)V

    goto/16 :goto_0

    .line 6
    :cond_1
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_2

    .line 7
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lio/realm/i;->a1(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 8
    :cond_2
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_3

    .line 9
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/i;->c1(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 10
    :cond_3
    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_4

    .line 11
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-virtual {p0, p1, p2}, Lio/realm/i;->V0(Ljava/lang/String;B)V

    goto :goto_0

    .line 12
    :cond_4
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_5

    .line 13
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lio/realm/i;->Z0(Ljava/lang/String;F)V

    goto :goto_0

    .line 14
    :cond_5
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_6

    .line 15
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/i;->Y0(Ljava/lang/String;D)V

    goto :goto_0

    .line 16
    :cond_6
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_7

    .line 17
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/realm/i;->i1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_7
    instance-of v1, p2, Ljava/util/Date;

    if-eqz v1, :cond_8

    .line 19
    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lio/realm/i;->W0(Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_0

    .line 20
    :cond_8
    instance-of v1, p2, [B

    if-eqz v1, :cond_9

    .line 21
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lio/realm/i;->T0(Ljava/lang/String;[B)V

    goto :goto_0

    .line 22
    :cond_9
    const-class v1, Lio/realm/i;

    if-ne v0, v1, :cond_a

    .line 23
    check-cast p2, Lio/realm/i;

    invoke-virtual {p0, p1, p2}, Lio/realm/i;->f1(Ljava/lang/String;Lio/realm/i;)V

    goto :goto_0

    .line 24
    :cond_a
    const-class v1, Lio/realm/c0;

    if-ne v0, v1, :cond_b

    .line 25
    check-cast p2, Lio/realm/c0;

    .line 26
    invoke-virtual {p0, p1, p2}, Lio/realm/i;->b1(Ljava/lang/String;Lio/realm/c0;)V

    goto :goto_0

    .line 27
    :cond_b
    const-class v1, Lorg/bson/types/Decimal128;

    if-ne v0, v1, :cond_c

    .line 28
    check-cast p2, Lorg/bson/types/Decimal128;

    invoke-virtual {p0, p1, p2}, Lio/realm/i;->X0(Ljava/lang/String;Lorg/bson/types/Decimal128;)V

    goto :goto_0

    .line 29
    :cond_c
    const-class v1, Lorg/bson/types/ObjectId;

    if-ne v0, v1, :cond_d

    .line 30
    check-cast p2, Lorg/bson/types/ObjectId;

    invoke-virtual {p0, p1, p2}, Lio/realm/i;->g1(Ljava/lang/String;Lorg/bson/types/ObjectId;)V

    :goto_0
    return-void

    .line 31
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value is of an type not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private k1(Ljava/lang/String;Lio/realm/c0;Lio/realm/RealmFieldType;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/realm/c0<",
            "TE;>;",
            "Lio/realm/RealmFieldType;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/o;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    invoke-interface {p1, v0, v1, p3}, Lio/realm/internal/o;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object p1

    .line 3
    sget-object v0, Lio/realm/i$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :pswitch_0
    const-class v0, Lorg/bson/types/ObjectId;

    goto :goto_0

    .line 6
    :pswitch_1
    const-class v0, Lorg/bson/types/Decimal128;

    goto :goto_0

    .line 7
    :pswitch_2
    const-class v0, Ljava/lang/Double;

    goto :goto_0

    .line 8
    :pswitch_3
    const-class v0, Ljava/lang/Float;

    goto :goto_0

    .line 9
    :pswitch_4
    const-class v0, Ljava/util/Date;

    goto :goto_0

    .line 10
    :pswitch_5
    const-class v0, [B

    goto :goto_0

    .line 11
    :pswitch_6
    const-class v0, Ljava/lang/String;

    goto :goto_0

    .line 12
    :pswitch_7
    const-class v0, Ljava/lang/Boolean;

    goto :goto_0

    .line 13
    :pswitch_8
    const-class v0, Ljava/lang/Long;

    .line 14
    :goto_0
    iget-object v1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v1}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v1

    invoke-direct {p0, v1, p1, p3, v0}, Lio/realm/i;->Q0(Lio/realm/a;Lio/realm/internal/OsList;Lio/realm/RealmFieldType;Ljava/lang/Class;)Lio/realm/p;

    move-result-object p3

    .line 15
    invoke-virtual {p2}, Lio/realm/c0;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/realm/internal/OsList;->L()J

    move-result-wide v0

    invoke-virtual {p2}, Lio/realm/c0;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 16
    invoke-virtual {p2}, Lio/realm/c0;->size()I

    move-result p1

    .line 17
    invoke-virtual {p2}, Lio/realm/c0;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 18
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 19
    invoke-virtual {p3, v0, v1}, Lio/realm/p;->m(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p1}, Lio/realm/internal/OsList;->A()V

    .line 21
    invoke-virtual {p2}, Lio/realm/c0;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 22
    invoke-virtual {p3, p2}, Lio/realm/p;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0xd
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


# virtual methods
.method public P0()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/o;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public R0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public S0(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v2

    invoke-interface {v2, p1}, Lio/realm/internal/o;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v2

    .line 5
    iget-object v4, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v4}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lio/realm/internal/o;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v2

    if-eqz v0, :cond_8

    .line 6
    sget-object v0, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v2, v0, :cond_8

    .line 7
    sget-object v0, Lio/realm/i$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    const/4 v4, 0x4

    if-eq v0, v4, :cond_4

    const/4 v4, 0x7

    if-eq v0, v4, :cond_3

    const/16 v4, 0x8

    if-eq v0, v4, :cond_2

    const/16 v4, 0x9

    if-ne v0, v4, :cond_1

    .line 8
    new-instance p2, Lorg/bson/types/ObjectId;

    invoke-direct {p2, v1}, Lorg/bson/types/ObjectId;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v2

    const-string p1, "Field %s is not a String field, and the provide value could not be automatically converted: %s. Use a typedsetter instead"

    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_2
    invoke-static {v1}, Lorg/bson/types/Decimal128;->w(Ljava/lang/String;)Lorg/bson/types/Decimal128;

    move-result-object p2

    goto :goto_1

    .line 11
    :cond_3
    invoke-static {v1}, Lio/realm/internal/android/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    goto :goto_1

    .line 12
    :cond_4
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    goto :goto_1

    .line 13
    :cond_5
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_1

    .line 14
    :cond_6
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_1

    .line 15
    :cond_7
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    :cond_8
    :goto_1
    if-nez p2, :cond_9

    .line 16
    invoke-virtual {p0, p1}, Lio/realm/i;->e1(Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_9
    invoke-direct {p0, p1, p2}, Lio/realm/i;->j1(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public T()V
    .locals 0

    return-void
.end method

.method public T0(Ljava/lang/String;[B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/o;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    invoke-interface {p1, v0, v1, p2}, Lio/realm/internal/o;->setBinaryByteArray(J[B)V

    return-void
.end method

.method public U0(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/o;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    invoke-interface {p1, v0, v1, p2}, Lio/realm/internal/o;->setBoolean(JZ)V

    return-void
.end method

.method public V0(Ljava/lang/String;B)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/i;->O0(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/o;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    int-to-long v2, p2

    invoke-interface {p1, v0, v1, v2, v3}, Lio/realm/internal/o;->setLong(JJ)V

    return-void
.end method

.method public W0(Ljava/lang/String;Ljava/util/Date;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/o;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    if-nez p2, :cond_0

    .line 3
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    invoke-interface {p1, v0, v1, p2}, Lio/realm/internal/o;->setDate(JLjava/util/Date;)V

    :goto_0
    return-void
.end method

.method public X0(Ljava/lang/String;Lorg/bson/types/Decimal128;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/o;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    if-nez p2, :cond_0

    .line 3
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    invoke-interface {p1, v0, v1, p2}, Lio/realm/internal/o;->setDecimal128(JLorg/bson/types/Decimal128;)V

    :goto_0
    return-void
.end method

.method public Y0(Ljava/lang/String;D)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/o;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    invoke-interface {p1, v0, v1, p2, p3}, Lio/realm/internal/o;->setDouble(JD)V

    return-void
.end method

.method public Z0(Ljava/lang/String;F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/o;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    invoke-interface {p1, v0, v1, p2}, Lio/realm/internal/o;->setFloat(JF)V

    return-void
.end method

.method public a1(Ljava/lang/String;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/i;->O0(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/o;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    int-to-long v2, p2

    invoke-interface {p1, v0, v1, v2, v3}, Lio/realm/internal/o;->setLong(JJ)V

    return-void
.end method

.method public b1(Ljava/lang/String;Lio/realm/c0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/realm/c0<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-eqz p2, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/o;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/internal/o;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 4
    sget-object v1, Lio/realm/i$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 5
    :pswitch_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    const-string p1, "Field \'%s\' is not a list but a %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :pswitch_1
    invoke-direct {p0, p1, p2, v0}, Lio/realm/i;->k1(Ljava/lang/String;Lio/realm/c0;Lio/realm/RealmFieldType;)V

    goto :goto_1

    .line 7
    :pswitch_2
    invoke-virtual {p2}, Ljava/util/AbstractList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p2}, Lio/realm/c0;->m()Ljava/lang/Object;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lio/realm/i;

    if-nez v1, :cond_1

    const-class v1, Lio/realm/e0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "RealmList must contain `DynamicRealmObject\'s, not Java model classes."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lio/realm/i;->d1(Ljava/lang/String;Lio/realm/c0;)V

    :goto_1
    return-void

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-null \'list\' required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public c1(Ljava/lang/String;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/i;->O0(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/o;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    invoke-interface {p1, v0, v1, p2, p3}, Lio/realm/internal/o;->setLong(JJ)V

    return-void
.end method

.method public e1(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/o;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/internal/o;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v2

    .line 4
    sget-object v3, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-ne v2, v3, :cond_0

    .line 5
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->nullifyLink(J)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lio/realm/i;->O0(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 2
    const-class v2, Lio/realm/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 3
    :cond_1
    check-cast p1, Lio/realm/i;

    .line 4
    iget-object v2, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/a;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p1, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v3}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/a;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :goto_0
    return v1

    .line 7
    :cond_3
    iget-object v2, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->s()Ljava/lang/String;

    move-result-object v2

    .line 8
    iget-object v3, p1, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v3}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->s()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    :goto_1
    return v1

    .line 10
    :cond_5
    iget-object v2, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_7
    :goto_3
    return v1
.end method

.method public f1(Ljava/lang/String;Lio/realm/i;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/o;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    if-nez p2, :cond_0

    .line 3
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->nullifyLink(J)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p2, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p2, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object p1

    iget-object v2, p2, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 6
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->r(J)Lio/realm/internal/Table;

    move-result-object p1

    .line 7
    iget-object v2, p2, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    .line 8
    invoke-virtual {p1, v2}, Lio/realm/internal/Table;->x(Lio/realm/internal/Table;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object p2, p2, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p2}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p2

    invoke-interface {p2}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v2

    invoke-interface {p1, v0, v1, v2, v3}, Lio/realm/internal/o;->setLink(JJ)V

    :goto_0
    return-void

    .line 10
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v2}, Lio/realm/internal/Table;->s()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-virtual {p1}, Lio/realm/internal/Table;->s()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Type of object is wrong. Was %s, expected %s"

    .line 12
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add an object from another Realm instance."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot link to objects that are not part of the Realm."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g1(Ljava/lang/String;Lorg/bson/types/ObjectId;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/o;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    if-nez p2, :cond_0

    .line 3
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    invoke-interface {p1, v0, v1, p2}, Lio/realm/internal/o;->setObjectId(JLorg/bson/types/ObjectId;)V

    :goto_0
    return-void
.end method

.method public h1(Ljava/lang/String;S)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/i;->O0(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/o;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    int-to-long v2, p2

    invoke-interface {p1, v0, v1, v2, v3}, Lio/realm/internal/o;->setLong(JJ)V

    return-void
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->s()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v5, 0x20f

    add-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x1f

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    :cond_1
    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x1f

    const/16 v0, 0x20

    ushr-long v0, v2, v0

    xor-long/2addr v0, v2

    long-to-int v1, v0

    add-int/2addr v5, v1

    return v5
.end method

.method public i1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/i;->O0(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/o;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    invoke-interface {p1, v0, v1, p2}, Lio/realm/internal/o;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public n0()Lio/realm/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/o;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->k()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = dynamic["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lio/realm/i;->P0()[Ljava/lang/String;

    move-result-object v0

    .line 6
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_9

    aget-object v6, v0, v4

    .line 7
    iget-object v7, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v7}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v7

    invoke-interface {v7, v6}, Lio/realm/internal/o;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v7

    .line 8
    iget-object v9, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v9}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v9

    invoke-interface {v9, v7, v8}, Lio/realm/internal/o;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v9

    const-string v10, "{"

    .line 9
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    sget-object v6, Lio/realm/i$a;->a:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v6, v6, v10

    const-string v10, "null"

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    const-string v5, "?"

    .line 12
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 13
    :pswitch_1
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v10}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/o;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsList;->L()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmList<ObjectId>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 14
    :pswitch_2
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v10}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/o;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsList;->L()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmList<Decimal128>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 15
    :pswitch_3
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v10}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/o;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsList;->L()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmList<Double>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 16
    :pswitch_4
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v10}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/o;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsList;->L()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmList<Float>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 17
    :pswitch_5
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v10}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/o;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsList;->L()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmList<Date>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 18
    :pswitch_6
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v10}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/o;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsList;->L()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmList<byte[]>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 19
    :pswitch_7
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v10}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/o;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsList;->L()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmList<String>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 20
    :pswitch_8
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v10}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/o;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsList;->L()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmList<Boolean>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 21
    :pswitch_9
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v10}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/o;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsList;->L()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmList<Long>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 22
    :pswitch_a
    iget-object v6, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v6}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Lio/realm/internal/Table;->r(J)Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->k()Ljava/lang/String;

    move-result-object v6

    .line 23
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v3

    iget-object v6, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v6}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v6

    invoke-interface {v6, v7, v8}, Lio/realm/internal/o;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsList;->L()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v5

    const-string v5, "RealmList<%s>[%s]"

    invoke-static {v9, v5, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 24
    :pswitch_b
    iget-object v5, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v5}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/o;->isNullLink(J)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 25
    :cond_1
    iget-object v5, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v5}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Lio/realm/internal/Table;->r(J)Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->k()Ljava/lang/String;

    move-result-object v10

    .line 26
    :goto_1
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 27
    :pswitch_c
    iget-object v5, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v5}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/o;->isNull(J)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v5}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/o;->getObjectId(J)Lorg/bson/types/ObjectId;

    move-result-object v10

    :goto_2
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 28
    :pswitch_d
    iget-object v5, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v5}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/o;->isNull(J)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v5}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/o;->getDecimal128(J)Lorg/bson/types/Decimal128;

    move-result-object v10

    :goto_3
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 29
    :pswitch_e
    iget-object v5, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v5}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/o;->isNull(J)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    iget-object v5, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v5}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/o;->getDate(J)Ljava/util/Date;

    move-result-object v10

    :goto_4
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 30
    :pswitch_f
    iget-object v5, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v5}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/o;->getBinaryByteArray(J)[B

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 31
    :pswitch_10
    iget-object v5, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v5}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 32
    :pswitch_11
    iget-object v5, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v5}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/o;->isNull(J)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_5

    :cond_5
    iget-object v5, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v5}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/o;->getDouble(J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    :goto_5
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 33
    :pswitch_12
    iget-object v5, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v5}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/o;->isNull(J)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_6

    :cond_6
    iget-object v5, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v5}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/o;->getFloat(J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    :goto_6
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 34
    :pswitch_13
    iget-object v5, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v5}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/o;->isNull(J)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_7

    :cond_7
    iget-object v5, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v5}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/o;->getLong(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :goto_7
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 35
    :pswitch_14
    iget-object v5, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v5}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/o;->isNull(J)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_8

    :cond_8
    iget-object v5, p0, Lio/realm/i;->a:Lio/realm/x;

    invoke-virtual {v5}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/o;->getBoolean(J)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    :goto_8
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_9
    const-string v5, "},"

    .line 36
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 37
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
