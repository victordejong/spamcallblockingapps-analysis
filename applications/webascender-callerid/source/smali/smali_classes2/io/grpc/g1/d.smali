.class public final enum Lio/grpc/g1/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/g1/d;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/g1/d;

.field public static final enum PLAINTEXT:Lio/grpc/g1/d;

.field public static final enum TLS:Lio/grpc/g1/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/grpc/g1/d;

    const-string v1, "TLS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/g1/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/g1/d;->TLS:Lio/grpc/g1/d;

    .line 2
    new-instance v1, Lio/grpc/g1/d;

    const-string v3, "PLAINTEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/grpc/g1/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/g1/d;->PLAINTEXT:Lio/grpc/g1/d;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/grpc/g1/d;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lio/grpc/g1/d;->$VALUES:[Lio/grpc/g1/d;

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

.method public static valueOf(Ljava/lang/String;)Lio/grpc/g1/d;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/g1/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/g1/d;

    return-object p0
.end method

.method public static values()[Lio/grpc/g1/d;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/g1/d;->$VALUES:[Lio/grpc/g1/d;

    invoke-virtual {v0}, [Lio/grpc/g1/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/g1/d;

    return-object v0
.end method
