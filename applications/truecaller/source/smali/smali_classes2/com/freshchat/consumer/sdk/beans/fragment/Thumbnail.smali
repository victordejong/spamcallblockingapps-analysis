.class public Lcom/freshchat/consumer/sdk/beans/fragment/Thumbnail;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private content:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private height:J

.field private width:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/Thumbnail;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/Thumbnail;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/Thumbnail;->height:J

    return-wide v0
.end method

.method public getWidth()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/Thumbnail;->width:J

    return-wide v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/Thumbnail;->content:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/Thumbnail;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setHeight(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/Thumbnail;->height:J

    return-void
.end method

.method public setWidth(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/Thumbnail;->width:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Thumbnail{content=\'"

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/Thumbnail;->content:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", contentType=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/Thumbnail;->contentType:Ljava/lang/String;

    const-string v3, ", height="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/Thumbnail;->height:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/Thumbnail;->width:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
