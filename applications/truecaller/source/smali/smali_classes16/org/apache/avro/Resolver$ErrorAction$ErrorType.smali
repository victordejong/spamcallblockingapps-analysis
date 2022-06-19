.class public final enum Lorg/apache/avro/Resolver$ErrorAction$ErrorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Resolver$ErrorAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/avro/Resolver$ErrorAction$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

.field public static final enum INCOMPATIBLE_SCHEMA_TYPES:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

.field public static final enum MISSING_REQUIRED_FIELD:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

.field public static final enum NAMES_DONT_MATCH:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

.field public static final enum NO_MATCHING_BRANCH:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

.field public static final enum SIZES_DONT_MATCH:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    const-string v1, "INCOMPATIBLE_SCHEMA_TYPES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;->INCOMPATIBLE_SCHEMA_TYPES:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    .line 2
    new-instance v1, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    const-string v3, "NAMES_DONT_MATCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;->NAMES_DONT_MATCH:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    .line 3
    new-instance v3, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    const-string v5, "SIZES_DONT_MATCH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;->SIZES_DONT_MATCH:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    .line 4
    new-instance v5, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    const-string v7, "MISSING_REQUIRED_FIELD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;->MISSING_REQUIRED_FIELD:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    .line 5
    new-instance v7, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    const-string v9, "NO_MATCHING_BRANCH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;->NO_MATCHING_BRANCH:Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    const/4 v9, 0x5

    new-array v9, v9, [Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;->$VALUES:[Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/avro/Resolver$ErrorAction$ErrorType;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    return-object p0
.end method

.method public static values()[Lorg/apache/avro/Resolver$ErrorAction$ErrorType;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Resolver$ErrorAction$ErrorType;->$VALUES:[Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    invoke-virtual {v0}, [Lorg/apache/avro/Resolver$ErrorAction$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/avro/Resolver$ErrorAction$ErrorType;

    return-object v0
.end method
