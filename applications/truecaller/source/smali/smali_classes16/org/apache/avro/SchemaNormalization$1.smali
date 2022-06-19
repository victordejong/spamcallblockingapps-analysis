.class public synthetic Lorg/apache/avro/SchemaNormalization$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaNormalization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$org$apache$avro$Schema$Type:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/apache/avro/Schema$Type;->values()[Lorg/apache/avro/Schema$Type;

    const/16 v0, 0xe

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/avro/SchemaNormalization$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    const/4 v1, 0x1

    const/4 v2, 0x4

    :try_start_0
    sget-object v3, Lorg/apache/avro/Schema$Type;->UNION:Lorg/apache/avro/Schema$Type;

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/apache/avro/SchemaNormalization$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v3, Lorg/apache/avro/Schema$Type;->ARRAY:Lorg/apache/avro/Schema$Type;

    const/4 v3, 0x2

    aput v3, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/apache/avro/SchemaNormalization$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v3, Lorg/apache/avro/Schema$Type;->MAP:Lorg/apache/avro/Schema$Type;

    const/4 v3, 0x3

    aput v3, v0, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/apache/avro/SchemaNormalization$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v3, Lorg/apache/avro/Schema$Type;->ENUM:Lorg/apache/avro/Schema$Type;

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lorg/apache/avro/SchemaNormalization$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v1, Lorg/apache/avro/Schema$Type;->FIXED:Lorg/apache/avro/Schema$Type;

    const/4 v1, 0x5

    aput v1, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lorg/apache/avro/SchemaNormalization$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v1, Lorg/apache/avro/Schema$Type;->RECORD:Lorg/apache/avro/Schema$Type;

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
