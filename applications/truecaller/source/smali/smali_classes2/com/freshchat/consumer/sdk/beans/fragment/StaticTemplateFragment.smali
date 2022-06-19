.class public Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;
.super Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;
.source "SourceFile"


# instance fields
.field private label:Ljava/lang/String;

.field private placeholderReferenceId:Ljava/lang/String;

.field private referenceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->STATIC_TEMPLATE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceholderReferenceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;->placeholderReferenceId:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;->referenceId:Ljava/lang/String;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;->label:Ljava/lang/String;

    return-void
.end method

.method public setPlaceholderReferenceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;->placeholderReferenceId:Ljava/lang/String;

    return-void
.end method

.method public setReferenceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;->referenceId:Ljava/lang/String;

    return-void
.end method
