.class public final Lcom/freshchat/consumer/sdk/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/freshchat/consumer/sdk/a/l$c;",
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
.method public Q(I)[Lcom/freshchat/consumer/sdk/a/l$c;
    .locals 0

    new-array p1, p1, [Lcom/freshchat/consumer/sdk/a/l$c;

    return-object p1
.end method

.method public c(Landroid/os/Parcel;)Lcom/freshchat/consumer/sdk/a/l$c;
    .locals 2

    new-instance v0, Lcom/freshchat/consumer/sdk/a/l$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/freshchat/consumer/sdk/a/l$c;-><init>(Landroid/os/Parcel;Lcom/freshchat/consumer/sdk/a/m;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/a/o;->c(Landroid/os/Parcel;)Lcom/freshchat/consumer/sdk/a/l$c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/a/o;->Q(I)[Lcom/freshchat/consumer/sdk/a/l$c;

    move-result-object p1

    return-object p1
.end method
