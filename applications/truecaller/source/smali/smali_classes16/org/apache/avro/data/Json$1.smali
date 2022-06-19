.class public synthetic Lorg/apache/avro/data/Json$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/data/Json;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

.field public static final synthetic $SwitchMap$org$apache$avro$data$Json$JsonType:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    invoke-static {}, Lorg/apache/avro/data/Json$JsonType;->values()[Lorg/apache/avro/data/Json$JsonType;

    const/4 v0, 0x7

    new-array v1, v0, [I

    sput-object v1, Lorg/apache/avro/data/Json$1;->$SwitchMap$org$apache$avro$data$Json$JsonType:[I

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lorg/apache/avro/data/Json$JsonType;->LONG:Lorg/apache/avro/data/Json$JsonType;

    const/4 v3, 0x0

    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v3, Lorg/apache/avro/data/Json$1;->$SwitchMap$org$apache$avro$data$Json$JsonType:[I

    sget-object v4, Lorg/apache/avro/data/Json$JsonType;->DOUBLE:Lorg/apache/avro/data/Json$JsonType;

    aput v1, v3, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lorg/apache/avro/data/Json$1;->$SwitchMap$org$apache$avro$data$Json$JsonType:[I

    sget-object v5, Lorg/apache/avro/data/Json$JsonType;->STRING:Lorg/apache/avro/data/Json$JsonType;

    aput v3, v4, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v4, 0x4

    :try_start_3
    sget-object v5, Lorg/apache/avro/data/Json$1;->$SwitchMap$org$apache$avro$data$Json$JsonType:[I

    sget-object v6, Lorg/apache/avro/data/Json$JsonType;->BOOLEAN:Lorg/apache/avro/data/Json$JsonType;

    aput v4, v5, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v5, 0x5

    :try_start_4
    sget-object v6, Lorg/apache/avro/data/Json$1;->$SwitchMap$org$apache$avro$data$Json$JsonType:[I

    sget-object v7, Lorg/apache/avro/data/Json$JsonType;->NULL:Lorg/apache/avro/data/Json$JsonType;

    aput v5, v6, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v6, 0x6

    :try_start_5
    sget-object v7, Lorg/apache/avro/data/Json$1;->$SwitchMap$org$apache$avro$data$Json$JsonType:[I

    sget-object v8, Lorg/apache/avro/data/Json$JsonType;->ARRAY:Lorg/apache/avro/data/Json$JsonType;

    aput v6, v7, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v7, Lorg/apache/avro/data/Json$1;->$SwitchMap$org$apache$avro$data$Json$JsonType:[I

    sget-object v8, Lorg/apache/avro/data/Json$JsonType;->OBJECT:Lorg/apache/avro/data/Json$JsonType;

    aput v0, v7, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 2
    :catch_6
    invoke-static {}, Le/k/a/b/m;->values()[Le/k/a/b/m;

    const/16 v7, 0xd

    new-array v7, v7, [I

    sput-object v7, Lorg/apache/avro/data/Json$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    const/16 v8, 0x8

    :try_start_7
    sget-object v9, Le/k/a/b/m;->q:Le/k/a/b/m;

    aput v2, v7, v8
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v7, Lorg/apache/avro/data/Json$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    sget-object v9, Le/k/a/b/m;->r:Le/k/a/b/m;

    const/16 v9, 0x9

    aput v1, v7, v9
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lorg/apache/avro/data/Json$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    sget-object v7, Le/k/a/b/m;->p:Le/k/a/b/m;

    aput v3, v1, v0
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lorg/apache/avro/data/Json$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    sget-object v7, Le/k/a/b/m;->s:Le/k/a/b/m;

    const/16 v7, 0xa

    aput v4, v1, v7
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v1, Lorg/apache/avro/data/Json$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    sget-object v4, Le/k/a/b/m;->t:Le/k/a/b/m;

    const/16 v4, 0xb

    aput v5, v1, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v1, Lorg/apache/avro/data/Json$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    sget-object v4, Le/k/a/b/m;->u:Le/k/a/b/m;

    const/16 v4, 0xc

    aput v6, v1, v4
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v1, Lorg/apache/avro/data/Json$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    sget-object v4, Le/k/a/b/m;->l:Le/k/a/b/m;

    aput v0, v1, v3
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lorg/apache/avro/data/Json$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    sget-object v1, Le/k/a/b/m;->j:Le/k/a/b/m;

    aput v8, v0, v2
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method
