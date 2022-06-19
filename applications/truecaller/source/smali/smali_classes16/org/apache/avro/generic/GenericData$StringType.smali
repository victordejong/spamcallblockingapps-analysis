.class public final enum Lorg/apache/avro/generic/GenericData$StringType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/generic/GenericData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StringType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/avro/generic/GenericData$StringType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/avro/generic/GenericData$StringType;

.field public static final enum CharSequence:Lorg/apache/avro/generic/GenericData$StringType;

.field public static final enum String:Lorg/apache/avro/generic/GenericData$StringType;

.field public static final enum Utf8:Lorg/apache/avro/generic/GenericData$StringType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/apache/avro/generic/GenericData$StringType;

    const-string v1, "CharSequence"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/generic/GenericData$StringType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/avro/generic/GenericData$StringType;->CharSequence:Lorg/apache/avro/generic/GenericData$StringType;

    new-instance v1, Lorg/apache/avro/generic/GenericData$StringType;

    const-string v3, "String"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/avro/generic/GenericData$StringType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/avro/generic/GenericData$StringType;->String:Lorg/apache/avro/generic/GenericData$StringType;

    new-instance v3, Lorg/apache/avro/generic/GenericData$StringType;

    const-string v5, "Utf8"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/avro/generic/GenericData$StringType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/avro/generic/GenericData$StringType;->Utf8:Lorg/apache/avro/generic/GenericData$StringType;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/avro/generic/GenericData$StringType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lorg/apache/avro/generic/GenericData$StringType;->$VALUES:[Lorg/apache/avro/generic/GenericData$StringType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/avro/generic/GenericData$StringType;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/avro/generic/GenericData$StringType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/avro/generic/GenericData$StringType;

    return-object p0
.end method

.method public static values()[Lorg/apache/avro/generic/GenericData$StringType;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/generic/GenericData$StringType;->$VALUES:[Lorg/apache/avro/generic/GenericData$StringType;

    invoke-virtual {v0}, [Lorg/apache/avro/generic/GenericData$StringType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/avro/generic/GenericData$StringType;

    return-object v0
.end method
