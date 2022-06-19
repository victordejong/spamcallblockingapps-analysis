.class public final enum Lcom/freshchat/consumer/sdk/beans/Message$MessageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/beans/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/beans/Message$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

.field public static final enum BOT:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

.field public static final enum FREDDY_BOT:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

.field public static final enum MESSAGE_TYPE_CALENDER_BOOKING_FAILURE:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

.field public static final enum MESSAGE_TYPE_CALENDER_BOOKING_SUCCESS:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

.field public static final enum MESSAGE_TYPE_CALENDER_INVITE_CANCELLED_BY_USER:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

.field public static final enum MESSAGE_TYPE_CALENDER_INVITE_SENT_BY_AGENT:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

.field public static final enum MESSAGE_TYPE_NORMAL:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

.field public static final enum MESSAGE_TYPE_UNKNOWN:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

.field public static final enum POSTBACK_MESSAGE:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;


# instance fields
.field private final intValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    const-string v1, "MESSAGE_TYPE_UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->MESSAGE_TYPE_UNKNOWN:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    const-string v3, "MESSAGE_TYPE_NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->MESSAGE_TYPE_NORMAL:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    new-instance v3, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    const-string v5, "BOT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->BOT:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    new-instance v5, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    const-string v7, "FREDDY_BOT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->FREDDY_BOT:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    new-instance v7, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    const-string v9, "POSTBACK_MESSAGE"

    const/4 v10, 0x4

    const/16 v11, 0x3e9

    invoke-direct {v7, v9, v10, v11}, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->POSTBACK_MESSAGE:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    new-instance v9, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    const-string v11, "MESSAGE_TYPE_CALENDER_INVITE_SENT_BY_AGENT"

    const/4 v12, 0x5

    const/16 v13, 0x2329

    invoke-direct {v9, v11, v12, v13}, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->MESSAGE_TYPE_CALENDER_INVITE_SENT_BY_AGENT:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    new-instance v11, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    const-string v13, "MESSAGE_TYPE_CALENDER_INVITE_CANCELLED_BY_USER"

    const/4 v14, 0x6

    const/16 v15, 0x232a

    invoke-direct {v11, v13, v14, v15}, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->MESSAGE_TYPE_CALENDER_INVITE_CANCELLED_BY_USER:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    new-instance v13, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    const-string v15, "MESSAGE_TYPE_CALENDER_BOOKING_SUCCESS"

    const/4 v14, 0x7

    const/16 v12, 0x232b

    invoke-direct {v13, v15, v14, v12}, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->MESSAGE_TYPE_CALENDER_BOOKING_SUCCESS:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    new-instance v12, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    const-string v15, "MESSAGE_TYPE_CALENDER_BOOKING_FAILURE"

    const/16 v14, 0x8

    const/16 v10, 0x232c

    invoke-direct {v12, v15, v14, v10}, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->MESSAGE_TYPE_CALENDER_BOOKING_FAILURE:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    sput-object v10, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->intValue:I

    return-void
.end method

.method public static getMessageTypeFromIntValue(I)Lcom/freshchat/consumer/sdk/beans/Message$MessageType;
    .locals 4

    invoke-static {}, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->values()[Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->getIntValue()I

    move-result v3

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->MESSAGE_TYPE_UNKNOWN:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message$MessageType;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/beans/Message$MessageType;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->intValue:I

    return v0
.end method
