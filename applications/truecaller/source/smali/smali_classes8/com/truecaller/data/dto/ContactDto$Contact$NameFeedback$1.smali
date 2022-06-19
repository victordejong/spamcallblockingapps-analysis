.class public Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;
    .locals 3

    .line 2
    new-instance v0, Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;-><init>(Landroid/os/Parcel;ZLcom/truecaller/data/dto/ContactDto$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback$1;->createFromParcel(Landroid/os/Parcel;)Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback$1;->newArray(I)[Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;

    move-result-object p1

    return-object p1
.end method
