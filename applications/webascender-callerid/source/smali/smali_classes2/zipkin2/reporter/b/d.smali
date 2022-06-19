.class abstract enum Lzipkin2/reporter/b/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/reporter/b/d$e;,
        Lzipkin2/reporter/b/d$g;,
        Lzipkin2/reporter/b/d$d;,
        Lzipkin2/reporter/b/d$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzipkin2/reporter/b/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzipkin2/reporter/b/d;

.field public static final enum JSON:Lzipkin2/reporter/b/d;

.field public static final enum PROTO3:Lzipkin2/reporter/b/d;

.field public static final enum THRIFT:Lzipkin2/reporter/b/d;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lzipkin2/reporter/b/d$a;

    const-string v1, "JSON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzipkin2/reporter/b/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/reporter/b/d;->JSON:Lzipkin2/reporter/b/d;

    .line 2
    new-instance v1, Lzipkin2/reporter/b/d$b;

    const-string v3, "THRIFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzipkin2/reporter/b/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzipkin2/reporter/b/d;->THRIFT:Lzipkin2/reporter/b/d;

    .line 3
    new-instance v3, Lzipkin2/reporter/b/d$c;

    const-string v5, "PROTO3"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzipkin2/reporter/b/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzipkin2/reporter/b/d;->PROTO3:Lzipkin2/reporter/b/d;

    const/4 v5, 0x3

    new-array v5, v5, [Lzipkin2/reporter/b/d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lzipkin2/reporter/b/d;->$VALUES:[Lzipkin2/reporter/b/d;

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

.method synthetic constructor <init>(Ljava/lang/String;ILzipkin2/reporter/b/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lzipkin2/reporter/b/d;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzipkin2/reporter/b/d;
    .locals 1

    .line 1
    const-class v0, Lzipkin2/reporter/b/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzipkin2/reporter/b/d;

    return-object p0
.end method

.method public static values()[Lzipkin2/reporter/b/d;
    .locals 1

    .line 1
    sget-object v0, Lzipkin2/reporter/b/d;->$VALUES:[Lzipkin2/reporter/b/d;

    invoke-virtual {v0}, [Lzipkin2/reporter/b/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzipkin2/reporter/b/d;

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
