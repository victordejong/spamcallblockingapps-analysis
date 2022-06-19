.class public final Lcom/freshchat/consumer/sdk/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/freshchat/consumer/sdk/a/l$a;",
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
.method public P(I)[Lcom/freshchat/consumer/sdk/a/l$a;
    .locals 0

    new-array p1, p1, [Lcom/freshchat/consumer/sdk/a/l$a;

    return-object p1
.end method

.method public a(Landroid/os/Parcel;)Lcom/freshchat/consumer/sdk/a/l$a;
    .locals 2

    new-instance v0, Lcom/freshchat/consumer/sdk/a/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/freshchat/consumer/sdk/a/l$a;-><init>(Landroid/os/Parcel;Lcom/freshchat/consumer/sdk/a/m;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/a/n;->a(Landroid/os/Parcel;)Lcom/freshchat/consumer/sdk/a/l$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/a/n;->P(I)[Lcom/freshchat/consumer/sdk/a/l$a;

    move-result-object p1

    return-object p1
.end method
