.class public synthetic Lorg/apache/avro/io/BinaryData$3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/BinaryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$org$apache$avro$Schema$Type:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    invoke-static {}, Lorg/apache/avro/Schema$Type;->values()[Lorg/apache/avro/Schema$Type;

    const/16 v0, 0xe

    new-array v1, v0, [I

    sput-object v1, Lorg/apache/avro/io/BinaryData$3;->$SwitchMap$org$apache$avro$Schema$Type:[I

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lorg/apache/avro/Schema$Type;->RECORD:Lorg/apache/avro/Schema$Type;

    const/4 v3, 0x0

    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v3, Lorg/apache/avro/io/BinaryData$3;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v4, Lorg/apache/avro/Schema$Type;->ENUM:Lorg/apache/avro/Schema$Type;

    aput v1, v3, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    const/16 v3, 0x8

    :try_start_2
    sget-object v4, Lorg/apache/avro/io/BinaryData$3;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v5, Lorg/apache/avro/Schema$Type;->INT:Lorg/apache/avro/Schema$Type;

    aput v2, v4, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v4, 0x4

    const/16 v5, 0x9

    :try_start_3
    sget-object v6, Lorg/apache/avro/io/BinaryData$3;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v7, Lorg/apache/avro/Schema$Type;->LONG:Lorg/apache/avro/Schema$Type;

    aput v4, v6, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v6, 0x5

    const/16 v7, 0xa

    :try_start_4
    sget-object v8, Lorg/apache/avro/io/BinaryData$3;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v9, Lorg/apache/avro/Schema$Type;->FLOAT:Lorg/apache/avro/Schema$Type;

    aput v6, v8, v7
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v8, 0x6

    const/16 v9, 0xb

    :try_start_5
    sget-object v10, Lorg/apache/avro/io/BinaryData$3;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v11, Lorg/apache/avro/Schema$Type;->DOUBLE:Lorg/apache/avro/Schema$Type;

    aput v8, v10, v9
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v10, 0x7

    const/16 v11, 0xc

    :try_start_6
    sget-object v12, Lorg/apache/avro/io/BinaryData$3;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v13, Lorg/apache/avro/Schema$Type;->BOOLEAN:Lorg/apache/avro/Schema$Type;

    aput v10, v12, v11
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v12, Lorg/apache/avro/io/BinaryData$3;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v13, Lorg/apache/avro/Schema$Type;->ARRAY:Lorg/apache/avro/Schema$Type;

    aput v3, v12, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lorg/apache/avro/io/BinaryData$3;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v3, Lorg/apache/avro/Schema$Type;->MAP:Lorg/apache/avro/Schema$Type;

    aput v5, v1, v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lorg/apache/avro/io/BinaryData$3;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v2, Lorg/apache/avro/Schema$Type;->UNION:Lorg/apache/avro/Schema$Type;

    aput v7, v1, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lorg/apache/avro/io/BinaryData$3;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v2, Lorg/apache/avro/Schema$Type;->FIXED:Lorg/apache/avro/Schema$Type;

    aput v9, v1, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v1, Lorg/apache/avro/io/BinaryData$3;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v2, Lorg/apache/avro/Schema$Type;->STRING:Lorg/apache/avro/Schema$Type;

    aput v11, v1, v8
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/16 v1, 0xd

    :try_start_c
    sget-object v2, Lorg/apache/avro/io/BinaryData$3;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v3, Lorg/apache/avro/Schema$Type;->BYTES:Lorg/apache/avro/Schema$Type;

    aput v1, v2, v10
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v2, Lorg/apache/avro/io/BinaryData$3;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v3, Lorg/apache/avro/Schema$Type;->NULL:Lorg/apache/avro/Schema$Type;

    aput v0, v2, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
