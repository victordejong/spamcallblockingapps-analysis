.class public final enum Lorg/apache/avro/Schema$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/avro/Schema$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/avro/Schema$Type;

.field public static final enum ARRAY:Lorg/apache/avro/Schema$Type;

.field public static final enum BOOLEAN:Lorg/apache/avro/Schema$Type;

.field public static final enum BYTES:Lorg/apache/avro/Schema$Type;

.field public static final enum DOUBLE:Lorg/apache/avro/Schema$Type;

.field public static final enum ENUM:Lorg/apache/avro/Schema$Type;

.field public static final enum FIXED:Lorg/apache/avro/Schema$Type;

.field public static final enum FLOAT:Lorg/apache/avro/Schema$Type;

.field public static final enum INT:Lorg/apache/avro/Schema$Type;

.field public static final enum LONG:Lorg/apache/avro/Schema$Type;

.field public static final enum MAP:Lorg/apache/avro/Schema$Type;

.field public static final enum NULL:Lorg/apache/avro/Schema$Type;

.field public static final enum RECORD:Lorg/apache/avro/Schema$Type;

.field public static final enum STRING:Lorg/apache/avro/Schema$Type;

.field public static final enum UNION:Lorg/apache/avro/Schema$Type;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lorg/apache/avro/Schema$Type;

    const-string v1, "RECORD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/avro/Schema$Type;->RECORD:Lorg/apache/avro/Schema$Type;

    new-instance v1, Lorg/apache/avro/Schema$Type;

    const-string v3, "ENUM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/avro/Schema$Type;->ENUM:Lorg/apache/avro/Schema$Type;

    new-instance v3, Lorg/apache/avro/Schema$Type;

    const-string v5, "ARRAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/avro/Schema$Type;->ARRAY:Lorg/apache/avro/Schema$Type;

    new-instance v5, Lorg/apache/avro/Schema$Type;

    const-string v7, "MAP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/avro/Schema$Type;->MAP:Lorg/apache/avro/Schema$Type;

    new-instance v7, Lorg/apache/avro/Schema$Type;

    const-string v9, "UNION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/avro/Schema$Type;->UNION:Lorg/apache/avro/Schema$Type;

    new-instance v9, Lorg/apache/avro/Schema$Type;

    const-string v11, "FIXED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/avro/Schema$Type;->FIXED:Lorg/apache/avro/Schema$Type;

    new-instance v11, Lorg/apache/avro/Schema$Type;

    const-string v13, "STRING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/avro/Schema$Type;->STRING:Lorg/apache/avro/Schema$Type;

    new-instance v13, Lorg/apache/avro/Schema$Type;

    const-string v15, "BYTES"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/avro/Schema$Type;->BYTES:Lorg/apache/avro/Schema$Type;

    new-instance v15, Lorg/apache/avro/Schema$Type;

    const-string v14, "INT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/apache/avro/Schema$Type;->INT:Lorg/apache/avro/Schema$Type;

    new-instance v14, Lorg/apache/avro/Schema$Type;

    const-string v12, "LONG"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/apache/avro/Schema$Type;->LONG:Lorg/apache/avro/Schema$Type;

    new-instance v12, Lorg/apache/avro/Schema$Type;

    const-string v10, "FLOAT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/apache/avro/Schema$Type;->FLOAT:Lorg/apache/avro/Schema$Type;

    new-instance v10, Lorg/apache/avro/Schema$Type;

    const-string v8, "DOUBLE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/apache/avro/Schema$Type;->DOUBLE:Lorg/apache/avro/Schema$Type;

    new-instance v8, Lorg/apache/avro/Schema$Type;

    const-string v6, "BOOLEAN"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/apache/avro/Schema$Type;->BOOLEAN:Lorg/apache/avro/Schema$Type;

    new-instance v6, Lorg/apache/avro/Schema$Type;

    const-string v4, "NULL"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lorg/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/avro/Schema$Type;->NULL:Lorg/apache/avro/Schema$Type;

    const/16 v4, 0xe

    new-array v4, v4, [Lorg/apache/avro/Schema$Type;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    .line 2
    sput-object v4, Lorg/apache/avro/Schema$Type;->$VALUES:[Lorg/apache/avro/Schema$Type;

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

    iput-object p1, p0, Lorg/apache/avro/Schema$Type;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$200(Lorg/apache/avro/Schema$Type;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/avro/Schema$Type;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/avro/Schema$Type;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/avro/Schema$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/avro/Schema$Type;

    return-object p0
.end method

.method public static values()[Lorg/apache/avro/Schema$Type;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Schema$Type;->$VALUES:[Lorg/apache/avro/Schema$Type;

    invoke-virtual {v0}, [Lorg/apache/avro/Schema$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/avro/Schema$Type;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$Type;->name:Ljava/lang/String;

    return-object v0
.end method
