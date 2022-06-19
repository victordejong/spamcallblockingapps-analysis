.class public Lcom/truecaller/flashsdk/models/ImageFlash;
.super Lcom/truecaller/flashsdk/models/Flash;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/flashsdk/models/ImageFlash;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public i:Landroid/net/Uri;

.field public j:Lcom/truecaller/flashsdk/models/MediaUrl;

.field public k:Z

.field public l:Z

.field public m:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/flashsdk/models/ImageFlash$a;

    invoke-direct {v0}, Lcom/truecaller/flashsdk/models/ImageFlash$a;-><init>()V

    sput-object v0, Lcom/truecaller/flashsdk/models/ImageFlash;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/flashsdk/models/Flash;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/truecaller/flashsdk/models/ImageFlash$a;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lcom/truecaller/flashsdk/models/Flash;-><init>(Landroid/os/Parcel;)V

    .line 3
    const-class p2, Landroid/net/Uri;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    iput-object p2, p0, Lcom/truecaller/flashsdk/models/ImageFlash;->i:Landroid/net/Uri;

    .line 4
    const-class p2, Lcom/truecaller/flashsdk/models/MediaUrl;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/truecaller/flashsdk/models/MediaUrl;

    iput-object p2, p0, Lcom/truecaller/flashsdk/models/ImageFlash;->j:Lcom/truecaller/flashsdk/models/MediaUrl;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput-boolean p2, p0, Lcom/truecaller/flashsdk/models/ImageFlash;->k:Z

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/truecaller/flashsdk/models/ImageFlash;->l:Z

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/flashsdk/models/ImageFlash;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g(Lcom/truecaller/flashsdk/models/Flash;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    iput-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 2
    iget-wide v0, p1, Lcom/truecaller/flashsdk/models/Flash;->b:J

    iput-wide v0, p0, Lcom/truecaller/flashsdk/models/Flash;->b:J

    .line 3
    iget-object v0, p1, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/truecaller/flashsdk/models/Flash;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->d:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/truecaller/flashsdk/models/Flash;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->e:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    iput-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 7
    iget-wide v0, p1, Lcom/truecaller/flashsdk/models/Flash;->g:J

    iput-wide v0, p0, Lcom/truecaller/flashsdk/models/Flash;->g:J

    .line 8
    iget-object p1, p1, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/truecaller/flashsdk/models/Flash;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/models/ImageFlash;->i:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/flashsdk/models/ImageFlash;->j:Lcom/truecaller/flashsdk/models/MediaUrl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-boolean p2, p0, Lcom/truecaller/flashsdk/models/ImageFlash;->k:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 5
    iget-boolean p2, p0, Lcom/truecaller/flashsdk/models/ImageFlash;->l:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 6
    iget-object p2, p0, Lcom/truecaller/flashsdk/models/ImageFlash;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
