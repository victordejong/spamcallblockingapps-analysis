.class public Lcom/freshchat/consumer/sdk/beans/Pagination;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/freshchat/consumer/sdk/beans/Pagination;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private count:I

.field private currentPage:I

.field private nextPage:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/Pagination$1;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/Pagination$1;-><init>()V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/Pagination;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/freshchat/consumer/sdk/beans/Pagination;->currentPage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/freshchat/consumer/sdk/beans/Pagination;->count:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Pagination;->nextPage:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/Pagination;->count:I

    return v0
.end method

.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/Pagination;->currentPage:I

    return v0
.end method

.method public getNextPage()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/Pagination;->nextPage:I

    return v0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Pagination;->count:I

    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Pagination;->currentPage:I

    return-void
.end method

.method public setNextPage(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Pagination;->nextPage:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/freshchat/consumer/sdk/beans/Pagination;->currentPage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/freshchat/consumer/sdk/beans/Pagination;->count:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/freshchat/consumer/sdk/beans/Pagination;->nextPage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
