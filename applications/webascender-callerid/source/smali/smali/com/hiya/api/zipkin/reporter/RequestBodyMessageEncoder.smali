.class abstract enum Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder$Protobuf3RequestBody;,
        Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder$ThriftRequestBody;,
        Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder$JsonRequestBody;,
        Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder$StreamingRequestBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;

.field public static final enum JSON:Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;

.field public static final enum PROTO3:Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;

.field public static final enum THRIFT:Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder$1;

    const-string v1, "JSON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;->JSON:Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;

    .line 2
    new-instance v1, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder$2;

    const-string v3, "THRIFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;->THRIFT:Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;

    .line 3
    new-instance v3, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder$3;

    const-string v5, "PROTO3"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;->PROTO3:Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;->$VALUES:[Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;
    .locals 1

    .line 1
    const-class v0, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;

    return-object p0
.end method

.method public static values()[Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;->$VALUES:[Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;

    invoke-virtual {v0}, [Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;

    return-object v0
.end method


# virtual methods
.method abstract encode(Ljava/util/List;)Lm/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lm/f0;"
        }
    .end annotation
.end method
