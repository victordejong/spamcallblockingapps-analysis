.class public final enum Lio/agora/rtc/Constants$AudioScenario;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioScenario"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc/Constants$AudioScenario;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc/Constants$AudioScenario;

.field public static final enum CHATROOM_ENTERTAINMENT:Lio/agora/rtc/Constants$AudioScenario;

.field public static final enum CHATROOM_GAMING:Lio/agora/rtc/Constants$AudioScenario;

.field public static final enum DEFAULT:Lio/agora/rtc/Constants$AudioScenario;

.field public static final enum EDUCATION:Lio/agora/rtc/Constants$AudioScenario;

.field public static final enum GAME_STREAMING:Lio/agora/rtc/Constants$AudioScenario;

.field public static final enum IOT:Lio/agora/rtc/Constants$AudioScenario;

.field public static final enum MEETING:Lio/agora/rtc/Constants$AudioScenario;

.field public static final enum SHOWROOM:Lio/agora/rtc/Constants$AudioScenario;


# instance fields
.field private value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lio/agora/rtc/Constants$AudioScenario;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/agora/rtc/Constants$AudioScenario;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/Constants$AudioScenario;->DEFAULT:Lio/agora/rtc/Constants$AudioScenario;

    .line 2
    new-instance v1, Lio/agora/rtc/Constants$AudioScenario;

    const-string v3, "CHATROOM_ENTERTAINMENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/agora/rtc/Constants$AudioScenario;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/rtc/Constants$AudioScenario;->CHATROOM_ENTERTAINMENT:Lio/agora/rtc/Constants$AudioScenario;

    .line 3
    new-instance v3, Lio/agora/rtc/Constants$AudioScenario;

    const-string v5, "EDUCATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/agora/rtc/Constants$AudioScenario;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/agora/rtc/Constants$AudioScenario;->EDUCATION:Lio/agora/rtc/Constants$AudioScenario;

    .line 4
    new-instance v5, Lio/agora/rtc/Constants$AudioScenario;

    const-string v7, "GAME_STREAMING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lio/agora/rtc/Constants$AudioScenario;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/agora/rtc/Constants$AudioScenario;->GAME_STREAMING:Lio/agora/rtc/Constants$AudioScenario;

    .line 5
    new-instance v7, Lio/agora/rtc/Constants$AudioScenario;

    const-string v9, "SHOWROOM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lio/agora/rtc/Constants$AudioScenario;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/agora/rtc/Constants$AudioScenario;->SHOWROOM:Lio/agora/rtc/Constants$AudioScenario;

    .line 6
    new-instance v9, Lio/agora/rtc/Constants$AudioScenario;

    const-string v11, "CHATROOM_GAMING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lio/agora/rtc/Constants$AudioScenario;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/agora/rtc/Constants$AudioScenario;->CHATROOM_GAMING:Lio/agora/rtc/Constants$AudioScenario;

    .line 7
    new-instance v11, Lio/agora/rtc/Constants$AudioScenario;

    const-string v13, "IOT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lio/agora/rtc/Constants$AudioScenario;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/agora/rtc/Constants$AudioScenario;->IOT:Lio/agora/rtc/Constants$AudioScenario;

    .line 8
    new-instance v13, Lio/agora/rtc/Constants$AudioScenario;

    const-string v15, "MEETING"

    const/4 v14, 0x7

    const/16 v12, 0x8

    invoke-direct {v13, v15, v14, v12}, Lio/agora/rtc/Constants$AudioScenario;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/agora/rtc/Constants$AudioScenario;->MEETING:Lio/agora/rtc/Constants$AudioScenario;

    new-array v12, v12, [Lio/agora/rtc/Constants$AudioScenario;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    .line 9
    sput-object v12, Lio/agora/rtc/Constants$AudioScenario;->$VALUES:[Lio/agora/rtc/Constants$AudioScenario;

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
    iput p3, p0, Lio/agora/rtc/Constants$AudioScenario;->value:I

    return-void
.end method

.method public static getValue(Lio/agora/rtc/Constants$AudioScenario;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/agora/rtc/Constants$AudioScenario;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc/Constants$AudioScenario;
    .locals 1

    .line 1
    const-class v0, Lio/agora/rtc/Constants$AudioScenario;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/rtc/Constants$AudioScenario;

    return-object p0
.end method

.method public static values()[Lio/agora/rtc/Constants$AudioScenario;
    .locals 1

    .line 1
    sget-object v0, Lio/agora/rtc/Constants$AudioScenario;->$VALUES:[Lio/agora/rtc/Constants$AudioScenario;

    invoke-virtual {v0}, [Lio/agora/rtc/Constants$AudioScenario;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/rtc/Constants$AudioScenario;

    return-object v0
.end method
