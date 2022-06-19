.class public final enum Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

.field public static final enum OVERFLOW:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

.field public static final enum REGULAR:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

.field public static final enum ROOT:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    const-string v1, "ROOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->ROOT:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    .line 2
    new-instance v1, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    const-string v3, "REGULAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->REGULAR:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    .line 3
    new-instance v3, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    const-string v5, "OVERFLOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->OVERFLOW:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->$VALUES:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    return-object p0
.end method

.method public static values()[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->$VALUES:[Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    invoke-virtual {v0}, [Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    return-object v0
.end method
