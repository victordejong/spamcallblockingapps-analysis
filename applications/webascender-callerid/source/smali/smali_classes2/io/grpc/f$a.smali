.class public final enum Lio/grpc/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/f$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/f$a;

.field public static final enum DEBUG:Lio/grpc/f$a;

.field public static final enum ERROR:Lio/grpc/f$a;

.field public static final enum INFO:Lio/grpc/f$a;

.field public static final enum WARNING:Lio/grpc/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lio/grpc/f$a;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/f$a;->DEBUG:Lio/grpc/f$a;

    .line 2
    new-instance v1, Lio/grpc/f$a;

    const-string v3, "INFO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/grpc/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/f$a;->INFO:Lio/grpc/f$a;

    .line 3
    new-instance v3, Lio/grpc/f$a;

    const-string v5, "WARNING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/grpc/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/grpc/f$a;->WARNING:Lio/grpc/f$a;

    .line 4
    new-instance v5, Lio/grpc/f$a;

    const-string v7, "ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/grpc/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/grpc/f$a;->ERROR:Lio/grpc/f$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/grpc/f$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lio/grpc/f$a;->$VALUES:[Lio/grpc/f$a;

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

.method public static valueOf(Ljava/lang/String;)Lio/grpc/f$a;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/f$a;

    return-object p0
.end method

.method public static values()[Lio/grpc/f$a;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/f$a;->$VALUES:[Lio/grpc/f$a;

    invoke-virtual {v0}, [Lio/grpc/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/f$a;

    return-object v0
.end method
