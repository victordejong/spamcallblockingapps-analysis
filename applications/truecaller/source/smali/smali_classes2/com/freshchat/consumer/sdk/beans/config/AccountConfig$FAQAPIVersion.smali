.class public final enum Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FAQAPIVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

.field public static final enum KBASE_SERVICE:Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;
    .annotation runtime Le/m/e/d0/b;
        value = "2"
    .end annotation
.end field

.field public static final enum STANDALONE:Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;
    .annotation runtime Le/m/e/d0/b;
        value = "1"
    .end annotation
.end field


# instance fields
.field private final apiVersionCode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    const-string v1, "STANDALONE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;->STANDALONE:Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    const-string v4, "KBASE_SERVICE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;->KBASE_SERVICE:Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    new-array v4, v5, [Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

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

    iput p3, p0, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;->apiVersionCode:I

    return-void
.end method

.method public static fromInt(I)Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;
    .locals 4

    invoke-static {}, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;->values()[Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;->asInt()I

    move-result v3

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;->STANDALONE:Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    return-object v0
.end method


# virtual methods
.method public asInt()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;->apiVersionCode:I

    return v0
.end method
