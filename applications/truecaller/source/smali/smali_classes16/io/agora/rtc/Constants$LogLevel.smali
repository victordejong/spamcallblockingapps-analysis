.class public final enum Lio/agora/rtc/Constants$LogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc/Constants$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc/Constants$LogLevel;

.field public static final enum LOG_LEVEL_ERROR:Lio/agora/rtc/Constants$LogLevel;

.field public static final enum LOG_LEVEL_FATAL:Lio/agora/rtc/Constants$LogLevel;

.field public static final enum LOG_LEVEL_INFO:Lio/agora/rtc/Constants$LogLevel;

.field public static final enum LOG_LEVEL_NONE:Lio/agora/rtc/Constants$LogLevel;

.field public static final enum LOG_LEVEL_WARN:Lio/agora/rtc/Constants$LogLevel;


# instance fields
.field private value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lio/agora/rtc/Constants$LogLevel;

    const-string v1, "LOG_LEVEL_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/agora/rtc/Constants$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/Constants$LogLevel;->LOG_LEVEL_NONE:Lio/agora/rtc/Constants$LogLevel;

    .line 2
    new-instance v1, Lio/agora/rtc/Constants$LogLevel;

    const-string v3, "LOG_LEVEL_INFO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/agora/rtc/Constants$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/rtc/Constants$LogLevel;->LOG_LEVEL_INFO:Lio/agora/rtc/Constants$LogLevel;

    .line 3
    new-instance v3, Lio/agora/rtc/Constants$LogLevel;

    const-string v5, "LOG_LEVEL_WARN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/agora/rtc/Constants$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/agora/rtc/Constants$LogLevel;->LOG_LEVEL_WARN:Lio/agora/rtc/Constants$LogLevel;

    .line 4
    new-instance v5, Lio/agora/rtc/Constants$LogLevel;

    const-string v7, "LOG_LEVEL_ERROR"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9}, Lio/agora/rtc/Constants$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/agora/rtc/Constants$LogLevel;->LOG_LEVEL_ERROR:Lio/agora/rtc/Constants$LogLevel;

    .line 5
    new-instance v7, Lio/agora/rtc/Constants$LogLevel;

    const-string v10, "LOG_LEVEL_FATAL"

    const/16 v11, 0x8

    invoke-direct {v7, v10, v9, v11}, Lio/agora/rtc/Constants$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/agora/rtc/Constants$LogLevel;->LOG_LEVEL_FATAL:Lio/agora/rtc/Constants$LogLevel;

    const/4 v10, 0x5

    new-array v10, v10, [Lio/agora/rtc/Constants$LogLevel;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    aput-object v7, v10, v9

    .line 6
    sput-object v10, Lio/agora/rtc/Constants$LogLevel;->$VALUES:[Lio/agora/rtc/Constants$LogLevel;

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

    .line 2
    iput p3, p0, Lio/agora/rtc/Constants$LogLevel;->value:I

    return-void
.end method

.method public static getValue(Lio/agora/rtc/Constants$LogLevel;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/agora/rtc/Constants$LogLevel;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc/Constants$LogLevel;
    .locals 1

    .line 1
    const-class v0, Lio/agora/rtc/Constants$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/rtc/Constants$LogLevel;

    return-object p0
.end method

.method public static values()[Lio/agora/rtc/Constants$LogLevel;
    .locals 1

    .line 1
    sget-object v0, Lio/agora/rtc/Constants$LogLevel;->$VALUES:[Lio/agora/rtc/Constants$LogLevel;

    invoke-virtual {v0}, [Lio/agora/rtc/Constants$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/rtc/Constants$LogLevel;

    return-object v0
.end method
