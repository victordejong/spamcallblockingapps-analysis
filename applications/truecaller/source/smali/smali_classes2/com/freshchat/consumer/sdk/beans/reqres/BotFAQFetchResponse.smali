.class public Lcom/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse;
.super Lcom/freshchat/consumer/sdk/service/e/ag;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private botFAQ:Lcom/freshchat/consumer/sdk/beans/BotFAQ;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse$1;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse$1;-><init>()V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse;->CREATOR:Landroid/os/Parcelable$Creator;

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

    const-class v0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/BotFAQ;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse;->botFAQ:Lcom/freshchat/consumer/sdk/beans/BotFAQ;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBotFAQ()Lcom/freshchat/consumer/sdk/beans/BotFAQ;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse;->botFAQ:Lcom/freshchat/consumer/sdk/beans/BotFAQ;

    return-object v0
.end method

.method public setBotFAQ(Lcom/freshchat/consumer/sdk/beans/BotFAQ;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse;->botFAQ:Lcom/freshchat/consumer/sdk/beans/BotFAQ;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/freshchat/consumer/sdk/service/e/ag;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse;->botFAQ:Lcom/freshchat/consumer/sdk/beans/BotFAQ;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
