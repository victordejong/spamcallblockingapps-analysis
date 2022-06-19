.class public Lcom/freshchat/consumer/sdk/service/e/an;
.super Lcom/freshchat/consumer/sdk/service/e/ag;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/freshchat/consumer/sdk/service/e/an;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private success:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/ao;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/ao;-><init>()V

    sput-object v0, Lcom/freshchat/consumer/sdk/service/e/an;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/service/e/ag;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/e/ag;-><init>(Landroid/os/Parcel;)V

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

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/service/e/an;->success:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->SUCCESS:Lcom/freshchat/consumer/sdk/service/Status;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->ERROR:Lcom/freshchat/consumer/sdk/service/Status;

    :goto_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/freshchat/consumer/sdk/service/e/ag;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
