.class public Lcom/freshchat/consumer/sdk/beans/config/DefaultAccountConfig;
.super Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;
.source "SourceFile"


# static fields
.field public static final DEFAULT_FAQ_API_VERSION:Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;->STANDALONE:Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/config/DefaultAccountConfig;->DEFAULT_FAQ_API_VERSION:Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;-><init>()V

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/config/DefaultAccountConfig;->DEFAULT_FAQ_API_VERSION:Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;->setFcFaqApiVersion(Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;)V

    return-void
.end method
