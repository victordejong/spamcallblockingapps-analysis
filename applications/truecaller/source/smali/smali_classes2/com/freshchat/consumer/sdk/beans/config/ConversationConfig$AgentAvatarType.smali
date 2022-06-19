.class public final enum Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AgentAvatarType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

.field public static final enum APP_ICON:Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

.field public static final enum NONE:Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

.field public static final enum REAL_AGENT_AVATAR:Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;->NONE:Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    const-string v3, "APP_ICON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;->APP_ICON:Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    new-instance v3, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    const-string v5, "REAL_AGENT_AVATAR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;->REAL_AGENT_AVATAR:Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    return-object v0
.end method
