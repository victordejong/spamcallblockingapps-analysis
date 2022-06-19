.class public Lcom/truecaller/flashsdk/models/QueuedFlash;
.super Lcom/truecaller/flashsdk/models/Flash;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/flashsdk/models/QueuedFlash;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Lcom/truecaller/flashsdk/models/Payload;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/flashsdk/models/QueuedFlash$a;

    invoke-direct {v0}, Lcom/truecaller/flashsdk/models/QueuedFlash$a;-><init>()V

    sput-object v0, Lcom/truecaller/flashsdk/models/QueuedFlash;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/flashsdk/models/Flash;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/truecaller/flashsdk/models/QueuedFlash;->i:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/truecaller/flashsdk/models/QueuedFlash;->j:Z

    .line 4
    iput-boolean v0, p0, Lcom/truecaller/flashsdk/models/QueuedFlash;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/truecaller/flashsdk/models/QueuedFlash$a;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/truecaller/flashsdk/models/Flash;-><init>()V

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcom/truecaller/flashsdk/models/QueuedFlash;->i:Z

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/truecaller/flashsdk/models/QueuedFlash;->j:Z

    .line 8
    iput-boolean p2, p0, Lcom/truecaller/flashsdk/models/QueuedFlash;->k:Z

    .line 9
    const-class p2, Lcom/truecaller/flashsdk/models/Sender;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/truecaller/flashsdk/models/Sender;

    iput-object p2, p0, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/flashsdk/models/Flash;->b:J

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/flashsdk/models/Flash;->d:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/flashsdk/models/Flash;->e:Ljava/lang/String;

    .line 14
    const-class p2, Lcom/truecaller/flashsdk/models/Payload;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/truecaller/flashsdk/models/Payload;

    iput-object p2, p0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/flashsdk/models/Flash;->g:J

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    .line 17
    const-class p2, Lcom/truecaller/flashsdk/models/Payload;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/models/Payload;

    iput-object p1, p0, Lcom/truecaller/flashsdk/models/QueuedFlash;->l:Lcom/truecaller/flashsdk/models/Payload;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "firstFlash: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/truecaller/flashsdk/models/QueuedFlash;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", updateProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/flashsdk/models/QueuedFlash;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    iget-wide v0, p0, Lcom/truecaller/flashsdk/models/Flash;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    iget-wide v0, p0, Lcom/truecaller/flashsdk/models/Flash;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 8
    iget-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/truecaller/flashsdk/models/QueuedFlash;->l:Lcom/truecaller/flashsdk/models/Payload;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
