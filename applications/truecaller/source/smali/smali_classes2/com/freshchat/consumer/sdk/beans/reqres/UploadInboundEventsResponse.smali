.class public Lcom/freshchat/consumer/sdk/beans/reqres/UploadInboundEventsResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private success:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/UploadInboundEventsResponse;->success:Z

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/UploadInboundEventsResponse;->success:Z

    return v0
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/UploadInboundEventsResponse;->success:Z

    return-void
.end method
