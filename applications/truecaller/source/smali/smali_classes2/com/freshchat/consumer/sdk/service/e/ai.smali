.class public Lcom/freshchat/consumer/sdk/service/e/ai;
.super Lcom/freshchat/consumer/sdk/service/e/ag;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/freshchat/consumer/sdk/service/e/ai;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private pagination:Lcom/freshchat/consumer/sdk/beans/Pagination;

.field private ri:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/FAQ;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "articles"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/aj;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/aj;-><init>()V

    sput-object v0, Lcom/freshchat/consumer/sdk/service/e/ai;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/service/e/ag;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/e/ag;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/FAQ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/ai;->ri:Ljava/util/List;

    const-class v0, Lcom/freshchat/consumer/sdk/beans/Pagination;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Pagination;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/e/ai;->pagination:Lcom/freshchat/consumer/sdk/beans/Pagination;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iV()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/FAQ;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/ai;->ri:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/freshchat/consumer/sdk/service/e/ag;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/ai;->ri:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/ai;->pagination:Lcom/freshchat/consumer/sdk/beans/Pagination;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
