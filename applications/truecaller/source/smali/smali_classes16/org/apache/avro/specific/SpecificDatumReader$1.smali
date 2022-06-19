.class public synthetic Lorg/apache/avro/specific/SpecificDatumReader$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/specific/SpecificDatumReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$org$apache$avro$Schema$Type:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/apache/avro/Schema$Type;->values()[Lorg/apache/avro/Schema$Type;

    const/16 v0, 0xe

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/avro/specific/SpecificDatumReader$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    :try_start_0
    sget-object v1, Lorg/apache/avro/Schema$Type;->STRING:Lorg/apache/avro/Schema$Type;

    const/4 v1, 0x6

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/apache/avro/specific/SpecificDatumReader$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    sget-object v1, Lorg/apache/avro/Schema$Type;->MAP:Lorg/apache/avro/Schema$Type;

    const/4 v1, 0x3

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
