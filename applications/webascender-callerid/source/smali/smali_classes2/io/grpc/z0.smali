.class public final enum Lio/grpc/z0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/z0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/z0;

.field public static final enum INTEGRITY:Lio/grpc/z0;

.field public static final enum NONE:Lio/grpc/z0;

.field public static final enum PRIVACY_AND_INTEGRITY:Lio/grpc/z0;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lio/grpc/z0;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/z0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/z0;->NONE:Lio/grpc/z0;

    .line 2
    new-instance v1, Lio/grpc/z0;

    const-string v3, "INTEGRITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/grpc/z0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/z0;->INTEGRITY:Lio/grpc/z0;

    .line 3
    new-instance v3, Lio/grpc/z0;

    const-string v5, "PRIVACY_AND_INTEGRITY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/grpc/z0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/grpc/z0;->PRIVACY_AND_INTEGRITY:Lio/grpc/z0;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/grpc/z0;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lio/grpc/z0;->$VALUES:[Lio/grpc/z0;

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

.method public static valueOf(Ljava/lang/String;)Lio/grpc/z0;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/z0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/z0;

    return-object p0
.end method

.method public static values()[Lio/grpc/z0;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/z0;->$VALUES:[Lio/grpc/z0;

    invoke-virtual {v0}, [Lio/grpc/z0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/z0;

    return-object v0
.end method
