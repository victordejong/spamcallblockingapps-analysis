.class public Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyDropDownFragment;
.super Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;->QUICK_REPLY_DROP_DOWN:Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method
