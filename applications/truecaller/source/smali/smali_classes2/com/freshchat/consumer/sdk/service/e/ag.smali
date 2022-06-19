.class public abstract Lcom/freshchat/consumer/sdk/service/e/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/freshchat/consumer/sdk/service/e/k;


# instance fields
.field private status:Lcom/freshchat/consumer/sdk/service/Status;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/service/Status;->valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/e/ag;->status:Lcom/freshchat/consumer/sdk/service/Status;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStatus()Lcom/freshchat/consumer/sdk/service/Status;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/ag;->status:Lcom/freshchat/consumer/sdk/service/Status;

    if-nez v0, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->ERROR:Lcom/freshchat/consumer/sdk/service/Status;

    :cond_0
    return-object v0
.end method

.method public isSuccess()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public setStatus(Lcom/freshchat/consumer/sdk/service/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/e/ag;->status:Lcom/freshchat/consumer/sdk/service/Status;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/service/e/ag;->status:Lcom/freshchat/consumer/sdk/service/Status;

    if-nez p2, :cond_0

    sget-object p2, Lcom/freshchat/consumer/sdk/service/Status;->ERROR:Lcom/freshchat/consumer/sdk/service/Status;

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
