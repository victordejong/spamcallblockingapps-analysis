.class public final Lcom/freshchat/consumer/sdk/beans/FAQCategory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/freshchat/consumer/sdk/beans/FAQCategory;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/freshchat/consumer/sdk/beans/FAQCategory;
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/FAQCategory;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/beans/FAQCategory;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/beans/FAQCategory$1;->createFromParcel(Landroid/os/Parcel;)Lcom/freshchat/consumer/sdk/beans/FAQCategory;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/freshchat/consumer/sdk/beans/FAQCategory;
    .locals 0

    new-array p1, p1, [Lcom/freshchat/consumer/sdk/beans/FAQCategory;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/beans/FAQCategory$1;->newArray(I)[Lcom/freshchat/consumer/sdk/beans/FAQCategory;

    move-result-object p1

    return-object p1
.end method
