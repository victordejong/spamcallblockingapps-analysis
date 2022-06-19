.class public final enum Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SchemaIncompatibilityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

.field public static final enum FIXED_SIZE_MISMATCH:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

.field public static final enum MISSING_ENUM_SYMBOLS:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

.field public static final enum MISSING_UNION_BRANCH:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

.field public static final enum NAME_MISMATCH:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

.field public static final enum READER_FIELD_MISSING_DEFAULT_VALUE:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

.field public static final enum TYPE_MISMATCH:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    const-string v1, "NAME_MISMATCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;->NAME_MISMATCH:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    new-instance v1, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    const-string v3, "FIXED_SIZE_MISMATCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;->FIXED_SIZE_MISMATCH:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    new-instance v3, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    const-string v5, "MISSING_ENUM_SYMBOLS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;->MISSING_ENUM_SYMBOLS:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    new-instance v5, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    const-string v7, "READER_FIELD_MISSING_DEFAULT_VALUE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;->READER_FIELD_MISSING_DEFAULT_VALUE:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    new-instance v7, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    const-string v9, "TYPE_MISMATCH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;->TYPE_MISMATCH:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    .line 2
    new-instance v9, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    const-string v11, "MISSING_UNION_BRANCH"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;->MISSING_UNION_BRANCH:Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    const/4 v11, 0x6

    new-array v11, v11, [Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 3
    sput-object v11, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;->$VALUES:[Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    return-object p0
.end method

.method public static values()[Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;->$VALUES:[Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    invoke-virtual {v0}, [Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;

    return-object v0
.end method
