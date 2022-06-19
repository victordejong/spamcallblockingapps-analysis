.class public abstract Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private content:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private fragmentType:I

.field private translatedContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->fragmentType:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    iget v2, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->fragmentType:I

    iget v3, p1, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->fragmentType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->content:Ljava/lang/String;

    iget-object v3, p1, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->content:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->contentType:Ljava/lang/String;

    iget-object v3, p1, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->contentType:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->translatedContent:Ljava/lang/String;

    iget-object p1, p1, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->translatedContent:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFragmentType()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->fragmentType:I

    return v0
.end method

.method public getTranslatedContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->translatedContent:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->content:Ljava/lang/String;

    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public setTranslatedContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->translatedContent:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "MessageFragment{content=\'"

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->content:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", contentType=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->contentType:Ljava/lang/String;

    const-string v3, ", fragmentType="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->fragmentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", translatedContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->translatedContent:Ljava/lang/String;

    const/16 v3, 0x7d

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
