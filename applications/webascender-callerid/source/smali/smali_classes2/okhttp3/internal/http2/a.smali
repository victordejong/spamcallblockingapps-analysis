.class public final enum Lokhttp3/internal/http2/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lokhttp3/internal/http2/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lokhttp3/internal/http2/a;

.field public static final enum CANCEL:Lokhttp3/internal/http2/a;

.field public static final enum COMPRESSION_ERROR:Lokhttp3/internal/http2/a;

.field public static final enum CONNECT_ERROR:Lokhttp3/internal/http2/a;

.field public static final Companion:Lokhttp3/internal/http2/a$a;

.field public static final enum ENHANCE_YOUR_CALM:Lokhttp3/internal/http2/a;

.field public static final enum FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/a;

.field public static final enum FRAME_SIZE_ERROR:Lokhttp3/internal/http2/a;

.field public static final enum HTTP_1_1_REQUIRED:Lokhttp3/internal/http2/a;

.field public static final enum INADEQUATE_SECURITY:Lokhttp3/internal/http2/a;

.field public static final enum INTERNAL_ERROR:Lokhttp3/internal/http2/a;

.field public static final enum NO_ERROR:Lokhttp3/internal/http2/a;

.field public static final enum PROTOCOL_ERROR:Lokhttp3/internal/http2/a;

.field public static final enum REFUSED_STREAM:Lokhttp3/internal/http2/a;

.field public static final enum SETTINGS_TIMEOUT:Lokhttp3/internal/http2/a;

.field public static final enum STREAM_CLOSED:Lokhttp3/internal/http2/a;


# instance fields
.field private final httpCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xe

    new-array v0, v0, [Lokhttp3/internal/http2/a;

    new-instance v1, Lokhttp3/internal/http2/a;

    const-string v2, "NO_ERROR"

    const/4 v3, 0x0

    .line 1
    invoke-direct {v1, v2, v3, v3}, Lokhttp3/internal/http2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lokhttp3/internal/http2/a;->NO_ERROR:Lokhttp3/internal/http2/a;

    aput-object v1, v0, v3

    new-instance v1, Lokhttp3/internal/http2/a;

    const-string v2, "PROTOCOL_ERROR"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Lokhttp3/internal/http2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lokhttp3/internal/http2/a;->PROTOCOL_ERROR:Lokhttp3/internal/http2/a;

    aput-object v1, v0, v3

    new-instance v1, Lokhttp3/internal/http2/a;

    const-string v2, "INTERNAL_ERROR"

    const/4 v3, 0x2

    .line 3
    invoke-direct {v1, v2, v3, v3}, Lokhttp3/internal/http2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lokhttp3/internal/http2/a;->INTERNAL_ERROR:Lokhttp3/internal/http2/a;

    aput-object v1, v0, v3

    new-instance v1, Lokhttp3/internal/http2/a;

    const-string v2, "FLOW_CONTROL_ERROR"

    const/4 v3, 0x3

    .line 4
    invoke-direct {v1, v2, v3, v3}, Lokhttp3/internal/http2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lokhttp3/internal/http2/a;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/a;

    aput-object v1, v0, v3

    new-instance v1, Lokhttp3/internal/http2/a;

    const-string v2, "SETTINGS_TIMEOUT"

    const/4 v3, 0x4

    .line 5
    invoke-direct {v1, v2, v3, v3}, Lokhttp3/internal/http2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lokhttp3/internal/http2/a;->SETTINGS_TIMEOUT:Lokhttp3/internal/http2/a;

    aput-object v1, v0, v3

    new-instance v1, Lokhttp3/internal/http2/a;

    const-string v2, "STREAM_CLOSED"

    const/4 v3, 0x5

    .line 6
    invoke-direct {v1, v2, v3, v3}, Lokhttp3/internal/http2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lokhttp3/internal/http2/a;->STREAM_CLOSED:Lokhttp3/internal/http2/a;

    aput-object v1, v0, v3

    new-instance v1, Lokhttp3/internal/http2/a;

    const-string v2, "FRAME_SIZE_ERROR"

    const/4 v3, 0x6

    .line 7
    invoke-direct {v1, v2, v3, v3}, Lokhttp3/internal/http2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lokhttp3/internal/http2/a;->FRAME_SIZE_ERROR:Lokhttp3/internal/http2/a;

    aput-object v1, v0, v3

    new-instance v1, Lokhttp3/internal/http2/a;

    const-string v2, "REFUSED_STREAM"

    const/4 v3, 0x7

    .line 8
    invoke-direct {v1, v2, v3, v3}, Lokhttp3/internal/http2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lokhttp3/internal/http2/a;->REFUSED_STREAM:Lokhttp3/internal/http2/a;

    aput-object v1, v0, v3

    new-instance v1, Lokhttp3/internal/http2/a;

    const-string v2, "CANCEL"

    const/16 v3, 0x8

    .line 9
    invoke-direct {v1, v2, v3, v3}, Lokhttp3/internal/http2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lokhttp3/internal/http2/a;->CANCEL:Lokhttp3/internal/http2/a;

    aput-object v1, v0, v3

    new-instance v1, Lokhttp3/internal/http2/a;

    const-string v2, "COMPRESSION_ERROR"

    const/16 v3, 0x9

    .line 10
    invoke-direct {v1, v2, v3, v3}, Lokhttp3/internal/http2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lokhttp3/internal/http2/a;->COMPRESSION_ERROR:Lokhttp3/internal/http2/a;

    aput-object v1, v0, v3

    new-instance v1, Lokhttp3/internal/http2/a;

    const-string v2, "CONNECT_ERROR"

    const/16 v3, 0xa

    .line 11
    invoke-direct {v1, v2, v3, v3}, Lokhttp3/internal/http2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lokhttp3/internal/http2/a;->CONNECT_ERROR:Lokhttp3/internal/http2/a;

    aput-object v1, v0, v3

    new-instance v1, Lokhttp3/internal/http2/a;

    const-string v2, "ENHANCE_YOUR_CALM"

    const/16 v3, 0xb

    .line 12
    invoke-direct {v1, v2, v3, v3}, Lokhttp3/internal/http2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lokhttp3/internal/http2/a;->ENHANCE_YOUR_CALM:Lokhttp3/internal/http2/a;

    aput-object v1, v0, v3

    new-instance v1, Lokhttp3/internal/http2/a;

    const-string v2, "INADEQUATE_SECURITY"

    const/16 v3, 0xc

    .line 13
    invoke-direct {v1, v2, v3, v3}, Lokhttp3/internal/http2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lokhttp3/internal/http2/a;->INADEQUATE_SECURITY:Lokhttp3/internal/http2/a;

    aput-object v1, v0, v3

    new-instance v1, Lokhttp3/internal/http2/a;

    const-string v2, "HTTP_1_1_REQUIRED"

    const/16 v3, 0xd

    .line 14
    invoke-direct {v1, v2, v3, v3}, Lokhttp3/internal/http2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lokhttp3/internal/http2/a;->HTTP_1_1_REQUIRED:Lokhttp3/internal/http2/a;

    aput-object v1, v0, v3

    sput-object v0, Lokhttp3/internal/http2/a;->$VALUES:[Lokhttp3/internal/http2/a;

    new-instance v0, Lokhttp3/internal/http2/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/a$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lokhttp3/internal/http2/a;->Companion:Lokhttp3/internal/http2/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lokhttp3/internal/http2/a;->httpCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/internal/http2/a;
    .locals 1

    const-class v0, Lokhttp3/internal/http2/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lokhttp3/internal/http2/a;

    return-object p0
.end method

.method public static values()[Lokhttp3/internal/http2/a;
    .locals 1

    sget-object v0, Lokhttp3/internal/http2/a;->$VALUES:[Lokhttp3/internal/http2/a;

    invoke-virtual {v0}, [Lokhttp3/internal/http2/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/http2/a;

    return-object v0
.end method


# virtual methods
.method public final getHttpCode()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/a;->httpCode:I

    return v0
.end method
