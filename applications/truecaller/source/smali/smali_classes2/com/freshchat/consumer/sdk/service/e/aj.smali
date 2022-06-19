.class public final Lcom/freshchat/consumer/sdk/service/e/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/freshchat/consumer/sdk/service/e/ai;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Y(I)[Lcom/freshchat/consumer/sdk/service/e/ai;
    .locals 0

    new-array p1, p1, [Lcom/freshchat/consumer/sdk/service/e/ai;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/e/aj;->d(Landroid/os/Parcel;)Lcom/freshchat/consumer/sdk/service/e/ai;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/os/Parcel;)Lcom/freshchat/consumer/sdk/service/e/ai;
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/ai;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/service/e/ai;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/e/aj;->Y(I)[Lcom/freshchat/consumer/sdk/service/e/ai;

    move-result-object p1

    return-object p1
.end method
