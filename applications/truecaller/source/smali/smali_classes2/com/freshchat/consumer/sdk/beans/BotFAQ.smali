.class public Lcom/freshchat/consumer/sdk/beans/BotFAQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/freshchat/consumer/sdk/beans/BotFAQ;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alias:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private created:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private templateContentPayloads:Lcom/freshchat/consumer/sdk/beans/TemplateContentPayloads;

.field private templateHash:Ljava/lang/String;

.field private updated:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/BotFAQ$1;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/BotFAQ$1;-><init>()V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->alias:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->contentType:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ab;->in()Lcom/freshchat/consumer/sdk/j/ab;

    move-result-object v1

    const-class v2, Lcom/freshchat/consumer/sdk/beans/TemplateContentPayloads;

    invoke-virtual {v1, v0, v2}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/beans/TemplateContentPayloads;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->templateContentPayloads:Lcom/freshchat/consumer/sdk/beans/TemplateContentPayloads;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->created:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->updated:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->templateHash:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->created:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateContentPayloads()Lcom/freshchat/consumer/sdk/beans/TemplateContentPayloads;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->templateContentPayloads:Lcom/freshchat/consumer/sdk/beans/TemplateContentPayloads;

    return-object v0
.end method

.method public getTemplateHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->templateHash:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->updated:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->alias:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->contentType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->templateContentPayloads:Lcom/freshchat/consumer/sdk/beans/TemplateContentPayloads;

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ab;->in()Lcom/freshchat/consumer/sdk/j/ab;

    move-result-object p2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->templateContentPayloads:Lcom/freshchat/consumer/sdk/beans/TemplateContentPayloads;

    invoke-virtual {p2, v0}, Lcom/freshchat/consumer/sdk/j/ab;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->created:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->updated:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->templateHash:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
