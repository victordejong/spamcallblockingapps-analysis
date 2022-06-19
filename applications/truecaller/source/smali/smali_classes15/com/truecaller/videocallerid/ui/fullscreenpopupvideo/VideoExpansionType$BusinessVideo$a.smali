.class public final Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    const-string v0, "in"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideo;

    const-class v1, Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    const-class v3, Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideoType;

    invoke-static {v3, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideoType;

    invoke-direct {v0, v1, v2, p1}, Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideo;-><init>(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideoType;)V

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideo;

    return-object p1
.end method
