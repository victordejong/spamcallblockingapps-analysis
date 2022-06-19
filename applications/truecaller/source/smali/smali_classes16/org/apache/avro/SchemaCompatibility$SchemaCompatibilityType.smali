.class public final enum Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SchemaCompatibilityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

.field public static final enum COMPATIBLE:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

.field public static final enum INCOMPATIBLE:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

.field public static final enum RECURSION_IN_PROGRESS:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    const-string v1, "COMPATIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;->COMPATIBLE:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    new-instance v1, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    const-string v3, "INCOMPATIBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;->INCOMPATIBLE:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    .line 2
    new-instance v3, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    const-string v5, "RECURSION_IN_PROGRESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;->RECURSION_IN_PROGRESS:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3
    sput-object v5, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;->$VALUES:[Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    return-object p0
.end method

.method public static values()[Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;->$VALUES:[Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    invoke-virtual {v0}, [Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    return-object v0
.end method
