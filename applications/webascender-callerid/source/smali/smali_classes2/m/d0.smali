.class public final enum Lm/d0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/d0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm/d0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lm/d0;

.field public static final Companion:Lm/d0$a;

.field public static final enum H2_PRIOR_KNOWLEDGE:Lm/d0;

.field public static final enum HTTP_1_0:Lm/d0;

.field public static final enum HTTP_1_1:Lm/d0;

.field public static final enum HTTP_2:Lm/d0;

.field public static final enum QUIC:Lm/d0;

.field public static final enum SPDY_3:Lm/d0;


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lm/d0;

    new-instance v1, Lm/d0;

    const-string v2, "HTTP_1_0"

    const/4 v3, 0x0

    const-string v4, "http/1.0"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lm/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lm/d0;->HTTP_1_0:Lm/d0;

    aput-object v1, v0, v3

    new-instance v1, Lm/d0;

    const-string v2, "HTTP_1_1"

    const/4 v3, 0x1

    const-string v4, "http/1.1"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lm/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lm/d0;->HTTP_1_1:Lm/d0;

    aput-object v1, v0, v3

    new-instance v1, Lm/d0;

    const-string v2, "SPDY_3"

    const/4 v3, 0x2

    const-string v4, "spdy/3.1"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lm/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lm/d0;->SPDY_3:Lm/d0;

    aput-object v1, v0, v3

    new-instance v1, Lm/d0;

    const-string v2, "HTTP_2"

    const/4 v3, 0x3

    const-string v4, "h2"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lm/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lm/d0;->HTTP_2:Lm/d0;

    aput-object v1, v0, v3

    new-instance v1, Lm/d0;

    const-string v2, "H2_PRIOR_KNOWLEDGE"

    const/4 v3, 0x4

    const-string v4, "h2_prior_knowledge"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lm/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lm/d0;->H2_PRIOR_KNOWLEDGE:Lm/d0;

    aput-object v1, v0, v3

    new-instance v1, Lm/d0;

    const-string v2, "QUIC"

    const/4 v3, 0x5

    const-string v4, "quic"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lm/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lm/d0;->QUIC:Lm/d0;

    aput-object v1, v0, v3

    sput-object v0, Lm/d0;->$VALUES:[Lm/d0;

    new-instance v0, Lm/d0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm/d0$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lm/d0;->Companion:Lm/d0$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lm/d0;->protocol:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getProtocol$p(Lm/d0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/d0;->protocol:Ljava/lang/String;

    return-object p0
.end method

.method public static final get(Ljava/lang/String;)Lm/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lm/d0;->Companion:Lm/d0$a;

    invoke-virtual {v0, p0}, Lm/d0$a;->a(Ljava/lang/String;)Lm/d0;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lm/d0;
    .locals 1

    const-class v0, Lm/d0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm/d0;

    return-object p0
.end method

.method public static values()[Lm/d0;
    .locals 1

    sget-object v0, Lm/d0;->$VALUES:[Lm/d0;

    invoke-virtual {v0}, [Lm/d0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm/d0;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/d0;->protocol:Ljava/lang/String;

    return-object v0
.end method
