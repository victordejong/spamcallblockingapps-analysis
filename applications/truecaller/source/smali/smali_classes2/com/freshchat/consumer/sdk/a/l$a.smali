.class public Lcom/freshchat/consumer/sdk/a/l$a;
.super Lcom/freshchat/consumer/sdk/a/l$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/freshchat/consumer/sdk/a/l$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final oF:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/a/n;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/a/n;-><init>()V

    sput-object v0, Lcom/freshchat/consumer/sdk/a/l$a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/a/l$b;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/l$a;->oF:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/freshchat/consumer/sdk/a/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/a/l$a;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/a/l$b;-><init>(I)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/l$a;->oF:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/l$a;->oF:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/a/l$b;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/a/l$a;->oF:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
