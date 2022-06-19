.class public final enum Lorg/apache/avro/Schema$Field$Order;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Schema$Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/avro/Schema$Field$Order;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/avro/Schema$Field$Order;

.field public static final enum ASCENDING:Lorg/apache/avro/Schema$Field$Order;

.field public static final enum DESCENDING:Lorg/apache/avro/Schema$Field$Order;

.field public static final enum IGNORE:Lorg/apache/avro/Schema$Field$Order;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/apache/avro/Schema$Field$Order;

    const-string v1, "ASCENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/Schema$Field$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/avro/Schema$Field$Order;->ASCENDING:Lorg/apache/avro/Schema$Field$Order;

    new-instance v1, Lorg/apache/avro/Schema$Field$Order;

    const-string v3, "DESCENDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/avro/Schema$Field$Order;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/avro/Schema$Field$Order;->DESCENDING:Lorg/apache/avro/Schema$Field$Order;

    new-instance v3, Lorg/apache/avro/Schema$Field$Order;

    const-string v5, "IGNORE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/avro/Schema$Field$Order;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/avro/Schema$Field$Order;->IGNORE:Lorg/apache/avro/Schema$Field$Order;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/avro/Schema$Field$Order;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lorg/apache/avro/Schema$Field$Order;->$VALUES:[Lorg/apache/avro/Schema$Field$Order;

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

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/Schema$Field$Order;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$1400(Lorg/apache/avro/Schema$Field$Order;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/avro/Schema$Field$Order;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/avro/Schema$Field$Order;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/avro/Schema$Field$Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/avro/Schema$Field$Order;

    return-object p0
.end method

.method public static values()[Lorg/apache/avro/Schema$Field$Order;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Schema$Field$Order;->$VALUES:[Lorg/apache/avro/Schema$Field$Order;

    invoke-virtual {v0}, [Lorg/apache/avro/Schema$Field$Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/avro/Schema$Field$Order;

    return-object v0
.end method
