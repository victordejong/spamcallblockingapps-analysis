.class public Lcom/freshchat/consumer/sdk/service/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/e/j;


# instance fields
.field private fE:Z

.field private fF:Z

.field private user:Lcom/freshchat/consumer/sdk/beans/User;
    .annotation runtime Lcom/freshchat/consumer/sdk/j/ab$b;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cN()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/service/e/a;->fE:Z

    return v0
.end method

.method public cY()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/service/e/a;->fF:Z

    return v0
.end method

.method public getUser()Lcom/freshchat/consumer/sdk/beans/User;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/a;->user:Lcom/freshchat/consumer/sdk/beans/User;

    return-object v0
.end method

.method public n(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/service/e/a;->fE:Z

    return-void
.end method

.method public o(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/service/e/a;->fF:Z

    return-void
.end method

.method public setUser(Lcom/freshchat/consumer/sdk/beans/User;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/e/a;->user:Lcom/freshchat/consumer/sdk/beans/User;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "CreateOrUpdateUserRequest [user="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/service/e/a;->user:Lcom/freshchat/consumer/sdk/beans/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", forceUserCreate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/service/e/a;->fE:Z

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
