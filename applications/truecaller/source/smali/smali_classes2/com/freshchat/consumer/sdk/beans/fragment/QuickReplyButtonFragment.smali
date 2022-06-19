.class public Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;
.super Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;
.source "SourceFile"


# instance fields
.field private customReplyText:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private payload:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->QUICK_REPLY_BUTTON:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getCustomReplyText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;->customReplyText:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomReplyText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;->customReplyText:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;->label:Ljava/lang/String;

    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;->payload:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "QuickReplyButtonFragment{messageFragment=\'"

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x27

    const-string v3, ", label=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;->label:Ljava/lang/String;

    const-string v3, ", customReplyText=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;->customReplyText:Ljava/lang/String;

    const-string v3, ", payload=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;->payload:Ljava/lang/String;

    const/16 v3, 0x7d

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
