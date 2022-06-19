.class public Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;
.super Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;
.source "SourceFile"


# instance fields
.field private androidUri:Ljava/lang/String;

.field private iosUri:Ljava/lang/String;

.field private label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->BUTTON:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getAndroidUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;->androidUri:Ljava/lang/String;

    return-object v0
.end method

.method public getIosUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;->iosUri:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;->label:Ljava/lang/String;

    return-object v0
.end method

.method public setAndroidUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;->androidUri:Ljava/lang/String;

    return-void
.end method

.method public setIosUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;->iosUri:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;->label:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ButtonFragment{label=\'"

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;->label:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", androidUri=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;->androidUri:Ljava/lang/String;

    const-string v3, ", iosUri=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;->iosUri:Ljava/lang/String;

    const-string v3, "} "

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
