.class public final enum Lcom/freshchat/consumer/sdk/beans/config/Feature;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/beans/config/Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/beans/config/Feature;

.field public static final enum AOT_USER_CREATE:Lcom/freshchat/consumer/sdk/beans/config/Feature;

.field public static final enum AUTO_CAMPAIGNS:Lcom/freshchat/consumer/sdk/beans/config/Feature;

.field public static final enum CUSTOM_BRAND_BANNER:Lcom/freshchat/consumer/sdk/beans/config/Feature;

.field public static final enum FAQ:Lcom/freshchat/consumer/sdk/beans/config/Feature;

.field public static final enum INBOX:Lcom/freshchat/consumer/sdk/beans/config/Feature;

.field public static final enum MANUAL_CAMPAIGNS:Lcom/freshchat/consumer/sdk/beans/config/Feature;

.field public static final enum USER_EVENTS:Lcom/freshchat/consumer/sdk/beans/config/Feature;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;

    const-string v1, "FAQ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/beans/config/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;->FAQ:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/config/Feature;

    const-string v3, "INBOX"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/freshchat/consumer/sdk/beans/config/Feature;->INBOX:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    new-instance v3, Lcom/freshchat/consumer/sdk/beans/config/Feature;

    const-string v5, "AUTO_CAMPAIGNS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/freshchat/consumer/sdk/beans/config/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/freshchat/consumer/sdk/beans/config/Feature;->AUTO_CAMPAIGNS:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    new-instance v5, Lcom/freshchat/consumer/sdk/beans/config/Feature;

    const-string v7, "MANUAL_CAMPAIGNS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/freshchat/consumer/sdk/beans/config/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/freshchat/consumer/sdk/beans/config/Feature;->MANUAL_CAMPAIGNS:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    new-instance v7, Lcom/freshchat/consumer/sdk/beans/config/Feature;

    const-string v9, "USER_EVENTS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/freshchat/consumer/sdk/beans/config/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/freshchat/consumer/sdk/beans/config/Feature;->USER_EVENTS:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    new-instance v9, Lcom/freshchat/consumer/sdk/beans/config/Feature;

    const-string v11, "AOT_USER_CREATE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/freshchat/consumer/sdk/beans/config/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/freshchat/consumer/sdk/beans/config/Feature;->AOT_USER_CREATE:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    new-instance v11, Lcom/freshchat/consumer/sdk/beans/config/Feature;

    const-string v13, "CUSTOM_BRAND_BANNER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/freshchat/consumer/sdk/beans/config/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/freshchat/consumer/sdk/beans/config/Feature;->CUSTOM_BRAND_BANNER:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/freshchat/consumer/sdk/beans/config/Feature;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/freshchat/consumer/sdk/beans/config/Feature;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/config/Feature;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/config/Feature;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/config/Feature;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/beans/config/Feature;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/config/Feature;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/beans/config/Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/beans/config/Feature;

    return-object v0
.end method
