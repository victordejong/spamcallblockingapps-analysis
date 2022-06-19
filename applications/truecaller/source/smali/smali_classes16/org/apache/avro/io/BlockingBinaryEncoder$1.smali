.class public synthetic Lorg/apache/avro/io/BlockingBinaryEncoder$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/BlockingBinaryEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$org$apache$avro$io$BlockingBinaryEncoder$BlockedValue$State:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->values()[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    const/4 v0, 0x3

    new-array v1, v0, [I

    sput-object v1, Lorg/apache/avro/io/BlockingBinaryEncoder$1;->$SwitchMap$org$apache$avro$io$BlockingBinaryEncoder$BlockedValue$State:[I

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->ROOT:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    const/4 v3, 0x0

    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v3, Lorg/apache/avro/io/BlockingBinaryEncoder$1;->$SwitchMap$org$apache$avro$io$BlockingBinaryEncoder$BlockedValue$State:[I

    sget-object v4, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->REGULAR:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    aput v1, v3, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lorg/apache/avro/io/BlockingBinaryEncoder$1;->$SwitchMap$org$apache$avro$io$BlockingBinaryEncoder$BlockedValue$State:[I

    sget-object v3, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->OVERFLOW:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    aput v0, v2, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
