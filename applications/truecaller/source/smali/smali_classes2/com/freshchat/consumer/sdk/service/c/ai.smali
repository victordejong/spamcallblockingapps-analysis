.class public synthetic Lcom/freshchat/consumer/sdk/service/c/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic rg:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;->values()[Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sput-object v1, Lcom/freshchat/consumer/sdk/service/c/ai;->rg:[I

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;->STANDALONE:Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    const/4 v3, 0x0

    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/freshchat/consumer/sdk/service/c/ai;->rg:[I

    sget-object v3, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;->KBASE_SERVICE:Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    aput v0, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
