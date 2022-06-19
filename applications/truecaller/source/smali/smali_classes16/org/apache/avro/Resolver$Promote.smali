.class public Lorg/apache/avro/Resolver$Promote;
.super Lorg/apache/avro/Resolver$Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Resolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Promote"
.end annotation


# direct methods
.method private constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Resolver$Action$Type;->PROMOTE:Lorg/apache/avro/Resolver$Action$Type;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/avro/Resolver$Action;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Resolver$Action$Type;)V

    return-void
.end method

.method public static isValid(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 p1, 0x6

    if-eq p0, p1, :cond_0

    const/4 p1, 0x7

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 5
    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    return v1

    .line 6
    :pswitch_3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_2

    goto :goto_0

    :pswitch_4
    return v1

    .line 7
    :pswitch_5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eq p0, v0, :cond_1

    const/16 p1, 0x9

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 8
    :pswitch_6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eq p0, v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :goto_0
    const/4 p0, 0x0

    return p0

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only use when reader and writer are different."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static resolve(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)Lorg/apache/avro/Resolver$Action;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lorg/apache/avro/Resolver$Promote;->isValid(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lorg/apache/avro/Resolver$Promote;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/avro/Resolver$Promote;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lorg/apache/avro/Resolver$ErrorAction;

    sget-object v1, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;->INCOMPATIBLE_SCHEMA_TYPES:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/apache/avro/Resolver$ErrorAction;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Resolver$ErrorAction$ErrorType;)V

    return-object v0
.end method
