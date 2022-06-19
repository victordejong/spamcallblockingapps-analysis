.class public synthetic Lorg/apache/avro/Resolver$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Resolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$org$apache$avro$Resolver$ErrorAction$ErrorType:[I

.field public static final synthetic $SwitchMap$org$apache$avro$Schema$Type:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    invoke-static {}, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;->values()[Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    const/4 v0, 0x5

    new-array v1, v0, [I

    sput-object v1, Lorg/apache/avro/Resolver$1;->$SwitchMap$org$apache$avro$Resolver$ErrorAction$ErrorType:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    sget-object v4, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;->INCOMPATIBLE_SCHEMA_TYPES:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v4, Lorg/apache/avro/Resolver$1;->$SwitchMap$org$apache$avro$Resolver$ErrorAction$ErrorType:[I

    sget-object v5, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;->NAMES_DONT_MATCH:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    aput v1, v4, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v4, 0x3

    :try_start_2
    sget-object v5, Lorg/apache/avro/Resolver$1;->$SwitchMap$org$apache$avro$Resolver$ErrorAction$ErrorType:[I

    sget-object v6, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;->SIZES_DONT_MATCH:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    aput v4, v5, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v5, 0x4

    :try_start_3
    sget-object v6, Lorg/apache/avro/Resolver$1;->$SwitchMap$org$apache$avro$Resolver$ErrorAction$ErrorType:[I

    sget-object v7, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;->NO_MATCHING_BRANCH:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    aput v5, v6, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v6, Lorg/apache/avro/Resolver$1;->$SwitchMap$org$apache$avro$Resolver$ErrorAction$ErrorType:[I

    sget-object v7, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;->MISSING_REQUIRED_FIELD:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    aput v0, v6, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 2
    :catch_4
    invoke-static {}, Lorg/apache/avro/Schema$Type;->values()[Lorg/apache/avro/Schema$Type;

    const/16 v6, 0xe

    new-array v7, v6, [I

    sput-object v7, Lorg/apache/avro/Resolver$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    const/16 v8, 0xd

    :try_start_5
    sget-object v9, Lorg/apache/avro/Schema$Type;->NULL:Lorg/apache/avro/Schema$Type;

    aput v3, v7, v8
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/16 v7, 0xc

    :try_start_6
    sget-object v9, Lorg/apache/avro/Resolver$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v10, Lorg/apache/avro/Schema$Type;->BOOLEAN:Lorg/apache/avro/Schema$Type;

    aput v1, v9, v7
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v9, 0x8

    :try_start_7
    sget-object v10, Lorg/apache/avro/Resolver$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v11, Lorg/apache/avro/Schema$Type;->INT:Lorg/apache/avro/Schema$Type;

    aput v4, v10, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v10, 0x9

    :try_start_8
    sget-object v11, Lorg/apache/avro/Resolver$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v12, Lorg/apache/avro/Schema$Type;->LONG:Lorg/apache/avro/Schema$Type;

    aput v5, v11, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/16 v11, 0xa

    :try_start_9
    sget-object v12, Lorg/apache/avro/Resolver$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v13, Lorg/apache/avro/Schema$Type;->FLOAT:Lorg/apache/avro/Schema$Type;

    aput v0, v12, v11
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/4 v12, 0x6

    const/16 v13, 0xb

    :try_start_a
    sget-object v14, Lorg/apache/avro/Resolver$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v15, Lorg/apache/avro/Schema$Type;->DOUBLE:Lorg/apache/avro/Schema$Type;

    aput v12, v14, v13
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/4 v14, 0x7

    :try_start_b
    sget-object v15, Lorg/apache/avro/Resolver$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v16, Lorg/apache/avro/Schema$Type;->STRING:Lorg/apache/avro/Schema$Type;

    aput v14, v15, v12
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v12, Lorg/apache/avro/Resolver$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v15, Lorg/apache/avro/Schema$Type;->BYTES:Lorg/apache/avro/Schema$Type;

    aput v9, v12, v14
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v9, Lorg/apache/avro/Resolver$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v12, Lorg/apache/avro/Schema$Type;->FIXED:Lorg/apache/avro/Schema$Type;

    aput v10, v9, v0
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lorg/apache/avro/Resolver$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v9, Lorg/apache/avro/Schema$Type;->ARRAY:Lorg/apache/avro/Schema$Type;

    aput v11, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lorg/apache/avro/Resolver$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v1, Lorg/apache/avro/Schema$Type;->MAP:Lorg/apache/avro/Schema$Type;

    aput v13, v0, v4
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lorg/apache/avro/Resolver$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v1, Lorg/apache/avro/Schema$Type;->ENUM:Lorg/apache/avro/Schema$Type;

    aput v7, v0, v3
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lorg/apache/avro/Resolver$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v1, Lorg/apache/avro/Schema$Type;->RECORD:Lorg/apache/avro/Schema$Type;

    aput v8, v0, v2
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lorg/apache/avro/Resolver$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v1, Lorg/apache/avro/Schema$Type;->UNION:Lorg/apache/avro/Schema$Type;

    aput v6, v0, v5
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method
