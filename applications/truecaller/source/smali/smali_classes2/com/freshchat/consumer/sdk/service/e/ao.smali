.class public final Lcom/freshchat/consumer/sdk/service/e/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/freshchat/consumer/sdk/service/e/an;",
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
.method public Z(I)[Lcom/freshchat/consumer/sdk/service/e/an;
    .locals 0

    new-array p1, p1, [Lcom/freshchat/consumer/sdk/service/e/an;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/e/ao;->e(Landroid/os/Parcel;)Lcom/freshchat/consumer/sdk/service/e/an;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/os/Parcel;)Lcom/freshchat/consumer/sdk/service/e/an;
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/an;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/service/e/an;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/e/ao;->Z(I)[Lcom/freshchat/consumer/sdk/service/e/an;

    move-result-object p1

    return-object p1
.end method
