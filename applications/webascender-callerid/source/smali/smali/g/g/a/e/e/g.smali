.class public final enum Lg/g/a/e/e/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/a/e/e/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/a/e/e/g;

.field public static final enum DNS_LOOKUP:Lg/g/a/e/e/g;

.field public static final enum HTTP_RESP:Lg/g/a/e/e/g;

.field public static final enum TCP_CONN:Lg/g/a/e/e/g;

.field public static final enum TLS_CONN:Lg/g/a/e/e/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lg/g/a/e/e/g;

    new-instance v1, Lg/g/a/e/e/g;

    const-string v2, "DNS_LOOKUP"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lg/g/a/e/e/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/e/e/g;->DNS_LOOKUP:Lg/g/a/e/e/g;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/a/e/e/g;

    const-string v2, "TCP_CONN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lg/g/a/e/e/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/e/e/g;->TCP_CONN:Lg/g/a/e/e/g;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/a/e/e/g;

    const-string v2, "TLS_CONN"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lg/g/a/e/e/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/e/e/g;->TLS_CONN:Lg/g/a/e/e/g;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/a/e/e/g;

    const-string v2, "HTTP_RESP"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lg/g/a/e/e/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/e/e/g;->HTTP_RESP:Lg/g/a/e/e/g;

    aput-object v1, v0, v3

    sput-object v0, Lg/g/a/e/e/g;->$VALUES:[Lg/g/a/e/e/g;

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

.method public static valueOf(Ljava/lang/String;)Lg/g/a/e/e/g;
    .locals 1

    const-class v0, Lg/g/a/e/e/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/a/e/e/g;

    return-object p0
.end method

.method public static values()[Lg/g/a/e/e/g;
    .locals 1

    sget-object v0, Lg/g/a/e/e/g;->$VALUES:[Lg/g/a/e/e/g;

    invoke-virtual {v0}, [Lg/g/a/e/e/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/a/e/e/g;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lg/g/a/e/e/f;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "HTTPRespBodyEnd"

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    const-string v0, "TLSConn"

    goto :goto_0

    :cond_2
    const-string v0, "TCPConn"

    goto :goto_0

    :cond_3
    const-string v0, "DNSLookup"

    :goto_0
    return-object v0
.end method
