.class public Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;
    }
.end annotation


# instance fields
.field private fcFaqApiVersion:Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFcFaqApiVersion()Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;->fcFaqApiVersion:Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    if-nez v0, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/config/DefaultAccountConfig;->DEFAULT_FAQ_API_VERSION:Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;->fcFaqApiVersion:Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;->fcFaqApiVersion:Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    return-object v0
.end method

.method public setFcFaqApiVersion(Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;->fcFaqApiVersion:Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    return-void
.end method
